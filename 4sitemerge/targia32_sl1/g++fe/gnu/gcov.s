	.file	"gcov.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	__store_gcov_type, @function
__store_gcov_type:
.LFB15:
	.file 1 "../../../kg++fe/gnu/gcov-io.h"
	.loc 1 65 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	subl	$64, %esp
.LCFI4:
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 66 0
	cmpl	$0, -28(%ebp)
	jns	.L2
	movl	$128, -52(%ebp)
	jmp	.L4
.L2:
	movl	$0, -52(%ebp)
.L4:
	movl	-52(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 69 0
	cmpl	$0, -28(%ebp)
	jns	.L5
.LBB2:
	.loc 1 71 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 72 0
	negl	-32(%ebp)
	adcl	$0, -28(%ebp)
	negl	-28(%ebp)
	.loc 1 73 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L5
	.loc 1 74 0
	movl	$1, -48(%ebp)
	jmp	.L8
.L5:
.LBE2:
	.loc 1 77 0
	movl	$0, -12(%ebp)
	jmp	.L9
.L10:
	.loc 1 78 0
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -44(%ebp)
	movl	20(%ebp), %eax
	subl	$1, %eax
	cmpl	-12(%ebp), %eax
	jne	.L11
	movb	$127, -37(%ebp)
	jmp	.L13
.L11:
	movl	$-1, %eax
	movb	%al, -37(%ebp)
.L13:
	movl	-32(%ebp), %eax
	andb	-37(%ebp), %al
	movl	-44(%ebp), %edx
	movb	%al, (%edx)
	.loc 1 79 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$255, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-64(%ebp), %eax
	adcl	-60(%ebp), %edx
	shrdl	$8, %edx, %eax
	sarl	$8, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 77 0
	addl	$1, -12(%ebp)
.L9:
	movl	20(%ebp), %edx
	movl	%edx, -36(%ebp)
	cmpl	$8, -36(%ebp)
	jbe	.L14
	movl	$8, -36(%ebp)
.L14:
	movl	-36(%ebp), %eax
	cmpl	-12(%ebp), %eax
	ja	.L10
	.loc 1 82 0
	movl	-32(%ebp), %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L19
	movl	-28(%ebp), %eax
	xorl	$-1, %eax
	movl	-32(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L19
	.loc 1 83 0
	movl	$1, -48(%ebp)
	jmp	.L8
.L20:
	.loc 1 86 0
	movl	-12(%ebp), %eax
	addl	16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 85 0
	addl	$1, -12(%ebp)
.L19:
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	jb	.L20
	.loc 1 87 0
	movl	20(%ebp), %eax
	addl	16(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	20(%ebp), %eax
	addl	16(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 88 0
	movl	$0, -48(%ebp)
.L8:
	movl	-48(%ebp), %eax
	.loc 1 89 0
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	__store_gcov_type, .-__store_gcov_type
	.type	__fetch_gcov_type, @function
__fetch_gcov_type:
.LFB16:
	.loc 1 100 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%esi
.LCFI8:
	subl	$48, %esp
.LCFI9:
	.loc 1 101 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 104 0
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L24
.L25:
	.loc 1 105 0
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L26
	movl	$127, -48(%ebp)
	jmp	.L28
.L26:
	movl	$255, -48(%ebp)
.L28:
	movl	-52(%ebp), %eax
	andl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L29
	.loc 1 106 0
	movl	$1, -44(%ebp)
	jmp	.L31
.L29:
	.loc 1 104 0
	subl	$1, -12(%ebp)
.L24:
	movl	-12(%ebp), %eax
	cmpl	$7, %eax
	ja	.L25
	.loc 1 108 0
	jmp	.L33
.L34:
	.loc 1 109 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$8, %esi, %edi
	sall	$8, %esi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L35
	movl	$127, -28(%ebp)
	jmp	.L37
.L35:
	movl	$255, -28(%ebp)
.L37:
	movl	-32(%ebp), %eax
	andl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	-40(%ebp), %eax
	adcl	-36(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 108 0
	subl	$1, -12(%ebp)
.L33:
	cmpl	$0, -12(%ebp)
	jns	.L34
	.loc 1 111 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jns	.L39
	cmpl	$0, -20(%ebp)
	js	.L39
	cmpl	$0, -20(%ebp)
	jg	.L42
	cmpl	$0, -24(%ebp)
	jbe	.L39
.L42:
	.loc 1 112 0
	negl	-24(%ebp)
	adcl	$0, -20(%ebp)
	negl	-20(%ebp)
.L39:
	.loc 1 114 0
	movl	8(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 115 0
	movl	$0, -44(%ebp)
.L31:
	movl	-44(%ebp), %eax
	.loc 1 116 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	__fetch_gcov_type, .-__fetch_gcov_type
	.type	__fetch_long, @function
__fetch_long:
.LFB17:
	.loc 1 123 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	subl	$40, %esp
.LCFI12:
	.loc 1 124 0
	movl	$0, -8(%ebp)
	.loc 1 127 0
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L45
.L46:
	.loc 1 128 0
	movl	-4(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L47
	movl	$127, -36(%ebp)
	jmp	.L49
.L47:
	movl	$255, -36(%ebp)
.L49:
	movl	-40(%ebp), %eax
	andl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L50
	.loc 1 129 0
	movl	$1, -32(%ebp)
	jmp	.L52
.L50:
	.loc 1 127 0
	subl	$1, -4(%ebp)
.L45:
	movl	-4(%ebp), %eax
	cmpl	$3, %eax
	ja	.L46
	.loc 1 131 0
	jmp	.L54
.L55:
	.loc 1 132 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	sall	$8, %edx
	movl	%edx, -28(%ebp)
	movl	-4(%ebp), %eax
	addl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L56
	movl	$127, -20(%ebp)
	jmp	.L58
.L56:
	movl	$255, -20(%ebp)
.L58:
	movl	-24(%ebp), %eax
	andl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 131 0
	subl	$1, -4(%ebp)
.L54:
	cmpl	$0, -4(%ebp)
	jns	.L55
	.loc 1 134 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jns	.L60
	cmpl	$0, -8(%ebp)
	jle	.L60
	.loc 1 135 0
	negl	-8(%ebp)
.L60:
	.loc 1 137 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 138 0
	movl	$0, -32(%ebp)
.L52:
	movl	-32(%ebp), %eax
	.loc 1 139 0
	leave
	ret
.LFE17:
	.size	__fetch_long, .-__fetch_long
	.type	__write_gcov_type, @function
__write_gcov_type:
.LFB18:
	.loc 1 155 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$52, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 155 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 158 0
	cmpl	$10, 20(%ebp)
	ja	.L65
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-22(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__store_gcov_type
	testl	%eax, %eax
	je	.L67
.L65:
	.loc 1 159 0
	movl	$1, -40(%ebp)
	jmp	.L68
.L67:
	.loc 1 161 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-22(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	cmpl	20(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
.L68:
	movl	-40(%ebp), %eax
	.loc 1 162 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L70
	call	__stack_chk_fail_local
.L70:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	__write_gcov_type, .-__write_gcov_type
	.type	__write_long, @function
__write_long:
.LFB19:
	.loc 1 169 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$52, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 169 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 172 0
	cmpl	$10, 16(%ebp)
	ja	.L72
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__store_gcov_type
	testl	%eax, %eax
	je	.L74
.L72:
	.loc 1 173 0
	movl	$1, -28(%ebp)
	jmp	.L75
.L74:
	.loc 1 175 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	cmpl	16(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L75:
	movl	-28(%ebp), %eax
	.loc 1 176 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L77
	call	__stack_chk_fail_local
.L77:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	__write_long, .-__write_long
	.type	__read_gcov_type, @function
__read_gcov_type:
.LFB20:
	.loc 1 192 0
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
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 192 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 195 0
	cmpl	$10, 16(%ebp)
	ja	.L79
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	fread@PLT
	cmpl	16(%ebp), %eax
	je	.L81
.L79:
	.loc 1 196 0
	movl	$1, -32(%ebp)
	jmp	.L82
.L81:
	.loc 1 198 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	__fetch_gcov_type
	movl	%eax, -32(%ebp)
.L82:
	movl	-32(%ebp), %eax
	.loc 1 199 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L84
	call	__stack_chk_fail_local
.L84:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	__read_gcov_type, .-__read_gcov_type
	.type	__read_long, @function
__read_long:
.LFB21:
	.loc 1 206 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$52, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 206 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 209 0
	cmpl	$10, 16(%ebp)
	ja	.L86
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	fread@PLT
	cmpl	16(%ebp), %eax
	je	.L88
.L86:
	.loc 1 210 0
	movl	$1, -32(%ebp)
	jmp	.L89
.L88:
	.loc 1 212 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	__fetch_long
	movl	%eax, -32(%ebp)
.L89:
	movl	-32(%ebp), %eax
	.loc 1 213 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L91
	call	__stack_chk_fail_local
.L91:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	__read_long, .-__read_long
	.type	__write_gcov_string, @function
__write_gcov_string:
.LFB22:
	.loc 1 224 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$36, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 225 0
	movl	12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	.loc 1 228 0
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	__write_long
	testl	%eax, %eax
	je	.L93
	.loc 1 229 0
	movl	$1, -24(%ebp)
	jmp	.L95
.L93:
	.loc 1 231 0
	movl	12(%ebp), %eax
	movl	$4, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__write_long
	testl	%eax, %eax
	je	.L96
	.loc 1 232 0
	movl	$1, -24(%ebp)
	jmp	.L95
.L96:
	.loc 1 234 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	cmpl	$1, %eax
	je	.L98
	.loc 1 235 0
	movl	$1, -24(%ebp)
	jmp	.L95
.L98:
	.loc 1 237 0
	andl	$3, -8(%ebp)
	.loc 1 239 0
	cmpl	$0, -8(%ebp)
	je	.L100
.LBB3:
	.loc 1 243 0
	movb	$0, -9(%ebp)
	movzbl	-9(%ebp), %eax
	movb	%al, -10(%ebp)
	movzbl	-10(%ebp), %eax
	movb	%al, -11(%ebp)
	movzbl	-11(%ebp), %eax
	movb	%al, -12(%ebp)
	.loc 1 245 0
	movl	$4, %eax
	movl	%eax, %edx
	subl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	%eax, %edx
	movl	$4, %eax
	subl	-8(%ebp), %eax
	cmpl	%eax, %edx
	je	.L100
	.loc 1 246 0
	movl	$1, -24(%ebp)
	jmp	.L95
.L100:
.LBE3:
	.loc 1 249 0
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	__write_long
	testl	%eax, %eax
	je	.L103
	.loc 1 250 0
	movl	$1, -24(%ebp)
	jmp	.L95
.L103:
	.loc 1 252 0
	movl	$0, -24(%ebp)
.L95:
	movl	-24(%ebp), %eax
	.loc 1 253 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	__write_gcov_string, .-__write_gcov_string
	.type	__read_gcov_string, @function
__read_gcov_string:
.LFB23:
	.loc 1 264 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$36, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 270 0
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L107
	.loc 1 271 0
	movl	$1, -24(%ebp)
	jmp	.L109
.L107:
	.loc 1 273 0
	movl	-16(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L110
	.loc 1 274 0
	movl	$1, -24(%ebp)
	jmp	.L109
.L110:
	.loc 1 276 0
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L112
	.loc 1 277 0
	movl	$1, -24(%ebp)
	jmp	.L109
.L112:
	.loc 1 279 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L114
	.loc 1 280 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L116
.L114:
	.loc 1 282 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
.L116:
	.loc 1 284 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, -8(%ebp)
	.loc 1 287 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fread@PLT
	cmpl	$1, %eax
	je	.L117
	.loc 1 288 0
	movl	$1, -24(%ebp)
	jmp	.L109
.L117:
	.loc 1 290 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 292 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	subl	%edx, %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fseek@PLT
	testl	%eax, %eax
	jns	.L119
	.loc 1 293 0
	movl	$1, -24(%ebp)
	jmp	.L109
.L119:
	.loc 1 295 0
	movl	$4, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L121
	.loc 1 296 0
	movl	$1, -24(%ebp)
	jmp	.L109
.L121:
	.loc 1 298 0
	movl	-16(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L123
	.loc 1 299 0
	movl	$1, -24(%ebp)
	jmp	.L109
.L123:
	.loc 1 301 0
	movl	$0, -24(%ebp)
.L109:
	movl	-24(%ebp), %eax
	.loc 1 302 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	__read_gcov_string, .-__read_gcov_string
	.local	bb_graph_list
	.comm	bb_graph_list,4,4
	.local	input_file_name
	.comm	input_file_name,4,4
	.local	output_branch_probs
	.comm	output_branch_probs,4,4
	.data
	.align 4
	.type	output_gcov_file, @object
	.size	output_gcov_file, 4
output_gcov_file:
	.long	1
	.local	output_long_names
	.comm	output_long_names,4,4
	.local	output_function_summary
	.comm	output_function_summary,4,4
	.local	object_directory
	.comm	object_directory,4,4
	.local	preserve_paths
	.comm	preserve_paths,4,4
	.local	output_branch_counts
	.comm	output_branch_counts,4,4
	.text
.globl main
	.type	main, @function
main:
.LFB24:
	.file 2 "../../../kg++fe/gnu/gcov.c"
	.loc 2 287 0
	leal	4(%esp), %ecx
.LCFI37:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI38:
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	pushl	%ecx
.LCFI42:
	subl	$32, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 292 0
	movl	4(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	process_args
	.loc 2 294 0
	call	open_files
	.loc 2 296 0
	call	read_files
	.loc 2 298 0
	call	scan_for_source_files
	.loc 2 300 0
	movl	sources@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L127
.L128:
	.loc 2 301 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	output_data
	.loc 2 300 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L127:
	cmpl	$0, -12(%ebp)
	jne	.L128
	.loc 2 303 0
	movl	$0, %eax
	.loc 2 304 0
	addl	$32, %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE24:
	.size	main, .-main
	.type	fnotice, @function
fnotice:
.LFB25:
	.loc 2 309 0
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
.LBB4:
	.loc 2 310 0
	leal	16(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB5:
	.loc 2 314 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	vfprintf@PLT
.LBE5:
.LBE4:
	.loc 2 316 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	fnotice, .-fnotice
	.section	.rodata
.LC0:
	.string	"Internal gcov abort.\n"
	.text
.globl fancy_abort
	.type	fancy_abort, @function
fancy_abort:
.LFB26:
	.loc 2 324 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$20, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 325 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fnotice
	.loc 2 326 0
	movl	$1, (%esp)
	call	exit@PLT
.LFE26:
	.size	fancy_abort, .-fancy_abort
	.section	.rodata
	.align 4
.LC1:
	.string	"Usage: gcov [OPTION]... SOURCEFILE\n\n"
	.align 4
.LC2:
	.string	"Print code coverage information.\n\n"
	.align 4
.LC3:
	.string	"  -h, --help                      Print this help, then exit\n"
	.align 4
.LC4:
	.string	"  -v, --version                   Print version number, then exit\n"
	.align 4
.LC5:
	.string	"  -b, --branch-probabilities      Include branch probabilities in output\n"
	.align 4
.LC6:
	.string	"  -c, --branch-counts             Given counts of branches taken\n                                    rather than percentages\n"
	.align 4
.LC7:
	.string	"  -n, --no-output                 Do not create an output file\n"
	.align 4
.LC8:
	.string	"  -l, --long-file-names           Use long output file names for included\n                                    source files\n"
	.align 4
.LC9:
	.string	"  -f, --function-summaries        Output summaries for each function\n"
	.align 4
.LC10:
	.string	"  -o, --object-directory DIR|FILE Search for object files in DIR or called FILE\n"
	.align 4
.LC11:
	.string	"  -p, --preserve-paths            Preserve all pathname components\n"
	.align 4
.LC12:
	.string	"\nFor bug reporting instructions, please see:\n%s.\n"
	.text
	.type	print_usage, @function
print_usage:
.LFB27:
	.loc 2 335 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$36, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 336 0
	cmpl	$0, 8(%ebp)
	je	.L136
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L138
.L136:
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L138:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 337 0
	cmpl	$0, 8(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 2 338 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 339 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 340 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 341 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 342 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 343 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 345 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 346 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 348 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 349 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 350 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 351 0
	movl	bug_report_url@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	.loc 2 353 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	exit@PLT
.LFE27:
	.size	print_usage, .-print_usage
	.section	.rodata
.LC13:
	.string	"gcov (GCC) %s\n"
	.align 4
.LC14:
	.string	"Copyright (C) 2001 Free Software Foundation, Inc.\n"
	.align 4
.LC15:
	.string	"This is free software; see the source for copying conditions.  There is NO\nwarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\n\n"
	.text
	.type	print_version, @function
print_version:
.LFB28:
	.loc 2 360 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$20, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 361 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	version_string@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fnotice
	.loc 2 362 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fnotice
	.loc 2 363 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fnotice
	.loc 2 366 0
	movl	$0, (%esp)
	call	exit@PLT
.LFE28:
	.size	print_version, .-print_version
	.section	.rodata
.LC16:
	.string	"help"
.LC17:
	.string	"version"
.LC18:
	.string	"branch-probabilities"
.LC19:
	.string	"branch-counts"
.LC20:
	.string	"no-output"
.LC21:
	.string	"long-file-names"
.LC22:
	.string	"function-summaries"
.LC23:
	.string	"preserve-paths"
.LC24:
	.string	"object-directory"
.LC25:
	.string	"object-file"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	options, @object
	.size	options, 160
options:
	.long	.LC16
	.long	0
	.long	0
	.long	104
	.long	.LC17
	.long	0
	.long	0
	.long	118
	.long	.LC18
	.long	0
	.long	0
	.long	98
	.long	.LC19
	.long	0
	.long	0
	.long	99
	.long	.LC20
	.long	0
	.long	0
	.long	110
	.long	.LC21
	.long	0
	.long	0
	.long	108
	.long	.LC22
	.long	0
	.long	0
	.long	102
	.long	.LC23
	.long	0
	.long	0
	.long	112
	.long	.LC24
	.long	1
	.long	0
	.long	111
	.long	.LC25
	.long	1
	.long	0
	.long	111
	.section	.rodata
.LC26:
	.string	"hvbclnfo:p"
	.text
	.type	process_args, @function
process_args:
.LFB29:
	.loc 2 389 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$52, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 392 0
	jmp	.L160
.L144:
	.loc 2 394 0
	movl	-8(%ebp), %eax
	subl	$98, %eax
	movl	%eax, -24(%ebp)
	cmpl	$20, -24(%ebp)
	ja	.L145
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L155@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L155:
	.long	.L146@GOTOFF
	.long	.L147@GOTOFF
	.long	.L145@GOTOFF
	.long	.L145@GOTOFF
	.long	.L148@GOTOFF
	.long	.L145@GOTOFF
	.long	.L149@GOTOFF
	.long	.L145@GOTOFF
	.long	.L145@GOTOFF
	.long	.L145@GOTOFF
	.long	.L150@GOTOFF
	.long	.L145@GOTOFF
	.long	.L151@GOTOFF
	.long	.L152@GOTOFF
	.long	.L153@GOTOFF
	.long	.L145@GOTOFF
	.long	.L145@GOTOFF
	.long	.L145@GOTOFF
	.long	.L145@GOTOFF
	.long	.L145@GOTOFF
	.long	.L154@GOTOFF
	.text
.L149:
	.loc 2 397 0
	movl	$0, (%esp)
	call	print_usage
.L154:
	.loc 2 400 0
	call	print_version
.L146:
	.loc 2 403 0
	movl	$1, output_branch_probs@GOTOFF(%ebx)
	.loc 2 404 0
	jmp	.L143
.L147:
	.loc 2 406 0
	movl	$1, output_branch_counts@GOTOFF(%ebx)
	.loc 2 407 0
	jmp	.L143
.L151:
	.loc 2 409 0
	movl	$0, output_gcov_file@GOTOFF(%ebx)
	.loc 2 410 0
	jmp	.L143
.L150:
	.loc 2 412 0
	movl	$1, output_long_names@GOTOFF(%ebx)
	.loc 2 413 0
	jmp	.L143
.L148:
	.loc 2 415 0
	movl	$1, output_function_summary@GOTOFF(%ebx)
	.loc 2 416 0
	jmp	.L143
.L152:
	.loc 2 418 0
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, object_directory@GOTOFF(%ebx)
	.loc 2 419 0
	jmp	.L143
.L153:
	.loc 2 421 0
	movl	$1, preserve_paths@GOTOFF(%ebx)
	.loc 2 422 0
	jmp	.L143
.L145:
	.loc 2 424 0
	movl	$1, (%esp)
	call	print_usage
.L143:
.L160:
	.loc 2 392 0
	movl	$0, 16(%esp)
	leal	options@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	getopt_long@PLT
	movl	%eax, -8(%ebp)
	cmpl	$-1, -8(%ebp)
	jne	.L144
	.loc 2 429 0
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	optind@GOT(%ebx), %edx
	movl	(%edx), %edx
	cmpl	%edx, %eax
	je	.L157
	.loc 2 430 0
	movl	$1, (%esp)
	call	print_usage
.L157:
	.loc 2 432 0
	movl	optind@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, input_file_name@GOTOFF(%ebx)
	.loc 2 433 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	process_args, .-process_args
	.section	.rodata
.LC27:
	.string	"/"
.LC28:
	.string	"rb"
	.align 4
.LC29:
	.string	"Could not open basic block file %s.\n"
	.align 4
.LC30:
	.string	"Could not open program flow graph file %s.\n"
.LC31:
	.string	"Could not open data file %s.\n"
	.align 4
.LC32:
	.string	"Assuming that all execution counts are zero.\n"
	.align 4
.LC33:
	.string	"No executable code associated with file %s.\n"
	.text
	.type	open_files, @function
open_files:
.LFB30:
	.loc 2 446 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%edi
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$156, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 449 0
	movl	input_file_name@GOTOFF(%ebx), %eax
	movl	$-1, %ecx
	movl	%eax, -136(%ebp)
	movl	$0, %eax
	cld
	movl	-136(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 2 452 0
	movl	object_directory@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L162
	movl	object_directory@GOTOFF(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L162
.LBB6:
	.loc 2 456 0
	movl	object_directory@GOTOFF(%ebx), %eax
	movl	$-1, %ecx
	movl	%eax, -140(%ebp)
	movl	$0, %eax
	cld
	movl	-140(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	movl	%eax, -20(%ebp)
	.loc 2 457 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 2 458 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 2 460 0
	movl	object_directory@GOTOFF(%ebx), %edx
	leal	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	jne	.L165
	movl	-100(%ebp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L165
	movl	$1, -132(%ebp)
	jmp	.L168
.L165:
	movl	$0, -132(%ebp)
.L168:
	movl	-132(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 461 0
	movl	object_directory@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 2 462 0
	cmpl	$0, -16(%ebp)
	je	.L172
	movl	-24(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -144(%ebp)
	movl	$0, %eax
	cld
	movl	-144(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-24(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L172
	.loc 2 463 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 2 452 0
	jmp	.L172
.L162:
.LBE6:
	.loc 2 467 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 2 468 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 2 469 0
	movl	$1, -16(%ebp)
.L172:
	.loc 2 472 0
	cmpl	$0, -16(%ebp)
	je	.L173
	.loc 2 475 0
	movl	input_file_name@GOTOFF(%ebx), %eax
	movl	$47, 4(%esp)
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -28(%ebp)
	.loc 2 476 0
	cmpl	$0, -28(%ebp)
	je	.L175
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -128(%ebp)
	jmp	.L177
.L175:
	movl	input_file_name@GOTOFF(%ebx), %edi
	movl	%edi, -128(%ebp)
.L177:
	movl	-128(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 2 478 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
.L173:
	.loc 2 481 0
	movl	$46, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -28(%ebp)
	.loc 2 482 0
	cmpl	$0, -28(%ebp)
	je	.L178
	.loc 2 483 0
	movl	-28(%ebp), %eax
	movb	$0, (%eax)
.L178:
	.loc 2 485 0
	movl	-24(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -148(%ebp)
	movl	$0, %eax
	cld
	movl	-148(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 2 486 0
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, da_file_name@GOTOFF(%ebx)
	.loc 2 487 0
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, bb_file_name@GOTOFF(%ebx)
	.loc 2 488 0
	movl	-20(%ebp), %eax
	addl	$5, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, bbg_file_name@GOTOFF(%ebx)
	.loc 2 490 0
	movl	da_file_name@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 2 491 0
	movl	bb_file_name@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 2 492 0
	movl	bbg_file_name@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 2 493 0
	movl	da_file_name@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	$6382638, (%eax)
	.loc 2 494 0
	movl	bb_file_name@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	$6447662, (%eax)
	.loc 2 495 0
	movl	bbg_file_name@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	$1734500910, (%eax)
	movb	$0, 4(%eax)
	.loc 2 497 0
	movl	bb_file_name@GOTOFF(%ebx), %edx
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, bb_file@GOTOFF(%ebx)
	.loc 2 498 0
	movl	bb_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L180
	.loc 2 500 0
	movl	bb_file_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 501 0
	movl	$1, (%esp)
	call	exit@PLT
.L180:
	.loc 2 504 0
	movl	bbg_file_name@GOTOFF(%ebx), %edx
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, bbg_file@GOTOFF(%ebx)
	.loc 2 505 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L182
	.loc 2 507 0
	movl	bbg_file_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 509 0
	movl	$1, (%esp)
	call	exit@PLT
.L182:
.LBB7:
	.loc 2 515 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fileno@PLT
	movl	%eax, %edx
	leal	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fstat@PLT
	testl	%eax, %eax
	jne	.L184
	.loc 2 516 0
	movl	-52(%ebp), %eax
	movl	%eax, bb_file_time@GOTOFF(%ebx)
.L184:
.LBE7:
	.loc 2 521 0
	movl	da_file_name@GOTOFF(%ebx), %edx
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, da_file@GOTOFF(%ebx)
	.loc 2 522 0
	movl	da_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L186
	.loc 2 524 0
	movl	da_file_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 525 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fnotice
.L186:
	.loc 2 531 0
	movl	bbg_file@GOTOFF(%ebx), %esi
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	ungetc@PLT
	.loc 2 532 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	feof@PLT
	testl	%eax, %eax
	je	.L190
	.loc 2 534 0
	movl	input_file_name@GOTOFF(%ebx), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 536 0
	movl	$1, (%esp)
	call	exit@PLT
.L190:
	.loc 2 538 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	open_files, .-open_files
	.type	init_arc, @function
init_arc:
.LFB31:
	.loc 2 547 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	.loc 2 548 0
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 2 549 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 2 551 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	.loc 2 552 0
	movl	8(%ebp), %edx
	movzbl	16(%edx), %eax
	andl	$-2, %eax
	movb	%al, 16(%edx)
	.loc 2 553 0
	movl	8(%ebp), %edx
	movzbl	16(%edx), %eax
	andl	$-3, %eax
	movb	%al, 16(%edx)
	.loc 2 554 0
	movl	8(%ebp), %edx
	movzbl	16(%edx), %eax
	andl	$-5, %eax
	movb	%al, 16(%edx)
	.loc 2 555 0
	movl	8(%ebp), %edx
	movzbl	16(%edx), %eax
	andl	$-9, %eax
	movb	%al, 16(%edx)
	.loc 2 557 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 2 558 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 2 559 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	8(%ecx), %eax
	movl	12(%ecx), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 2 561 0
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 2 562 0
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 2 563 0
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	16(%ecx), %eax
	movl	20(%ecx), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 2 564 0
	popl	%ebp
	ret
.LFE31:
	.size	init_arc, .-init_arc
	.type	reverse_arcs, @function
reverse_arcs:
.LFB32:
	.loc 2 571 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	subl	$16, %esp
.LCFI74:
	.loc 2 572 0
	movl	$0, -8(%ebp)
	.loc 2 575 0
	jmp	.L194
.L195:
	.loc 2 577 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 2 578 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 2 579 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 575 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
.L194:
	cmpl	$0, 8(%ebp)
	jne	.L195
	.loc 2 582 0
	movl	-8(%ebp), %eax
	.loc 2 583 0
	leave
	ret
.LFE32:
	.size	reverse_arcs, .-reverse_arcs
	.section	.rodata
.LC34:
	.string	".da file corrupted!\n"
	.text
	.type	read_profile, @function
read_profile:
.LFB33:
	.loc 2 592 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%edi
.LCFI77:
	pushl	%esi
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$92, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 594 0
	movl	$1, -40(%ebp)
	.loc 2 599 0
	movl	16(%ebp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -36(%ebp)
	.loc 2 600 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -88(%ebp)
	movl	$0, %eax
	cld
	movl	-88(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 2 601 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 2 603 0
	movl	$0, -44(%ebp)
	jmp	.L199
.L200:
	.loc 2 604 0
	movl	-44(%ebp), %eax
	sall	$3, %eax
	addl	-36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 2 603 0
	addl	$1, -44(%ebp)
.L199:
	movl	-44(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L200
	.loc 2 606 0
	movl	da_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L202
	.loc 2 607 0
	movl	-36(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L204
.L202:
	.loc 2 609 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	rewind@PLT
.L205:
.LBB8:
	.loc 2 616 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	jne	.L206
	.loc 2 619 0
	movl	-48(%ebp), %eax
	cmpl	$-123, %eax
	je	.L208
	.loc 2 621 0
	movl	$0, -40(%ebp)
	.loc 2 622 0
	jmp	.L206
.L208:
	.loc 2 625 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L210
	.loc 2 627 0
	movl	$0, -40(%ebp)
	.loc 2 628 0
	jmp	.L206
.L210:
	.loc 2 631 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L212
	.loc 2 633 0
	movl	$0, -40(%ebp)
	.loc 2 634 0
	jmp	.L206
.L212:
	.loc 2 638 0
	movl	-52(%ebp), %eax
	movl	da_file@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fseek@PLT
	.loc 2 640 0
	movl	$0, -24(%ebp)
	jmp	.L214
.L215:
.LBB9:
	.loc 2 646 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	-28(%ebp), %edx
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_gcov_string
	testl	%eax, %eax
	je	.L216
	.loc 2 650 0
	movl	$0, -40(%ebp)
	.loc 2 651 0
	jmp	.L218
.L216:
	.loc 2 654 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L219
	.loc 2 656 0
	movl	$0, -40(%ebp)
	.loc 2 657 0
	jmp	.L218
.L219:
	.loc 2 660 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L221
	.loc 2 662 0
	movl	$0, -40(%ebp)
	.loc 2 663 0
	jmp	.L218
.L221:
	.loc 2 666 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L223
	movl	-60(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L223
	movl	-64(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L226
.L223:
	.loc 2 670 0
	movl	-60(%ebp), %eax
	sall	$3, %eax
	movl	da_file@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fseek@PLT
	testl	%eax, %eax
	jns	.L229
	.loc 2 672 0
	movl	$0, -40(%ebp)
	.loc 2 673 0
	jmp	.L218
.L226:
.LBB10:
	.loc 2 680 0
	movl	$0, -20(%ebp)
	jmp	.L230
.L231:
	.loc 2 681 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$8, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_gcov_type
	testl	%eax, %eax
	je	.L232
	.loc 2 683 0
	movl	$0, -40(%ebp)
	.loc 2 684 0
	jmp	.L229
.L232:
	.loc 2 688 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-36(%ebp), %ecx
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	-36(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 2 680 0
	addl	$1, -20(%ebp)
.L230:
	movl	-60(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L231
.L229:
.LBE10:
.LBE9:
	.loc 2 640 0
	addl	$1, -24(%ebp)
.L214:
	movl	-56(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jl	.L215
.L218:
	.loc 2 693 0
	cmpl	$0, -40(%ebp)
	je	.L206
	.loc 2 696 0
	jmp	.L205
.L206:
.LBE8:
	.loc 2 698 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 700 0
	cmpl	$0, -40(%ebp)
	jne	.L235
	.loc 2 702 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 2 703 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 704 0
	call	abort@PLT
.L235:
	.loc 2 707 0
	movl	-36(%ebp), %edi
	movl	%edi, -84(%ebp)
.L204:
	movl	-84(%ebp), %eax
	.loc 2 708 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	read_profile, .-read_profile
	.type	create_program_flow_graph, @function
create_program_flow_graph:
.LFB34:
	.loc 2 716 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%esi
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$96, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 722 0
	movl	$0, -28(%ebp)
	.loc 2 724 0
	movl	$0, -20(%ebp)
	.loc 2 729 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 730 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 731 0
	movl	-72(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 2 732 0
	movl	bbg_file@GOTOFF(%ebx), %edx
	movl	-72(%ebp), %eax
	addl	$1, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fread@PLT
	.loc 2 735 0
	movl	-72(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$30, %ecx
	leal	(%edx,%ecx), %eax
	andl	$3, %eax
	subl	%ecx, %eax
	movl	%eax, -76(%ebp)
	.loc 2 737 0
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L239
	.loc 2 738 0
	movl	-76(%ebp), %edx
	movl	$4, %eax
	subl	%edx, %eax
	movl	bbg_file@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fseek@PLT
.L239:
	.loc 2 740 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 743 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 746 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 749 0
	movl	-44(%ebp), %eax
	movl	$36, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 2 751 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 2 752 0
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 2 755 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 756 0
	movl	$0, -40(%ebp)
	jmp	.L241
.L242:
.LBB11:
	.loc 2 760 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 761 0
	movl	$0, -12(%ebp)
	jmp	.L243
.L244:
	.loc 2 763 0
	movl	-48(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	movl	%eax, %ecx
	leal	-1(%edx), %eax
	movl	%eax, -48(%ebp)
	testb	%cl, %cl
	je	.L245
	.loc 2 764 0
	call	abort@PLT
.L245:
	.loc 2 766 0
	movl	-40(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 2 767 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 769 0
	movl	$28, (%esp)
	call	xmalloc@PLT
	movl	%eax, -36(%ebp)
	.loc 2 770 0
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	init_arc
	.loc 2 772 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 773 0
	movl	-60(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L247
	.loc 2 774 0
	movl	-36(%ebp), %eax
	movzbl	16(%eax), %eax
	shrb	%al
	andl	$1, %eax
	addl	$1, %eax
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	16(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 16(%ecx)
	jmp	.L249
.L247:
	.loc 2 776 0
	addl	$1, -28(%ebp)
.L249:
	.loc 2 777 0
	movl	-60(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	setne	%al
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	16(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 16(%ecx)
	.loc 2 778 0
	movl	-60(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	16(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 16(%ecx)
	.loc 2 761 0
	addl	$1, -12(%ebp)
.L243:
	movl	-64(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L244
.LBE11:
	.loc 2 756 0
	addl	$1, -40(%ebp)
.L241:
	movl	-44(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jl	.L242
	.loc 2 782 0
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L252
	.loc 2 783 0
	call	abort@PLT
.L252:
	.loc 2 787 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	.loc 2 788 0
	movl	-52(%ebp), %eax
	cmpl	$-1, %eax
	je	.L254
	.loc 2 789 0
	call	abort@PLT
.L254:
	.loc 2 794 0
	movl	$0, -40(%ebp)
	jmp	.L256
.L257:
	.loc 2 795 0
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L258
	.loc 2 796 0
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	-32(%ebp), %esi
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	reverse_arcs
	movl	%eax, (%esi)
.L258:
	.loc 2 794 0
	addl	$1, -40(%ebp)
.L256:
	movl	-44(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jl	.L257
	.loc 2 800 0
	movl	-68(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	read_profile
	movl	%eax, -24(%ebp)
	.loc 2 810 0
	movl	$0, -40(%ebp)
	jmp	.L261
.L262:
	.loc 2 811 0
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L263
.L264:
	.loc 2 812 0
	movl	-36(%ebp), %eax
	movzbl	16(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L265
	.loc 2 814 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-36(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	addl	$1, -20(%ebp)
	.loc 2 815 0
	movl	-36(%ebp), %edx
	movzbl	16(%edx), %eax
	orl	$1, %eax
	movb	%al, 16(%edx)
	.loc 2 816 0
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-32(%ebp), %ecx
	movl	8(%ecx), %eax
	movl	12(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 2 817 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-32(%ebp), %ecx
	movl	16(%ecx), %eax
	movl	20(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
.L265:
	.loc 2 811 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
.L263:
	cmpl	$0, -36(%ebp)
	jne	.L264
	.loc 2 810 0
	addl	$1, -40(%ebp)
.L261:
	movl	-44(%ebp), %eax
	cmpl	%eax, -40(%ebp)
	jl	.L262
	.loc 2 819 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 820 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 821 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	create_program_flow_graph, .-create_program_flow_graph
	.type	solve_program_flow_graph, @function
solve_program_flow_graph:
.LFB35:
	.loc 2 826 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%ebx
.LCFI88:
	subl	$36, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 834 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 2 835 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 2 854 0
	movl	$1, -28(%ebp)
	.loc 2 855 0
	movl	$0, -32(%ebp)
	.loc 2 856 0
	jmp	.L271
.L272:
	.loc 2 858 0
	addl	$1, -32(%ebp)
	.loc 2 859 0
	movl	$0, -28(%ebp)
	.loc 2 861 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L273
.L274:
	.loc 2 863 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movzbl	32(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L275
	.loc 2 865 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L277
	.loc 2 867 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 2 868 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L279
.L280:
	.loc 2 870 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	addl	%eax, -40(%ebp)
	adcl	%edx, -36(%ebp)
	.loc 2 869 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
.L279:
	.loc 2 868 0
	cmpl	$0, -20(%ebp)
	jne	.L280
	.loc 2 871 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-16(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	.loc 2 872 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-16(%ebp), %edx
	movzbl	32(%edx), %eax
	orl	$1, %eax
	movb	%al, 32(%edx)
	.loc 2 873 0
	movl	$1, -28(%ebp)
	jmp	.L275
.L277:
	.loc 2 875 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L275
	.loc 2 877 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 2 878 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L283
.L284:
	.loc 2 880 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	addl	%eax, -40(%ebp)
	adcl	%edx, -36(%ebp)
	.loc 2 879 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L283:
	.loc 2 878 0
	cmpl	$0, -20(%ebp)
	jne	.L284
	.loc 2 881 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-16(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	.loc 2 882 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-16(%ebp), %edx
	movzbl	32(%edx), %eax
	orl	$1, %eax
	movb	%al, 32(%edx)
	.loc 2 883 0
	movl	$1, -28(%ebp)
.L275:
	.loc 2 886 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movzbl	32(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L286
	.loc 2 888 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L288
	.loc 2 890 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 2 893 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L290
.L291:
	.loc 2 895 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	addl	%eax, -40(%ebp)
	adcl	%edx, -36(%ebp)
	.loc 2 894 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
.L290:
	.loc 2 893 0
	cmpl	$0, -20(%ebp)
	jne	.L291
	.loc 2 897 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	subl	-40(%ebp), %eax
	sbbl	-36(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 2 899 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L293
.L294:
	.loc 2 901 0
	movl	-20(%ebp), %eax
	movzbl	16(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L295
	.loc 2 900 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
.L293:
	.loc 2 899 0
	cmpl	$0, -20(%ebp)
	jne	.L294
.L295:
	.loc 2 903 0
	cmpl	$0, -20(%ebp)
	jne	.L297
	.loc 2 904 0
	call	abort@PLT
.L297:
	.loc 2 905 0
	movl	-20(%ebp), %edx
	movzbl	16(%edx), %eax
	orl	$1, %eax
	movb	%al, 16(%edx)
	.loc 2 906 0
	movl	-20(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 2 907 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-16(%ebp), %ecx
	movl	8(%ecx), %eax
	movl	12(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 2 909 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-16(%ebp), %ecx
	movl	16(%ecx), %eax
	movl	20(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 2 910 0
	movl	$1, -28(%ebp)
.L288:
	.loc 2 912 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L286
	.loc 2 914 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 2 917 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L300
.L301:
	.loc 2 919 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	addl	%eax, -40(%ebp)
	adcl	%edx, -36(%ebp)
	.loc 2 918 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L300:
	.loc 2 917 0
	cmpl	$0, -20(%ebp)
	jne	.L301
	.loc 2 921 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	subl	-40(%ebp), %eax
	sbbl	-36(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 2 923 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L303
.L304:
	.loc 2 925 0
	movl	-20(%ebp), %eax
	movzbl	16(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L305
	.loc 2 924 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L303:
	.loc 2 923 0
	cmpl	$0, -20(%ebp)
	jne	.L304
.L305:
	.loc 2 927 0
	cmpl	$0, -20(%ebp)
	jne	.L307
	.loc 2 928 0
	call	abort@PLT
.L307:
	.loc 2 929 0
	movl	-20(%ebp), %edx
	movzbl	16(%edx), %eax
	orl	$1, %eax
	movb	%al, 16(%edx)
	.loc 2 930 0
	movl	-20(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 2 931 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-16(%ebp), %ecx
	movl	16(%ecx), %eax
	movl	20(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 2 933 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-16(%ebp), %ecx
	movl	8(%ecx), %eax
	movl	12(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 2 934 0
	movl	$1, -28(%ebp)
.L286:
	.loc 2 861 0
	subl	$1, -24(%ebp)
.L273:
	cmpl	$0, -24(%ebp)
	jns	.L274
.L271:
	.loc 2 856 0
	cmpl	$0, -28(%ebp)
	jne	.L272
	.loc 2 942 0
	movl	$0, -24(%ebp)
	jmp	.L310
.L311:
	.loc 2 943 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L312
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L314
.L312:
	.loc 2 944 0
	call	abort@PLT
.L314:
	.loc 2 942 0
	addl	$1, -24(%ebp)
.L310:
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L311
	.loc 2 945 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	solve_program_flow_graph, .-solve_program_flow_graph
	.type	read_files, @function
read_files:
.LFB36:
	.loc 2 950 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%esi
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$112, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 952 0
	movl	$0, -16(%ebp)
	.loc 2 955 0
	jmp	.L318
.L319:
	.loc 2 957 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 2 959 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 2 960 0
	cmpl	$0, -16(%ebp)
	je	.L320
	.loc 2 961 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L322
.L320:
	.loc 2 963 0
	movl	-12(%ebp), %eax
	movl	%eax, bb_graph_list@GOTOFF(%ebx)
.L322:
	.loc 2 964 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 968 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	create_program_flow_graph
	.loc 2 971 0
	movl	bbg_file@GOTOFF(%ebx), %esi
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	ungetc@PLT
.L318:
	.loc 2 955 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	feof@PLT
	testl	%eax, %eax
	je	.L319
	.loc 2 977 0
	movl	bb_graph_list@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L324
.L325:
	.loc 2 978 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	solve_program_flow_graph
	.loc 2 977 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
.L324:
	cmpl	$0, -12(%ebp)
	jne	.L325
	.loc 2 982 0
	movl	bb_file_name@GOTOFF(%ebx), %edx
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	stat@PLT
	.loc 2 983 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, bb_data_size@GOTOFF(%ebx)
	.loc 2 985 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, bb_data@GOTOFF(%ebx)
	.loc 2 986 0
	movl	bb_file@GOTOFF(%ebx), %edx
	movl	-60(%ebp), %eax
	movl	bb_data@GOTOFF(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ecx, (%esp)
	call	fread@PLT
	.loc 2 988 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 2 989 0
	movl	da_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L327
	.loc 2 990 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L327:
	.loc 2 991 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 2 992 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE36:
	.size	read_files, .-read_files
	.type	scan_for_source_files, @function
scan_for_source_files:
.LFB37:
	.loc 2 1000 0
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
	.loc 2 1001 0
	movl	$0, -16(%ebp)
	.loc 2 1010 0
	movl	bb_data@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1011 0
	movl	sources@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 1012 0
	movl	$0, -8(%ebp)
	jmp	.L331
.L332:
	.loc 2 1014 0
	movl	$4, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	__fetch_long
	.loc 2 1015 0
	addl	$4, -12(%ebp)
	.loc 2 1016 0
	movl	-20(%ebp), %eax
	cmpl	$-1, %eax
	jne	.L333
	.loc 2 1020 0
	movl	sources@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 2 1021 0
	jmp	.L335
.L336:
	.loc 2 1022 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
.L335:
	.loc 2 1021 0
	cmpl	$0, -16(%ebp)
	je	.L337
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L336
.L337:
	.loc 2 1024 0
	cmpl	$0, -16(%ebp)
	jne	.L339
	.loc 2 1028 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 2 1029 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1030 0
	movl	-16(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 2 1031 0
	movl	sources@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 2 1032 0
	movl	sources@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L339:
.LBB12:
	.loc 2 1039 0
	addl	$1, -8(%ebp)
	.loc 2 1040 0
	movl	$4, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	__fetch_long
	.loc 2 1041 0
	addl	$4, -12(%ebp)
	.loc 2 1042 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L339
	jmp	.L342
.L333:
.LBE12:
	.loc 2 1045 0
	movl	-20(%ebp), %eax
	cmpl	$-2, %eax
	jne	.L343
.L344:
.LBB13:
	.loc 2 1051 0
	addl	$1, -8(%ebp)
	.loc 2 1052 0
	movl	$4, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	__fetch_long
	.loc 2 1053 0
	addl	$4, -12(%ebp)
	.loc 2 1054 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L344
	jmp	.L342
.L343:
.LBE13:
	.loc 2 1059 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jle	.L346
	.loc 2 1061 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jg	.L342
	.loc 2 1062 0
	movl	-20(%ebp), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L342
.L346:
	.loc 2 1064 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jns	.L342
	.loc 2 1067 0
	call	abort@PLT
.L342:
	.loc 2 1012 0
	addl	$1, -8(%ebp)
.L331:
	movl	bb_data_size@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L332
	.loc 2 1070 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	scan_for_source_files, .-scan_for_source_files
	.type	accumulate_branch_counts, @function
accumulate_branch_counts:
.LFB38:
	.loc 2 1079 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	.loc 2 1080 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L354
	.loc 2 1082 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 2 1083 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L362
	.loc 2 1084 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L362
.L354:
	.loc 2 1088 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 2 1089 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L359
	.loc 2 1090 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
.L359:
	.loc 2 1091 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L362
	.loc 2 1092 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.L362:
	.loc 2 1094 0
	popl	%ebp
	ret
.LFE38:
	.size	accumulate_branch_counts, .-accumulate_branch_counts
	.type	calculate_branch_probs, @function
calculate_branch_probs:
.LFB39:
	.loc 2 1104 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$36, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1108 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 2 1109 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L364
.L365:
.LBB14:
	.loc 2 1114 0
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L366
	.loc 2 1117 0
	movl	$24, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 2 1118 0
	movl	-12(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 2 1119 0
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L368
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	jmp	.L370
.L368:
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
.L370:
	movl	-12(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	.loc 2 1120 0
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 2 1122 0
	cmpl	$0, 16(%ebp)
	je	.L371
	.loc 2 1123 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	accumulate_branch_counts
.L371:
	.loc 2 1125 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 2 1126 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
.L366:
.LBE14:
	.loc 2 1109 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
.L364:
	cmpl	$0, -16(%ebp)
	jne	.L365
	.loc 2 1128 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	calculate_branch_probs, .-calculate_branch_probs
	.local	buffer.7319
	.comm	buffer.7319,20,1
	.section	.rodata
.LC37:
	.string	"%.*u%%"
.LC38:
	.string	"%lld"
	.align 4
.LC36:
	.long	1056964608
	.text
	.type	format_hwint, @function
format_hwint:
.LFB40:
	.loc 2 1140 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$84, %esp
.LCFI108:
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
	.loc 2 1143 0
	cmpl	$0, 24(%ebp)
	js	.L376
.LBB15:
	.loc 2 1145 0
	movl	-40(%ebp), %eax
	orl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L378
	fildll	-32(%ebp)
	fildll	-40(%ebp)
	fdivrp	%st, %st(1)
	fstps	-60(%ebp)
	jmp	.L380
.L378:
	fldz
	fstps	-60(%ebp)
.L380:
	flds	-60(%ebp)
	fstps	-24(%ebp)
	.loc 2 1147 0
	movl	$100, -16(%ebp)
	.loc 2 1150 0
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L381
.L382:
	.loc 2 1151 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sall	$2, %edx
	addl	%eax, %edx
	leal	(%edx,%edx), %eax
	movl	%eax, -16(%ebp)
.L381:
	.loc 2 1150 0
	subl	$1, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	.L382
	.loc 2 1153 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fmuls	-24(%ebp)
	flds	.LC36@GOTOFF(%ebx)
	faddp	%st, %st(1)
	fnstcw	-42(%ebp)
	movzwl	-42(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -44(%ebp)
	fldcw	-44(%ebp)
	fistpll	-56(%ebp)
	fldcw	-42(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -12(%ebp)
	.loc 2 1154 0
	cmpl	$0, -12(%ebp)
	jne	.L384
	movl	-32(%ebp), %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L384
	.loc 2 1155 0
	movl	$1, -12(%ebp)
	.loc 2 1154 0
	jmp	.L387
.L384:
	.loc 2 1156 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L387
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	xorl	-36(%ebp), %ecx
	xorl	-40(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L387
	.loc 2 1157 0
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
.L387:
	.loc 2 1158 0
	movl	24(%ebp), %edx
	addl	$1, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	buffer.7319@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	movl	%eax, -20(%ebp)
	.loc 2 1159 0
	cmpl	$0, 24(%ebp)
	je	.L394
	.loc 2 1161 0
	addl	$1, 24(%ebp)
.L392:
	.loc 2 1164 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	-20(%ebp), %edx
	movzbl	buffer.7319@GOTOFF(%ebx,%edx), %edx
	movb	%dl, buffer.7319@GOTOFF(%ebx,%eax)
	.loc 2 1165 0
	subl	$1, -20(%ebp)
	.loc 2 1167 0
	subl	$1, 24(%ebp)
	cmpl	$-1, 24(%ebp)
	jne	.L392
	.loc 2 1168 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movb	$46, buffer.7319@GOTOFF(%ebx,%eax)
	jmp	.L394
.L376:
.LBE15:
	.loc 2 1172 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	buffer.7319@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L394:
	.loc 2 1174 0
	leal	buffer.7319@GOTOFF(%ebx), %eax
	.loc 2 1175 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	format_hwint, .-format_hwint
	.section	.rodata
	.align 4
.LC39:
	.string	"%s of %d lines executed in %s %s\n"
.LC40:
	.string	"No executable lines in %s %s\n"
	.align 4
.LC41:
	.string	"%s of %d branches executed in %s %s\n"
	.align 4
.LC42:
	.string	"%s of %d branches taken at least once in %s %s\n"
.LC43:
	.string	"No branches in %s %s\n"
	.align 4
.LC44:
	.string	"%s of %d calls executed in %s %s\n"
.LC45:
	.string	"No calls in %s %s\n"
	.text
	.type	function_summary, @function
function_summary:
.LFB41:
	.loc 2 1184 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%edi
.LCFI111:
	pushl	%esi
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$60, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1185 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L397
	.loc 2 1186 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$2, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	format_hwint
	movl	%eax, %edx
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	jmp	.L399
.L397:
	.loc 2 1191 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
.L399:
	.loc 2 1194 0
	movl	output_branch_probs@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L407
	.loc 2 1196 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L402
	.loc 2 1198 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$2, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	format_hwint
	movl	%eax, %edx
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 1202 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$2, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	format_hwint
	movl	%eax, %edx
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	jmp	.L404
.L402:
	.loc 2 1209 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
.L404:
	.loc 2 1210 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L405
	.loc 2 1211 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$2, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	format_hwint
	movl	%eax, %edx
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	jmp	.L407
.L405:
	.loc 2 1216 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
.L407:
	.loc 2 1218 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	function_summary, .-function_summary
	.section	.rodata
.LC46:
	.string	"##"
.LC47:
	.string	".gcov"
	.text
	.type	make_gcov_file_name, @function
make_gcov_file_name:
.LFB42:
	.loc 2 1233 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%edi
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$48, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1235 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -44(%ebp)
	movl	$0, %eax
	cld
	movl	-44(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	input_file_name@GOTOFF(%ebx), %eax
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
	leal	(%edx,%eax), %eax
	addl	$10, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 2 1237 0
	movl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 2 1238 0
	movl	output_long_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L409
	movl	input_file_name@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L409
	.loc 2 1241 0
	movl	preserve_paths@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L412
	movl	input_file_name@GOTOFF(%ebx), %eax
	movl	$47, 4(%esp)
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -40(%ebp)
	jmp	.L414
.L412:
	movl	$0, -40(%ebp)
.L414:
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 2 1242 0
	cmpl	$0, -24(%ebp)
	je	.L415
	movl	-24(%ebp), %edi
	addl	$1, %edi
	movl	%edi, -36(%ebp)
	jmp	.L417
.L415:
	movl	input_file_name@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
.L417:
	movl	-36(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 2 1243 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 2 1244 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
.L409:
	.loc 2 1248 0
	movl	preserve_paths@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L418
	movl	$47, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -32(%ebp)
	jmp	.L420
.L418:
	movl	$0, -32(%ebp)
.L420:
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 2 1249 0
	cmpl	$0, -24(%ebp)
	je	.L421
	movl	-24(%ebp), %edi
	addl	$1, %edi
	movl	%edi, -28(%ebp)
	jmp	.L423
.L421:
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L423:
	movl	-28(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 2 1250 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 2 1252 0
	movl	preserve_paths@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L424
.LBB16:
	.loc 2 1257 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L439
.L427:
.LBB17:
	.loc 2 1259 0
	movl	$0, -12(%ebp)
	.loc 2 1261 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	cmpl	-24(%ebp), %eax
	jne	.L428
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L428
	.loc 2 1264 0
	movl	$2, -12(%ebp)
	.loc 2 1261 0
	jmp	.L431
.L428:
	.loc 2 1266 0
	movl	-16(%ebp), %eax
	addl	$2, %eax
	cmpl	-24(%ebp), %eax
	jne	.L432
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L432
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L432
	.loc 2 1269 0
	movl	$1, -12(%ebp)
	.loc 2 1270 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movb	$94, (%eax)
	.loc 2 1266 0
	jmp	.L431
.L432:
	.loc 2 1273 0
	movl	-24(%ebp), %eax
	movb	$35, (%eax)
	addl	$1, -24(%ebp)
.L431:
	.loc 2 1274 0
	cmpl	$0, -12(%ebp)
	je	.L426
	.loc 2 1276 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L437:
	.loc 2 1278 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-16(%ebp), %eax
	movb	%dl, (%eax)
	.loc 2 1279 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	addl	$1, -16(%ebp)
	testb	%al, %al
	jne	.L437
.L426:
.L439:
.LBE17:
	.loc 2 1257 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$47, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L427
.L424:
.LBE16:
	.loc 2 1287 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 2 1288 0
	movl	-20(%ebp), %eax
	.loc 2 1289 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	make_gcov_file_name, .-make_gcov_file_name
	.section	.rodata
	.align 4
.LC48:
	.string	"didn't use all bb entries of graph, function %s\n"
	.align 4
.LC49:
	.string	"block_num = %ld, num_blocks = %d\n"
.LC50:
	.string	"function"
	.align 4
.LC51:
	.string	"ERROR: unexpected line number %ld\n"
	.align 4
.LC52:
	.string	"ERROR: too many basic blocks in function %s\n"
	.align 4
.LC53:
	.string	"ERROR: out of range line number in function %s\n"
	.text
	.type	init_line_info, @function
init_line_info:
.LFB43:
	.loc 2 1301 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%edi
.LCFI122:
	pushl	%esi
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$124, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1302 0
	movl	$0, -56(%ebp)
	.loc 2 1303 0
	movl	$0, -52(%ebp)
	.loc 2 1305 0
	movl	$0, -48(%ebp)
	.loc 2 1306 0
	movl	$0, -44(%ebp)
	.loc 2 1307 0
	movl	$0, -40(%ebp)
	.loc 2 1308 0
	movl	bb_data@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 2 1311 0
	movl	$0, -28(%ebp)
	.loc 2 1313 0
	leal	-96(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 2 1314 0
	movl	output_function_summary@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L441
	.loc 2 1315 0
	leal	-96(%ebp), %eax
	movl	%eax, -48(%ebp)
.L441:
	.loc 2 1317 0
	movl	$0, -32(%ebp)
	jmp	.L443
.L444:
	.loc 2 1319 0
	movl	$4, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	__fetch_long
	.loc 2 1320 0
	addl	$4, -36(%ebp)
	.loc 2 1321 0
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	jns	.L445
.LBB18:
	.loc 2 1325 0
	movl	-60(%ebp), %eax
	cmpl	$-1, %eax
	jne	.L447
	.loc 2 1330 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	jmp	.L449
.L447:
	.loc 2 1332 0
	movl	-60(%ebp), %eax
	cmpl	$-2, %eax
	jne	.L450
	.loc 2 1336 0
	cmpl	$0, -44(%ebp)
	jne	.L452
	.loc 2 1337 0
	movl	bb_graph_list@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L454
.L452:
	.loc 2 1340 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	cmpl	-56(%ebp), %eax
	je	.L455
	.loc 2 1343 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	subl	$2, %eax
	cmpl	-56(%ebp), %eax
	jne	.L457
	.loc 2 1345 0
	movl	output_branch_probs@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L455
	cmpl	$0, -40(%ebp)
	je	.L455
	.loc 2 1346 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	calculate_branch_probs
	jmp	.L455
.L457:
	.loc 2 1350 0
	movl	-68(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 1353 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
.L455:
	.loc 2 1356 0
	cmpl	$0, -48(%ebp)
	je	.L462
	cmpl	$0, -40(%ebp)
	je	.L462
	.loc 2 1357 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	function_summary
.L462:
	.loc 2 1358 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
.L454:
	.loc 2 1360 0
	movl	$0, -56(%ebp)
	.loc 2 1361 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 2 1362 0
	leal	-96(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 2 1363 0
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L449
.L450:
	.loc 2 1367 0
	movl	-60(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 1368 0
	call	abort@PLT
.L449:
	.loc 2 1372 0
	movl	$0, -64(%ebp)
	jmp	.L465
.L466:
	.loc 2 1374 0
	movl	$4, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	__fetch_long
	.loc 2 1375 0
	addl	$4, -36(%ebp)
	.loc 2 1372 0
	addl	$1, -32(%ebp)
.L465:
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L466
	jmp	.L468
.L445:
.LBE18:
	.loc 2 1378 0
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L469
	.loc 2 1381 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-56(%ebp), %eax
	jg	.L471
	.loc 2 1383 0
	movl	-68(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 1385 0
	call	abort@PLT
.L471:
	.loc 2 1388 0
	movl	output_branch_probs@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L473
	cmpl	$0, -40(%ebp)
	je	.L473
	.loc 2 1389 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	calculate_branch_probs
.L473:
	.loc 2 1391 0
	addl	$1, -56(%ebp)
	.loc 2 1392 0
	addl	$36, -52(%ebp)
	jmp	.L468
.L469:
	.loc 2 1394 0
	cmpl	$0, -40(%ebp)
	je	.L468
	.loc 2 1396 0
	movl	-60(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L477
	.loc 2 1398 0
	movl	-68(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 1400 0
	call	abort@PLT
.L477:
	.loc 2 1403 0
	movl	-60(%ebp), %eax
	sall	$4, %eax
	addl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 2 1404 0
	cmpl	$0, -48(%ebp)
	je	.L479
	.loc 2 1406 0
	movl	-28(%ebp), %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L481
	.loc 2 1407 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
.L481:
	.loc 2 1408 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L479
	movl	-52(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L479
	.loc 2 1409 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
.L479:
	.loc 2 1413 0
	movl	-28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-52(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 2 1414 0
	movl	-28(%ebp), %edx
	movzbl	12(%edx), %eax
	orl	$1, %eax
	movb	%al, 12(%edx)
.L468:
	.loc 2 1317 0
	addl	$1, -32(%ebp)
.L443:
	movl	bb_data_size@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jl	.L444
	.loc 2 1418 0
	cmpl	$0, -48(%ebp)
	je	.L486
	cmpl	$0, -40(%ebp)
	je	.L486
	.loc 2 1419 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	function_summary
.L486:
	.loc 2 1422 0
	movl	$1, -60(%ebp)
	movl	-60(%ebp), %eax
	sall	$4, %eax
	addl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 2 1423 0
	jmp	.L489
.L490:
.LBB19:
	.loc 2 1427 0
	movl	-28(%ebp), %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L491
	.loc 2 1429 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 1430 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L491
	.loc 2 1431 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
.L491:
	.loc 2 1435 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L494
.L495:
	.loc 2 1437 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 2 1438 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 2 1439 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 2 1441 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	accumulate_branch_counts
	.loc 2 1435 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L494:
	cmpl	$0, -24(%ebp)
	jne	.L495
	.loc 2 1443 0
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
.LBE19:
	.loc 2 1423 0
	movl	-60(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -60(%ebp)
	addl	$16, -28(%ebp)
.L489:
	movl	-60(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L490
	.loc 2 1445 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	init_line_info, .-init_line_info
	.section	.rodata
.LC54:
	.string	""
.LC55:
	.string	"-"
.LC56:
	.string	"%9s:%5d:Source:%s\n"
.LC57:
	.string	"%9s:%5d:Object:%s\n"
.LC58:
	.string	"r"
	.align 4
.LC59:
	.string	"Could not open source file %s.\n"
	.align 4
.LC60:
	.string	"Warning: source file %s is newer than %s\n"
	.align 4
.LC61:
	.string	"%9s:%5d:Source is newer than compiler output\n"
.LC62:
	.string	"#####"
.LC63:
	.string	"%9s:%5ld:"
	.align 4
.LC64:
	.string	"Unexpected EOF while reading source file %s.\n"
.LC65:
	.string	"??\n"
.LC66:
	.string	"call   %2d never executed\n"
.LC67:
	.string	"call   %2d returns %s\n"
.LC68:
	.string	"branch %2d never executed\n"
.LC69:
	.string	"branch %2d taken %s\n"
.LC70:
	.string	"%9s:%5ld:%s"
	.text
	.type	output_line_info, @function
output_line_info:
.LFB44:
	.loc 2 1457 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%edi
.LCFI128:
	pushl	%esi
.LCFI129:
	pushl	%ebx
.LCFI130:
	subl	$396, %esp
.LCFI131:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -340(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -344(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -348(%ebp)
	.loc 2 1457 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 2 1462 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, -232(%ebp)
	.loc 2 1464 0
	movl	-348(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 2 1465 0
	movl	bb_file_name@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 2 1467 0
	movl	-348(%ebp), %eax
	movl	28(%eax), %edx
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, -244(%ebp)
	.loc 2 1468 0
	cmpl	$0, -244(%ebp)
	jne	.L500
	.loc 2 1470 0
	movl	-348(%ebp), %eax
	movl	28(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 1471 0
	movl	$0, -232(%ebp)
	jmp	.L502
.L500:
.LBB20:
	.loc 2 1477 0
	movl	-244(%ebp), %eax
	movl	%eax, (%esp)
	call	fileno@PLT
	movl	%eax, %edx
	leal	-332(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fstat@PLT
	testl	%eax, %eax
	jne	.L502
	movl	-268(%ebp), %edx
	movl	bb_file_time@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L502
	.loc 2 1480 0
	movl	bb_file_name@GOTOFF(%ebx), %edx
	movl	-348(%ebp), %eax
	movl	28(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fnotice
	.loc 2 1482 0
	movl	$0, 12(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L502:
.LBE20:
	.loc 2 1487 0
	movl	$1, -240(%ebp)
	movl	-240(%ebp), %eax
	sall	$4, %eax
	addl	-344(%ebp), %eax
	movl	%eax, -236(%ebp)
	.loc 2 1488 0
	jmp	.L505
.L506:
	.loc 2 1496 0
	movl	-236(%ebp), %eax
	movzbl	12(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L507
	movl	-236(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L509
	movl	-236(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$-1, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	format_hwint
	movl	%eax, -364(%ebp)
	jmp	.L511
.L509:
	leal	.LC62@GOTOFF(%ebx), %esi
	movl	%esi, -364(%ebp)
.L511:
	movl	-364(%ebp), %edi
	movl	%edi, -368(%ebp)
	jmp	.L512
.L507:
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, -368(%ebp)
.L512:
	movl	-240(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-368(%ebp), %esi
	movl	%esi, 8(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 2 1501 0
	cmpl	$0, -232(%ebp)
	je	.L513
	jmp	.L546
.L514:
.L546:
	.loc 2 1506 0
	movl	-244(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$200, 4(%esp)
	leal	-220(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	movl	%eax, -232(%ebp)
	.loc 2 1507 0
	cmpl	$0, -232(%ebp)
	jne	.L515
	.loc 2 1509 0
	movl	-348(%ebp), %eax
	movl	28(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fnotice
	.loc 2 1512 0
	jmp	.L513
.L515:
	.loc 2 1514 0
	movl	-340(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 2 1516 0
	movl	-232(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L514
	movl	-232(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -372(%ebp)
	movl	$0, %eax
	cld
	movl	-372(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-232(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L514
.L513:
	.loc 2 1518 0
	cmpl	$0, -232(%ebp)
	jne	.L518
	.loc 2 1519 0
	movl	-340(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L518:
	.loc 2 1521 0
	movl	output_branch_probs@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L520
.LBB21:
	.loc 2 1526 0
	movl	$0, -228(%ebp)
	movl	-236(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L522
.L523:
	.loc 2 1529 0
	movl	-224(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L524
	.loc 2 1531 0
	movl	-224(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L526
	.loc 2 1532 0
	movl	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	jmp	.L529
.L526:
	.loc 2 1534 0
	movl	output_branch_counts@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	-224(%ebp), %eax
	movl	8(%eax), %esi
	movl	12(%eax), %edi
	movl	%esi, -360(%ebp)
	movl	%edi, -356(%ebp)
	movl	-224(%ebp), %eax
	movl	8(%eax), %esi
	movl	12(%eax), %edi
	movl	%esi, -384(%ebp)
	movl	%edi, -380(%ebp)
	movl	-224(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-384(%ebp), %esi
	movl	-380(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%ecx, 16(%esp)
	movl	-360(%ebp), %esi
	movl	-356(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	format_hwint
	movl	%eax, 12(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	jmp	.L529
.L524:
	.loc 2 1542 0
	movl	-224(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L530
	.loc 2 1543 0
	movl	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
	jmp	.L529
.L530:
	.loc 2 1545 0
	movl	output_branch_counts@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	-224(%ebp), %eax
	movl	8(%eax), %esi
	movl	12(%eax), %edi
	movl	-224(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	format_hwint
	movl	%eax, 12(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice
.L529:
	.loc 2 1527 0
	movl	-224(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -224(%ebp)
	addl	$1, -228(%ebp)
.L522:
	.loc 2 1526 0
	cmpl	$0, -224(%ebp)
	jne	.L523
.L520:
.LBE21:
	.loc 2 1488 0
	addl	$1, -240(%ebp)
	addl	$16, -236(%ebp)
.L505:
	movl	-240(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	.L506
	.loc 2 1556 0
	cmpl	$0, -232(%ebp)
	je	.L533
	.loc 2 1558 0
	jmp	.L535
.L536:
	.loc 2 1560 0
	movl	-232(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-340(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 2 1562 0
	jmp	.L537
.L538:
	.loc 2 1564 0
	movl	-244(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$200, 4(%esp)
	leal	-220(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	movl	%eax, -232(%ebp)
	.loc 2 1565 0
	cmpl	$0, -232(%ebp)
	je	.L539
	.loc 2 1567 0
	movl	-340(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
.L537:
	.loc 2 1562 0
	movl	-232(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L538
	movl	-232(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -376(%ebp)
	movl	$0, %eax
	cld
	movl	-376(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-232(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L538
.L539:
	.loc 2 1558 0
	addl	$1, -240(%ebp)
.L535:
	movl	-244(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$200, 4(%esp)
	leal	-220(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	movl	%eax, -232(%ebp)
	cmpl	$0, -232(%ebp)
	jne	.L536
.L533:
	.loc 2 1572 0
	cmpl	$0, -244(%ebp)
	je	.L544
	.loc 2 1573 0
	movl	-244(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L544:
	.loc 2 1574 0
	movl	-20(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L545
	call	__stack_chk_fail_local
.L545:
	addl	$396, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	output_line_info, .-output_line_info
	.section	.rodata
.LC71:
	.string	"file"
.LC72:
	.string	"w"
.LC73:
	.string	"Creating %s.\n"
	.align 4
.LC74:
	.string	"Error writing output file %s.\n"
	.align 4
.LC75:
	.string	"Could not open output file %s.\n"
	.text
	.type	output_data, @function
output_data:
.LFB45:
	.loc 2 1586 0
	pushl	%ebp
.LCFI132:
	movl	%esp, %ebp
.LCFI133:
	pushl	%edi
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$80, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1589 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 2 1593 0
	leal	-64(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 2 1594 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 2 1596 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	init_line_info
	.loc 2 1597 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	function_summary
	.loc 2 1599 0
	movl	output_gcov_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L548
.LBB22:
	.loc 2 1605 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_gcov_file_name
	movl	%eax, -24(%ebp)
	.loc 2 1606 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -20(%ebp)
	.loc 2 1608 0
	cmpl	$0, -20(%ebp)
	je	.L550
	.loc 2 1610 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fnotice
	.loc 2 1611 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	output_line_info
	.loc 2 1612 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	je	.L552
	.loc 2 1613 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fnotice
.L552:
	.loc 2 1615 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	jmp	.L554
.L550:
	.loc 2 1618 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fnotice
.L554:
	.loc 2 1619 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L548:
.LBE22:
	.loc 2 1623 0
	movl	$1, -28(%ebp)
	jmp	.L555
.L556:
.LBB23:
	.loc 2 1627 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	addl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L557
.L558:
	.loc 2 1629 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1630 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 1627 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L557:
	cmpl	$0, -16(%ebp)
	jne	.L558
.LBE23:
	.loc 2 1623 0
	addl	$1, -28(%ebp)
.L555:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L556
	.loc 2 1633 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 1634 0
	addl	$80, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	output_data, .-output_data
	.local	bb_file_time
	.comm	bb_file_time,4,4
	.local	bbg_file_name
	.comm	bbg_file_name,4,4
	.local	bbg_file
	.comm	bbg_file,4,4
	.local	da_file_name
	.comm	da_file_name,4,4
	.local	da_file
	.comm	da_file,4,4
	.local	bb_file_name
	.comm	bb_file_name,4,4
	.local	bb_file
	.comm	bb_file,4,4
	.local	bb_data
	.comm	bb_data,4,4
	.local	bb_data_size
	.comm	bb_data_size,4,4
	.comm	sources,4,4
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
	.long	.LCFI4-.LCFI1
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
	.long	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI6
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI16-.LCFI14
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
	.byte	0x4
	.long	.LCFI28-.LCFI26
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
	.long	.LCFI29-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI33-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI37-.LFB24
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI40
	.byte	0x84
	.uleb128 0x4
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
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI48-.LFB26
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
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI52-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI53
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI56-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI57
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI60-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI61
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
	.long	.LCFI64-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI65
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI70-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI72-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI75-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI76
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
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI81-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI82
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI86-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI89-.LCFI87
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
	.long	.LCFI90-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI91
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI95-.LFB37
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
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI99-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI101-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI104-.LCFI102
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI105-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI109-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI114-.LCFI110
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI115-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI119-.LCFI116
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI120-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI121
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI126-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI131-.LCFI127
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI132-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI133-.LCFI132
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI133
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE60:
	.file 3 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 8 "/usr/include/bits/stat.h"
	.file 9 "/usr/include/time.h"
	.file 10 "../../../include/gnu/getopt.h"
	.file 11 "../../../kg++fe/gnu/version.h"
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
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI6-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI38-.Ltext0
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
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI56-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI57-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI64-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI65-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI73-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI81-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI82-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI90-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI91-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI101-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI102-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI115-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI116-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI132-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI133-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1f03
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/gcov.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0x9f
	.uleb128 0x3
	.long	0xa4
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
	.string	"__gnuc_va_list"
	.byte	0x7
	.byte	0x2b
	.long	0xd7
	.uleb128 0x2
	.byte	0x4
	.long	0xa4
	.uleb128 0x6
	.string	"va_list"
	.byte	0x7
	.byte	0x69
	.long	0xc1
	.uleb128 0x6
	.string	"size_t"
	.byte	0x3
	.byte	0xd6
	.long	0xb3
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
	.long	0x152
	.uleb128 0x6
	.string	"__u_quad_t"
	.byte	0x6
	.byte	0x3c
	.long	0x163
	.uleb128 0x6
	.string	"__dev_t"
	.byte	0x6
	.byte	0x89
	.long	0x18d
	.uleb128 0x6
	.string	"__uid_t"
	.byte	0x6
	.byte	0x8a
	.long	0xb3
	.uleb128 0x6
	.string	"__gid_t"
	.byte	0x6
	.byte	0x8b
	.long	0xb3
	.uleb128 0x6
	.string	"__ino_t"
	.byte	0x6
	.byte	0x8c
	.long	0x121
	.uleb128 0x6
	.string	"__mode_t"
	.byte	0x6
	.byte	0x8e
	.long	0xb3
	.uleb128 0x6
	.string	"__nlink_t"
	.byte	0x6
	.byte	0x8f
	.long	0xb3
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x20b
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x17d
	.uleb128 0x6
	.string	"__time_t"
	.byte	0x6
	.byte	0x98
	.long	0x20b
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x6
	.string	"__blksize_t"
	.byte	0x6
	.byte	0xa7
	.long	0x20b
	.uleb128 0x6
	.string	"__blkcnt_t"
	.byte	0x6
	.byte	0xac
	.long	0x20b
	.uleb128 0x2
	.byte	0x4
	.long	0xa4
	.uleb128 0x6
	.string	"FILE"
	.byte	0x4
	.byte	0x2e
	.long	0x271
	.uleb128 0x8
	.long	0x4ec
	.long	.LASF1
	.byte	0x94
	.byte	0x4
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x5
	.value	0x10c
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x5
	.value	0x111
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x5
	.value	0x112
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x5
	.value	0x113
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x5
	.value	0x114
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x5
	.value	0x115
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x5
	.value	0x116
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x5
	.value	0x117
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x5
	.value	0x118
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x5
	.value	0x11a
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x5
	.value	0x11b
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x5
	.value	0x11c
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x5
	.value	0x11e
	.long	0x54d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x5
	.value	0x120
	.long	0x553
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x5
	.value	0x122
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x5
	.value	0x126
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x5
	.value	0x128
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x5
	.value	0x12c
	.long	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x5
	.value	0x12d
	.long	0x136
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x5
	.value	0x12e
	.long	0x559
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x5
	.value	0x132
	.long	0x569
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x5
	.value	0x13b
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x5
	.value	0x144
	.long	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x5
	.value	0x145
	.long	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x5
	.value	0x146
	.long	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x5
	.value	0x147
	.long	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x5
	.value	0x148
	.long	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x5
	.value	0x14a
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x5
	.value	0x14c
	.long	0x56f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.long	0x4fc
	.long	0xa4
	.uleb128 0xb
	.long	0xba
	.byte	0x3
	.byte	0x0
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0x5
	.byte	0xb0
	.uleb128 0xd
	.long	0x54d
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0x5
	.byte	0xb7
	.long	0x54d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0x5
	.byte	0xb8
	.long	0x553
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0x5
	.byte	0xbc
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x50a
	.uleb128 0x2
	.byte	0x4
	.long	0x271
	.uleb128 0xa
	.long	0x569
	.long	0xa4
	.uleb128 0xb
	.long	0xba
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4fc
	.uleb128 0xa
	.long	0x57f
	.long	0xa4
	.uleb128 0xb
	.long	0xba
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.string	"time_t"
	.byte	0x9
	.byte	0x4d
	.long	0x228
	.uleb128 0xd
	.long	0x5c2
	.string	"timespec"
	.byte	0x8
	.byte	0x9
	.byte	0x7a
	.uleb128 0xe
	.string	"tv_sec"
	.byte	0x9
	.byte	0x7b
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tv_nsec"
	.byte	0x9
	.byte	0x7c
	.long	0x20b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.long	0x5d2
	.long	0xa4
	.uleb128 0xb
	.long	0xba
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xac
	.uleb128 0xd
	.long	0x626
	.string	"option"
	.byte	0x10
	.byte	0xa
	.byte	0x57
	.uleb128 0xe
	.string	"name"
	.byte	0xa
	.byte	0x59
	.long	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"has_arg"
	.byte	0xa
	.byte	0x5f
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"flag"
	.byte	0xa
	.byte	0x60
	.long	0x5d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"val"
	.byte	0xa
	.byte	0x61
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x76a
	.string	"stat"
	.byte	0x58
	.byte	0x8
	.byte	0x25
	.uleb128 0xe
	.string	"st_dev"
	.byte	0x8
	.byte	0x26
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x8
	.byte	0x27
	.long	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"st_ino"
	.byte	0x8
	.byte	0x29
	.long	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"st_mode"
	.byte	0x8
	.byte	0x2d
	.long	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"st_nlink"
	.byte	0x8
	.byte	0x2e
	.long	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"st_uid"
	.byte	0x8
	.byte	0x2f
	.long	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st_gid"
	.byte	0x8
	.byte	0x30
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"st_rdev"
	.byte	0x8
	.byte	0x31
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x8
	.byte	0x32
	.long	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"st_size"
	.byte	0x8
	.byte	0x34
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"st_blksize"
	.byte	0x8
	.byte	0x38
	.long	0x23a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"st_blocks"
	.byte	0x8
	.byte	0x3b
	.long	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"st_atim"
	.byte	0x8
	.byte	0x46
	.long	0x58d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"st_mtim"
	.byte	0x8
	.byte	0x47
	.long	0x58d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"st_ctim"
	.byte	0x8
	.byte	0x48
	.long	0x58d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"__unused4"
	.byte	0x8
	.byte	0x55
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"__unused5"
	.byte	0x8
	.byte	0x56
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x6
	.string	"gcov_type"
	.byte	0x2
	.byte	0x36
	.long	0x152
	.uleb128 0xf
	.long	0x80d
	.string	"__store_gcov_type"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0xac
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x10
	.long	.LASF2
	.byte	0x1
	.byte	0x3e
	.long	0x76a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF3
	.byte	0x1
	.byte	0x3f
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.long	.LASF4
	.byte	0x1
	.byte	0x40
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.string	"upper_bit"
	.byte	0x1
	.byte	0x42
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x43
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x11
	.string	"oldvalue"
	.byte	0x1
	.byte	0x47
	.long	0x76a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x87c
	.string	"__fetch_gcov_type"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	0xac
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x10
	.long	.LASF3
	.byte	0x1
	.byte	0x61
	.long	0x87c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF5
	.byte	0x1
	.byte	0x62
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.long	.LASF4
	.byte	0x1
	.byte	0x63
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x65
	.long	0x76a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x66
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x76a
	.uleb128 0xf
	.long	0x8ec
	.string	"__fetch_long"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	0xac
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x10
	.long	.LASF3
	.byte	0x1
	.byte	0x78
	.long	0x8ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF5
	.byte	0x1
	.byte	0x79
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.long	.LASF4
	.byte	0x1
	.byte	0x7a
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x7c
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x7d
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x20b
	.uleb128 0xf
	.long	0x953
	.string	"__write_gcov_type"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0xac
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x10
	.long	.LASF2
	.byte	0x1
	.byte	0x98
	.long	0x76a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF6
	.byte	0x1
	.byte	0x99
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.long	.LASF4
	.byte	0x1
	.byte	0x9a
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x9c
	.long	0x959
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x265
	.uleb128 0xa
	.long	0x969
	.long	0xa4
	.uleb128 0xb
	.long	0xba
	.byte	0x9
	.byte	0x0
	.uleb128 0xf
	.long	0x9c5
	.string	"__write_long"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	0xac
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x10
	.long	.LASF2
	.byte	0x1
	.byte	0xa6
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF6
	.byte	0x1
	.byte	0xa7
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF4
	.byte	0x1
	.byte	0xa8
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0xaa
	.long	0x959
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0x0
	.uleb128 0xf
	.long	0xa25
	.string	"__read_gcov_type"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.long	0xac
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x10
	.long	.LASF3
	.byte	0x1
	.byte	0xbd
	.long	0x87c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF6
	.byte	0x1
	.byte	0xbe
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF4
	.byte	0x1
	.byte	0xbf
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0xc1
	.long	0x959
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0x0
	.uleb128 0xf
	.long	0xa80
	.string	"__read_long"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	0xac
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x10
	.long	.LASF3
	.byte	0x1
	.byte	0xcb
	.long	0x8ec
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF6
	.byte	0x1
	.byte	0xcc
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF4
	.byte	0x1
	.byte	0xcd
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0xcf
	.long	0x959
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0x0
	.uleb128 0xf
	.long	0xb0a
	.string	"__write_gcov_string"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.long	0xac
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x10
	.long	.LASF7
	.byte	0x1
	.byte	0xdc
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF8
	.byte	0x1
	.byte	0xdd
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.long	.LASF6
	.byte	0x1
	.byte	0xde
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.long	.LASF9
	.byte	0x1
	.byte	0xdf
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.string	"temp"
	.byte	0x1
	.byte	0xe1
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0xf1
	.long	0x4ec
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0xbca
	.string	"__read_gcov_string"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	0xac
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x15
	.long	.LASF7
	.byte	0x1
	.value	0x104
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"max_length"
	.byte	0x1
	.value	0x105
	.long	0xec
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF6
	.byte	0x1
	.value	0x106
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF9
	.byte	0x1
	.value	0x107
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.string	"delim_from_file"
	.byte	0x1
	.value	0x109
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF8
	.byte	0x1
	.value	0x10a
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"read_length"
	.byte	0x1
	.value	0x10b
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"tmp"
	.byte	0x1
	.value	0x10c
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xd
	.long	0xc09
	.string	"sourcefile"
	.byte	0xc
	.byte	0x2
	.byte	0x5d
	.uleb128 0xe
	.string	"name"
	.byte	0x2
	.byte	0x5e
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF10
	.byte	0x2
	.byte	0x5f
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF11
	.byte	0x2
	.byte	0x60
	.long	0xc09
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xbca
	.uleb128 0xd
	.long	0xcc8
	.string	"adj_list"
	.byte	0x1c
	.byte	0x2
	.byte	0x6b
	.uleb128 0x19
	.long	.LASF5
	.byte	0x2
	.byte	0x6c
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"target"
	.byte	0x2
	.byte	0x6d
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF12
	.byte	0x2
	.byte	0x6e
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x2
	.byte	0x6f
	.long	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.string	"on_tree"
	.byte	0x2
	.byte	0x70
	.long	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.string	"fake"
	.byte	0x2
	.byte	0x71
	.long	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.string	"fall_through"
	.byte	0x2
	.byte	0x72
	.long	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"pred_next"
	.byte	0x2
	.byte	0x77
	.long	0xcc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"succ_next"
	.byte	0x2
	.byte	0x78
	.long	0xcc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xc0f
	.uleb128 0xd
	.long	0xd62
	.string	"bb_info"
	.byte	0x24
	.byte	0x2
	.byte	0x7f
	.uleb128 0xe
	.string	"succ"
	.byte	0x2
	.byte	0x80
	.long	0xcc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"pred"
	.byte	0x2
	.byte	0x81
	.long	0xcc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"succ_count"
	.byte	0x2
	.byte	0x82
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pred_count"
	.byte	0x2
	.byte	0x83
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"exec_count"
	.byte	0x2
	.byte	0x84
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x2
	.byte	0x85
	.long	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"on_tree"
	.byte	0x2
	.byte	0x86
	.long	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	0xdb2
	.string	"arcdata"
	.byte	0x18
	.byte	0x2
	.byte	0x91
	.uleb128 0xe
	.string	"hits"
	.byte	0x2
	.byte	0x92
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF14
	.byte	0x2
	.byte	0x93
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"call_insn"
	.byte	0x2
	.byte	0x94
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF11
	.byte	0x2
	.byte	0x95
	.long	0xdb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xd62
	.uleb128 0xd
	.long	0xdf8
	.string	"bb_info_list"
	.byte	0xc
	.byte	0x2
	.byte	0x9b
	.uleb128 0x19
	.long	.LASF15
	.byte	0x2
	.byte	0x9d
	.long	0xdf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF16
	.byte	0x2
	.byte	0x9e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF11
	.byte	0x2
	.byte	0x9f
	.long	0xdfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xcce
	.uleb128 0x2
	.byte	0x4
	.long	0xdb8
	.uleb128 0x8
	.long	0xe43
	.long	.LASF17
	.byte	0x10
	.byte	0x2
	.byte	0xa4
	.uleb128 0xe
	.string	"count"
	.byte	0x2
	.byte	0xa5
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF18
	.byte	0x2
	.byte	0xa6
	.long	0xdb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"exists"
	.byte	0x2
	.byte	0xa7
	.long	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0xef9
	.string	"coverage"
	.byte	0x20
	.byte	0x2
	.byte	0xab
	.uleb128 0xe
	.string	"lines"
	.byte	0x2
	.byte	0xac
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"lines_executed"
	.byte	0x2
	.byte	0xad
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF18
	.byte	0x2
	.byte	0xaf
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"branches_executed"
	.byte	0x2
	.byte	0xb0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"branches_taken"
	.byte	0x2
	.byte	0xb1
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"calls"
	.byte	0x2
	.byte	0xb3
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"calls_executed"
	.byte	0x2
	.byte	0xb4
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"name"
	.byte	0x2
	.byte	0xb6
	.long	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x1c
	.long	0xf4a
	.byte	0x1
	.string	"main"
	.byte	0x2
	.value	0x11f
	.byte	0x1
	.long	0xac
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x16
	.string	"argc"
	.byte	0x2
	.value	0x11d
	.long	0xac
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x16
	.string	"argv"
	.byte	0x2
	.value	0x11e
	.long	0xf4a
	.byte	0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x17
	.string	"s_ptr"
	.byte	0x2
	.value	0x120
	.long	0xc09
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x25f
	.uleb128 0x1d
	.long	0xfb0
	.string	"fnotice"
	.byte	0x2
	.value	0x135
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x15
	.long	.LASF6
	.byte	0x2
	.value	0x134
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"msgid"
	.byte	0x2
	.value	0x134
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.uleb128 0x12
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x17
	.string	"ap"
	.byte	0x2
	.value	0x136
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.long	.LBB5
	.long	.LBE5
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.string	"fancy_abort"
	.byte	0x2
	.value	0x144
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x1d
	.long	0x1021
	.string	"print_usage"
	.byte	0x2
	.value	0x14f
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x16
	.string	"error_p"
	.byte	0x2
	.value	0x14e
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF6
	.byte	0x2
	.value	0x150
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF19
	.byte	0x2
	.value	0x151
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.string	"print_version"
	.byte	0x2
	.value	0x168
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x1d
	.long	0x1092
	.string	"process_args"
	.byte	0x2
	.value	0x185
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x16
	.string	"argc"
	.byte	0x2
	.value	0x183
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"argv"
	.byte	0x2
	.value	0x184
	.long	0xf4a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"opt"
	.byte	0x2
	.value	0x186
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0x112a
	.string	"open_files"
	.byte	0x2
	.value	0x1be
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x17
	.string	"cptr"
	.byte	0x2
	.value	0x1bf
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"name"
	.byte	0x2
	.value	0x1c0
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF8
	.byte	0x2
	.value	0x1c1
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"base"
	.byte	0x2
	.value	0x1c2
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	0x110f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x18
	.long	.LASF19
	.byte	0x2
	.value	0x1c6
	.long	0x626
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x12
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x18
	.long	.LASF19
	.byte	0x2
	.value	0x201
	.long	0x626
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1188
	.string	"init_arc"
	.byte	0x2
	.value	0x223
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x15
	.long	.LASF20
	.byte	0x2
	.value	0x220
	.long	0xcc8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF5
	.byte	0x2
	.value	0x221
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.string	"target"
	.byte	0x2
	.value	0x221
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF15
	.byte	0x2
	.value	0x222
	.long	0xdf8
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x14
	.long	0x11dd
	.string	"reverse_arcs"
	.byte	0x2
	.value	0x23b
	.byte	0x1
	.long	0xcc8
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x15
	.long	.LASF20
	.byte	0x2
	.value	0x23a
	.long	0xcc8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"prev"
	.byte	0x2
	.value	0x23c
	.long	0xcc8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.long	.LASF11
	.byte	0x2
	.value	0x23d
	.long	0xcc8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x14
	.long	0x134e
	.string	"read_profile"
	.byte	0x2
	.value	0x250
	.byte	0x1
	.long	0x87c
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x15
	.long	.LASF21
	.byte	0x2
	.value	0x24d
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF22
	.byte	0x2
	.value	0x24e
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF23
	.byte	0x2
	.value	0x24f
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"i"
	.byte	0x2
	.value	0x251
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"okay"
	.byte	0x2
	.value	0x252
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"profile"
	.byte	0x2
	.value	0x253
	.long	0x87c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"function_name_buffer"
	.byte	0x2
	.value	0x254
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"function_name_buffer_len"
	.byte	0x2
	.value	0x255
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x17
	.string	"magic"
	.byte	0x2
	.value	0x264
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"extra_bytes"
	.byte	0x2
	.value	0x264
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"func_count"
	.byte	0x2
	.value	0x265
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"i"
	.byte	0x2
	.value	0x266
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x18
	.long	.LASF12
	.byte	0x2
	.value	0x282
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"chksum"
	.byte	0x2
	.value	0x283
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"j"
	.byte	0x2
	.value	0x284
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x17
	.string	"tmp"
	.byte	0x2
	.value	0x2a6
	.long	0x76a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x14cf
	.string	"create_program_flow_graph"
	.byte	0x2
	.value	0x2cc
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x16
	.string	"bptr"
	.byte	0x2
	.value	0x2cb
	.long	0xdfe
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF16
	.byte	0x2
	.value	0x2cd
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"number_arcs"
	.byte	0x2
	.value	0x2cd
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"src"
	.byte	0x2
	.value	0x2cd
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	.LASF3
	.byte	0x2
	.value	0x2cd
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"flag_bits"
	.byte	0x2
	.value	0x2cd
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"num_arcs_per_block"
	.byte	0x2
	.value	0x2cd
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"i"
	.byte	0x2
	.value	0x2ce
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF20
	.byte	0x2
	.value	0x2cf
	.long	0xcc8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF15
	.byte	0x2
	.value	0x2d0
	.long	0xdf8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF22
	.byte	0x2
	.value	0x2d1
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.long	.LASF23
	.byte	0x2
	.value	0x2d2
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"profile"
	.byte	0x2
	.value	0x2d3
	.long	0x87c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"profile_pos"
	.byte	0x2
	.value	0x2d4
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF21
	.byte	0x2
	.value	0x2d5
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"function_name_len"
	.byte	0x2
	.value	0x2d6
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"tmp"
	.byte	0x2
	.value	0x2d6
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x12
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x17
	.string	"j"
	.byte	0x2
	.value	0x2f6
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x157c
	.string	"solve_program_flow_graph"
	.byte	0x2
	.value	0x33a
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x16
	.string	"bptr"
	.byte	0x2
	.value	0x339
	.long	0xdfe
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"passes"
	.byte	0x2
	.value	0x33b
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"changes"
	.byte	0x2
	.value	0x33b
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF14
	.byte	0x2
	.value	0x33c
	.long	0x76a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"i"
	.byte	0x2
	.value	0x33d
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF20
	.byte	0x2
	.value	0x33e
	.long	0xcc8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF15
	.byte	0x2
	.value	0x33f
	.long	0xdf8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF16
	.byte	0x2
	.value	0x340
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1d
	.long	0x15d2
	.string	"read_files"
	.byte	0x2
	.value	0x3b6
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x17
	.string	"buf"
	.byte	0x2
	.value	0x3b7
	.long	0x626
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"list_end"
	.byte	0x2
	.value	0x3b8
	.long	0xdfe
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"b_ptr"
	.byte	0x2
	.value	0x3b9
	.long	0xdfe
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1d
	.long	0x1674
	.string	"scan_for_source_files"
	.byte	0x2
	.value	0x3e8
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x17
	.string	"s_ptr"
	.byte	0x2
	.value	0x3e9
	.long	0xc09
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"ptr"
	.byte	0x2
	.value	0x3ea
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.string	"count"
	.byte	0x2
	.value	0x3eb
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.long	.LASF24
	.byte	0x2
	.value	0x3ec
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	0x165a
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x18
	.long	.LASF9
	.byte	0x2
	.value	0x40d
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x12
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x18
	.long	.LASF9
	.byte	0x2
	.value	0x417
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x16c1
	.string	"accumulate_branch_counts"
	.byte	0x2
	.value	0x437
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x15
	.long	.LASF25
	.byte	0x2
	.value	0x435
	.long	0x16c1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF26
	.byte	0x2
	.value	0x436
	.long	0xdb2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xe43
	.uleb128 0x1d
	.long	0x1758
	.string	"calculate_branch_probs"
	.byte	0x2
	.value	0x450
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x15
	.long	.LASF27
	.byte	0x2
	.value	0x44d
	.long	0xdf8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF17
	.byte	0x2
	.value	0x44e
	.long	0x1758
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF25
	.byte	0x2
	.value	0x44f
	.long	0x16c1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.long	.LASF14
	.byte	0x2
	.value	0x451
	.long	0x76a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF20
	.byte	0x2
	.value	0x452
	.long	0xcc8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x18
	.long	.LASF26
	.byte	0x2
	.value	0x457
	.long	0xdb2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xe04
	.uleb128 0x14
	.long	0x181a
	.string	"format_hwint"
	.byte	0x2
	.value	0x474
	.byte	0x1
	.long	0x99
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x16
	.string	"top"
	.byte	0x2
	.value	0x472
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"bottom"
	.byte	0x2
	.value	0x472
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"dp"
	.byte	0x2
	.value	0x473
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	0x1804
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x17
	.string	"ratio"
	.byte	0x2
	.value	0x479
	.long	0x181a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"ix"
	.byte	0x2
	.value	0x47a
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"limit"
	.byte	0x2
	.value	0x47b
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"percent"
	.byte	0x2
	.value	0x47c
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x17
	.string	"buffer"
	.byte	0x2
	.value	0x475
	.long	0x5c2
	.byte	0x5
	.byte	0x3
	.long	buffer.7319
	.byte	0x0
	.uleb128 0x4
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x1d
	.long	0x186a
	.string	"function_summary"
	.byte	0x2
	.value	0x4a0
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x15
	.long	.LASF25
	.byte	0x2
	.value	0x49e
	.long	0x16c1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"title"
	.byte	0x2
	.value	0x49f
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x14
	.long	0x1901
	.string	"make_gcov_file_name"
	.byte	0x2
	.value	0x4d1
	.byte	0x1
	.long	0x25f
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x16
	.string	"src_name"
	.byte	0x2
	.value	0x4d0
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"cptr"
	.byte	0x2
	.value	0x4d2
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"name"
	.byte	0x2
	.value	0x4d3
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x17
	.string	"prev"
	.byte	0x2
	.value	0x4e7
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x17
	.string	"shift"
	.byte	0x2
	.value	0x4eb
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1a61
	.string	"init_line_info"
	.byte	0x2
	.value	0x515
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x15
	.long	.LASF17
	.byte	0x2
	.value	0x512
	.long	0x1758
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF14
	.byte	0x2
	.value	0x513
	.long	0x16c1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF10
	.byte	0x2
	.value	0x514
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"block_num"
	.byte	0x2
	.value	0x516
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF27
	.byte	0x2
	.value	0x517
	.long	0xdf8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	.LASF25
	.byte	0x2
	.value	0x518
	.long	0xe43
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"func_ptr"
	.byte	0x2
	.value	0x519
	.long	0x16c1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"current_graph"
	.byte	0x2
	.value	0x51a
	.long	0xdfe
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"is_this_file"
	.byte	0x2
	.value	0x51b
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"ptr"
	.byte	0x2
	.value	0x51c
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"count"
	.byte	0x2
	.value	0x51d
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF24
	.byte	0x2
	.value	0x51e
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.long	.LASF28
	.byte	0x2
	.value	0x51f
	.long	0x1758
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	0x1a28
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x18
	.long	.LASF9
	.byte	0x2
	.value	0x52b
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x12
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x18
	.long	.LASF26
	.byte	0x2
	.value	0x591
	.long	0xdb2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"prev"
	.byte	0x2
	.value	0x591
	.long	0xdb2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF11
	.byte	0x2
	.value	0x591
	.long	0xdb2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1b68
	.string	"output_line_info"
	.byte	0x2
	.value	0x5b1
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x15
	.long	.LASF29
	.byte	0x2
	.value	0x5ad
	.long	0x953
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x15
	.long	.LASF17
	.byte	0x2
	.value	0x5ae
	.long	0x1b68
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x15
	.long	.LASF14
	.byte	0x2
	.value	0x5af
	.long	0x1b73
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x15
	.long	.LASF10
	.byte	0x2
	.value	0x5b0
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.string	"source_file"
	.byte	0x2
	.value	0x5b2
	.long	0x953
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x18
	.long	.LASF24
	.byte	0x2
	.value	0x5b3
	.long	0x20b
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x18
	.long	.LASF28
	.byte	0x2
	.value	0x5b4
	.long	0x1b68
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x18
	.long	.LASF7
	.byte	0x2
	.value	0x5b5
	.long	0x1b7e
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x17
	.string	"retval"
	.byte	0x2
	.value	0x5b6
	.long	0x99
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x22
	.long	0x1b3f
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x18
	.long	.LASF19
	.byte	0x2
	.value	0x5c3
	.long	0x626
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.byte	0x0
	.uleb128 0x12
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x17
	.string	"i"
	.byte	0x2
	.value	0x5f3
	.long	0xac
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x18
	.long	.LASF26
	.byte	0x2
	.value	0x5f4
	.long	0xdb2
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1b6e
	.uleb128 0x3
	.long	0xe04
	.uleb128 0x2
	.byte	0x4
	.long	0x1b79
	.uleb128 0x3
	.long	0xe43
	.uleb128 0xa
	.long	0x1b8e
	.long	0xa4
	.uleb128 0xb
	.long	0xba
	.byte	0xc7
	.byte	0x0
	.uleb128 0x1d
	.long	0x1c51
	.string	"output_data"
	.byte	0x2
	.value	0x632
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x16
	.string	"s_ptr"
	.byte	0x2
	.value	0x631
	.long	0xc09
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF17
	.byte	0x2
	.value	0x633
	.long	0x1758
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF24
	.byte	0x2
	.value	0x636
	.long	0x20b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF14
	.byte	0x2
	.value	0x637
	.long	0xe43
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	0x1c25
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x17
	.string	"gcov_file_name"
	.byte	0x2
	.value	0x645
	.long	0x25f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF29
	.byte	0x2
	.value	0x646
	.long	0x953
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x12
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x17
	.string	"branch"
	.byte	0x2
	.value	0x659
	.long	0xdb2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF11
	.byte	0x2
	.value	0x659
	.long	0xdb2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.string	"bb_graph_list"
	.byte	0x2
	.byte	0xbb
	.long	0xdfe
	.byte	0x5
	.byte	0x3
	.long	bb_graph_list
	.uleb128 0x11
	.string	"bb_file_time"
	.byte	0x2
	.byte	0xbf
	.long	0x57f
	.byte	0x5
	.byte	0x3
	.long	bb_file_time
	.uleb128 0x11
	.string	"bbg_file_name"
	.byte	0x2
	.byte	0xc3
	.long	0x25f
	.byte	0x5
	.byte	0x3
	.long	bbg_file_name
	.uleb128 0x11
	.string	"bbg_file"
	.byte	0x2
	.byte	0xc4
	.long	0x953
	.byte	0x5
	.byte	0x3
	.long	bbg_file
	.uleb128 0x11
	.string	"da_file_name"
	.byte	0x2
	.byte	0xc8
	.long	0x25f
	.byte	0x5
	.byte	0x3
	.long	da_file_name
	.uleb128 0x11
	.string	"da_file"
	.byte	0x2
	.byte	0xc9
	.long	0x953
	.byte	0x5
	.byte	0x3
	.long	da_file
	.uleb128 0x11
	.string	"bb_file_name"
	.byte	0x2
	.byte	0xcd
	.long	0x25f
	.byte	0x5
	.byte	0x3
	.long	bb_file_name
	.uleb128 0x11
	.string	"bb_file"
	.byte	0x2
	.byte	0xce
	.long	0x953
	.byte	0x5
	.byte	0x3
	.long	bb_file
	.uleb128 0x11
	.string	"bb_data"
	.byte	0x2
	.byte	0xd2
	.long	0x25f
	.byte	0x5
	.byte	0x3
	.long	bb_data
	.uleb128 0x11
	.string	"bb_data_size"
	.byte	0x2
	.byte	0xd6
	.long	0x20b
	.byte	0x5
	.byte	0x3
	.long	bb_data_size
	.uleb128 0x11
	.string	"input_file_name"
	.byte	0x2
	.byte	0xda
	.long	0x25f
	.byte	0x5
	.byte	0x3
	.long	input_file_name
	.uleb128 0x11
	.string	"output_branch_probs"
	.byte	0x2
	.byte	0xde
	.long	0xac
	.byte	0x5
	.byte	0x3
	.long	output_branch_probs
	.uleb128 0x11
	.string	"output_gcov_file"
	.byte	0x2
	.byte	0xe3
	.long	0xac
	.byte	0x5
	.byte	0x3
	.long	output_gcov_file
	.uleb128 0x11
	.string	"output_long_names"
	.byte	0x2
	.byte	0xea
	.long	0xac
	.byte	0x5
	.byte	0x3
	.long	output_long_names
	.uleb128 0x11
	.string	"output_function_summary"
	.byte	0x2
	.byte	0xee
	.long	0xac
	.byte	0x5
	.byte	0x3
	.long	output_function_summary
	.uleb128 0x11
	.string	"object_directory"
	.byte	0x2
	.byte	0xf3
	.long	0x25f
	.byte	0x5
	.byte	0x3
	.long	object_directory
	.uleb128 0x11
	.string	"preserve_paths"
	.byte	0x2
	.byte	0xf7
	.long	0xac
	.byte	0x5
	.byte	0x3
	.long	preserve_paths
	.uleb128 0x11
	.string	"output_branch_counts"
	.byte	0x2
	.byte	0xfc
	.long	0xac
	.byte	0x5
	.byte	0x3
	.long	output_branch_counts
	.uleb128 0xa
	.long	0x1e50
	.long	0x5d8
	.uleb128 0xb
	.long	0xba
	.byte	0x9
	.byte	0x0
	.uleb128 0x17
	.string	"options"
	.byte	0x2
	.value	0x171
	.long	0x1e66
	.byte	0x5
	.byte	0x3
	.long	options
	.uleb128 0x3
	.long	0x1e40
	.uleb128 0x23
	.string	"stdout"
	.byte	0x4
	.byte	0x8f
	.long	0x553
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"stderr"
	.byte	0x4
	.byte	0x90
	.long	0x553
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"optarg"
	.byte	0xa
	.byte	0x28
	.long	0x25f
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"optind"
	.byte	0xa
	.byte	0x36
	.long	0xac
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x1eb6
	.long	0xa4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x23
	.string	"version_string"
	.byte	0xb
	.byte	0x3
	.long	0x1ece
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x1eab
	.uleb128 0x23
	.string	"bug_report_url"
	.byte	0xb
	.byte	0x4
	.long	0x1eeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x1eab
	.uleb128 0x25
	.string	"sources"
	.byte	0x2
	.byte	0x65
	.long	0xc09
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sources
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.long	0x33
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1f07
	.long	0xef9
	.string	"main"
	.long	0xfb0
	.string	"fancy_abort"
	.long	0x1ef0
	.string	"sources"
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
	.string	"function_name"
.LASF15:
	.string	"bb_graph"
.LASF5:
	.string	"source"
.LASF12:
	.string	"arc_count"
.LASF24:
	.string	"line_num"
.LASF1:
	.string	"_IO_FILE"
.LASF16:
	.string	"num_blocks"
.LASF10:
	.string	"maxlineno"
.LASF2:
	.string	"value"
.LASF4:
	.string	"bytes"
.LASF28:
	.string	"line_ptr"
.LASF6:
	.string	"file"
.LASF9:
	.string	"delim"
.LASF27:
	.string	"block_ptr"
.LASF19:
	.string	"status"
.LASF29:
	.string	"gcov_file"
.LASF14:
	.string	"total"
.LASF25:
	.string	"function"
.LASF7:
	.string	"string"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"length"
.LASF23:
	.string	"instr_arcs"
.LASF13:
	.string	"count_valid"
.LASF11:
	.string	"next"
.LASF17:
	.string	"line_info"
.LASF26:
	.string	"a_ptr"
.LASF18:
	.string	"branches"
.LASF20:
	.string	"arcptr"
.LASF3:
	.string	"dest"
.LASF22:
	.string	"cfg_checksum"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
