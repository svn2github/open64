	.file	"profile.c"
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
	.local	need_func_profiler
	.comm	need_func_profiler,4,4
	.section	.rodata
	.type	__FUNCTION__.13567, @object
	.size	__FUNCTION__.13567, 17
__FUNCTION__.13567:
	.string	"instrument_edges"
.LC0:
	.string	"../../../kg++fe/gnu/profile.c"
.LC1:
	.string	" (and split)"
.LC2:
	.string	""
.LC3:
	.string	"Edge %d to %d instrumented%s\n"
.LC4:
	.string	"%d edges instrumented\n"
	.text
	.type	instrument_edges, @function
instrument_edges:
.LFB24:
	.file 2 "../../../kg++fe/gnu/profile.c"
	.loc 2 185 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$64, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 186 0
	movl	$0, -28(%ebp)
	.loc 2 187 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 2 189 0
	call	remove_fake_edges@PLT
	.loc 2 191 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L127
.L128:
.LBB4:
	.loc 2 193 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 2 194 0
	jmp	.L129
.L130:
.LBB5:
	.loc 2 196 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 2 197 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L131
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L131
	.loc 2 199 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L134
	.loc 2 200 0
	leal	__FUNCTION__.13567@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$200, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L134:
	.loc 2 201 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L136
	.loc 2 202 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L138
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L138
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L141
.L138:
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
.L141:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L136:
	.loc 2 205 0
	movl	$1, need_func_profiler@GOTOFF(%ebx)
	.loc 2 206 0
	movl	total_num_edges_instrumented@GOTOFF(%ebx), %eax
	addl	-28(%ebp), %eax
	addl	$1, -28(%ebp)
	movl	%eax, (%esp)
	call	gen_edge_profiler
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insert_insn_on_edge@PLT
.L131:
	.loc 2 210 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L129:
.LBE5:
	.loc 2 194 0
	cmpl	$0, -16(%ebp)
	jne	.L130
.LBE4:
	.loc 2 191 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L127:
	cmpl	$0, -20(%ebp)
	jne	.L128
	.loc 2 214 0
	movl	profile_info@GOT(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 2 215 0
	movl	total_num_edges_instrumented@GOTOFF(%ebx), %eax
	addl	-28(%ebp), %eax
	movl	%eax, total_num_edges_instrumented@GOTOFF(%ebx)
	.loc 2 216 0
	movl	total_num_edges_instrumented@GOTOFF(%ebx), %edx
	movl	profile_info@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 218 0
	movl	total_num_blocks_created@GOTOFF(%ebx), %eax
	addl	-24(%ebp), %eax
	movl	%eax, total_num_blocks_created@GOTOFF(%ebx)
	.loc 2 219 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L144
	.loc 2 220 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L144:
	.loc 2 222 0
	call	commit_edge_insertions_watch_calls@PLT
	.loc 2 223 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	instrument_edges, .-instrument_edges
	.type	output_gcov_string, @function
output_gcov_string:
.LFB25:
	.loc 2 231 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%edi
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$48, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 235 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__write_long
	.loc 2 238 0
	movl	8(%ebp), %eax
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
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 2 239 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 2 242 0
	andl	$3, -12(%ebp)
	.loc 2 243 0
	cmpl	$0, -12(%ebp)
	je	.L148
.LBB6:
	.loc 2 247 0
	movb	$0, -13(%ebp)
	movzbl	-13(%ebp), %eax
	movb	%al, -14(%ebp)
	movzbl	-14(%ebp), %eax
	movb	%al, -15(%ebp)
	movzbl	-15(%ebp), %eax
	movb	%al, -16(%ebp)
	.loc 2 248 0
	movl	bb_file@GOTOFF(%ebx), %edx
	movl	$4, %eax
	subl	-12(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L148:
.LBE6:
	.loc 2 253 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__write_long
	.loc 2 254 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	output_gcov_string, .-output_gcov_string
	.section	.rodata
	.align 4
.LC5:
	.string	"Profile does not match flowgraph of function %s (out of date?)"
.LC6:
	.string	".da file corrupted"
	.align 4
.LC7:
	.string	"Merged %i profiles with maximal count %i.\n"
	.text
	.type	get_exec_counts, @function
get_exec_counts:
.LFB26:
	.loc 2 262 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%edi
.LCFI49:
	pushl	%esi
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$124, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 263 0
	movl	$0, -64(%ebp)
	.loc 2 265 0
	movl	$1, -56(%ebp)
	.loc 2 266 0
	movl	$0, -48(%ebp)
	.loc 2 271 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 2 274 0
	movl	profile_info@GOT(%ebx), %eax
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 2 275 0
	movl	profile_info@GOT(%ebx), %eax
	movl	$0, 20(%eax)
	.loc 2 278 0
	movl	da_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L152
	.loc 2 279 0
	movl	$0, -116(%ebp)
	jmp	.L154
.L152:
	.loc 2 283 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L155
.L156:
.LBB7:
	.loc 2 286 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L157
.L158:
	.loc 2 287 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L159
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L159
	.loc 2 288 0
	addl	$1, -64(%ebp)
.L159:
	.loc 2 286 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L157:
	cmpl	$0, -28(%ebp)
	jne	.L158
.LBE7:
	.loc 2 283 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
.L155:
	cmpl	$0, -60(%ebp)
	jne	.L156
	.loc 2 293 0
	movl	-64(%ebp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -44(%ebp)
	.loc 2 294 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	rewind@PLT
	.loc 2 295 0
	movl	-32(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -120(%ebp)
	movl	$0, %eax
	cld
	movl	-120(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 2 296 0
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -40(%ebp)
	.loc 2 298 0
	movl	$0, -52(%ebp)
	jmp	.L164
.L165:
	.loc 2 299 0
	movl	-52(%ebp), %eax
	sall	$3, %eax
	addl	-44(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 2 298 0
	addl	$1, -52(%ebp)
.L164:
	movl	-52(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jl	.L165
.L166:
.LBB8:
	.loc 2 307 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	jne	.L167
	.loc 2 310 0
	movl	-68(%ebp), %eax
	cmpl	$-123, %eax
	je	.L169
	.loc 2 312 0
	movl	$0, -56(%ebp)
	.loc 2 313 0
	jmp	.L167
.L169:
	.loc 2 316 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L171
	.loc 2 318 0
	movl	$0, -56(%ebp)
	.loc 2 319 0
	jmp	.L167
.L171:
	.loc 2 322 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L173
	.loc 2 324 0
	movl	$0, -56(%ebp)
	.loc 2 325 0
	jmp	.L167
.L173:
	.loc 2 328 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$1, 8(%esp)
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	fseek@PLT
	.loc 2 331 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$8, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_gcov_type
	.loc 2 334 0
	movl	-72(%ebp), %eax
	subl	$20, %eax
	movl	da_file@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fseek@PLT
	.loc 2 336 0
	movl	$0, -24(%ebp)
	jmp	.L175
.L176:
.LBB9:
	.loc 2 342 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	-36(%ebp), %edx
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_gcov_string
	testl	%eax, %eax
	je	.L177
	.loc 2 346 0
	movl	$0, -56(%ebp)
	.loc 2 347 0
	jmp	.L179
.L177:
	.loc 2 350 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L180
	.loc 2 352 0
	movl	$0, -56(%ebp)
	.loc 2 353 0
	jmp	.L179
.L180:
	.loc 2 356 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_long
	testl	%eax, %eax
	je	.L182
	.loc 2 358 0
	movl	$0, -56(%ebp)
	.loc 2 359 0
	jmp	.L179
.L182:
	.loc 2 362 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L184
	.loc 2 365 0
	movl	-80(%ebp), %eax
	sall	$3, %eax
	movl	da_file@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fseek@PLT
	testl	%eax, %eax
	jns	.L188
	.loc 2 367 0
	movl	$0, -56(%ebp)
	.loc 2 368 0
	jmp	.L179
.L184:
	.loc 2 371 0
	movl	-80(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jne	.L189
	movl	profile_info@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-84(%ebp), %eax
	cmpl	%eax, %edx
	je	.L191
.L189:
	.loc 2 373 0
	movl	$0, -56(%ebp)
	movl	$1, -48(%ebp)
	.loc 2 371 0
	jmp	.L188
.L191:
.LBB10:
	.loc 2 378 0
	movl	profile_info@GOT(%ebx), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	profile_info@GOT(%ebx), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 2 379 0
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	profile_info@GOT(%ebx), %eax
	movl	%edx, 20(%eax)
	.loc 2 381 0
	movl	$0, -20(%ebp)
	jmp	.L192
.L193:
	.loc 2 382 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	$8, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	__read_gcov_type
	testl	%eax, %eax
	je	.L194
	.loc 2 384 0
	movl	$0, -56(%ebp)
	.loc 2 385 0
	jmp	.L188
.L194:
	.loc 2 389 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-44(%ebp), %ecx
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 2 381 0
	addl	$1, -20(%ebp)
.L192:
	movl	-80(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jl	.L193
.L188:
.LBE10:
.LBE9:
	.loc 2 336 0
	addl	$1, -24(%ebp)
.L175:
	movl	-76(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jl	.L176
.L179:
	.loc 2 394 0
	cmpl	$0, -56(%ebp)
	je	.L167
	.loc 2 397 0
	jmp	.L166
.L167:
.LBE8:
	.loc 2 399 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 401 0
	cmpl	$0, -56(%ebp)
	jne	.L197
	.loc 2 403 0
	cmpl	$0, -48(%ebp)
	je	.L199
	.loc 2 404 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L201
.L199:
	.loc 2 408 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L201:
	.loc 2 409 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 410 0
	movl	$0, -116(%ebp)
	jmp	.L154
.L197:
	.loc 2 412 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L202
	.loc 2 414 0
	movl	profile_info@GOT(%ebx), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	profile_info@GOT(%ebx), %eax
	movl	20(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L202:
	.loc 2 419 0
	movl	-44(%ebp), %eax
	movl	%eax, -116(%ebp)
.L154:
	movl	-116(%ebp), %eax
	.loc 2 420 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	get_exec_counts, .-get_exec_counts
	.section	.rodata
	.type	__FUNCTION__.13840, @object
	.size	__FUNCTION__.13840, 29
__FUNCTION__.13840:
	.string	"compute_branch_probabilities"
	.align 4
.LC8:
	.string	"\nRead edge from %i to %i, count:"
.LC9:
	.string	"%lld"
.LC10:
	.string	"\n%d edge counts read\n"
	.align 4
.LC11:
	.string	"Graph solving took %d passes.\n\n"
.globl __divdi3
	.align 4
.LC12:
	.string	"corrupted profile info: prob for %d-%d thought to be %d"
.LC13:
	.string	"%d branches\n"
.LC14:
	.string	"%d branches never executed\n"
	.align 4
.LC15:
	.string	"%d%% branches in range %d-%d%%\n"
	.text
	.type	compute_branch_probabilities, @function
compute_branch_probabilities:
.LFB27:
	.loc 2 428 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%edi
.LCFI55:
	pushl	%esi
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$252, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 431 0
	movl	$0, -92(%ebp)
	.loc 2 437 0
	call	get_exec_counts
	movl	%eax, -72(%ebp)
	.loc 2 438 0
	movl	$0, -68(%ebp)
	.loc 2 442 0
	movl	$20, (%esp)
	call	alloc_aux_for_blocks@PLT
	.loc 2 443 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -100(%ebp)
	jmp	.L206
.L207:
.LBB11:
	.loc 2 447 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L208
.L209:
	.loc 2 448 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L210
	.loc 2 449 0
	movl	-100(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	movl	4(%ecx), %eax
	movl	8(%ecx), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
.L210:
	.loc 2 447 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.L208:
	cmpl	$0, -64(%ebp)
	jne	.L209
	.loc 2 450 0
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L213
.L214:
	.loc 2 451 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L215
	.loc 2 452 0
	movl	-100(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	movl	12(%ecx), %eax
	movl	16(%ecx), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
.L215:
	.loc 2 450 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L213:
	cmpl	$0, -64(%ebp)
	jne	.L214
.LBE11:
	.loc 2 443 0
	movl	-100(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -100(%ebp)
.L206:
	cmpl	$0, -100(%ebp)
	jne	.L207
	.loc 2 456 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	40(%eax), %eax
	movl	$2, 4(%eax)
	movl	$0, 8(%eax)
	.loc 2 457 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	$2, 12(%eax)
	movl	$0, 16(%eax)
	.loc 2 465 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -100(%ebp)
	jmp	.L219
.L220:
.LBB12:
	.loc 2 468 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L221
.L222:
	.loc 2 469 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L223
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L223
	.loc 2 471 0
	addl	$1, -92(%ebp)
	.loc 2 472 0
	cmpl	$0, -72(%ebp)
	je	.L226
	.loc 2 474 0
	movl	-68(%ebp), %eax
	sall	$3, %eax
	addl	-72(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	addl	$1, -68(%ebp)
	jmp	.L228
.L226:
	.loc 2 477 0
	movl	-60(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
.L228:
	.loc 2 479 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 2 480 0
	movl	-100(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	movl	4(%ecx), %eax
	movl	8(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 2 481 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	movl	12(%ecx), %eax
	movl	16(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 2 482 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L223
	.loc 2 484 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-100(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 2 486 0
	movl	-60(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L223:
	.loc 2 468 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L221:
	cmpl	$0, -60(%ebp)
	jne	.L222
.LBE12:
	.loc 2 465 0
	movl	-100(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -100(%ebp)
.L219:
	cmpl	$0, -100(%ebp)
	jne	.L220
	.loc 2 492 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L232
	.loc 2 493 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L232:
	.loc 2 512 0
	movl	$1, -88(%ebp)
	.loc 2 513 0
	movl	$0, -84(%ebp)
	.loc 2 514 0
	jmp	.L234
.L235:
	.loc 2 516 0
	addl	$1, -84(%ebp)
	.loc 2 517 0
	movl	$0, -88(%ebp)
	.loc 2 518 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L236
.L237:
.LBB13:
	.loc 2 520 0
	movl	-100(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 2 521 0
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L238
	.loc 2 523 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L240
.LBB14:
	.loc 2 526 0
	movl	$0, -144(%ebp)
	movl	$0, -140(%ebp)
	.loc 2 528 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L242
.L243:
	.loc 2 529 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%eax, -144(%ebp)
	adcl	%edx, -140(%ebp)
	.loc 2 528 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L242:
	cmpl	$0, -52(%ebp)
	jne	.L243
	.loc 2 530 0
	movl	-100(%ebp), %ecx
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 2 531 0
	movl	-56(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 2 532 0
	movl	$1, -88(%ebp)
	jmp	.L238
.L240:
.LBE14:
	.loc 2 534 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L238
.LBB15:
	.loc 2 537 0
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	.loc 2 539 0
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L246
.L247:
	.loc 2 540 0
	movl	-48(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%eax, -136(%ebp)
	adcl	%edx, -132(%ebp)
	.loc 2 539 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L246:
	cmpl	$0, -48(%ebp)
	jne	.L247
	.loc 2 541 0
	movl	-100(%ebp), %ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 2 542 0
	movl	-56(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 2 543 0
	movl	$1, -88(%ebp)
.L238:
.LBE15:
	.loc 2 546 0
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L249
	.loc 2 548 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L251
.LBB16:
	.loc 2 551 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	.loc 2 555 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L253
.L254:
	.loc 2 556 0
	movl	-44(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%eax, -128(%ebp)
	adcl	%edx, -124(%ebp)
	.loc 2 555 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L253:
	cmpl	$0, -44(%ebp)
	jne	.L254
	.loc 2 559 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L256
.L257:
	.loc 2 560 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L258
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L260
.L258:
	.loc 2 559 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L256:
	cmpl	$0, -44(%ebp)
	jne	.L257
.L260:
	.loc 2 564 0
	movl	-100(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	subl	-128(%ebp), %eax
	sbbl	-124(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	.loc 2 566 0
	cmpl	$0, -44(%ebp)
	jne	.L261
	.loc 2 567 0
	leal	__FUNCTION__.13840@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$567, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L261:
	.loc 2 568 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 2 569 0
	movl	-44(%ebp), %ecx
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 2 570 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	-56(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 2 572 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	movl	12(%ecx), %eax
	movl	16(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 2 573 0
	movl	$1, -88(%ebp)
.L251:
.LBE16:
	.loc 2 575 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L249
.LBB17:
	.loc 2 578 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	.loc 2 582 0
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L264
.L265:
	.loc 2 583 0
	movl	-40(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%eax, -120(%ebp)
	adcl	%edx, -116(%ebp)
	.loc 2 582 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L264:
	cmpl	$0, -40(%ebp)
	jne	.L265
	.loc 2 586 0
	movl	-100(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L267
.L268:
	.loc 2 587 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L269
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L271
.L269:
	.loc 2 586 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L267:
	cmpl	$0, -40(%ebp)
	jne	.L268
.L271:
	.loc 2 591 0
	movl	-100(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-120(%ebp), %esi
	sbbl	-116(%ebp), %edi
	movl	-40(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	.loc 2 593 0
	cmpl	$0, -40(%ebp)
	jne	.L272
	.loc 2 594 0
	leal	__FUNCTION__.13840@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$594, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L272:
	.loc 2 595 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 2 596 0
	movl	-40(%ebp), %ecx
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 2 597 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	-56(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 2 599 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	movl	4(%ecx), %eax
	movl	8(%ecx), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 2 600 0
	movl	$1, -88(%ebp)
.L249:
.LBE17:
.LBE13:
	.loc 2 518 0
	movl	-100(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -100(%ebp)
.L236:
	cmpl	$0, -100(%ebp)
	jne	.L237
.L234:
	.loc 2 514 0
	cmpl	$0, -88(%ebp)
	jne	.L235
	.loc 2 605 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L275
	.loc 2 606 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L275:
	.loc 2 608 0
	movl	total_num_passes@GOTOFF(%ebx), %eax
	addl	-84(%ebp), %eax
	movl	%eax, total_num_passes@GOTOFF(%ebx)
	.loc 2 609 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L277
	.loc 2 610 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L277:
	.loc 2 614 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L279
.L280:
	.loc 2 616 0
	movl	-100(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L281
	movl	-100(%ebp), %eax
	movl	40(%eax), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L283
.L281:
	.loc 2 617 0
	leal	__FUNCTION__.13840@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$617, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L283:
	.loc 2 614 0
	movl	-100(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -100(%ebp)
.L279:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -100(%ebp)
	jne	.L280
	.loc 2 623 0
	movl	$0, -96(%ebp)
	jmp	.L285
.L286:
	.loc 2 624 0
	movl	-96(%ebp), %eax
	movl	$0, -224(%ebp,%eax,4)
	.loc 2 623 0
	addl	$1, -96(%ebp)
.L285:
	cmpl	$19, -96(%ebp)
	jle	.L286
	.loc 2 625 0
	movl	$0, -80(%ebp)
	.loc 2 626 0
	movl	$0, -76(%ebp)
	.loc 2 628 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -100(%ebp)
	jmp	.L288
.L289:
.LBB18:
	.loc 2 634 0
	movl	-100(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 2 635 0
	movl	-112(%ebp), %eax
	orl	-108(%ebp), %eax
	testl	%eax, %eax
	je	.L290
	.loc 2 637 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L292
.L293:
	.loc 2 639 0
	movl	-36(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	%edx, -240(%ebp)
	movl	%ecx, -236(%ebp)
	imull	$10000, -236(%ebp), %ecx
	imull	$0, -240(%ebp), %esi
	addl	%esi, %ecx
	movl	$10000, %esi
	movl	-240(%ebp), %eax
	mull	%esi
	movl	%eax, %esi
	movl	%edx, %edi
	addl	%edi, %ecx
	movl	%ecx, %edi
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	%edx, -232(%ebp)
	movl	%ecx, -228(%ebp)
	movl	-228(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	-232(%ebp), %eax
	adcl	-228(%ebp), %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 2 640 0
	movl	-36(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L294
	movl	-36(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	$10000, %eax
	jle	.L296
.L294:
	.loc 2 642 0
	movl	-36(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 2 644 0
	movl	-36(%ebp), %eax
	movl	$5000, 28(%eax)
.L296:
	.loc 2 637 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L292:
	cmpl	$0, -36(%ebp)
	jne	.L293
	.loc 2 647 0
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	.L310
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L310
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L310
.LBB19:
	.loc 2 657 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L302
.L303:
	.loc 2 658 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L302:
	.loc 2 657 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	andl	$17, %eax
	testl	%eax, %eax
	jne	.L303
	.loc 2 661 0
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 2 662 0
	movl	-28(%ebp), %ecx
	movl	$274877907, -240(%ebp)
	movl	-240(%ebp), %eax
	imull	%ecx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
	.loc 2 664 0
	cmpl	$20, -20(%ebp)
	jne	.L305
	.loc 2 665 0
	movl	$19, -20(%ebp)
.L305:
	.loc 2 666 0
	movl	-20(%ebp), %edx
	movl	-224(%ebp,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, -224(%ebp,%edx,4)
	.loc 2 668 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	.loc 2 671 0
	cmpl	$0, -32(%ebp)
	je	.L307
	.loc 2 672 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L309
.L307:
	.loc 2 674 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %edi
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %esi
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$16, 4(%esp)
	movl	$3, (%esp)
	call	gen_rtx_fmt_ee@PLT
	movl	%eax, 68(%edi)
.L309:
	.loc 2 677 0
	addl	$1, -76(%ebp)
	jmp	.L310
.L290:
.LBE19:
	.loc 2 686 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L311
.L312:
	.loc 2 687 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	andl	$30, %eax
	testl	%eax, %eax
	jne	.L313
	.loc 2 688 0
	addl	$1, -112(%ebp)
	adcl	$0, -108(%ebp)
.L313:
	.loc 2 686 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L311:
	cmpl	$0, -36(%ebp)
	jne	.L312
	.loc 2 689 0
	movl	-112(%ebp), %eax
	orl	-108(%ebp), %eax
	testl	%eax, %eax
	je	.L316
	.loc 2 691 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L318
.L319:
	.loc 2 692 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	andl	$30, %eax
	testl	%eax, %eax
	jne	.L320
	.loc 2 693 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$10000, (%esp)
	movl	$0, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 28(%eax)
	jmp	.L322
.L320:
	.loc 2 695 0
	movl	-36(%ebp), %eax
	movl	$0, 28(%eax)
.L322:
	.loc 2 691 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L318:
	cmpl	$0, -36(%ebp)
	jne	.L319
	jmp	.L324
.L316:
	.loc 2 699 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L325
.L326:
	.loc 2 700 0
	addl	$1, -112(%ebp)
	adcl	$0, -108(%ebp)
	.loc 2 699 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L325:
	cmpl	$0, -36(%ebp)
	jne	.L326
	.loc 2 701 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L328
.L329:
	.loc 2 702 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$10000, (%esp)
	movl	$0, 4(%esp)
	call	__divdi3@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 2 701 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L328:
	cmpl	$0, -36(%ebp)
	jne	.L329
.L324:
	.loc 2 704 0
	movl	-100(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	js	.L310
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L310
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L310
	.loc 2 707 0
	addl	$1, -76(%ebp)
.L310:
.LBE18:
	.loc 2 628 0
	movl	-100(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -100(%ebp)
.L288:
	cmpl	$0, -100(%ebp)
	jne	.L289
	.loc 2 711 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L334
	.loc 2 713 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 2 714 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 2 716 0
	cmpl	$0, -76(%ebp)
	je	.L336
	.loc 2 717 0
	movl	$0, -96(%ebp)
	jmp	.L338
.L339:
	.loc 2 718 0
	movl	-96(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	5(%eax), %esi
	movl	-96(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	leal	(%eax,%edx), %edi
	movl	-96(%ebp), %eax
	movl	-224(%ebp,%eax,4), %edx
	movl	$19, %eax
	subl	-96(%ebp), %eax
	movl	-224(%ebp,%eax,4), %eax
	leal	(%edx,%eax), %eax
	imull	$100, %eax, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-76(%ebp)
	movl	%eax, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 717 0
	addl	$1, -96(%ebp)
.L338:
	cmpl	$9, -96(%ebp)
	jle	.L339
.L336:
	.loc 2 722 0
	movl	total_num_branches@GOTOFF(%ebx), %eax
	addl	-76(%ebp), %eax
	movl	%eax, total_num_branches@GOTOFF(%ebx)
	.loc 2 723 0
	movl	total_num_never_executed@GOTOFF(%ebx), %eax
	addl	-80(%ebp), %eax
	movl	%eax, total_num_never_executed@GOTOFF(%ebx)
	.loc 2 724 0
	movl	$0, -96(%ebp)
	jmp	.L340
.L341:
	.loc 2 725 0
	movl	-96(%ebp), %ecx
	movl	-96(%ebp), %eax
	movl	total_hist_br_prob@GOTOFF(%ebx,%eax,4), %edx
	movl	-96(%ebp), %eax
	movl	-224(%ebp,%eax,4), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, total_hist_br_prob@GOTOFF(%ebx,%ecx,4)
	.loc 2 724 0
	addl	$1, -96(%ebp)
.L340:
	cmpl	$19, -96(%ebp)
	jle	.L341
	.loc 2 727 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 2 728 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L334:
	.loc 2 731 0
	call	free_aux_for_blocks@PLT
	.loc 2 732 0
	cmpl	$0, -72(%ebp)
	je	.L345
	.loc 2 733 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L345:
	.loc 2 734 0
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	compute_branch_probabilities, .-compute_branch_probabilities
	.type	compute_checksum, @function
compute_checksum:
.LFB28:
	.loc 2 743 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%esi
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$32, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 744 0
	movl	$0, -20(%ebp)
	.loc 2 747 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L347
.L348:
.LBB20:
	.loc 2 751 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L349
.L350:
	.loc 2 753 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -36(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L351
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L353
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, -28(%ebp)
	jmp	.L355
.L353:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	%eax, -28(%ebp)
.L355:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L356
.L351:
	movl	$1, -32(%ebp)
.L356:
	movl	-36(%ebp), %ecx
	addl	-32(%ebp), %ecx
	movl	$576460749, -40(%ebp)
	movl	-40(%ebp), %eax
	imull	%ecx
	sarl	$26, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	imull	$500000003, %eax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%ebp)
	.loc 2 751 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L349:
	cmpl	$0, -12(%ebp)
	jne	.L350
	.loc 2 756 0
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	$576460749, -40(%ebp)
	movl	-40(%ebp), %eax
	imull	%ecx
	sarl	$26, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	imull	$500000003, %eax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%ebp)
.LBE20:
	.loc 2 747 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L347:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L348
	.loc 2 759 0
	movl	-20(%ebp), %eax
	.loc 2 760 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	compute_checksum, .-compute_checksum
	.local	ignore_next_note.14232
	.comm	ignore_next_note.14232,4,4
	.section	.rodata
	.type	__FUNCTION__.14215, @object
	.size	__FUNCTION__.14215, 12
__FUNCTION__.14215:
	.string	"branch_prob"
.LC16:
	.string	"CFG checksum is %ld\n"
	.align 4
.LC17:
	.string	"Adding fake exit edge to bb %i\n"
	.align 4
.LC18:
	.string	"Adding fake entry edge to bb %i\n"
.LC19:
	.string	"%d basic blocks\n"
.LC20:
	.string	"%d edges\n"
.LC21:
	.string	"%d ignored edges\n"
	.text
.globl branch_prob
	.type	branch_prob, @function
branch_prob:
.LFB29:
	.loc 2 780 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%edi
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$112, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 785 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 2 788 0
	call	compute_checksum
	movl	%eax, %edx
	movl	profile_info@GOT(%ebx), %eax
	movl	%edx, 8(%eax)
	.loc 2 790 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L361
	.loc 2 791 0
	movl	profile_info@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L361:
	.loc 2 795 0
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L363
	.loc 2 796 0
	movl	$-2, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	output_gcov_string
.L363:
	.loc 2 798 0
	movl	total_num_times_called@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, total_num_times_called@GOTOFF(%ebx)
	.loc 2 800 0
	movl	$0, (%esp)
	call	flow_call_edges_add@PLT
	.loc 2 801 0
	call	add_noreturn_fake_exit_edges@PLT
	.loc 2 812 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L365
.L366:
.LBB21:
	.loc 2 814 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 2 815 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 2 823 0
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L367
.L368:
	.loc 2 826 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L369
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L369
	.loc 2 829 0
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L372
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L374
.L372:
	.loc 2 832 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	split_block@PLT
	movl	%eax, -44(%ebp)
	.loc 2 833 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
	.loc 2 834 0
	jmp	.L375
.L374:
	.loc 2 840 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L376
	.loc 2 841 0
	leal	__FUNCTION__.14215@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$841, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L376:
	.loc 2 842 0
	movl	$16, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
.L369:
	.loc 2 824 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L367:
	.loc 2 823 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L368
.L375:
	.loc 2 847 0
	movl	-88(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L378
.L379:
	.loc 2 849 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L380
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L380
	.loc 2 851 0
	movl	$1, -64(%ebp)
.L380:
	.loc 2 852 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L383
	.loc 2 853 0
	movl	$1, -56(%ebp)
.L383:
	.loc 2 847 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L378:
	cmpl	$0, -44(%ebp)
	jne	.L379
	.loc 2 855 0
	movl	-88(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L386
.L387:
	.loc 2 857 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L388
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L388
	.loc 2 859 0
	movl	$1, -60(%ebp)
.L388:
	.loc 2 860 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L391
	.loc 2 861 0
	movl	$1, -52(%ebp)
.L391:
	.loc 2 855 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L386:
	cmpl	$0, -44(%ebp)
	jne	.L387
	.loc 2 864 0
	cmpl	$0, -64(%ebp)
	je	.L394
	cmpl	$0, -56(%ebp)
	jne	.L394
	.loc 2 866 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L397
	.loc 2 867 0
	movl	-88(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L397:
	.loc 2 869 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
.L394:
	.loc 2 871 0
	cmpl	$0, -60(%ebp)
	je	.L399
	cmpl	$0, -52(%ebp)
	jne	.L399
	.loc 2 873 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L402
	.loc 2 874 0
	movl	-88(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L402:
	.loc 2 876 0
	movl	$16, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
.L399:
.LBE21:
	.loc 2 812 0
	movl	-88(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -88(%ebp)
.L365:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L366
	.loc 2 880 0
	call	create_edge_list@PLT
	movl	%eax, -72(%ebp)
	.loc 2 881 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 2 882 0
	movl	$4, (%esp)
	call	alloc_aux_for_edges@PLT
	.loc 2 885 0
	call	compact_blocks@PLT
	.loc 2 887 0
	movl	$0, -76(%ebp)
	.loc 2 888 0
	movl	$0, -84(%ebp)
	jmp	.L405
.L406:
.LBB22:
	.loc 2 890 0
	movl	-72(%ebp), %eax
	movl	8(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 2 891 0
	movl	-40(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	.loc 2 894 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L407
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L407
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L407
	.loc 2 897 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movzbl	(%edx), %eax
	orl	$4, %eax
	movb	%al, (%edx)
	.loc 2 898 0
	addl	$1, -76(%ebp)
.L407:
.LBE22:
	.loc 2 888 0
	addl	$1, -84(%ebp)
.L405:
	movl	-84(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L406
	.loc 2 908 0
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L412
	.loc 2 910 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L414
.L415:
.LBB23:
	.loc 2 912 0
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 2 917 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -36(%ebp)
	.loc 2 918 0
	cmpl	$0, -36(%ebp)
	jne	.L416
	.loc 2 919 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	jmp	.L418
.L416:
	.loc 2 921 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L418:
	.loc 2 925 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	__write_long
	.loc 2 927 0
	jmp	.L419
.L420:
	.loc 2 929 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L421
	.loc 2 935 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-84, %eax
	jne	.L423
	.loc 2 936 0
	movl	$1, ignore_next_note.14232@GOTOFF(%ebx)
	jmp	.L421
.L423:
	.loc 2 937 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L421
	.loc 2 939 0
	movl	ignore_next_note.14232@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L426
	.loc 2 940 0
	movl	$0, ignore_next_note.14232@GOTOFF(%ebx)
	jmp	.L421
.L426:
	.loc 2 945 0
	movl	last_bb_file_name@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L428
	movl	last_bb_file_name@GOTOFF(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L430
.L428:
	.loc 2 949 0
	movl	last_bb_file_name@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L431
	.loc 2 950 0
	movl	last_bb_file_name@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L431:
	.loc 2 951 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, last_bb_file_name@GOTOFF(%ebx)
	.loc 2 953 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	output_gcov_string
.L430:
	.loc 2 960 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	-36(%ebp), %edx
	movl	44(%edx), %edx
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__write_long
.L421:
	.loc 2 964 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L419:
	.loc 2 927 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L420
.LBE23:
	.loc 2 910 0
	movl	-88(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -88(%ebp)
.L414:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L415
	.loc 2 967 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	__write_long
.L412:
	.loc 2 974 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	find_spanning_tree
	.loc 2 978 0
	movl	$0, -84(%ebp)
	jmp	.L435
.L436:
.LBB24:
	.loc 2 980 0
	movl	-72(%ebp), %eax
	movl	8(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 2 981 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 2 982 0
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L437
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L437
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L437
	.loc 2 984 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %edx
	orl	$4, %edx
	movb	%dl, (%eax)
	.loc 2 985 0
	addl	$1, -76(%ebp)
.L437:
.LBE24:
	.loc 2 978 0
	addl	$1, -84(%ebp)
.L435:
	movl	-84(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jl	.L436
	.loc 2 989 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	total_num_blocks@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	movl	%eax, total_num_blocks@GOTOFF(%ebx)
	.loc 2 990 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L442
	.loc 2 991 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L442:
	.loc 2 993 0
	movl	total_num_edges@GOTOFF(%ebx), %eax
	addl	-80(%ebp), %eax
	movl	%eax, total_num_edges@GOTOFF(%ebx)
	.loc 2 994 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L444
	.loc 2 995 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L444:
	.loc 2 997 0
	movl	total_num_edges_ignored@GOTOFF(%ebx), %eax
	addl	-76(%ebp), %eax
	movl	%eax, total_num_edges_ignored@GOTOFF(%ebx)
	.loc 2 998 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L446
	.loc 2 999 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L446:
	.loc 2 1006 0
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L448
.LBB25:
	.loc 2 1010 0
	movl	bbg_file@GOTOFF(%ebx), %edx
	movl	-68(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -104(%ebp)
	movl	$0, %eax
	cld
	movl	-104(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	$-1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	__write_gcov_string
	.loc 2 1013 0
	movl	bbg_file@GOTOFF(%ebx), %edx
	movl	profile_info@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__write_long
	.loc 2 1016 0
	movl	bbg_file@GOTOFF(%ebx), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__write_long
	.loc 2 1017 0
	movl	bbg_file@GOTOFF(%ebx), %ecx
	movl	-76(%ebp), %edx
	movl	-80(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	$4, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__write_long
	.loc 2 1019 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -88(%ebp)
	jmp	.L450
.L451:
.LBB26:
	.loc 2 1022 0
	movl	$0, -16(%ebp)
	.loc 2 1024 0
	movl	-88(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L452
.L453:
	.loc 2 1025 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L454
	.loc 2 1026 0
	addl	$1, -16(%ebp)
.L454:
	.loc 2 1024 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L452:
	cmpl	$0, -20(%ebp)
	jne	.L453
	.loc 2 1027 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	__write_long
	.loc 2 1029 0
	movl	-88(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L457
.L458:
.LBB27:
	.loc 2 1031 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1032 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L459
	.loc 2 1034 0
	movl	$0, -24(%ebp)
	.loc 2 1035 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L461
	.loc 2 1036 0
	orl	$1, -24(%ebp)
.L461:
	.loc 2 1037 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L463
	.loc 2 1038 0
	orl	$2, -24(%ebp)
.L463:
	.loc 2 1039 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L465
	.loc 2 1040 0
	orl	$4, -24(%ebp)
.L465:
	.loc 2 1042 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L467
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L469
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -92(%ebp)
	jmp	.L471
.L469:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	addl	$1, %eax
	movl	%eax, -92(%ebp)
.L471:
	movl	-92(%ebp), %edi
	movl	%edi, -96(%ebp)
	jmp	.L472
.L467:
	movl	$0, -96(%ebp)
.L472:
	movl	$4, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %edi
	movl	%edi, (%esp)
	call	__write_long
	.loc 2 1043 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	__write_long
.L459:
.LBE27:
	.loc 2 1029 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L457:
	cmpl	$0, -20(%ebp)
	jne	.L458
.LBE26:
	.loc 2 1019 0
	movl	-88(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -88(%ebp)
.L450:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L451
	.loc 2 1049 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__write_long
	.loc 2 1050 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	__write_long
	.loc 2 1051 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	__write_long
	.loc 2 1055 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	__write_long
.L448:
.LBE25:
	.loc 2 1058 0
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L475
	.loc 2 1059 0
	call	compute_branch_probabilities
.L475:
	.loc 2 1063 0
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L477
	.loc 2 1065 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	instrument_edges
	.loc 2 1066 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
.L477:
	.loc 2 1069 0
	call	remove_fake_edges@PLT
	.loc 2 1072 0
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	cleanup_cfg@PLT
	.loc 2 1073 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L479
	.loc 2 1074 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L479:
	.loc 2 1076 0
	call	free_aux_for_edges@PLT
	.loc 2 1077 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free_edge_list@PLT
	.loc 2 1078 0
	addl	$112, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	branch_prob, .-branch_prob
	.type	find_group, @function
find_group:
.LFB30:
	.loc 2 1086 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	subl	$16, %esp
.LCFI71:
	.loc 2 1087 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 1089 0
	jmp	.L483
.L484:
	.loc 2 1090 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -8(%ebp)
.L483:
	.loc 2 1089 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L484
	.loc 2 1093 0
	jmp	.L486
.L487:
	.loc 2 1095 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 2 1096 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 2 1097 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
.L486:
	.loc 2 1093 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L487
	.loc 2 1099 0
	movl	-8(%ebp), %eax
	.loc 2 1100 0
	leave
	ret
.LFE30:
	.size	find_group, .-find_group
	.section	.rodata
	.type	__FUNCTION__.14531, @object
	.size	__FUNCTION__.14531, 13
__FUNCTION__.14531:
	.string	"union_groups"
	.text
	.type	union_groups, @function
union_groups:
.LFB31:
	.loc 2 1105 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$36, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1106 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_group
	movl	%eax, -12(%ebp)
	.loc 2 1107 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_group
	movl	%eax, -8(%ebp)
	.loc 2 1111 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L491
	.loc 2 1112 0
	leal	__FUNCTION__.14531@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1112, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L491:
	.loc 2 1114 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 2 1115 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	union_groups, .-union_groups
	.section	.rodata
	.align 4
.LC22:
	.string	"Abnormal edge %d to %d put to tree\n"
	.align 4
.LC23:
	.string	"Critical edge %d to %d put to tree\n"
	.align 4
.LC24:
	.string	"Normal edge %d to %d put to tree\n"
	.text
	.type	find_spanning_tree, @function
find_spanning_tree:
.LFB32:
	.loc 2 1127 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%esi
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$48, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1129 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 2 1133 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L495
.L496:
	.loc 2 1134 0
	movl	-24(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 2 1133 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L495:
	cmpl	$0, -24(%ebp)
	jne	.L496
	.loc 2 1137 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	union_groups
	.loc 2 1142 0
	movl	$0, -32(%ebp)
	jmp	.L498
.L499:
.LBB28:
	.loc 2 1144 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 2 1145 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$22, %eax
	testl	%eax, %eax
	jne	.L500
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L502
.L500:
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L502
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	find_group
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	find_group
	cmpl	%eax, %esi
	je	.L502
	.loc 2 1151 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L505
	.loc 2 1152 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %esi
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L505:
	.loc 2 1154 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movzbl	(%edx), %eax
	orl	$2, %eax
	movb	%al, (%edx)
	.loc 2 1155 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	union_groups
.L502:
.LBE28:
	.loc 2 1142 0
	addl	$1, -32(%ebp)
.L498:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L499
	.loc 2 1160 0
	movl	$0, -32(%ebp)
	jmp	.L508
.L509:
.LBB29:
	.loc 2 1162 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 2 1163 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L510
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L510
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L510
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	find_group
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	find_group
	cmpl	%eax, %esi
	je	.L510
	.loc 2 1167 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L515
	.loc 2 1168 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %esi
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L515:
	.loc 2 1170 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movzbl	(%edx), %eax
	orl	$2, %eax
	movb	%al, (%edx)
	.loc 2 1171 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	union_groups
.L510:
.LBE29:
	.loc 2 1160 0
	addl	$1, -32(%ebp)
.L508:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L509
	.loc 2 1176 0
	movl	$0, -32(%ebp)
	jmp	.L518
.L519:
.LBB30:
	.loc 2 1178 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 2 1179 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	find_group
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	find_group
	cmpl	%eax, %esi
	je	.L520
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L520
	.loc 2 1182 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L523
	.loc 2 1183 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %esi
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L523:
	.loc 2 1185 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movzbl	(%edx), %eax
	orl	$2, %eax
	movb	%al, (%edx)
	.loc 2 1186 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	union_groups
.L520:
.LBE30:
	.loc 2 1176 0
	addl	$1, -32(%ebp)
.L518:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L519
	.loc 2 1190 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L526
.L527:
	.loc 2 1191 0
	movl	-24(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 2 1190 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L526:
	cmpl	$0, -24(%ebp)
	jne	.L527
	.loc 2 1192 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	find_spanning_tree, .-find_spanning_tree
	.section	.rodata
.LC25:
	.string	"wb"
.LC26:
	.string	"can't open %s"
.LC27:
	.string	"rb"
	.align 4
.LC28:
	.string	"file %s not found, execution counts assumed to be zero"
	.text
.globl init_branch_prob
	.type	init_branch_prob, @function
init_branch_prob:
.LFB33:
	.loc 2 1199 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%edi
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$80, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 2 1199 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 2 1200 0
	movl	-44(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -56(%ebp)
	movl	$0, %eax
	cld
	movl	-56(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 2 1203 0
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L531
.LBB31:
	.loc 2 1208 0
	movl	-28(%ebp), %eax
	addl	$4, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	8(%esp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %edi
	movl	%edi, -20(%ebp)
	.loc 2 1209 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 2 1210 0
	movl	-20(%ebp), %eax
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
	addl	-20(%ebp), %eax
	movl	$6447662, (%eax)
	.loc 2 1211 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, bb_file@GOTOFF(%ebx)
	movl	bb_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L533
	.loc 2 1212 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_io_error@PLT
.L533:
	.loc 2 1215 0
	movl	-28(%ebp), %eax
	addl	$5, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	8(%esp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %edi
	movl	%edi, -16(%ebp)
	.loc 2 1216 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 2 1217 0
	movl	-16(%ebp), %eax
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
	addl	-16(%ebp), %eax
	movl	$1734500910, (%eax)
	movb	$0, 4(%eax)
	.loc 2 1218 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, bbg_file@GOTOFF(%ebx)
	movl	bbg_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L535
	.loc 2 1219 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_io_error@PLT
.L535:
	.loc 2 1223 0
	movl	$0, last_bb_file_name@GOTOFF(%ebx)
.L531:
.LBE31:
	.loc 2 1226 0
	movl	-28(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, da_file_name@GOTOFF(%ebx)
	.loc 2 1227 0
	movl	da_file_name@GOTOFF(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 2 1228 0
	movl	da_file_name@GOTOFF(%ebx), %edx
	movl	%edx, %eax
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
	addl	%edx, %eax
	movl	$6382638, (%eax)
	.loc 2 1230 0
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L537
	.loc 2 1232 0
	movl	da_file_name@GOTOFF(%ebx), %edx
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, da_file@GOTOFF(%ebx)
	.loc 2 1233 0
	movl	da_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L537
	.loc 2 1234 0
	movl	da_file_name@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L537:
	.loc 2 1238 0
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L540
	.loc 2 1239 0
	call	init_edge_profiler
.L540:
	.loc 2 1241 0
	movl	$0, total_num_blocks@GOTOFF(%ebx)
	.loc 2 1242 0
	movl	$0, total_num_edges@GOTOFF(%ebx)
	.loc 2 1243 0
	movl	$0, total_num_edges_ignored@GOTOFF(%ebx)
	.loc 2 1244 0
	movl	$0, total_num_edges_instrumented@GOTOFF(%ebx)
	.loc 2 1245 0
	movl	$0, total_num_blocks_created@GOTOFF(%ebx)
	.loc 2 1246 0
	movl	$0, total_num_passes@GOTOFF(%ebx)
	.loc 2 1247 0
	movl	$0, total_num_times_called@GOTOFF(%ebx)
	.loc 2 1248 0
	movl	$0, total_num_branches@GOTOFF(%ebx)
	.loc 2 1249 0
	movl	$0, total_num_never_executed@GOTOFF(%ebx)
	.loc 2 1250 0
	movl	$0, -24(%ebp)
	jmp	.L542
.L543:
	.loc 2 1251 0
	movl	-24(%ebp), %eax
	movl	$0, total_hist_br_prob@GOTOFF(%ebx,%eax,4)
	.loc 2 1250 0
	addl	$1, -24(%ebp)
.L542:
	cmpl	$19, -24(%ebp)
	jle	.L543
	.loc 2 1252 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L546
	call	__stack_chk_fail_local
.L546:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	init_branch_prob, .-init_branch_prob
	.section	.rodata
.LC29:
	.string	"Total number of blocks: %d\n"
.LC30:
	.string	"Total number of edges: %d\n"
	.align 4
.LC31:
	.string	"Total number of ignored edges: %d\n"
	.align 4
.LC32:
	.string	"Total number of instrumented edges: %d\n"
	.align 4
.LC33:
	.string	"Total number of blocks created: %d\n"
	.align 4
.LC34:
	.string	"Total number of graph solution passes: %d\n"
	.align 4
.LC35:
	.string	"Average number of graph solution passes: %d\n"
.LC36:
	.string	"Total number of branches: %d\n"
	.align 4
.LC37:
	.string	"Total number of branches never executed: %d\n"
	.text
.globl end_branch_prob
	.type	end_branch_prob, @function
end_branch_prob:
.LFB34:
	.loc 2 1259 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%edi
.LCFI88:
	pushl	%esi
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$44, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1260 0
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L548
	.loc 2 1262 0
	movl	bb_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 2 1263 0
	movl	bbg_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 2 1264 0
	movl	da_file_name@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	unlink@PLT
.L548:
	.loc 2 1267 0
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L550
	movl	da_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L550
	.loc 2 1268 0
	movl	da_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L550:
	.loc 2 1270 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L560
	.loc 2 1272 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 2 1273 0
	movl	total_num_blocks@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1275 0
	movl	total_num_edges@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1276 0
	movl	total_num_edges_ignored@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1278 0
	movl	total_num_edges_instrumented@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1280 0
	movl	total_num_blocks_created@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1282 0
	movl	total_num_passes@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1284 0
	movl	total_num_times_called@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L555
	.loc 2 1285 0
	movl	total_num_times_called@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	sarl	%edx
	movl	total_num_passes@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	total_num_times_called@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L555:
	.loc 2 1288 0
	movl	total_num_branches@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1290 0
	movl	total_num_never_executed@GOTOFF(%ebx), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1292 0
	movl	total_num_branches@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L560
.LBB32:
	.loc 2 1296 0
	movl	$0, -16(%ebp)
	jmp	.L558
.L559:
	.loc 2 1297 0
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	5(%eax), %esi
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	leal	(%eax,%edx), %edi
	movl	-16(%ebp), %eax
	movl	total_hist_br_prob@GOTOFF(%ebx,%eax,4), %edx
	movl	$19, %eax
	subl	-16(%ebp), %eax
	movl	total_hist_br_prob@GOTOFF(%ebx,%eax,4), %eax
	leal	(%edx,%eax), %eax
	imull	$100, %eax, %edx
	movl	total_num_branches@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 2 1296 0
	addl	$1, -16(%ebp)
.L558:
	cmpl	$9, -16(%ebp)
	jle	.L559
.L560:
.LBE32:
	.loc 2 1302 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	end_branch_prob, .-end_branch_prob
	.section	.rodata
.LC38:
	.string	"LPBX"
.LC39:
	.string	"$"
.LC40:
	.string	"*%s%s%ld"
	.text
	.type	init_edge_profiler, @function
init_edge_profiler:
.LFB35:
	.loc 2 1312 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$68, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1312 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 2 1315 0
	movl	$2, 16(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 2 1316 0
	movl	$-1, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -44(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L562
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L562
	movl	$5, -40(%ebp)
	jmp	.L565
.L562:
	movl	$4, -40(%ebp)
.L565:
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, profiler_label@GOTOFF(%ebx)
	.loc 2 1317 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L567
	call	__stack_chk_fail_local
.L567:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	init_edge_profiler, .-init_edge_profiler
	.type	gen_edge_profiler, @function
gen_edge_profiler:
.LFB36:
	.loc 2 1324 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$52, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1325 0
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$64, (%esp)
	call	mode_for_size@PLT
	movl	%eax, -20(%ebp)
	.loc 2 1329 0
	call	start_sequence@PLT
	.loc 2 1331 0
	movl	profiler_label@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L569
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L569
	movl	$5, -24(%ebp)
	jmp	.L572
.L569:
	movl	$4, -24(%ebp)
.L572:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -12(%ebp)
	.loc 2 1332 0
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	plus_constant_wide@PLT
	movl	%eax, -12(%ebp)
	.loc 2 1333 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, (%esp)
	call	validize_mem@PLT
	movl	%eax, -16(%ebp)
	.loc 2 1335 0
	call	new_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 2 1337 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$2, 24(%esp)
	movl	$0, 20(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$85, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_simple_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 2 1340 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L573
	.loc 2 1341 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_move_insn@PLT
.L573:
	.loc 2 1343 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	.loc 2 1344 0
	call	end_sequence@PLT
	.loc 2 1345 0
	movl	-8(%ebp), %eax
	.loc 2 1346 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	gen_edge_profiler, .-gen_edge_profiler
	.section	.rodata
.LC41:
	.string	"GCOV"
.LC42:
	.string	"__bb_init_func"
	.text
.globl output_func_start_profiler
	.type	output_func_start_profiler, @function
output_func_start_profiler:
.LFB37:
	.loc 2 1353 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$132, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 1353 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 2 1359 0
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$64, (%esp)
	call	mode_for_size@PLT
	movl	%eax, -36(%ebp)
	.loc 2 1360 0
	movl	flag_inline_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 2 1364 0
	movl	need_func_profiler@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L601
	.loc 2 1367 0
	movl	$0, need_func_profiler@GOTOFF(%ebx)
	.loc 2 1376 0
	movl	$73, (%esp)
	call	get_file_function_name@PLT
	movl	%eax, -56(%ebp)
	.loc 2 1377 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 2 1378 0
	movl	$0, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -48(%ebp)
	.loc 2 1379 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -56(%ebp)
	.loc 2 1380 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 2 1382 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	build_decl@PLT
	movl	%eax, -52(%ebp)
	.loc 2 1384 0
	movl	-52(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 2 1388 0
	movl	targetm@GOT(%ebx), %eax
	movzbl	245(%eax), %eax
	xorl	$1, %eax
	andl	$1, %eax
	movl	-52(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 2 1390 0
	movl	-52(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 2 1392 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$37, (%esp)
	call	build_decl@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 2 1394 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	236(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -52(%ebp)
	.loc 2 1395 0
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	.loc 2 1396 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	announce_function@PLT
	.loc 2 1397 0
	movl	current_function_decl@GOT(%ebx), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 2 1398 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 2 1399 0
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	.loc 2 1400 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	init_function_start@PLT
	.loc 2 1401 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	216(%eax), %eax
	movl	$0, (%esp)
	call	*%eax
	.loc 2 1402 0
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_function_start@PLT
	.loc 2 1403 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	297(%edx), %eax
	andl	$127, %eax
	movb	%al, 297(%edx)
	.loc 2 1406 0
	movl	$0, 16(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 2 1407 0
	movl	$-1, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -100(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L579
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L579
	movl	$5, -96(%ebp)
	jmp	.L582
.L579:
	movl	$4, -96(%ebp)
.L582:
	movl	-100(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, -92(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L583
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L583
	movl	$5, -88(%ebp)
	jmp	.L586
.L583:
	movl	$4, -88(%ebp)
.L586:
	movl	-92(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	force_reg@PLT
	movl	%eax, -40(%ebp)
	.loc 2 1409 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L587
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L587
	movl	$5, -84(%ebp)
	jmp	.L590
.L587:
	movl	$4, -84(%ebp)
.L590:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L591
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L591
	movl	$5, -80(%ebp)
	jmp	.L594
.L591:
	movl	$4, -80(%ebp)
.L594:
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, %edx
	movl	-84(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	emit_library_call@PLT
	.loc 2 1412 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	expand_function_end@PLT
	.loc 2 1413 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	220(%eax), %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	call	*%eax
	.loc 2 1418 0
	movl	flag_inline_functions@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 1420 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_compilation@PLT
	.loc 2 1423 0
	movl	flag_inline_functions@GOT(%ebx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 2 1425 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L595
	.loc 2 1426 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L595:
	.loc 2 1427 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 1429 0
	movl	targetm@GOT(%ebx), %eax
	movzbl	245(%eax), %eax
	testb	%al, %al
	je	.L601
	.loc 2 1430 0
	movl	targetm@GOT(%ebx), %eax
	movl	96(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	-52(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L598
	movl	-52(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L600
.L598:
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-52(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -72(%ebp)
.L600:
	movl	-72(%ebp), %edx
	movl	4(%edx), %eax
	movl	$65535, 4(%esp)
	movl	%eax, (%esp)
	call	*-76(%ebp)
.L601:
	.loc 2 1432 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L602
	call	__stack_chk_fail_local
.L602:
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	output_func_start_profiler, .-output_func_start_profiler
.globl gt_ggc_r_gt_profile_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_profile_h, @object
	.size	gt_ggc_r_gt_profile_h, 32
gt_ggc_r_gt_profile_h:
	.long	profiler_label
	.long	1
	.long	4
	.long	gt_ggc_mx_rtx_def
	.long	0
	.long	0
	.long	0
	.long	0
	.local	bbg_file
	.comm	bbg_file,4,4
	.local	da_file
	.comm	da_file,4,4
	.local	da_file_name
	.comm	da_file_name,4,4
	.local	bb_file
	.comm	bb_file,4,4
	.local	last_bb_file_name
	.comm	last_bb_file_name,4,4
	.local	total_num_blocks
	.comm	total_num_blocks,4,4
	.local	total_num_edges
	.comm	total_num_edges,4,4
	.local	total_num_edges_ignored
	.comm	total_num_edges_ignored,4,4
	.local	total_num_edges_instrumented
	.comm	total_num_edges_instrumented,4,4
	.local	total_num_blocks_created
	.comm	total_num_blocks_created,4,4
	.local	total_num_passes
	.comm	total_num_passes,4,4
	.local	total_num_times_called
	.comm	total_num_times_called,4,4
	.local	total_hist_br_prob
	.comm	total_hist_br_prob,80,32
	.local	total_num_never_executed
	.comm	total_num_never_executed,4,4
	.local	total_num_branches
	.comm	total_num_branches,4,4
	.local	profiler_label
	.comm	profiler_label,4,4
	.comm	profile_info,24,4
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
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI38
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI42-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI46-.LCFI43
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI47-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI48
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
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI53-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI54
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
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI59-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI60
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI64-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI65
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
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI69-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI72-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI73
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
	.long	.LCFI76-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI77
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI81-.LFB33
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
	.long	.LCFI86-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI87
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI92-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI93
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
	.long	.LCFI96-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI97
	.byte	0x83
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
	.long	.LCFI100-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI101
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE44:
	.file 3 "../../../kg++fe/gnu/basic-block.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "../../../kg++fe/gnu/rtl.h"
	.file 9 "../../../kg++fe/gnu/MIPS/config.h"
	.file 10 "../../../kg++fe/gnu/machmode.h"
	.file 11 "../../../kg++fe/gnu/bitmap.h"
	.file 12 "../../../kg++fe/gnu/tree.h"
	.file 13 "../../../kg++fe/gnu/hashtable.h"
	.file 14 "../../../kg++fe/gnu/location.h"
	.file 15 "../../../kg++fe/gnu/function.h"
	.file 16 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 17 "../../../kg++fe/omp_types.h"
	.file 18 "../../../kg++fe/gnu/sbitmap.h"
	.file 19 "../../../kg++fe/gnu/flags.h"
	.file 20 "../../../kg++fe/gnu/output.h"
	.file 21 "../../../kg++fe/gnu/target.h"
	.file 22 "../../../kg++fe/gnu/profile.h"
	.file 23 "../../../kg++fe/gnu/langhooks.h"
	.file 24 "../../../kg++fe/gnu/MIPS/gt-profile.h"
	.file 25 "../../../kg++fe/gnu/ggc.h"
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
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI38-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI59-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI60-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI76-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI77-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI92-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI93-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x9338
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/profile.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x9
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x9
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x8
	.byte	0x84
	.long	0xa80
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x8
	.byte	0x87
	.long	0x837
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x8
	.byte	0x8e
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x8
	.byte	0x91
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x8
	.byte	0x99
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x8
	.byte	0xa2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x8
	.byte	0xb4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x8
	.byte	0xbb
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x8
	.byte	0xc0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x8
	.byte	0xc9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x8
	.byte	0xce
	.long	0x169f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x9
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x9
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x8
	.byte	0xf2
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x8
	.byte	0xf3
	.long	0x16af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x9
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x7
	.long	0x2ce
	.string	"tree_node"
	.byte	0xa0
	.byte	0x9
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0xc
	.value	0x887
	.long	0x3d83
	.uleb128 0x9
	.string	"int_cst"
	.byte	0xc
	.value	0x888
	.long	0x40a2
	.uleb128 0x9
	.string	"real_cst"
	.byte	0xc
	.value	0x889
	.long	0x40ea
	.uleb128 0x9
	.string	"vector"
	.byte	0xc
	.value	0x88a
	.long	0x420a
	.uleb128 0x8
	.long	.LASF1
	.byte	0xc
	.value	0x88b
	.long	0x414b
	.uleb128 0x9
	.string	"complex"
	.byte	0xc
	.value	0x88c
	.long	0x41b5
	.uleb128 0x9
	.string	"identifier"
	.byte	0xc
	.value	0x88d
	.long	0x4290
	.uleb128 0x9
	.string	"decl"
	.byte	0xc
	.value	0x88e
	.long	0x52f9
	.uleb128 0x9
	.string	"type"
	.byte	0xc
	.value	0x88f
	.long	0x44f0
	.uleb128 0x9
	.string	"list"
	.byte	0xc
	.value	0x890
	.long	0x42c7
	.uleb128 0x9
	.string	"vec"
	.byte	0xc
	.value	0x891
	.long	0x430c
	.uleb128 0x9
	.string	"exp"
	.byte	0xc
	.value	0x892
	.long	0x435a
	.uleb128 0x9
	.string	"block"
	.byte	0xc
	.value	0x893
	.long	0x43a6
	.uleb128 0x9
	.string	"omp"
	.byte	0xc
	.value	0x895
	.long	0x5cd2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d4
	.uleb128 0xa
	.long	0x2d9
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3ba
	.string	"mips_args"
	.byte	0x40
	.byte	0x10
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0x10
	.value	0xaad
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0x10
	.value	0xab0
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0x10
	.value	0xab5
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0x10
	.value	0xab8
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0x10
	.value	0xabb
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0x10
	.value	0xac8
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0x10
	.value	0xacb
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0x10
	.value	0xad3
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0x10
	.value	0xad4
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d1
	.long	0x9c
	.uleb128 0x10
	.long	0x3d1
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0x10
	.value	0xad5
	.long	0x2e8
	.uleb128 0x2
	.string	"size_t"
	.byte	0x4
	.byte	0xd6
	.long	0x3ba
	.uleb128 0xb
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xb
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xb
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xb
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xb
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x7
	.byte	0x3b
	.long	0x456
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x4a0
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x481
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d9
	.uleb128 0x2
	.string	"FILE"
	.byte	0x5
	.byte	0x2e
	.long	0x4d1
	.uleb128 0x13
	.long	0x74c
	.long	.LASF3
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x7d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x7d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0x40f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0x43a
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x7dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x7ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x4ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x7f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.long	0x75c
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x762
	.uleb128 0xa
	.long	0x3fe
	.uleb128 0x3
	.byte	0x4
	.long	0x3fe
	.uleb128 0x3
	.byte	0x4
	.long	0x773
	.uleb128 0x14
	.long	0x77f
	.byte	0x1
	.uleb128 0x15
	.long	0x4bd
	.byte	0x0
	.uleb128 0x16
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0x4
	.long	0x7d0
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x7d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x7d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78d
	.uleb128 0x3
	.byte	0x4
	.long	0x4d1
	.uleb128 0xf
	.long	0x7ec
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77f
	.uleb128 0xf
	.long	0x802
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x812
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x2e1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e1
	.uleb128 0x3
	.byte	0x4
	.long	0x823
	.uleb128 0x14
	.long	0x82f
	.byte	0x1
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x82f
	.uleb128 0x18
	.long	0xa80
	.string	"machine_mode"
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.uleb128 0x19
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x19
	.string	"BImode"
	.sleb128 1
	.uleb128 0x19
	.string	"QImode"
	.sleb128 2
	.uleb128 0x19
	.string	"HImode"
	.sleb128 3
	.uleb128 0x19
	.string	"SImode"
	.sleb128 4
	.uleb128 0x19
	.string	"DImode"
	.sleb128 5
	.uleb128 0x19
	.string	"TImode"
	.sleb128 6
	.uleb128 0x19
	.string	"OImode"
	.sleb128 7
	.uleb128 0x19
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x19
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x19
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x19
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x19
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x19
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x19
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x19
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x19
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x19
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x19
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x19
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x19
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x19
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x19
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x19
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x19
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x19
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x19
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x19
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x19
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x19
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x19
	.string	"COImode"
	.sleb128 30
	.uleb128 0x19
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x19
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x19
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x19
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x19
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x19
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x19
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x19
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x19
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x19
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x19
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x19
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x19
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x19
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x19
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x19
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x19
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x19
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x19
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x19
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x19
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x19
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x19
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x19
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x18
	.long	0x124f
	.string	"rtx_code"
	.byte	0x4
	.byte	0x8
	.byte	0x29
	.uleb128 0x19
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x19
	.string	"NIL"
	.sleb128 1
	.uleb128 0x19
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x19
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x19
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x19
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x19
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x19
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x19
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x19
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x19
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x19
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x19
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x19
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x19
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x19
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x19
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x19
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x19
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x19
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x19
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x19
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x19
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x19
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x19
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x19
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x19
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x19
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x19
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x19
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x19
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x19
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x19
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x19
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x19
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x19
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x19
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x19
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x19
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x19
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x19
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x19
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x19
	.string	"INSN"
	.sleb128 42
	.uleb128 0x19
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x19
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x19
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x19
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x19
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x19
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x19
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x19
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x19
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x19
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x19
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x19
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x19
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x19
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x19
	.string	"SET"
	.sleb128 57
	.uleb128 0x19
	.string	"USE"
	.sleb128 58
	.uleb128 0x19
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x19
	.string	"CALL"
	.sleb128 60
	.uleb128 0x19
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x19
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x19
	.string	"RESX"
	.sleb128 63
	.uleb128 0x19
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x19
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x19
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x19
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x19
	.string	"CONST"
	.sleb128 68
	.uleb128 0x19
	.string	"PC"
	.sleb128 69
	.uleb128 0x19
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x19
	.string	"REG"
	.sleb128 71
	.uleb128 0x19
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x19
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x19
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x19
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x19
	.string	"MEM"
	.sleb128 76
	.uleb128 0x19
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x19
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x19
	.string	"CC0"
	.sleb128 79
	.uleb128 0x19
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x19
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x19
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x19
	.string	"COND"
	.sleb128 83
	.uleb128 0x19
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x19
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x19
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x19
	.string	"NEG"
	.sleb128 87
	.uleb128 0x19
	.string	"MULT"
	.sleb128 88
	.uleb128 0x19
	.string	"DIV"
	.sleb128 89
	.uleb128 0x19
	.string	"MOD"
	.sleb128 90
	.uleb128 0x19
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x19
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x19
	.string	"AND"
	.sleb128 93
	.uleb128 0x19
	.string	"IOR"
	.sleb128 94
	.uleb128 0x19
	.string	"XOR"
	.sleb128 95
	.uleb128 0x19
	.string	"NOT"
	.sleb128 96
	.uleb128 0x19
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x19
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x19
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x19
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x19
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x19
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x19
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x19
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x19
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x19
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x19
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x19
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x19
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x19
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x19
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x19
	.string	"NE"
	.sleb128 112
	.uleb128 0x19
	.string	"EQ"
	.sleb128 113
	.uleb128 0x19
	.string	"GE"
	.sleb128 114
	.uleb128 0x19
	.string	"GT"
	.sleb128 115
	.uleb128 0x19
	.string	"LE"
	.sleb128 116
	.uleb128 0x19
	.string	"LT"
	.sleb128 117
	.uleb128 0x19
	.string	"GEU"
	.sleb128 118
	.uleb128 0x19
	.string	"GTU"
	.sleb128 119
	.uleb128 0x19
	.string	"LEU"
	.sleb128 120
	.uleb128 0x19
	.string	"LTU"
	.sleb128 121
	.uleb128 0x19
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x19
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x19
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x19
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x19
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x19
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x19
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x19
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x19
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x19
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x19
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x19
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x19
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x19
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x19
	.string	"FIX"
	.sleb128 136
	.uleb128 0x19
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x19
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x19
	.string	"ABS"
	.sleb128 139
	.uleb128 0x19
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x19
	.string	"FFS"
	.sleb128 141
	.uleb128 0x19
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x19
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x19
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x19
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x19
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x19
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x19
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x19
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x19
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x19
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x19
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x19
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x19
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x19
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x19
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x19
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x19
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x19
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x19
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x19
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x19
	.string	"PHI"
	.sleb128 162
	.uleb128 0x19
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1a
	.long	0x1329
	.byte	0x4
	.byte	0x8
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x8
	.byte	0x49
	.long	0x3ba
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x8
	.byte	0x4b
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x8
	.byte	0x4c
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x8
	.byte	0x4e
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x8
	.byte	0x50
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x8
	.byte	0x52
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x8
	.byte	0x55
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x8
	.byte	0x57
	.long	0x3ba
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x8
	.byte	0x58
	.long	0x124f
	.uleb128 0x13
	.long	0x13a0
	.long	.LASF4
	.byte	0x18
	.byte	0x8
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x8
	.byte	0x63
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x8
	.byte	0x64
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x8
	.byte	0x65
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x8
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x8
	.byte	0x67
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x8
	.byte	0x68
	.long	0x1344
	.uleb128 0x7
	.long	0x147d
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x8
	.byte	0x6d
	.uleb128 0x1c
	.string	"rtwint"
	.byte	0x8
	.byte	0x6e
	.long	0x456
	.uleb128 0x1c
	.string	"rtint"
	.byte	0x8
	.byte	0x6f
	.long	0x2e1
	.uleb128 0x1c
	.string	"rtuint"
	.byte	0x8
	.byte	0x70
	.long	0x3ba
	.uleb128 0x1c
	.string	"rtstr"
	.byte	0x8
	.byte	0x71
	.long	0x2ce
	.uleb128 0x1c
	.string	"rtx"
	.byte	0x8
	.byte	0x72
	.long	0x9c
	.uleb128 0x1c
	.string	"rtvec"
	.byte	0x8
	.byte	0x73
	.long	0x19d
	.uleb128 0x1c
	.string	"rttype"
	.byte	0x8
	.byte	0x74
	.long	0x837
	.uleb128 0x1c
	.string	"rt_addr_diff_vec_flags"
	.byte	0x8
	.byte	0x75
	.long	0x1329
	.uleb128 0x1c
	.string	"rt_cselib"
	.byte	0x8
	.byte	0x76
	.long	0x1491
	.uleb128 0x1c
	.string	"rtbit"
	.byte	0x8
	.byte	0x77
	.long	0x14f9
	.uleb128 0x1c
	.string	"rttree"
	.byte	0x8
	.byte	0x78
	.long	0x1e5
	.uleb128 0x1c
	.string	"bb"
	.byte	0x8
	.byte	0x79
	.long	0x1684
	.uleb128 0x1c
	.string	"rtmem"
	.byte	0x8
	.byte	0x7a
	.long	0x168a
	.byte	0x0
	.uleb128 0x1d
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x147d
	.uleb128 0x4
	.long	0x14f9
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x8
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0xb
	.byte	0x3d
	.long	0x5eca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0xb
	.byte	0x3e
	.long	0x5eca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0xb
	.byte	0x3f
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0xb
	.byte	0x40
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1497
	.uleb128 0x4
	.long	0x1684
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x8
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x3
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x3
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x3
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x3
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x3
	.byte	0xbc
	.long	0x601a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x3
	.byte	0xbc
	.long	0x601a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x3
	.byte	0xc1
	.long	0x5f4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x3
	.byte	0xc5
	.long	0x5f4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x3
	.byte	0xcb
	.long	0x5f4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x3
	.byte	0xcd
	.long	0x5f4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x3
	.byte	0xd0
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x3
	.byte	0xd3
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x1684
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x1684
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x3
	.byte	0xd9
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x3
	.byte	0xdc
	.long	0x6296
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x3
	.byte	0xdf
	.long	0x5f59
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x3
	.byte	0xe2
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x3
	.byte	0xe5
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14ff
	.uleb128 0x3
	.byte	0x4
	.long	0x13a0
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x8
	.byte	0x7c
	.long	0x13ab
	.uleb128 0xf
	.long	0x16af
	.long	0x1690
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x16bf
	.long	0x9c
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x16f6
	.string	"location_s"
	.byte	0x8
	.byte	0xe
	.byte	0x1c
	.uleb128 0x1e
	.long	.LASF5
	.byte	0xe
	.byte	0x1e
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0xe
	.byte	0x21
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xe
	.byte	0x23
	.long	0x16c5
	.uleb128 0x18
	.long	0x202a
	.string	"tree_code"
	.byte	0x4
	.byte	0xc
	.byte	0x25
	.uleb128 0x19
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x19
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x19
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x19
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x19
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x19
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x19
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x19
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x19
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x19
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x19
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x19
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x19
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x19
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x19
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x19
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x19
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x19
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x19
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x19
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x19
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x19
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x19
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x19
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x19
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x19
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x19
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x19
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x19
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x19
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x19
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x19
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x19
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x19
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x19
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x19
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x19
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x19
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x19
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x19
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x19
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x19
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x19
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x19
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x19
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x19
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x19
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x19
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x19
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x19
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x19
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x19
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x19
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x19
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x19
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x19
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x19
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x19
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x19
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x19
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x19
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x19
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x19
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x19
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x19
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x19
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x19
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x19
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x19
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x19
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x19
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x19
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x19
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x19
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x19
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x19
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x19
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x19
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x19
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x19
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x19
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x19
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x19
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x19
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x19
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x19
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x19
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x19
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x19
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x19
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x19
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x19
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x19
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x19
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x19
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x19
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x19
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x19
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x19
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x19
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x19
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x19
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x19
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x19
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x19
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x19
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x19
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x19
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x19
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x19
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x19
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x19
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x19
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x19
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x19
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x19
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x19
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x19
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x19
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x19
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x19
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x19
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x19
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x19
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x19
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x19
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x19
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x19
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x19
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x19
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x19
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x19
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x19
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x19
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x19
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x19
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x19
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x19
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x19
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x19
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x19
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x19
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x19
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x19
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x19
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x19
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x19
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x19
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x19
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x19
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x19
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x19
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0xc
	.byte	0x2f
	.long	0x3ba
	.uleb128 0x4
	.long	0x207a
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0xc
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0xc
	.byte	0x30
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0xc
	.byte	0x30
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0xc
	.byte	0x34
	.long	0x2084
	.uleb128 0x1d
	.string	"st"
	.byte	0x1
	.uleb128 0x1f
	.long	0x20d9
	.long	.LASF6
	.byte	0x4
	.byte	0xc
	.byte	0x58
	.uleb128 0x19
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x19
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x19
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x19
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x18
	.long	0x3d83
	.string	"built_in_function"
	.byte	0x4
	.byte	0xc
	.byte	0x67
	.uleb128 0x19
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x19
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x19
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x19
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x19
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x19
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x19
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x19
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x19
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x19
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x19
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x19
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x19
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x19
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x19
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x19
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x19
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x19
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x19
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x19
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x19
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x19
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x19
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x19
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x19
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x19
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x19
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x19
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x19
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x19
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x19
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x19
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x19
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x19
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x19
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x19
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x19
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x19
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x19
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x19
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x19
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x19
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x19
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x19
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x19
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x19
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x19
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x19
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x19
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x19
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x19
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x19
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x19
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x19
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x19
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x19
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x19
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x19
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x19
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x19
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x19
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x19
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x19
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x19
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x19
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x19
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x19
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x19
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x19
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x19
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x19
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x19
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x19
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x19
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x19
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x19
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x19
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x19
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x19
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x19
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x19
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x19
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x19
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x19
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x19
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x19
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x19
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x19
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x19
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x19
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x19
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x19
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x19
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x19
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x19
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x19
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x19
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x19
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x19
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x19
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x19
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x19
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x19
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x19
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x19
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x19
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x19
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x19
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x19
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x19
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x19
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x19
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x19
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x19
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x19
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x19
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x19
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x19
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x19
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x19
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x19
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x19
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x19
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x19
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x19
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x19
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x19
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x19
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x19
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x19
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x19
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x19
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x19
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x19
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x19
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x19
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x19
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x19
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x19
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x19
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x19
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x19
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x19
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x19
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x19
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x19
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x19
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x19
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x19
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x19
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x19
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x19
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x19
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x19
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x19
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x19
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x19
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x19
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x19
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x19
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x19
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x19
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x19
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x19
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x19
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x19
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x19
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x19
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x19
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x19
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x19
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x19
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x19
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x19
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x19
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x19
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x19
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x19
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x19
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x19
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x19
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x19
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x19
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x19
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x19
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x19
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x19
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x19
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x19
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x19
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x19
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x19
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x19
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x19
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x19
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x19
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x19
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x19
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x19
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x19
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x19
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x19
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x19
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x19
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x19
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x19
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x19
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x19
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x19
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x19
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x19
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x19
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x19
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x19
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x19
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x19
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x19
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x19
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x19
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x19
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x19
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x19
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x19
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x19
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x19
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x19
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x19
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x19
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x19
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x19
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x19
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x19
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x19
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x19
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x19
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x19
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x19
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x19
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x19
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x19
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x19
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x19
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x19
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x19
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x19
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x19
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x19
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x19
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x19
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x19
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x19
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x19
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x19
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x19
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x19
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x19
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x19
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x19
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x19
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x19
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x4066
	.string	"tree_common"
	.byte	0x10
	.byte	0xc
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0xc
	.byte	0x8d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0xc
	.byte	0x8e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0xc
	.byte	0x90
	.long	0x1708
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0xc
	.byte	0x92
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0xc
	.byte	0x93
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0xc
	.byte	0x94
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0xc
	.byte	0x95
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0xc
	.byte	0x96
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0xc
	.byte	0x97
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0xc
	.byte	0x98
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0xc
	.byte	0x9a
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0xc
	.byte	0x9f
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0xc
	.byte	0xa0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0xc
	.byte	0xa1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0xc
	.byte	0xa2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0xc
	.byte	0xa3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0xc
	.byte	0xa4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0xc
	.byte	0xa5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0xc
	.byte	0xa6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF7
	.byte	0xc
	.byte	0xa8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF8
	.byte	0xc
	.byte	0xa9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF9
	.byte	0xc
	.byte	0xaa
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF10
	.byte	0xc
	.byte	0xab
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF11
	.byte	0xc
	.byte	0xac
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF12
	.byte	0xc
	.byte	0xad
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF13
	.byte	0xc
	.byte	0xae
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF14
	.byte	0xc
	.byte	0xb0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0xc
	.byte	0xb5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0xc
	.byte	0xb6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0xc
	.byte	0xb7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0xc
	.byte	0xb8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0xc
	.byte	0xb9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x40a2
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0xc
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0xc
	.value	0x30b
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0xc
	.value	0x30c
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x40ea
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0xc
	.value	0x303
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x304
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0xc
	.value	0x305
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0xc
	.value	0x30d
	.long	0x4066
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4138
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0xc
	.value	0x31f
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x320
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0xc
	.value	0x321
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0xc
	.value	0x322
	.long	0x4145
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4138
	.uleb128 0xc
	.long	0x41af
	.string	"tree_string"
	.byte	0x20
	.byte	0xc
	.value	0x333
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x334
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0xc
	.value	0x335
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF15
	.byte	0xc
	.value	0x336
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0xc
	.value	0x337
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0xc
	.value	0x339
	.long	0x41af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x207a
	.uleb128 0xc
	.long	0x420a
	.string	"tree_complex"
	.byte	0x1c
	.byte	0xc
	.value	0x342
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x343
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0xc
	.value	0x344
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0xc
	.value	0x345
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0xc
	.value	0x346
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x4252
	.string	"tree_vector"
	.byte	0x18
	.byte	0xc
	.value	0x355
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x356
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0xc
	.value	0x357
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0xc
	.value	0x358
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x4290
	.long	.LASF16
	.byte	0xc
	.byte	0xd
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0xd
	.byte	0x1c
	.long	0x75c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0xd
	.byte	0x1d
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0xd
	.byte	0x1e
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x42c7
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0xc
	.value	0x376
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x377
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0xc
	.value	0x378
	.long	0x4252
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x430c
	.string	"tree_list"
	.byte	0x18
	.byte	0xc
	.value	0x380
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x381
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0xc
	.value	0x382
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF17
	.byte	0xc
	.value	0x383
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x434a
	.string	"tree_vec"
	.byte	0x18
	.byte	0xc
	.value	0x38e
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x38f
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF15
	.byte	0xc
	.value	0x390
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0xc
	.value	0x391
	.long	0x434a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x435a
	.long	0x1e5
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x43a6
	.string	"tree_exp"
	.byte	0x18
	.byte	0xc
	.value	0x3d4
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x3d5
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0xc
	.value	0x3d6
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0xc
	.value	0x3d9
	.long	0x434a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4496
	.string	"tree_block"
	.byte	0x2c
	.byte	0xc
	.value	0x40a
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x40b
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0xc
	.value	0x40d
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF18
	.byte	0xc
	.value	0x40e
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.string	"block_num"
	.byte	0xc
	.value	0x40f
	.long	0x3ba
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0xc
	.value	0x411
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0xc
	.value	0x412
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0xc
	.value	0x413
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x21
	.long	.LASF19
	.byte	0xc
	.value	0x414
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0xc
	.value	0x415
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0xc
	.value	0x416
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x44dd
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0xc
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0xc
	.value	0x571
	.long	0x2e1
	.uleb128 0x9
	.string	"pointer"
	.byte	0xc
	.value	0x572
	.long	0x4bf
	.uleb128 0x9
	.string	"die"
	.byte	0xc
	.value	0x573
	.long	0x44ea
	.byte	0x0
	.uleb128 0x1d
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x44dd
	.uleb128 0xc
	.long	0x483d
	.string	"tree_type"
	.byte	0x74
	.byte	0xc
	.value	0x551
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x552
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0xc
	.value	0x553
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0xc
	.value	0x554
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x21
	.long	.LASF20
	.byte	0xc
	.value	0x555
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x21
	.long	.LASF21
	.byte	0xc
	.value	0x556
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0xc
	.value	0x557
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"precision"
	.byte	0xc
	.value	0x559
	.long	0x3ba
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"mode"
	.byte	0xc
	.value	0x55a
	.long	0x837
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"string_flag"
	.byte	0xc
	.value	0x55c
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_force_blk_flag"
	.byte	0xc
	.value	0x55d
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"needs_constructing_flag"
	.byte	0xc
	.value	0x55e
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"transparent_union_flag"
	.byte	0xc
	.value	0x55f
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"packed_flag"
	.byte	0xc
	.value	0x560
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"restrict_flag"
	.byte	0xc
	.value	0x561
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF22
	.byte	0xc
	.value	0x562
	.long	0x3ba
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0xc
	.value	0x564
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0xc
	.value	0x565
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0xc
	.value	0x566
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0xc
	.value	0x567
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0xc
	.value	0x568
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0xc
	.value	0x569
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0xc
	.value	0x56a
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF23
	.byte	0xc
	.value	0x56b
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"align"
	.byte	0xc
	.value	0x56d
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0xc
	.value	0x56e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0xc
	.value	0x56f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0xc
	.value	0x574
	.long	0x4496
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x21
	.long	.LASF24
	.byte	0xc
	.value	0x576
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0xc
	.value	0x577
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0xc
	.value	0x578
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0xc
	.value	0x579
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0xc
	.value	0x57a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0xc
	.value	0x57b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"context"
	.byte	0xc
	.value	0x57c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0xc
	.value	0x57d
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x21
	.long	.LASF25
	.byte	0xc
	.value	0x57f
	.long	0x4849
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0xc
	.value	0x581
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0xc
	.value	0x582
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0xc
	.value	0x583
	.long	0x203b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0xc
	.value	0x58a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1d
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x483d
	.uleb128 0xc
	.long	0x4894
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0xc
	.value	0x817
	.uleb128 0x22
	.string	"align"
	.byte	0xc
	.value	0x818
	.long	0x3ba
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"off_align"
	.byte	0xc
	.value	0x819
	.long	0x3ba
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x48c9
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0xc
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0xc
	.value	0x811
	.long	0x20d9
	.uleb128 0x9
	.string	"i"
	.byte	0xc
	.value	0x814
	.long	0x456
	.uleb128 0x9
	.string	"a"
	.byte	0xc
	.value	0x81a
	.long	0x484f
	.byte	0x0
	.uleb128 0x24
	.long	0x4908
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0xc
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0xc
	.value	0x838
	.long	0x52bb
	.uleb128 0x9
	.string	"r"
	.byte	0xc
	.value	0x839
	.long	0x9c
	.uleb128 0x9
	.string	"t"
	.byte	0xc
	.value	0x83a
	.long	0x1e5
	.uleb128 0x9
	.string	"i"
	.byte	0xc
	.value	0x83b
	.long	0x2e1
	.byte	0x0
	.uleb128 0x25
	.long	0x52bb
	.long	.LASF26
	.value	0x134
	.byte	0x8
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb5
	.long	0x666d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xf
	.byte	0xb6
	.long	0x6681
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xf
	.byte	0xb7
	.long	0x6687
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xf
	.byte	0xb8
	.long	0x668d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xf
	.byte	0xb9
	.long	0x66a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF24
	.byte	0xf
	.byte	0xbe
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xf
	.byte	0xc1
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xf
	.byte	0xc4
	.long	0x52bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xf
	.byte	0xc9
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF27
	.byte	0xf
	.byte	0xce
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xf
	.byte	0xd3
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xf
	.byte	0xd7
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xf
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xf
	.byte	0xdf
	.long	0x3d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xf
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xf
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xf
	.byte	0xec
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xf
	.byte	0xf0
	.long	0x66c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xf
	.byte	0xf3
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xf
	.byte	0xf8
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xf
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xf
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xf
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0xf
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0xf
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0xf
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0xf
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0xf
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0xf
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0xf
	.value	0x121
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0xf
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0xf
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0xf
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0xf
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0xf
	.value	0x138
	.long	0x456
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0xf
	.value	0x13d
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0xf
	.value	0x146
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0xf
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0xf
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0xf
	.value	0x151
	.long	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0xf
	.value	0x157
	.long	0x16bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0xf
	.value	0x15a
	.long	0x66d2
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0xf
	.value	0x15d
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0xf
	.value	0x160
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0xf
	.value	0x166
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0xf
	.value	0x16a
	.long	0x6373
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0xf
	.value	0x16d
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0xf
	.value	0x16e
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0xf
	.value	0x16f
	.long	0x19d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0xf
	.value	0x170
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0xf
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0xf
	.value	0x175
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0xf
	.value	0x178
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0xf
	.value	0x17d
	.long	0x66eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0xf
	.value	0x17f
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0xf
	.value	0x181
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0xf
	.value	0x184
	.long	0x6705
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0xf
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x22
	.string	"returns_struct"
	.byte	0xf
	.value	0x190
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pcc_struct"
	.byte	0xf
	.value	0x194
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pointer"
	.byte	0xf
	.value	0x197
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"needs_context"
	.byte	0xf
	.value	0x19a
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_setjmp"
	.byte	0xf
	.value	0x19d
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_longjmp"
	.byte	0xf
	.value	0x1a0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_alloca"
	.byte	0xf
	.value	0x1a4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_eh_return"
	.byte	0xf
	.value	0x1a7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_label"
	.byte	0xf
	.value	0x1ab
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_goto"
	.byte	0xf
	.value	0x1af
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"contains_functions"
	.byte	0xf
	.value	0x1b2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_computed_jump"
	.byte	0xf
	.value	0x1b5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"is_thunk"
	.byte	0xf
	.value	0x1ba
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"all_throwers_are_sibcalls"
	.byte	0xf
	.value	0x1c1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"instrument_entry_exit"
	.byte	0xf
	.value	0x1c5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arc_profile"
	.byte	0xf
	.value	0x1c8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"profile"
	.byte	0xf
	.value	0x1cb
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"limit_stack"
	.byte	0xf
	.value	0x1cf
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"stdarg"
	.byte	0xf
	.value	0x1d2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_whole_function_mode_p"
	.byte	0xf
	.value	0x1d8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xf
	.value	0x1e1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_const_pool"
	.byte	0xf
	.value	0x1e4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_pic_offset_table"
	.byte	0xf
	.value	0x1e7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_eh_lsda"
	.byte	0xf
	.value	0x1ea
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arg_pointer_save_area_init"
	.byte	0xf
	.value	0x1ed
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.long	.LASF28
	.byte	0xf
	.value	0x1fa
	.long	0x65f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0xf
	.value	0x1fe
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4908
	.uleb128 0x26
	.long	0x52f9
	.byte	0x4
	.byte	0xc
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0xc
	.value	0x84f
	.long	0x41af
	.uleb128 0x9
	.string	"label_idx"
	.byte	0xc
	.value	0x850
	.long	0x202a
	.uleb128 0x9
	.string	"field_id"
	.byte	0xc
	.value	0x851
	.long	0x3ba
	.byte	0x0
	.uleb128 0xc
	.long	0x5a42
	.string	"tree_decl"
	.byte	0xa0
	.byte	0xc
	.value	0x7c5
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x7c6
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0xc
	.value	0x7c7
	.long	0x16f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0xc
	.value	0x7c8
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0xc
	.value	0x7c9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.string	"mode"
	.byte	0xc
	.value	0x7ca
	.long	0x837
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"external_flag"
	.byte	0xc
	.value	0x7cc
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"nonlocal_flag"
	.byte	0xc
	.value	0x7cd
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"regdecl_flag"
	.byte	0xc
	.value	0x7ce
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"inline_flag"
	.byte	0xc
	.value	0x7cf
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"bit_field_flag"
	.byte	0xc
	.value	0x7d0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"virtual_flag"
	.byte	0xc
	.value	0x7d1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"ignored_flag"
	.byte	0xc
	.value	0x7d2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF18
	.byte	0xc
	.value	0x7d3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sbuf_flag"
	.byte	0xc
	.value	0x7d7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sdram_flag"
	.byte	0xc
	.value	0x7d8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v1buf_flag"
	.byte	0xc
	.value	0x7d9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v2buf_flag"
	.byte	0xc
	.value	0x7da
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v4buf_flag"
	.byte	0xc
	.value	0x7db
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"in_system_header_flag"
	.byte	0xc
	.value	0x7df
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"common_flag"
	.byte	0xc
	.value	0x7e0
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"defer_output"
	.byte	0xc
	.value	0x7e1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"transparent_union"
	.byte	0xc
	.value	0x7e2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_ctor_flag"
	.byte	0xc
	.value	0x7e3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_dtor_flag"
	.byte	0xc
	.value	0x7e4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"artificial_flag"
	.byte	0xc
	.value	0x7e5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"weak_flag"
	.byte	0xc
	.value	0x7e6
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"non_addr_const_p"
	.byte	0xc
	.value	0x7e8
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"no_instrument_function_entry_exit"
	.byte	0xc
	.value	0x7e9
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"comdat_flag"
	.byte	0xc
	.value	0x7ea
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"malloc_flag"
	.byte	0xc
	.value	0x7eb
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_limit_stack"
	.byte	0xc
	.value	0x7ec
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF6
	.byte	0xc
	.value	0x7ed
	.long	0x2089
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"pure_flag"
	.byte	0xc
	.value	0x7ee
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF22
	.byte	0xc
	.value	0x7f0
	.long	0x3ba
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"non_addressable"
	.byte	0xc
	.value	0x7f1
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF23
	.byte	0xc
	.value	0x7f2
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"uninlinable"
	.byte	0xc
	.value	0x7f3
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"thread_local_flag"
	.byte	0xc
	.value	0x7f4
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"inlined_function_flag"
	.byte	0xc
	.value	0x7f5
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"threadprivate_flag"
	.byte	0xc
	.value	0x7f7
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0xc
	.value	0x7fa
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0xc
	.value	0x7fb
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0xc
	.value	0x7fc
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0xc
	.value	0x7fd
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0xc
	.value	0x7fe
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0xc
	.value	0x7ff
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0xc
	.value	0x800
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0xc
	.value	0x801
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"syscall_linkage_flag"
	.byte	0xc
	.value	0x804
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"widen_retval_flag"
	.byte	0xc
	.value	0x805
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"emitted_by_gxx"
	.byte	0xc
	.value	0x808
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0xc
	.value	0x81b
	.long	0x4894
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x21
	.long	.LASF20
	.byte	0xc
	.value	0x81d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x21
	.long	.LASF24
	.byte	0xc
	.value	0x81e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0xc
	.value	0x81f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0xc
	.value	0x820
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0xc
	.value	0x821
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0xc
	.value	0x822
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0xc
	.value	0x824
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0xc
	.value	0x825
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0xc
	.value	0x829
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x21
	.long	.LASF19
	.byte	0xc
	.value	0x82b
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0xc
	.value	0x82c
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0xc
	.value	0x82d
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x21
	.long	.LASF21
	.byte	0xc
	.value	0x82e
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0xc
	.value	0x82f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0xc
	.value	0x830
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0xc
	.value	0x83c
	.long	0x48c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0xc
	.value	0x83f
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0xc
	.value	0x843
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0xc
	.value	0x845
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0xc
	.value	0x846
	.long	0x456
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF25
	.byte	0xc
	.value	0x848
	.long	0x5a4e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0xc
	.value	0x84b
	.long	0x3ba
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.string	"label_defined"
	.byte	0xc
	.value	0x84c
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0xc
	.value	0x852
	.long	0x52c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0xc
	.value	0x858
	.long	0x203b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0xc
	.value	0x85c
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1d
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5a42
	.uleb128 0x18
	.long	0x5cd2
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x11
	.byte	0x1d
	.uleb128 0x19
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x19
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x19
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x19
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x19
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x19
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x19
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x19
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x19
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x19
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x19
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x19
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x19
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x19
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x19
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x19
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x19
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x19
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x19
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x19
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x19
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x19
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x19
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x19
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x19
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x19
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x19
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x19
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x19
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x19
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x19
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x19
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x19
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x19
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x19
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xc
	.long	0x5d21
	.string	"tree_omp"
	.byte	0x18
	.byte	0xc
	.value	0x864
	.uleb128 0x21
	.long	.LASF0
	.byte	0xc
	.value	0x865
	.long	0x3d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0xc
	.value	0x866
	.long	0x5a54
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0xc
	.value	0x867
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x5dd5
	.string	"attribute_spec"
	.byte	0x14
	.byte	0xc
	.value	0xa1d
	.uleb128 0x21
	.long	.LASF24
	.byte	0xc
	.value	0xa20
	.long	0x5dd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0xc
	.value	0xa22
	.long	0x812
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF29
	.byte	0xc
	.value	0xa25
	.long	0x812
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0xc
	.value	0xa2d
	.long	0x5dda
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0xc
	.value	0xa30
	.long	0x5dda
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0xc
	.value	0xa35
	.long	0x5dda
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0xc
	.value	0xa44
	.long	0x5e18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2ce
	.uleb128 0xa
	.long	0x5ddf
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x27
	.long	0x5e0c
	.byte	0x1
	.long	0x1e5
	.uleb128 0x15
	.long	0x5e0c
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x5e12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x3
	.byte	0x4
	.long	0x5ddf
	.uleb128 0xa
	.long	0x5e1d
	.uleb128 0x3
	.byte	0x4
	.long	0x5de8
	.uleb128 0xf
	.long	0x5e33
	.long	0x467
	.uleb128 0x10
	.long	0x3d1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0xb
	.byte	0x1d
	.long	0x425
	.uleb128 0x4
	.long	0x5e9e
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0xb
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0xb
	.byte	0x35
	.long	0x5e9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0xb
	.byte	0x36
	.long	0x5e9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0xb
	.byte	0x37
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0xb
	.byte	0x38
	.long	0x5ea4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e46
	.uleb128 0xf
	.long	0x5eb4
	.long	0x5e33
	.uleb128 0x10
	.long	0x3d1
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0xb
	.byte	0x39
	.long	0x5e46
	.uleb128 0x3
	.byte	0x4
	.long	0x5eb4
	.uleb128 0x2
	.string	"bitmap"
	.byte	0xb
	.byte	0x43
	.long	0x14f9
	.uleb128 0x4
	.long	0x5f36
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x12
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x12
	.byte	0x21
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x12
	.byte	0x22
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF30
	.byte	0x12
	.byte	0x23
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x12
	.byte	0x24
	.long	0x5e23
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x12
	.byte	0x25
	.long	0x5f45
	.uleb128 0x3
	.byte	0x4
	.long	0x5ede
	.uleb128 0x2
	.string	"regset"
	.byte	0x3
	.byte	0x22
	.long	0x5ed0
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x3
	.byte	0x75
	.long	0x456
	.uleb128 0x4
	.long	0x6014
	.string	"edge_def"
	.byte	0x28
	.byte	0x3
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x3
	.byte	0x7a
	.long	0x6014
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x3
	.byte	0x7a
	.long	0x6014
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x3
	.byte	0x7d
	.long	0x1684
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x3
	.byte	0x7d
	.long	0x1684
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x3
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x3
	.byte	0x83
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x3
	.byte	0x85
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x3
	.byte	0x86
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x3
	.byte	0x87
	.long	0x5f59
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f6a
	.uleb128 0x2
	.string	"edge"
	.byte	0x3
	.byte	0x89
	.long	0x6014
	.uleb128 0x4
	.long	0x6296
	.string	"loop"
	.byte	0x80
	.byte	0x3
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x3
	.value	0x176
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x3
	.value	0x179
	.long	0x629c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x3
	.value	0x17c
	.long	0x629c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x3
	.value	0x17f
	.long	0x629c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x3
	.value	0x184
	.long	0x62af
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x3
	.value	0x187
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x3
	.value	0x18b
	.long	0x629c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x3
	.value	0x18f
	.long	0x629c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x3
	.value	0x192
	.long	0x5f36
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x3
	.value	0x195
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x3
	.value	0x198
	.long	0x62af
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x3
	.value	0x19b
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x3
	.value	0x19e
	.long	0x62af
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x3
	.value	0x1a1
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x3
	.value	0x1a4
	.long	0x5f36
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x3
	.value	0x1a7
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x3
	.value	0x1aa
	.long	0x62b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x3
	.value	0x1ae
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x3
	.value	0x1b1
	.long	0x6296
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x3
	.value	0x1b4
	.long	0x6296
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x3
	.value	0x1b7
	.long	0x6296
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x3
	.value	0x1ba
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x3
	.value	0x1bd
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x3
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x3
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x3
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x3
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x3
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x3
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x3
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x3
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x3
	.value	0x1e6
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6026
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x3
	.byte	0xe6
	.long	0x1684
	.uleb128 0x3
	.byte	0x4
	.long	0x601a
	.uleb128 0x3
	.byte	0x4
	.long	0x6296
	.uleb128 0xc
	.long	0x630d
	.string	"edge_list"
	.byte	0xc
	.byte	0x3
	.value	0x23b
	.uleb128 0xd
	.string	"num_blocks"
	.byte	0x3
	.value	0x23c
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF32
	.byte	0x3
	.value	0x23d
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"index_to_edge"
	.byte	0x3
	.value	0x23e
	.long	0x62af
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x6373
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xf
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xf
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xf
	.byte	0x19
	.long	0x837
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xf
	.byte	0x1a
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0xf
	.byte	0x1b
	.long	0x6373
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x630d
	.uleb128 0x13
	.long	0x63c2
	.long	.LASF33
	.byte	0x10
	.byte	0xf
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xf
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xf
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF34
	.byte	0xf
	.byte	0x28
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0xf
	.byte	0x29
	.long	0x63c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6379
	.uleb128 0x4
	.long	0x6517
	.string	"emit_status"
	.byte	0x34
	.byte	0xf
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xf
	.byte	0x3a
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xf
	.byte	0x3d
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xf
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xf
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1e
	.long	.LASF34
	.byte	0xf
	.byte	0x4a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF33
	.byte	0xf
	.byte	0x50
	.long	0x63c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xf
	.byte	0x54
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xf
	.byte	0x58
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xf
	.byte	0x59
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xf
	.byte	0x5f
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xf
	.byte	0x65
	.long	0x767
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xf
	.byte	0x69
	.long	0x5e0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xf
	.byte	0x70
	.long	0x16bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x65f7
	.string	"expr_status"
	.byte	0x1c
	.byte	0xf
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xf
	.byte	0x80
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xf
	.byte	0x91
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xf
	.byte	0x97
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xf
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xf
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xf
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xf
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x28
	.long	0x6661
	.long	.LASF28
	.byte	0x4
	.byte	0xf
	.value	0x1f1
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x19
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1d
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6661
	.uleb128 0x1d
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6673
	.uleb128 0x3
	.byte	0x4
	.long	0x6517
	.uleb128 0x3
	.byte	0x4
	.long	0x63c8
	.uleb128 0x1d
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6693
	.uleb128 0x1d
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x66a9
	.uleb128 0x1d
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x66c6
	.uleb128 0x1d
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x66d8
	.uleb128 0x1d
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x66f1
	.uleb128 0x4
	.long	0x675d
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x19
	.byte	0x32
	.uleb128 0x6
	.string	"base"
	.byte	0x19
	.byte	0x33
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"nelt"
	.byte	0x19
	.byte	0x34
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"stride"
	.byte	0x19
	.byte	0x35
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"cb"
	.byte	0x19
	.byte	0x36
	.long	0x76d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x29
	.long	0x67ef
	.string	"__store_gcov_type"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0x2e1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.byte	0x3e
	.long	0x5f59
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.byte	0x3f
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.byte	0x40
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"upper_bit"
	.byte	0x1
	.byte	0x42
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x43
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"oldvalue"
	.byte	0x1
	.byte	0x47
	.long	0x5f59
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x6861
	.string	"__fetch_gcov_type"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	0x2e1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.byte	0x61
	.long	0x6861
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"source"
	.byte	0x1
	.byte	0x62
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.byte	0x63
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF17
	.byte	0x1
	.byte	0x65
	.long	0x5f59
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x66
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f59
	.uleb128 0x29
	.long	0x68d4
	.string	"__fetch_long"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	0x2e1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.byte	0x78
	.long	0x68d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"source"
	.byte	0x1
	.byte	0x79
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.byte	0x7a
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF17
	.byte	0x1
	.byte	0x7c
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x7d
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a0
	.uleb128 0x29
	.long	0x693b
	.string	"__write_gcov_type"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0x2e1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.byte	0x98
	.long	0x5f59
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.byte	0x99
	.long	0x693b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.byte	0x9a
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.byte	0x9c
	.long	0x6941
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c5
	.uleb128 0xf
	.long	0x6951
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x9
	.byte	0x0
	.uleb128 0x29
	.long	0x69ad
	.string	"__write_long"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	0x2e1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.byte	0xa6
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.byte	0xa7
	.long	0x693b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.byte	0xa8
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.byte	0xaa
	.long	0x6941
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0x0
	.uleb128 0x29
	.long	0x6a0d
	.string	"__read_gcov_type"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.long	0x2e1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.byte	0xbd
	.long	0x6861
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.byte	0xbe
	.long	0x693b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.byte	0xbf
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.byte	0xc1
	.long	0x6941
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0x0
	.uleb128 0x29
	.long	0x6a68
	.string	"__read_long"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	0x2e1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2a
	.long	.LASF31
	.byte	0x1
	.byte	0xcb
	.long	0x68d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.byte	0xcc
	.long	0x693b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF30
	.byte	0x1
	.byte	0xcd
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.byte	0xcf
	.long	0x6941
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0x0
	.uleb128 0x29
	.long	0x6af4
	.string	"__write_gcov_string"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.long	0x2e1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.byte	0xdc
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF15
	.byte	0x1
	.byte	0xdd
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.byte	0xde
	.long	0x693b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"delim"
	.byte	0x1
	.byte	0xdf
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"temp"
	.byte	0x1
	.byte	0xe1
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2c
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.byte	0xf1
	.long	0x74c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x6baf
	.string	"__read_gcov_string"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	0x2e1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x104
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF29
	.byte	0x1
	.value	0x105
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x106
	.long	0x693b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"delim"
	.byte	0x1
	.value	0x107
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"delim_from_file"
	.byte	0x1
	.value	0x109
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF15
	.byte	0x1
	.value	0x10a
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"read_length"
	.byte	0x1
	.value	0x10b
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"tmp"
	.byte	0x1
	.value	0x10c
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x4
	.long	0x6bf7
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x15
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x15
	.byte	0x3b
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x15
	.byte	0x3c
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x15
	.byte	0x3d
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x15
	.byte	0x3e
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x6e2d
	.string	"asm_out"
	.byte	0x70
	.byte	0x15
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x15
	.byte	0x35
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x15
	.byte	0x35
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x15
	.byte	0x38
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x15
	.byte	0x3f
	.long	0x6baf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x15
	.byte	0x3f
	.long	0x6baf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x15
	.byte	0x46
	.long	0x6e47
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x15
	.byte	0x49
	.long	0x6e5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x15
	.byte	0x4d
	.long	0x6e75
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x15
	.byte	0x50
	.long	0x6e8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x15
	.byte	0x53
	.long	0x6e9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x15
	.byte	0x56
	.long	0x6e9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x15
	.byte	0x59
	.long	0x6e8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x15
	.byte	0x5d
	.long	0x6eb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x15
	.byte	0x60
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x15
	.byte	0x63
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x15
	.byte	0x6a
	.long	0x6ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x15
	.byte	0x6e
	.long	0x6eed
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x15
	.byte	0x73
	.long	0x6e75
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x15
	.byte	0x76
	.long	0x6f04
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x15
	.byte	0x79
	.long	0x6f04
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x15
	.byte	0x80
	.long	0x6f2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x15
	.byte	0x8b
	.long	0x6f4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x27
	.long	0x6e47
	.byte	0x1
	.long	0x5ddf
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x3ba
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e2d
	.uleb128 0x14
	.long	0x6e5e
	.byte	0x1
	.uleb128 0x15
	.long	0x693b
	.uleb128 0x15
	.long	0x2ce
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e4d
	.uleb128 0x14
	.long	0x6e75
	.byte	0x1
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e64
	.uleb128 0x14
	.long	0x6e8c
	.byte	0x1
	.uleb128 0x15
	.long	0x693b
	.uleb128 0x15
	.long	0x456
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e7b
	.uleb128 0x14
	.long	0x6e9e
	.byte	0x1
	.uleb128 0x15
	.long	0x693b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e92
	.uleb128 0x14
	.long	0x6eb5
	.byte	0x1
	.uleb128 0x15
	.long	0x2ce
	.uleb128 0x15
	.long	0x3ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ea4
	.uleb128 0x14
	.long	0x6ed1
	.byte	0x1
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x467
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ebb
	.uleb128 0x14
	.long	0x6eed
	.byte	0x1
	.uleb128 0x15
	.long	0x837
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x467
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ed7
	.uleb128 0x14
	.long	0x6f04
	.byte	0x1
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ef3
	.uleb128 0x14
	.long	0x6f2a
	.byte	0x1
	.uleb128 0x15
	.long	0x693b
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x456
	.uleb128 0x15
	.long	0x456
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f0a
	.uleb128 0x27
	.long	0x6f4f
	.byte	0x1
	.long	0x5ddf
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x456
	.uleb128 0x15
	.long	0x456
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f30
	.uleb128 0x4
	.long	0x7110
	.string	"sched"
	.byte	0x40
	.byte	0x15
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x15
	.byte	0x97
	.long	0x712f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x15
	.byte	0x9b
	.long	0x714a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x15
	.byte	0xa0
	.long	0x7156
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x15
	.byte	0xa4
	.long	0x717b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x15
	.byte	0xa7
	.long	0x7197
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x15
	.byte	0xaa
	.long	0x71ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x15
	.byte	0xae
	.long	0x71d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x15
	.byte	0xaf
	.long	0x71d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x15
	.byte	0xb4
	.long	0x7156
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x15
	.byte	0xc2
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x15
	.byte	0xc3
	.long	0x71e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x15
	.byte	0xc4
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x15
	.byte	0xc5
	.long	0x71e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x15
	.byte	0xcd
	.long	0x7156
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x15
	.byte	0xd8
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x15
	.byte	0xd9
	.long	0x71fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x27
	.long	0x712f
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7110
	.uleb128 0x27
	.long	0x714a
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7135
	.uleb128 0x34
	.byte	0x1
	.long	0x2e1
	.uleb128 0x3
	.byte	0x4
	.long	0x7150
	.uleb128 0x27
	.long	0x717b
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x693b
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x715c
	.uleb128 0x14
	.long	0x7197
	.byte	0x1
	.uleb128 0x15
	.long	0x693b
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7181
	.uleb128 0x14
	.long	0x71ae
	.byte	0x1
	.uleb128 0x15
	.long	0x693b
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x719d
	.uleb128 0x27
	.long	0x71d8
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x693b
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x16bf
	.uleb128 0x15
	.long	0x817
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71b4
	.uleb128 0x34
	.byte	0x1
	.long	0x9c
	.uleb128 0x3
	.byte	0x4
	.long	0x71de
	.uleb128 0x27
	.long	0x71fa
	.byte	0x1
	.long	0x9c
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71ea
	.uleb128 0x4
	.long	0x74dd
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x15
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x15
	.byte	0x8f
	.long	0x6bf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x15
	.byte	0xda
	.long	0x6f55
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x15
	.byte	0xdd
	.long	0x74f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x15
	.byte	0xe0
	.long	0x74f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1e
	.long	.LASF35
	.byte	0x15
	.byte	0xe4
	.long	0x74f8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x15
	.byte	0xe9
	.long	0x7518
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x15
	.byte	0xec
	.long	0x752a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x15
	.byte	0xef
	.long	0x7541
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x15
	.byte	0xf3
	.long	0x7557
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x15
	.byte	0xf7
	.long	0x7557
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x15
	.byte	0xfa
	.long	0x831
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x15
	.byte	0xfd
	.long	0x7581
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x15
	.value	0x103
	.long	0x75a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x15
	.value	0x107
	.long	0x75ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x15
	.value	0x10a
	.long	0x75c3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x15
	.value	0x10d
	.long	0x7557
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x15
	.value	0x111
	.long	0x7557
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x15
	.value	0x115
	.long	0x6e75
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x15
	.value	0x118
	.long	0x75d9
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x15
	.value	0x11d
	.long	0x5ddf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x15
	.value	0x121
	.long	0x5ddf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x15
	.value	0x124
	.long	0x5ddf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x15
	.value	0x127
	.long	0x5ddf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x15
	.value	0x12a
	.long	0x5ddf
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x27
	.long	0x74f2
	.byte	0x1
	.long	0x1e5
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74dd
	.uleb128 0x3
	.byte	0x4
	.long	0x74fe
	.uleb128 0xa
	.long	0x5d21
	.uleb128 0x27
	.long	0x7518
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7503
	.uleb128 0x14
	.long	0x752a
	.byte	0x1
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x751e
	.uleb128 0x14
	.long	0x7541
	.byte	0x1
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x5e0c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7530
	.uleb128 0x27
	.long	0x7557
	.byte	0x1
	.long	0x5ddf
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7547
	.uleb128 0x27
	.long	0x7581
	.byte	0x1
	.long	0x9c
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x837
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x755d
	.uleb128 0x27
	.long	0x75a1
	.byte	0x1
	.long	0x3ba
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x2ce
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7587
	.uleb128 0x34
	.byte	0x1
	.long	0x5ddf
	.uleb128 0x3
	.byte	0x4
	.long	0x75a7
	.uleb128 0x27
	.long	0x75c3
	.byte	0x1
	.long	0x5ddf
	.uleb128 0x15
	.long	0x9c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75b3
	.uleb128 0x27
	.long	0x75d9
	.byte	0x1
	.long	0x2ce
	.uleb128 0x15
	.long	0x2ce
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75c9
	.uleb128 0x13
	.long	0x769f
	.long	.LASF36
	.byte	0x18
	.byte	0x16
	.byte	0x19
	.uleb128 0x6
	.string	"count_instrumented_edges"
	.byte	0x16
	.byte	0x1d
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"count_edges_instrumented_now"
	.byte	0x16
	.byte	0x22
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"current_function_cfg_checksum"
	.byte	0x16
	.byte	0x27
	.long	0x4a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"max_counter_in_program"
	.byte	0x16
	.byte	0x2c
	.long	0x5f59
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"count_profiles_merged"
	.byte	0x16
	.byte	0x30
	.long	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x17
	.byte	0x1d
	.long	0x76bb
	.uleb128 0x3
	.byte	0x4
	.long	0x76c1
	.uleb128 0x14
	.long	0x76d7
	.byte	0x1
	.uleb128 0x15
	.long	0x693b
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x4
	.long	0x785d
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x17
	.byte	0x23
	.uleb128 0x6
	.string	"walk_subtrees"
	.byte	0x17
	.byte	0x24
	.long	0x78a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"cannot_inline_tree_fn"
	.byte	0x17
	.byte	0x29
	.long	0x78bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"disregard_inline_limits"
	.byte	0x17
	.byte	0x2a
	.long	0x78d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"add_pending_fn_decls"
	.byte	0x17
	.byte	0x2b
	.long	0x78ee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"tree_chain_matters_p"
	.byte	0x17
	.byte	0x2d
	.long	0x78d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"auto_var_in_fn_p"
	.byte	0x17
	.byte	0x2e
	.long	0x7909
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"copy_res_decl_for_inlining"
	.byte	0x17
	.byte	0x2f
	.long	0x7938
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"anon_aggr_type_p"
	.byte	0x17
	.byte	0x34
	.long	0x78d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"var_mod_type_p"
	.byte	0x17
	.byte	0x35
	.long	0x794e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"start_inlining"
	.byte	0x17
	.byte	0x36
	.long	0x78d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"end_inlining"
	.byte	0x17
	.byte	0x37
	.long	0x7960
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"convert_parm_for_inlining"
	.byte	0x17
	.byte	0x38
	.long	0x7980
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x27
	.long	0x7881
	.byte	0x1
	.long	0x1f1
	.uleb128 0x15
	.long	0x7881
	.uleb128 0x15
	.long	0x817
	.uleb128 0x15
	.long	0x7887
	.uleb128 0x15
	.long	0x4bd
	.uleb128 0x15
	.long	0x4bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x788d
	.uleb128 0x27
	.long	0x78a7
	.byte	0x1
	.long	0x1f1
	.uleb128 0x15
	.long	0x7881
	.uleb128 0x15
	.long	0x817
	.uleb128 0x15
	.long	0x4bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x785d
	.uleb128 0x27
	.long	0x78bd
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x7881
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78ad
	.uleb128 0x27
	.long	0x78d3
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78c3
	.uleb128 0x27
	.long	0x78ee
	.byte	0x1
	.long	0x1f1
	.uleb128 0x15
	.long	0x4bd
	.uleb128 0x15
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78d9
	.uleb128 0x27
	.long	0x7909
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x1f1
	.uleb128 0x15
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78f4
	.uleb128 0x27
	.long	0x7938
	.byte	0x1
	.long	0x1f1
	.uleb128 0x15
	.long	0x1f1
	.uleb128 0x15
	.long	0x1f1
	.uleb128 0x15
	.long	0x1f1
	.uleb128 0x15
	.long	0x4bd
	.uleb128 0x15
	.long	0x817
	.uleb128 0x15
	.long	0x4bd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x790f
	.uleb128 0x27
	.long	0x794e
	.byte	0x1
	.long	0x5ddf
	.uleb128 0x15
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x793e
	.uleb128 0x14
	.long	0x7960
	.byte	0x1
	.uleb128 0x15
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7954
	.uleb128 0x27
	.long	0x7980
	.byte	0x1
	.long	0x1f1
	.uleb128 0x15
	.long	0x1f1
	.uleb128 0x15
	.long	0x1f1
	.uleb128 0x15
	.long	0x1f1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7966
	.uleb128 0x4
	.long	0x79f5
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x17
	.byte	0x40
	.uleb128 0x6
	.string	"init"
	.byte	0x17
	.byte	0x42
	.long	0x7a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"final"
	.byte	0x17
	.byte	0x45
	.long	0x7a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"enter_nested"
	.byte	0x17
	.byte	0x48
	.long	0x7a01
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"leave_nested"
	.byte	0x17
	.byte	0x4b
	.long	0x7a01
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x14
	.long	0x7a01
	.byte	0x1
	.uleb128 0x15
	.long	0x52bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x79f5
	.uleb128 0x4
	.long	0x7a52
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x17
	.byte	0x51
	.uleb128 0x6
	.string	"dump_tree"
	.byte	0x17
	.byte	0x54
	.long	0x7a67
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_quals"
	.byte	0x17
	.byte	0x57
	.long	0x7a7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x27
	.long	0x7a67
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x4bd
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a52
	.uleb128 0x27
	.long	0x7a7d
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a6d
	.uleb128 0x4
	.long	0x7b70
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x17
	.byte	0x5d
	.uleb128 0x6
	.string	"make_type"
	.byte	0x17
	.byte	0x60
	.long	0x7b80
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_for_mode"
	.byte	0x17
	.byte	0x64
	.long	0x7b9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type_for_size"
	.byte	0x17
	.byte	0x68
	.long	0x7bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_type"
	.byte	0x17
	.byte	0x6c
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"signed_type"
	.byte	0x17
	.byte	0x70
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"signed_or_unsigned_type"
	.byte	0x17
	.byte	0x74
	.long	0x7be7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"type_promotes_to"
	.byte	0x17
	.byte	0x7a
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"incomplete_type_error"
	.byte	0x17
	.byte	0x80
	.long	0x7bfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x27
	.long	0x7b80
	.byte	0x1
	.long	0x1e5
	.uleb128 0x15
	.long	0x1708
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b70
	.uleb128 0x27
	.long	0x7b9b
	.byte	0x1
	.long	0x1e5
	.uleb128 0x15
	.long	0x837
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b86
	.uleb128 0x27
	.long	0x7bb6
	.byte	0x1
	.long	0x1e5
	.uleb128 0x15
	.long	0x3ba
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ba1
	.uleb128 0x27
	.long	0x7bcc
	.byte	0x1
	.long	0x1e5
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bbc
	.uleb128 0x27
	.long	0x7be7
	.byte	0x1
	.long	0x1e5
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bd2
	.uleb128 0x14
	.long	0x7bfe
	.byte	0x1
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bed
	.uleb128 0x4
	.long	0x7d0a
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x17
	.byte	0x86
	.uleb128 0x6
	.string	"pushlevel"
	.byte	0x17
	.byte	0x89
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"poplevel"
	.byte	0x17
	.byte	0x90
	.long	0x7d24
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"global_bindings_p"
	.byte	0x17
	.byte	0x94
	.long	0x7156
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"insert_block"
	.byte	0x17
	.byte	0x99
	.long	0x752a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"set_block"
	.byte	0x17
	.byte	0x9c
	.long	0x752a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pushdecl"
	.byte	0x17
	.byte	0xa2
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"getdecls"
	.byte	0x17
	.byte	0xa5
	.long	0x7d30
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"warn_unused_global"
	.byte	0x17
	.byte	0xa9
	.long	0x7557
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"final_write_globals"
	.byte	0x17
	.byte	0xad
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"ok_for_sibcall"
	.byte	0x17
	.byte	0xb0
	.long	0x7557
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x27
	.long	0x7d24
	.byte	0x1
	.long	0x1e5
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d0a
	.uleb128 0x34
	.byte	0x1
	.long	0x1e5
	.uleb128 0x3
	.byte	0x4
	.long	0x7d2a
	.uleb128 0x25
	.long	0x815b
	.long	.LASF37
	.value	0x120
	.byte	0x17
	.byte	0xb6
	.uleb128 0x1e
	.long	.LASF24
	.byte	0x17
	.byte	0xb8
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"identifier_size"
	.byte	0x17
	.byte	0xbc
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"init_options"
	.byte	0x17
	.byte	0xc0
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"decode_option"
	.byte	0x17
	.byte	0xca
	.long	0x8176
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"post_options"
	.byte	0x17
	.byte	0xd6
	.long	0x75ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"init"
	.byte	0x17
	.byte	0xde
	.long	0x75d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"finish"
	.byte	0x17
	.byte	0xe1
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"parse_file"
	.byte	0x17
	.byte	0xe5
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"clear_binding_stack"
	.byte	0x17
	.byte	0xe8
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"get_alias_set"
	.byte	0x17
	.byte	0xec
	.long	0x818c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"expand_constant"
	.byte	0x17
	.byte	0xf1
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"expand_expr"
	.byte	0x17
	.byte	0xf5
	.long	0x81b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"truthvalue_conversion"
	.byte	0x17
	.value	0x102
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"insert_default_attributes"
	.byte	0x17
	.value	0x106
	.long	0x752a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"safe_from_p"
	.byte	0x17
	.value	0x10f
	.long	0x81cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"finish_incomplete_decl"
	.byte	0x17
	.value	0x113
	.long	0x752a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"unsafe_for_reeval"
	.byte	0x17
	.value	0x118
	.long	0x7a7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"mark_addressable"
	.byte	0x17
	.value	0x11d
	.long	0x7557
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"staticp"
	.byte	0x17
	.value	0x120
	.long	0x7a7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"dup_lang_specific_decl"
	.byte	0x17
	.value	0x124
	.long	0x752a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"unsave_expr_now"
	.byte	0x17
	.value	0x129
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"maybe_build_cleanup"
	.byte	0x17
	.value	0x12d
	.long	0x7bcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"set_decl_assembler_name"
	.byte	0x17
	.value	0x134
	.long	0x752a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"can_use_bit_fields_p"
	.byte	0x17
	.value	0x138
	.long	0x75ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"honor_readonly"
	.byte	0x17
	.value	0x13b
	.long	0x5ddf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"print_statistics"
	.byte	0x17
	.value	0x13f
	.long	0x831
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"print_xnode"
	.byte	0x17
	.value	0x143
	.long	0x769f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"print_decl"
	.byte	0x17
	.value	0x147
	.long	0x769f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"print_type"
	.byte	0x17
	.value	0x148
	.long	0x769f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"print_identifier"
	.byte	0x17
	.value	0x149
	.long	0x769f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"decl_printable_name"
	.byte	0x17
	.value	0x151
	.long	0x81e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"print_error_function"
	.byte	0x17
	.value	0x154
	.long	0x8219
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"expr_size"
	.byte	0x17
	.value	0x15b
	.long	0x7bcc
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF35
	.byte	0x17
	.value	0x162
	.long	0x74f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"common_attribute_table"
	.byte	0x17
	.value	0x163
	.long	0x74f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"format_attribute_table"
	.byte	0x17
	.value	0x164
	.long	0x74f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x21
	.long	.LASF26
	.byte	0x17
	.value	0x167
	.long	0x7986
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"tree_inlining"
	.byte	0x17
	.value	0x169
	.long	0x76d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"tree_dump"
	.byte	0x17
	.value	0x16b
	.long	0x7a07
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"decls"
	.byte	0x17
	.value	0x16d
	.long	0x7c04
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"types"
	.byte	0x17
	.value	0x16f
	.long	0x7a83
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x27
	.long	0x8170
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x2e1
	.uleb128 0x15
	.long	0x8170
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4bf
	.uleb128 0x3
	.byte	0x4
	.long	0x815b
	.uleb128 0x27
	.long	0x818c
	.byte	0x1
	.long	0x456
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x817c
	.uleb128 0x27
	.long	0x81b1
	.byte	0x1
	.long	0x9c
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x837
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8192
	.uleb128 0x27
	.long	0x81cc
	.byte	0x1
	.long	0x2e1
	.uleb128 0x15
	.long	0x9c
	.uleb128 0x15
	.long	0x1e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81b7
	.uleb128 0x27
	.long	0x81e7
	.byte	0x1
	.long	0x2ce
	.uleb128 0x15
	.long	0x1e5
	.uleb128 0x15
	.long	0x2e1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81d2
	.uleb128 0x14
	.long	0x81fe
	.byte	0x1
	.uleb128 0x15
	.long	0x81fe
	.uleb128 0x15
	.long	0x2ce
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8204
	.uleb128 0x1d
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x81ed
	.uleb128 0x4
	.long	0x826c
	.string	"edge_info"
	.byte	0x4
	.byte	0x2
	.byte	0x63
	.uleb128 0x20
	.long	.LASF38
	.byte	0x2
	.byte	0x64
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"on_tree"
	.byte	0x2
	.byte	0x67
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"ignore"
	.byte	0x2
	.byte	0x6b
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x82b8
	.string	"bb_info"
	.byte	0x14
	.byte	0x2
	.byte	0x6e
	.uleb128 0x20
	.long	.LASF38
	.byte	0x2
	.byte	0x6f
	.long	0x3ba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_count"
	.byte	0x2
	.byte	0x72
	.long	0x5f59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"pred_count"
	.byte	0x2
	.byte	0x73
	.long	0x5f59
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x35
	.long	0x8362
	.string	"instrument_edges"
	.byte	0x2
	.byte	0xb9
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2d
	.string	"el"
	.byte	0x2
	.byte	0xb8
	.long	0x8362
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"num_instr_edges"
	.byte	0x2
	.byte	0xba
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF32
	.byte	0x2
	.byte	0xbb
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"bb"
	.byte	0x2
	.byte	0xbc
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	0x8351
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"e"
	.byte	0x2
	.byte	0xc1
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"inf"
	.byte	0x2
	.byte	0xc4
	.long	0x8368
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF39
	.long	0x8ee0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13567
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62bb
	.uleb128 0x3
	.byte	0x4
	.long	0x821f
	.uleb128 0x35
	.long	0x83dd
	.string	"output_gcov_string"
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x2
	.byte	0xe5
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"delimiter"
	.byte	0x2
	.byte	0xe6
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"temp"
	.byte	0x2
	.byte	0xe8
	.long	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2b
	.string	"c"
	.byte	0x2
	.byte	0xf5
	.long	0x74c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x85a9
	.string	"get_exec_counts"
	.byte	0x2
	.value	0x106
	.byte	0x1
	.long	0x6861
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x33
	.long	.LASF32
	.byte	0x2
	.value	0x107
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.string	"bb"
	.byte	0x2
	.value	0x108
	.long	0x629c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"okay"
	.byte	0x2
	.value	0x109
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.value	0x109
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.string	"mismatch"
	.byte	0x2
	.value	0x10a
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"profile"
	.byte	0x2
	.value	0x10b
	.long	0x6861
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"function_name_buffer"
	.byte	0x2
	.value	0x10c
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"function_name_buffer_len"
	.byte	0x2
	.value	0x10d
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"max_counter_in_run"
	.byte	0x2
	.value	0x10e
	.long	0x5f59
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.long	.LASF24
	.byte	0x2
	.value	0x10f
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	0x84f6
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x11d
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x32
	.string	"magic"
	.byte	0x2
	.value	0x12f
	.long	0x4a0
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.string	"extra_bytes"
	.byte	0x2
	.value	0x12f
	.long	0x4a0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"func_count"
	.byte	0x2
	.value	0x130
	.long	0x4a0
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.value	0x131
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x32
	.string	"arc_count"
	.byte	0x2
	.value	0x152
	.long	0x4a0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"chksum"
	.byte	0x2
	.value	0x153
	.long	0x4a0
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x32
	.string	"j"
	.byte	0x2
	.value	0x154
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x32
	.string	"tmp"
	.byte	0x2
	.value	0x178
	.long	0x5f59
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x8834
	.string	"compute_branch_probabilities"
	.byte	0x2
	.value	0x1ac
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x32
	.string	"bb"
	.byte	0x2
	.value	0x1ad
	.long	0x629c
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.value	0x1ae
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.long	.LASF32
	.byte	0x2
	.value	0x1af
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.string	"changes"
	.byte	0x2
	.value	0x1b0
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.string	"passes"
	.byte	0x2
	.value	0x1b1
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x32
	.string	"hist_br_prob"
	.byte	0x2
	.value	0x1b2
	.long	0x8834
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x32
	.string	"num_never_executed"
	.byte	0x2
	.value	0x1b3
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"num_branches"
	.byte	0x2
	.value	0x1b4
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.string	"exec_counts"
	.byte	0x2
	.value	0x1b5
	.long	0x6861
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"exec_counts_pos"
	.byte	0x2
	.value	0x1b6
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	0x86d0
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x1bd
	.long	0x601a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x36
	.long	0x86ec
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x1d3
	.long	0x601a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x36
	.long	0x87b0
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x32
	.string	"bi"
	.byte	0x2
	.value	0x208
	.long	0x8844
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	0x8732
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x20d
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF40
	.byte	0x2
	.value	0x20e
	.long	0x5f59
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x0
	.uleb128 0x36
	.long	0x875d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x218
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF40
	.byte	0x2
	.value	0x219
	.long	0x5f59
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.uleb128 0x36
	.long	0x8788
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x226
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF40
	.byte	0x2
	.value	0x227
	.long	0x5f59
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x241
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF40
	.byte	0x2
	.value	0x242
	.long	0x5f59
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8823
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x276
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF40
	.byte	0x2
	.value	0x277
	.long	0x5f59
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x32
	.string	"note"
	.byte	0x2
	.value	0x278
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x32
	.string	"prob"
	.byte	0x2
	.value	0x28b
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x28c
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"index"
	.byte	0x2
	.value	0x28d
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF39
	.long	0x8ecb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13840
	.byte	0x0
	.uleb128 0xf
	.long	0x8844
	.long	0x2e1
	.uleb128 0x10
	.long	0x3d1
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x826c
	.uleb128 0x2f
	.long	0x88ab
	.string	"compute_checksum"
	.byte	0x2
	.value	0x2e7
	.byte	0x1
	.long	0x4a0
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x32
	.string	"chsum"
	.byte	0x2
	.value	0x2e8
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"bb"
	.byte	0x2
	.value	0x2e9
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x2ed
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8abf
	.byte	0x1
	.string	"branch_prob"
	.byte	0x2
	.value	0x30c
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x32
	.string	"bb"
	.byte	0x2
	.value	0x30d
	.long	0x629c
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.value	0x30e
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.long	.LASF32
	.byte	0x2
	.value	0x30f
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"ignored_edges"
	.byte	0x2
	.value	0x30f
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.string	"el"
	.byte	0x2
	.value	0x310
	.long	0x8362
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF24
	.byte	0x2
	.value	0x311
	.long	0x2ce
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	0x89ca
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x32
	.string	"need_exit_edge"
	.byte	0x2
	.value	0x32e
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.string	"need_entry_edge"
	.byte	0x2
	.value	0x32e
	.long	0x2e1
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"have_exit_edge"
	.byte	0x2
	.value	0x32f
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"have_entry_edge"
	.byte	0x2
	.value	0x32f
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.string	"insn"
	.byte	0x2
	.value	0x330
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x331
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x36
	.long	0x89e5
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x37a
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x36
	.long	0x8a03
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x32
	.string	"insn"
	.byte	0x2
	.value	0x390
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x36
	.long	0x8a2d
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x3d4
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"inf"
	.byte	0x2
	.value	0x3d5
	.long	0x8368
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x36
	.long	0x8a8f
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x32
	.string	"flag_bits"
	.byte	0x2
	.value	0x3f0
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x3fd
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"count"
	.byte	0x2
	.value	0x3fe
	.long	0x4a0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.value	0x407
	.long	0x8368
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF39
	.long	0x8eb6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14215
	.uleb128 0x32
	.string	"ignore_next_note"
	.byte	0x2
	.value	0x391
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	ignore_next_note.14232
	.byte	0x0
	.uleb128 0x2f
	.long	0x8b12
	.string	"find_group"
	.byte	0x2
	.value	0x43e
	.byte	0x1
	.long	0x629c
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x31
	.string	"bb"
	.byte	0x2
	.value	0x43d
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"group"
	.byte	0x2
	.value	0x43f
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.string	"bb1"
	.byte	0x2
	.value	0x43f
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x38
	.long	0x8b83
	.string	"union_groups"
	.byte	0x2
	.value	0x451
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x31
	.string	"bb1"
	.byte	0x2
	.value	0x450
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"bb2"
	.byte	0x2
	.value	0x450
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"bb1g"
	.byte	0x2
	.value	0x452
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"bb2g"
	.byte	0x2
	.value	0x453
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x37
	.long	.LASF39
	.long	0x8ea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14531
	.byte	0x0
	.uleb128 0x38
	.long	0x8c31
	.string	"find_spanning_tree"
	.byte	0x2
	.value	0x467
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x31
	.string	"el"
	.byte	0x2
	.value	0x466
	.long	0x8362
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.value	0x468
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF32
	.byte	0x2
	.value	0x469
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"bb"
	.byte	0x2
	.value	0x46a
	.long	0x629c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	0x8bfe
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x478
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0x8c19
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x48a
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x32
	.string	"e"
	.byte	0x2
	.value	0x49a
	.long	0x601a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8cc1
	.byte	0x1
	.string	"init_branch_prob"
	.byte	0x2
	.value	0x4af
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x31
	.string	"filename"
	.byte	0x2
	.value	0x4ae
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"len"
	.byte	0x2
	.value	0x4b0
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.value	0x4b1
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x32
	.string	"data_file"
	.byte	0x2
	.value	0x4b5
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"bbg_file_name"
	.byte	0x2
	.value	0x4b5
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8cff
	.byte	0x1
	.string	"end_branch_prob"
	.byte	0x2
	.value	0x4eb
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2c
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.value	0x50e
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x8d37
	.string	"init_edge_profiler"
	.byte	0x2
	.value	0x520
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x32
	.string	"buf"
	.byte	0x2
	.value	0x522
	.long	0x802
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2f
	.long	0x8dbb
	.string	"gen_edge_profiler"
	.byte	0x2
	.value	0x52c
	.byte	0x1
	.long	0x9c
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x31
	.string	"edgeno"
	.byte	0x2
	.value	0x52b
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"mode"
	.byte	0x2
	.value	0x52d
	.long	0x837
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"mem_ref"
	.byte	0x2
	.value	0x52e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"tmp"
	.byte	0x2
	.value	0x52e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"sequence"
	.byte	0x2
	.value	0x52f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x8e91
	.byte	0x1
	.string	"output_func_start_profiler"
	.byte	0x2
	.value	0x549
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x32
	.string	"fnname"
	.byte	0x2
	.value	0x54a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"fndecl"
	.byte	0x2
	.value	0x54a
	.long	0x1e5
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF24
	.byte	0x2
	.value	0x54b
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"buf"
	.byte	0x2
	.value	0x54c
	.long	0x802
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"cfnname"
	.byte	0x2
	.value	0x54d
	.long	0x2ce
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"table_address"
	.byte	0x2
	.value	0x54e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"mode"
	.byte	0x2
	.value	0x54f
	.long	0x837
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"save_flag_inline_functions"
	.byte	0x2
	.value	0x550
	.long	0x2e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0xf
	.long	0x8ea1
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x8e91
	.uleb128 0xf
	.long	0x8eb6
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x8ea6
	.uleb128 0xf
	.long	0x8ecb
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x1c
	.byte	0x0
	.uleb128 0xa
	.long	0x8ebb
	.uleb128 0xf
	.long	0x8ee0
	.long	0x2d9
	.uleb128 0x10
	.long	0x3d1
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x8ed0
	.uleb128 0x2b
	.string	"bbg_file"
	.byte	0x2
	.byte	0x85
	.long	0x693b
	.byte	0x5
	.byte	0x3
	.long	bbg_file
	.uleb128 0x2b
	.string	"da_file"
	.byte	0x2
	.byte	0x89
	.long	0x693b
	.byte	0x5
	.byte	0x3
	.long	da_file
	.uleb128 0x2b
	.string	"da_file_name"
	.byte	0x2
	.byte	0x8a
	.long	0x4bf
	.byte	0x5
	.byte	0x3
	.long	da_file_name
	.uleb128 0x2b
	.string	"bb_file"
	.byte	0x2
	.byte	0x8d
	.long	0x693b
	.byte	0x5
	.byte	0x3
	.long	bb_file
	.uleb128 0x2b
	.string	"last_bb_file_name"
	.byte	0x2
	.byte	0x91
	.long	0x4bf
	.byte	0x5
	.byte	0x3
	.long	last_bb_file_name
	.uleb128 0x2b
	.string	"total_num_blocks"
	.byte	0x2
	.byte	0x96
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_blocks
	.uleb128 0x2b
	.string	"total_num_edges"
	.byte	0x2
	.byte	0x97
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_edges
	.uleb128 0x2b
	.string	"total_num_edges_ignored"
	.byte	0x2
	.byte	0x98
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_edges_ignored
	.uleb128 0x2b
	.string	"total_num_edges_instrumented"
	.byte	0x2
	.byte	0x99
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_edges_instrumented
	.uleb128 0x2b
	.string	"total_num_blocks_created"
	.byte	0x2
	.byte	0x9a
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_blocks_created
	.uleb128 0x2b
	.string	"total_num_passes"
	.byte	0x2
	.byte	0x9b
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_passes
	.uleb128 0x2b
	.string	"total_num_times_called"
	.byte	0x2
	.byte	0x9c
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_times_called
	.uleb128 0x2b
	.string	"total_hist_br_prob"
	.byte	0x2
	.byte	0x9d
	.long	0x8834
	.byte	0x5
	.byte	0x3
	.long	total_hist_br_prob
	.uleb128 0x2b
	.string	"total_num_never_executed"
	.byte	0x2
	.byte	0x9e
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_never_executed
	.uleb128 0x2b
	.string	"total_num_branches"
	.byte	0x2
	.byte	0x9f
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	total_num_branches
	.uleb128 0x2b
	.string	"need_func_profiler"
	.byte	0x2
	.byte	0xaf
	.long	0x2e1
	.byte	0x5
	.byte	0x3
	.long	need_func_profiler
	.uleb128 0x32
	.string	"profiler_label"
	.byte	0x2
	.value	0x51a
	.long	0x9c
	.byte	0x5
	.byte	0x3
	.long	profiler_label
	.uleb128 0x3a
	.string	"target_flags"
	.byte	0x10
	.byte	0x21
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9119
	.long	0x9c
	.uleb128 0x10
	.long	0x3d1
	.byte	0x80
	.byte	0x0
	.uleb128 0x3b
	.string	"const_int_rtx"
	.byte	0x8
	.value	0x69e
	.long	0x9109
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9141
	.long	0x1e5
	.uleb128 0x10
	.long	0x3d1
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3b
	.string	"global_trees"
	.byte	0xc
	.value	0x8ee
	.long	0x9131
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"input_filename"
	.byte	0xc
	.value	0xbf6
	.long	0x2ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"lineno"
	.byte	0xc
	.value	0xbf9
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"current_function_decl"
	.byte	0xc
	.value	0xc07
	.long	0x1e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"quiet_flag"
	.byte	0x13
	.byte	0x4a
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"profile_arc_flag"
	.byte	0x13
	.byte	0xca
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"flag_test_coverage"
	.byte	0x13
	.byte	0xce
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"flag_branch_probabilities"
	.byte	0x13
	.byte	0xd2
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"flag_inline_functions"
	.byte	0x13
	.value	0x18a
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"asm_out_file"
	.byte	0x14
	.value	0x194
	.long	0x693b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"rtl_dump_file"
	.byte	0x14
	.value	0x1b8
	.long	0x693b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"n_basic_blocks"
	.byte	0x3
	.byte	0xf2
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"last_basic_block"
	.byte	0x3
	.byte	0xf6
	.long	0x2e1
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x92a0
	.long	0x14ff
	.uleb128 0x10
	.long	0x3d1
	.byte	0x1
	.byte	0x0
	.uleb128 0x3b
	.string	"entry_exit_blocks"
	.byte	0x3
	.value	0x139
	.long	0x9290
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"cfun"
	.byte	0xf
	.value	0x202
	.long	0x52bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"targetm"
	.byte	0x15
	.value	0x12d
	.long	0x7200
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF36
	.byte	0x2
	.byte	0x81
	.long	0x75df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	profile_info
	.uleb128 0x3d
	.long	.LASF37
	.byte	0x17
	.value	0x176
	.long	0x92fd
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x7d36
	.uleb128 0xf
	.long	0x9312
	.long	0x670b
	.uleb128 0x10
	.long	0x3d1
	.byte	0x1
	.byte	0x0
	.uleb128 0x3e
	.string	"gt_ggc_r_gt_profile_h"
	.byte	0x18
	.byte	0x19
	.long	0x9336
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_profile_h
	.uleb128 0xa
	.long	0x9302
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x1b
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.long	0x91
	.value	0x2
	.long	.Ldebug_info0
	.long	0x933c
	.long	0x88ab
	.string	"branch_prob"
	.long	0x8c31
	.string	"init_branch_prob"
	.long	0x8cc1
	.string	"end_branch_prob"
	.long	0x8dbb
	.string	"output_func_start_profiler"
	.long	0x92dd
	.string	"profile_info"
	.long	0x9312
	.string	"gt_ggc_r_gt_profile_h"
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
.LASF24:
	.string	"name"
.LASF7:
	.string	"lang_flag_0"
.LASF8:
	.string	"lang_flag_1"
.LASF9:
	.string	"lang_flag_2"
.LASF13:
	.string	"lang_flag_6"
.LASF14:
	.string	"lang_flag_7"
.LASF31:
	.string	"dest"
.LASF1:
	.string	"string"
.LASF4:
	.string	"mem_attrs"
.LASF0:
	.string	"common"
.LASF38:
	.string	"count_valid"
.LASF25:
	.string	"lang_specific"
.LASF34:
	.string	"sequence_rtl_expr"
.LASF33:
	.string	"sequence_stack"
.LASF28:
	.string	"function_frequency"
.LASF10:
	.string	"lang_flag_3"
.LASF26:
	.string	"function"
.LASF2:
	.string	"unsigned int"
.LASF19:
	.string	"abstract_origin"
.LASF22:
	.string	"pointer_depth"
.LASF23:
	.string	"user_align"
.LASF37:
	.string	"lang_hooks"
.LASF20:
	.string	"size_unit"
.LASF35:
	.string	"attribute_table"
.LASF17:
	.string	"value"
.LASF36:
	.string	"profile_info"
.LASF27:
	.string	"args_size"
.LASF5:
	.string	"file"
.LASF11:
	.string	"lang_flag_4"
.LASF12:
	.string	"lang_flag_5"
.LASF18:
	.string	"abstract_flag"
.LASF16:
	.string	"ht_identifier"
.LASF29:
	.string	"max_length"
.LASF32:
	.string	"num_edges"
.LASF39:
	.string	"__FUNCTION__"
.LASF6:
	.string	"built_in_class"
.LASF40:
	.string	"total"
.LASF3:
	.string	"_IO_FILE"
.LASF21:
	.string	"attributes"
.LASF15:
	.string	"length"
.LASF30:
	.string	"bytes"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
