	.file	"cppmain.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl cpp_preprocess_file
	.type	cpp_preprocess_file, @function
cpp_preprocess_file:
.LFB21:
	.file 1 "../../../kg++fe/gnu/cppmain.c"
	.loc 1 61 0
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
	.loc 1 65 0
	movl	8(%ebp), %eax
	movl	$-1, 496(%eax)
	.loc 1 66 0
	movl	8(%ebp), %eax
	movb	$0, 500(%eax)
	.loc 1 67 0
	movl	8(%ebp), %eax
	movl	$0, 488(%eax)
	.loc 1 68 0
	movl	8(%ebp), %eax
	movl	$0, 484(%eax)
	.loc 1 69 0
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 480(%edx)
	.loc 1 71 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	setup_callbacks
	.loc 1 73 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_read_main_file@PLT
	testl	%eax, %eax
	je	.L2
.LBB2:
	.loc 1 75 0
	movl	8(%ebp), %eax
	addl	$360, %eax
	movl	%eax, -8(%ebp)
	.loc 1 76 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_finish_options@PLT
	.loc 1 80 0
	movl	-8(%ebp), %eax
	movzbl	56(%eax), %eax
	testb	%al, %al
	je	.L4
	.loc 1 83 0
	jmp	.L6
.L7:
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_scan_nooutput@PLT
.L6:
	.loc 1 83 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L7
	.loc 1 85 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_scan_nooutput@PLT
	jmp	.L9
.L4:
	.loc 1 87 0
	movl	-8(%ebp), %eax
	movzbl	73(%eax), %eax
	testb	%al, %al
	je	.L10
	.loc 1 88 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_translation_unit_trad
	jmp	.L9
.L10:
	.loc 1 90 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_translation_unit
.L9:
	.loc 1 93 0
	movl	-8(%ebp), %eax
	movzbl	69(%eax), %eax
	cmpb	$1, %al
	jne	.L2
	.loc 1 94 0
	movl	$0, 8(%esp)
	leal	dump_macro@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_forall_identifiers@PLT
.L2:
.LBE2:
	.loc 1 98 0
	movl	8(%ebp), %eax
	movzbl	500(%eax), %eax
	testb	%al, %al
	je	.L15
	.loc 1 99 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L15:
	.loc 1 100 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	cpp_preprocess_file, .-cpp_preprocess_file
	.type	setup_callbacks, @function
setup_callbacks:
.LFB22:
	.loc 1 106 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 107 0
	movl	8(%ebp), %eax
	addl	$360, %eax
	movl	%eax, -12(%ebp)
	.loc 1 108 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_callbacks@PLT
	movl	%eax, -8(%ebp)
	.loc 1 110 0
	movl	-12(%ebp), %eax
	movzbl	56(%eax), %eax
	testb	%al, %al
	jne	.L17
	.loc 1 112 0
	movl	-8(%ebp), %edx
	leal	cb_line_change@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 115 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	$7, %eax
	je	.L19
	.loc 1 117 0
	movl	-8(%ebp), %edx
	leal	cb_ident@GOTOFF(%ebx), %eax
	movl	%eax, 20(%edx)
	.loc 1 118 0
	movl	-8(%ebp), %edx
	leal	cb_def_pragma@GOTOFF(%ebx), %eax
	movl	%eax, 24(%edx)
.L19:
	.loc 1 120 0
	movl	-12(%ebp), %eax
	movzbl	58(%eax), %eax
	testb	%al, %al
	jne	.L17
	.loc 1 121 0
	movl	-8(%ebp), %edx
	leal	cb_file_change@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
.L17:
	.loc 1 124 0
	movl	-12(%ebp), %eax
	movzbl	70(%eax), %eax
	testb	%al, %al
	je	.L22
	.loc 1 125 0
	movl	-8(%ebp), %edx
	leal	cb_include@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
.L22:
	.loc 1 127 0
	movl	-12(%ebp), %eax
	movzbl	69(%eax), %eax
	cmpb	$2, %al
	je	.L24
	movl	-12(%ebp), %eax
	movzbl	69(%eax), %eax
	cmpb	$3, %al
	jne	.L27
.L24:
	.loc 1 130 0
	movl	-8(%ebp), %edx
	leal	cb_define@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	.loc 1 131 0
	movl	-8(%ebp), %edx
	leal	cb_undef@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
.L27:
	.loc 1 133 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	setup_callbacks, .-setup_callbacks
	.type	scan_translation_unit, @function
scan_translation_unit:
.LFB23:
	.loc 1 140 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$36, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 141 0
	movb	$0, -5(%ebp)
	.loc 1 143 0
	movl	8(%ebp), %eax
	movl	$0, 492(%eax)
	jmp	.L53
.L29:
.L53:
.LBB3:
	.loc 1 146 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 148 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$67, %al
	jne	.L30
	.loc 1 150 0
	movb	$1, -5(%ebp)
	.loc 1 151 0
	movl	8(%ebp), %eax
	movl	492(%eax), %eax
	testl	%eax, %eax
	je	.L32
	movl	8(%ebp), %eax
	movl	492(%eax), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L29
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L29
.L32:
	.loc 1 154 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 492(%eax)
	.loc 1 155 0
	jmp	.L29
.L30:
	.loc 1 158 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L52
	.loc 1 162 0
	cmpb	$0, -5(%ebp)
	je	.L39
	.loc 1 164 0
	movl	8(%ebp), %eax
	movl	492(%eax), %eax
	testl	%eax, %eax
	jne	.L41
	.loc 1 165 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 492(%edx)
.L41:
	.loc 1 166 0
	movl	8(%ebp), %eax
	movl	492(%eax), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L43
	movl	8(%ebp), %eax
	movl	488(%eax), %eax
	testl	%eax, %eax
	je	.L45
	movl	8(%ebp), %eax
	movl	488(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_avoid_paste@PLT
	testl	%eax, %eax
	jne	.L43
.L45:
	movl	8(%ebp), %eax
	movl	488(%eax), %eax
	testl	%eax, %eax
	jne	.L49
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$41, %al
	jne	.L49
.L43:
	.loc 1 170 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
	jmp	.L49
.L39:
	.loc 1 172 0
	movl	-12(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L49
	.loc 1 173 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
.L49:
	.loc 1 175 0
	movb	$0, -5(%ebp)
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	$0, 492(%eax)
	.loc 1 177 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 488(%edx)
	.loc 1 178 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_output_token@PLT
	.loc 1 180 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$65, %al
	jne	.L29
	.loc 1 181 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	account_for_newlines
	.loc 1 182 0
	jmp	.L29
.L52:
.LBE3:
	.loc 1 183 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	scan_translation_unit, .-scan_translation_unit
	.type	account_for_newlines, @function
account_for_newlines:
.LFB24:
	.loc 1 191 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	.loc 1 192 0
	jmp	.L60
.L56:
	.loc 1 193 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	sete	%al
	addl	$1, 12(%ebp)
	testb	%al, %al
	je	.L55
	.loc 1 194 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
.L55:
.L60:
	.loc 1 192 0
	subl	$1, 16(%ebp)
	cmpl	$-1, 16(%ebp)
	jne	.L56
	.loc 1 195 0
	popl	%ebp
	ret
.LFE24:
	.size	account_for_newlines, .-account_for_newlines
	.type	scan_translation_unit_trad, @function
scan_translation_unit_trad:
.LFB25:
	.loc 1 201 0
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
.LBB4:
	.loc 1 202 0
	jmp	.L67
.L63:
	.loc 1 204 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 205 0
	movl	8(%ebp), %eax
	movl	520(%eax), %edx
	movl	8(%ebp), %eax
	movl	484(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_line
	.loc 1 206 0
	movl	8(%ebp), %eax
	movl	480(%eax), %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ecx, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 207 0
	movl	8(%ebp), %eax
	movb	$1, 500(%eax)
	.loc 1 208 0
	movl	8(%ebp), %eax
	movzbl	396(%eax), %eax
	testb	%al, %al
	jne	.L62
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	account_for_newlines
.L62:
.L67:
.LBE4:
	.loc 1 202 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_read_logical_line_trad@PLT
	testb	%al, %al
	jne	.L63
	.loc 1 211 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	scan_translation_unit_trad, .-scan_translation_unit_trad
	.section	.rodata
.LC0:
	.string	""
	.text
	.type	maybe_print_line, @function
maybe_print_line:
.LFB26:
	.loc 1 221 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$20, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 223 0
	movl	8(%ebp), %eax
	movzbl	500(%eax), %eax
	testb	%al, %al
	je	.L69
	.loc 1 225 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 226 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
	.loc 1 227 0
	movl	8(%ebp), %eax
	movb	$0, 500(%eax)
.L69:
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	cmpl	16(%ebp), %eax
	ja	.L71
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	addl	$8, %eax
	cmpl	16(%ebp), %eax
	jbe	.L71
	.loc 1 232 0
	jmp	.L74
.L75:
	.loc 1 234 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
.L74:
	.loc 1 232 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	cmpl	16(%ebp), %eax
	jb	.L75
	.loc 1 230 0
	jmp	.L78
.L71:
	.loc 1 239 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_line
.L78:
	.loc 1 240 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	maybe_print_line, .-maybe_print_line
	.section	.rodata
.LC1:
	.string	"# %u \"%s\"%s"
.LC2:
	.string	" 3 4"
.LC3:
	.string	" 3"
	.text
	.type	print_line, @function
print_line:
.LFB27:
	.loc 1 250 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%edi
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$64, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 250 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 252 0
	movl	-28(%ebp), %eax
	movzbl	500(%eax), %eax
	testb	%al, %al
	je	.L80
	.loc 1 253 0
	movl	-28(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L80:
	.loc 1 254 0
	movl	-28(%ebp), %eax
	movb	$0, 500(%eax)
	.loc 1 256 0
	movl	-28(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 496(%edx)
	.loc 1 257 0
	movl	-28(%ebp), %eax
	movzbl	418(%eax), %eax
	testb	%al, %al
	jne	.L88
.LBB5:
	.loc 1 259 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -44(%ebp)
	movl	$0, %eax
	cld
	movl	-44(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 260 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %edi
	movl	%edi, -20(%ebp)
	.loc 1 265 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_quote_string@PLT
	movl	%eax, -16(%ebp)
	.loc 1 267 0
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 268 0
	movl	-28(%ebp), %eax
	movl	496(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	subl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	480(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 272 0
	movl	-32(%ebp), %eax
	movzbl	17(%eax), %eax
	cmpb	$2, %al
	jne	.L84
	.loc 1 273 0
	movl	-28(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L86
.L84:
	.loc 1 274 0
	movl	-32(%ebp), %eax
	movzbl	17(%eax), %eax
	cmpb	$1, %al
	jne	.L86
	.loc 1 275 0
	movl	-28(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L86:
	.loc 1 277 0
	movl	-28(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L88:
.LBE5:
	.loc 1 279 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L89
	call	__stack_chk_fail_local
.L89:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	print_line, .-print_line
	.type	cb_line_change, @function
cb_line_change:
.LFB28:
	.loc 1 288 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$36, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 289 0
	movl	12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L99
	cmpl	$0, 16(%ebp)
	je	.L93
	.loc 1 290 0
	jmp	.L99
.L93:
	.loc 1 292 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	484(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_line
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	$0, 488(%eax)
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	$0, 492(%eax)
	.loc 1 301 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	jne	.L99
	.loc 1 303 0
	movl	8(%ebp), %eax
	movb	$1, 500(%eax)
	.loc 1 304 0
	movl	12(%ebp), %eax
	movzwl	4(%eax), %eax
	cmpw	$2, %ax
	jbe	.L99
.LBB6:
	.loc 1 306 0
	movl	12(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	subl	$2, %eax
	movl	%eax, -8(%ebp)
	.loc 1 308 0
	jmp	.L97
.L98:
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	putc_unlocked@PLT
.L97:
	.loc 1 308 0
	subl	$1, -8(%ebp)
	cmpl	$-1, -8(%ebp)
	jne	.L98
.L99:
.LBE6:
	.loc 1 312 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	cb_line_change, .-cb_line_change
	.section	.rodata
.LC4:
	.string	"#ident \"%s\"\n"
	.text
	.type	cb_ident, @function
cb_ident:
.LFB29:
	.loc 1 319 0
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
	.loc 1 320 0
	movl	8(%ebp), %eax
	movl	484(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_line
	.loc 1 321 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	480(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 322 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
	.loc 1 323 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	cb_ident, .-cb_ident
	.section	.rodata
.LC5:
	.string	"#define "
	.text
	.type	cb_define, @function
cb_define:
.LFB30:
	.loc 1 330 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%esi
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$16, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 331 0
	movl	8(%ebp), %eax
	movl	484(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_line
	.loc 1 332 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 335 0
	movl	8(%ebp), %eax
	movzbl	429(%eax), %eax
	cmpb	$3, %al
	jne	.L103
	.loc 1 336 0
	movl	8(%ebp), %eax
	movl	480(%eax), %esi
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_macro_definition@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	jmp	.L105
.L103:
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	480(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
.L105:
	.loc 1 341 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 342 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
	.loc 1 343 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE30:
	.size	cb_define, .-cb_define
	.section	.rodata
.LC6:
	.string	"#undef %s\n"
	.text
	.type	cb_undef, @function
cb_undef:
.LFB31:
	.loc 1 350 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$20, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 351 0
	movl	8(%ebp), %eax
	movl	484(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_line
	.loc 1 352 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	480(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 353 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
	.loc 1 354 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	cb_undef, .-cb_undef
	.section	.rodata
.LC7:
	.string	"#%s %s\n"
	.text
	.type	cb_include, @function
cb_include:
.LFB32:
	.loc 1 362 0
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
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	484(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_line
	.loc 1 364 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	480(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 366 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
	.loc 1 367 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	cb_include, .-cb_include
	.section	.rodata
.LC8:
	.string	" 1"
.LC9:
	.string	" 2"
	.text
	.type	cb_file_change, @function
cb_file_change:
.LFB33:
	.loc 1 377 0
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
	.loc 1 378 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	484(%eax), %eax
	testl	%eax, %eax
	jne	.L112
	.loc 1 384 0
	movl	8(%ebp), %eax
	movzbl	426(%eax), %eax
	testb	%al, %al
	jne	.L116
	.loc 1 385 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_line
	jmp	.L116
.L112:
	.loc 1 390 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	testb	%al, %al
	jne	.L117
	.loc 1 391 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	subl	$1, %eax
	movl	12(%ebp), %edx
	subl	$20, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_line
.L117:
	.loc 1 393 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	testb	%al, %al
	jne	.L119
	.loc 1 394 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L121
.L119:
	.loc 1 395 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L121
	.loc 1 396 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L121:
	.loc 1 397 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_line
.L116:
	.loc 1 400 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 484(%edx)
	.loc 1 401 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	cb_file_change, .-cb_file_change
	.section	.rodata
.LC10:
	.string	"#pragma "
	.text
	.type	cb_def_pragma, @function
cb_def_pragma:
.LFB34:
	.loc 1 408 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$20, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 409 0
	movl	8(%ebp), %eax
	movl	484(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_print_line
	.loc 1 410 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 411 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_output_line@PLT
	.loc 1 412 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
	.loc 1 413 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	cb_def_pragma, .-cb_def_pragma
	.type	dump_macro, @function
dump_macro:
.LFB35:
	.loc 1 421 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%esi
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$16, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 422 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L127
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L127
	.loc 1 424 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 425 0
	movl	8(%ebp), %eax
	movl	480(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_macro_definition@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	480(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 428 0
	movl	8(%ebp), %eax
	movl	496(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 496(%eax)
.L127:
	.loc 1 431 0
	movl	$1, %eax
	.loc 1 432 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE35:
	.size	dump_macro, .-dump_macro
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
	.byte	0x4
	.long	.LCFI21-.LCFI19
	.byte	0x83
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
	.long	.LCFI22-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI23
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI27-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI28
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
	.long	.LCFI31-.LFB29
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
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI35-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI36
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
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI40-.LFB31
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI44-.LFB32
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI48-.LFB33
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI52-.LFB34
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI56-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI57
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE28:
	.file 2 "../../../kg++fe/gnu/cpplib.h"
	.file 3 "../../../kg++fe/gnu/hashtable.h"
	.file 4 "../../../kg++fe/gnu/cpphash.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "../../../kg++fe/gnu/line-map.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "../../../include/gnu/obstack.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "/usr/include/libio.h"
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB28-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x2959
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cppmain.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
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
	.string	"__ino_t"
	.byte	0x6
	.byte	0x8c
	.long	0xf9
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x1a4
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x155
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa7
	.uleb128 0x6
	.string	"FILE"
	.byte	0x8
	.byte	0x2e
	.long	0x1d5
	.uleb128 0x8
	.long	0x450
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
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x4c8
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
	.long	0x195
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
	.long	0x4ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x4de
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x1c1
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
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.long	0x460
	.long	0xa7
	.uleb128 0xb
	.long	0xbd
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x466
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
	.long	0x4c2
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x4c8
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
	.long	0x47f
	.uleb128 0x2
	.byte	0x4
	.long	0x1d5
	.uleb128 0xa
	.long	0x4de
	.long	0xa7
	.uleb128 0xb
	.long	0xbd
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x471
	.uleb128 0xa
	.long	0x4f4
	.long	0xa7
	.uleb128 0xb
	.long	0xbd
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.string	"ino_t"
	.byte	0x5
	.byte	0x32
	.long	0x186
	.uleb128 0x6
	.string	"dev_t"
	.byte	0x5
	.byte	0x3e
	.long	0x177
	.uleb128 0xd
	.long	0x556
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x9
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF2
	.byte	0x9
	.byte	0xa3
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x9
	.byte	0xa4
	.long	0x556
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"contents"
	.byte	0x9
	.byte	0xa5
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x50e
	.uleb128 0x10
	.long	0x689
	.string	"obstack"
	.byte	0x2c
	.byte	0x8
	.value	0x31b
	.uleb128 0xe
	.string	"chunk_size"
	.byte	0x9
	.byte	0xaa
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"chunk"
	.byte	0x9
	.byte	0xab
	.long	0x556
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"object_base"
	.byte	0x9
	.byte	0xac
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"next_free"
	.byte	0x9
	.byte	0xad
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"chunk_limit"
	.byte	0x9
	.byte	0xae
	.long	0x1c3
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
	.long	0x69e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"freefun"
	.byte	0x9
	.byte	0xb6
	.long	0x6b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"extra_arg"
	.byte	0x9
	.byte	0xb7
	.long	0x1c1
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
	.long	0x69e
	.byte	0x1
	.long	0x556
	.uleb128 0x13
	.long	0x1c1
	.uleb128 0x13
	.long	0x1a4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x689
	.uleb128 0x14
	.long	0x6b5
	.byte	0x1
	.uleb128 0x13
	.long	0x1c1
	.uleb128 0x13
	.long	0x556
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6a4
	.uleb128 0x8
	.long	0x6f9
	.long	.LASF3
	.byte	0xc
	.byte	0x3
	.byte	0x19
	.uleb128 0xe
	.string	"str"
	.byte	0x3
	.byte	0x1c
	.long	0x460
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
	.long	.LASF4
	.byte	0x3
	.byte	0x29
	.long	0x704
	.uleb128 0xd
	.long	0x7a2
	.string	"ht"
	.byte	0x48
	.byte	0x3
	.byte	0x29
	.uleb128 0xe
	.string	"stack"
	.byte	0x3
	.byte	0x32
	.long	0x55c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"entries"
	.byte	0x3
	.byte	0x34
	.long	0x7b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"alloc_node"
	.byte	0x3
	.byte	0x36
	.long	0x7d4
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
	.long	.LASF5
	.byte	0x3
	.byte	0x3c
	.long	0xb9c
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
	.long	0x7b2
	.uleb128 0x2
	.byte	0x4
	.long	0x6bb
	.uleb128 0x2
	.byte	0x4
	.long	0x7a2
	.uleb128 0x12
	.long	0x7ce
	.byte	0x1
	.long	0x7a2
	.uleb128 0x13
	.long	0x7ce
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6f9
	.uleb128 0x2
	.byte	0x4
	.long	0x7be
	.uleb128 0x16
	.long	0xb9c
	.long	.LASF6
	.value	0x210
	.byte	0x3
	.byte	0x28
	.uleb128 0x9
	.string	"buffer"
	.byte	0x4
	.value	0x151
	.long	0x2356
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"overlaid_buffer"
	.byte	0x4
	.value	0x154
	.long	0x2356
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"state"
	.byte	0x4
	.value	0x157
	.long	0x20d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF7
	.byte	0x4
	.value	0x15a
	.long	0xc5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"map"
	.byte	0x4
	.value	0x15b
	.long	0x1cec
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.long	.LASF8
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
	.long	0x20d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"u_buff"
	.byte	0x4
	.value	0x163
	.long	0x20d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"free_buffs"
	.byte	0x4
	.value	0x164
	.long	0x20d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"base_context"
	.byte	0x4
	.value	0x167
	.long	0x1ff4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"context"
	.byte	0x4
	.value	0x168
	.long	0x235c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.long	.LASF9
	.byte	0x4
	.value	0x16b
	.long	0x2368
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"next_include_file"
	.byte	0x4
	.value	0x170
	.long	0x2384
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.string	"mi_cmacro"
	.byte	0x4
	.value	0x173
	.long	0x2390
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.string	"mi_ind_cmacro"
	.byte	0x4
	.value	0x174
	.long	0x2390
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.string	"mi_valid"
	.byte	0x4
	.value	0x175
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.string	"cur_token"
	.byte	0x4
	.value	0x178
	.long	0x1eda
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.string	"base_run"
	.byte	0x4
	.value	0x179
	.long	0x1f90
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.string	"cur_run"
	.byte	0x4
	.value	0x179
	.long	0x1fe3
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
	.long	0x46b
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
	.long	0x23aa
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
	.long	0x1ee0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.string	"time"
	.byte	0x4
	.value	0x192
	.long	0x1ee0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x17
	.long	.LASF10
	.byte	0x4
	.value	0x195
	.long	0x1448
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.string	"eof"
	.byte	0x4
	.value	0x196
	.long	0x1448
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.string	"deps"
	.byte	0x4
	.value	0x199
	.long	0x23b7
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.string	"hash_ob"
	.byte	0x4
	.value	0x19d
	.long	0x55c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.string	"buffer_ob"
	.byte	0x4
	.value	0x1a1
	.long	0x55c
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.string	"pragmas"
	.byte	0x4
	.value	0x1a5
	.long	0x23cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.string	"cb"
	.byte	0x4
	.value	0x1a8
	.long	0x1646
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x17
	.long	.LASF4
	.byte	0x4
	.value	0x1ab
	.long	0x23d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.string	"op_stack"
	.byte	0x4
	.value	0x1ae
	.long	0x23dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.string	"op_limit"
	.byte	0x4
	.value	0x1ae
	.long	0x23dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.string	"opts"
	.byte	0x4
	.value	0x1b1
	.long	0xe8e
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x17
	.long	.LASF11
	.byte	0x4
	.value	0x1b5
	.long	0x2202
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x9
	.string	"print"
	.byte	0x4
	.value	0x1b8
	.long	0x2260
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
	.long	0x2302
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
	.long	0x7da
	.uleb128 0x18
	.long	0xbd7
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
	.long	0xc5c
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
	.long	0xba2
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
	.long	0xcda
	.long	.LASF7
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.uleb128 0xe
	.string	"maps"
	.byte	0x7
	.byte	0x36
	.long	0xcda
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
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xbd7
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	.LASF6
	.byte	0x2
	.byte	0x28
	.long	0x7da
	.uleb128 0x15
	.long	.LASF12
	.byte	0x2
	.byte	0x2a
	.long	0xcff
	.uleb128 0x8
	.long	0xe83
	.long	.LASF12
	.byte	0x58
	.byte	0x2
	.byte	0x2a
	.uleb128 0x9
	.string	"cur"
	.byte	0x4
	.value	0x114
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"backup_to"
	.byte	0x4
	.value	0x115
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF13
	.byte	0x4
	.value	0x116
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"line_base"
	.byte	0x4
	.value	0x117
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"prev"
	.byte	0x4
	.value	0x119
	.long	0x22db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"buf"
	.byte	0x4
	.value	0x11b
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"inc"
	.byte	0x4
	.value	0x11f
	.long	0x22f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.long	.LASF14
	.byte	0x4
	.value	0x123
	.long	0x22fc
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
	.long	0x460
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
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"dir"
	.byte	0x4
	.value	0x145
	.long	0x1c19
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"saved_cur"
	.byte	0x4
	.value	0x148
	.long	0x1ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.string	"saved_rlimit"
	.byte	0x4
	.value	0x148
	.long	0x1ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x15
	.long	.LASF15
	.byte	0x2
	.byte	0x2b
	.long	0xe8e
	.uleb128 0x8
	.long	0x1448
	.long	.LASF15
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
	.long	0x1c13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"quote_include"
	.byte	0x2
	.byte	0xeb
	.long	0x1c98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"bracket_include"
	.byte	0x2
	.byte	0xec
	.long	0x1c98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"map_list"
	.byte	0x2
	.byte	0xf0
	.long	0x1cb3
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
	.long	0x1aa2
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
	.uleb128 0xe
	.string	"cplusplus"
	.byte	0x2
	.byte	0xfe
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.string	"cplusplus_comments"
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
	.uleb128 0x9
	.string	"digraphs"
	.byte	0x2
	.value	0x112
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x9
	.string	"extended_numbers"
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
	.uleb128 0x9
	.string	"dollars_in_ident"
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
	.long	0x1b9c
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
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"unsigned_wchar"
	.byte	0x2
	.value	0x199
	.long	0xce0
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
	.long	.LASF16
	.byte	0x2
	.byte	0x2c
	.long	0x1453
	.uleb128 0x8
	.long	0x14ac
	.long	.LASF16
	.byte	0x10
	.byte	0x2
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF8
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
	.long	0x16fb
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
	.long	0x1b16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF17
	.byte	0x2
	.byte	0x2d
	.long	0x14b7
	.uleb128 0x8
	.long	0x14e1
	.long	.LASF17
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
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	.LASF18
	.byte	0x2
	.byte	0x2e
	.long	0x14ec
	.uleb128 0x8
	.long	0x1583
	.long	.LASF18
	.byte	0x18
	.byte	0x2
	.byte	0x2e
	.uleb128 0x9
	.string	"ident"
	.byte	0x2
	.value	0x1e6
	.long	0x6bb
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
	.long	0x1d8a
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
	.long	0x1e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF19
	.byte	0x2
	.byte	0x2f
	.long	0x158e
	.uleb128 0x8
	.long	0x163b
	.long	.LASF19
	.byte	0x14
	.byte	0x2
	.byte	0x2f
	.uleb128 0xe
	.string	"params"
	.byte	0x4
	.byte	0x49
	.long	0x1eeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x4
	.byte	0x52
	.long	0x1eb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF8
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
	.uleb128 0x15
	.long	.LASF20
	.byte	0x2
	.byte	0x30
	.long	0x1646
	.uleb128 0x8
	.long	0x16fb
	.long	.LASF20
	.byte	0x20
	.byte	0x2
	.byte	0x30
	.uleb128 0x9
	.string	"line_change"
	.byte	0x2
	.value	0x1a3
	.long	0x1cd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"file_change"
	.byte	0x2
	.value	0x1a4
	.long	0x1cf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"include"
	.byte	0x2
	.value	0x1a5
	.long	0x1d18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"define"
	.byte	0x2
	.value	0x1a7
	.long	0x1d34
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"undef"
	.byte	0x2
	.value	0x1a8
	.long	0x1d34
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ident"
	.byte	0x2
	.value	0x1a9
	.long	0x1d5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"def_pragma"
	.byte	0x2
	.value	0x1aa
	.long	0x1d72
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"register_builtins"
	.byte	0x2
	.value	0x1ad
	.long	0x1d84
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x1aa2
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
	.long	0x1b16
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
	.long	0x1b5b
	.byte	0x8
	.byte	0x2
	.byte	0xbc
	.uleb128 0x1c
	.string	"node"
	.byte	0x2
	.byte	0xbd
	.long	0x1b5b
	.uleb128 0x1c
	.string	"source"
	.byte	0x2
	.byte	0xbe
	.long	0x1b61
	.uleb128 0x1c
	.string	"str"
	.byte	0x2
	.byte	0xbf
	.long	0x14b7
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
	.long	0x14e1
	.uleb128 0x2
	.byte	0x4
	.long	0x1b67
	.uleb128 0x3
	.long	0x1448
	.uleb128 0x1d
	.long	0x1b9c
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
	.long	0x1c05
	.byte	0x8
	.byte	0x2
	.value	0x183
	.uleb128 0x9
	.string	"style"
	.byte	0x2
	.value	0x185
	.long	0x1b6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"missing_files"
	.byte	0x2
	.value	0x188
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"phony_targets"
	.byte	0x2
	.value	0x18c
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"ignore_main_file"
	.byte	0x2
	.value	0x18f
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x1f
	.string	"cpp_pending"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1c05
	.uleb128 0xd
	.long	0x1c98
	.string	"search_path"
	.byte	0x20
	.byte	0x2
	.byte	0xeb
	.uleb128 0xe
	.string	"next"
	.byte	0x4
	.byte	0x86
	.long	0x1c98
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
	.long	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dev"
	.byte	0x4
	.byte	0x8f
	.long	0x501
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
	.long	0x1f59
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1c19
	.uleb128 0x1f
	.string	"file_name_map_list"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1c9e
	.uleb128 0x14
	.long	0x1ccf
	.byte	0x1
	.uleb128 0x13
	.long	0x1ccf
	.uleb128 0x13
	.long	0x1b61
	.uleb128 0x13
	.long	0xaf
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xce9
	.uleb128 0x2
	.byte	0x4
	.long	0x1cb9
	.uleb128 0x14
	.long	0x1cec
	.byte	0x1
	.uleb128 0x13
	.long	0x1ccf
	.uleb128 0x13
	.long	0x1cec
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1cf2
	.uleb128 0x3
	.long	0xbd7
	.uleb128 0x2
	.byte	0x4
	.long	0x1cdb
	.uleb128 0x14
	.long	0x1d18
	.byte	0x1
	.uleb128 0x13
	.long	0x1ccf
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x460
	.uleb128 0x13
	.long	0x1b61
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1cfd
	.uleb128 0x14
	.long	0x1d34
	.byte	0x1
	.uleb128 0x13
	.long	0x1ccf
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x1b5b
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d1e
	.uleb128 0x14
	.long	0x1d50
	.byte	0x1
	.uleb128 0x13
	.long	0x1ccf
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x1d50
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d56
	.uleb128 0x3
	.long	0x14ac
	.uleb128 0x2
	.byte	0x4
	.long	0x1d3a
	.uleb128 0x14
	.long	0x1d72
	.byte	0x1
	.uleb128 0x13
	.long	0x1ccf
	.uleb128 0x13
	.long	0xb6
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d61
	.uleb128 0x14
	.long	0x1d84
	.byte	0x1
	.uleb128 0x13
	.long	0x1ccf
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d78
	.uleb128 0x20
	.long	0x1dc2
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
	.long	0x1e3d
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
	.long	0x1e8b
	.byte	0x4
	.byte	0x2
	.value	0x1ee
	.uleb128 0x22
	.string	"macro"
	.byte	0x2
	.value	0x1ef
	.long	0x1e8b
	.uleb128 0x22
	.string	"answers"
	.byte	0x2
	.value	0x1f0
	.long	0x1e9a
	.uleb128 0x22
	.string	"operator_code"
	.byte	0x2
	.value	0x1f2
	.long	0x16fb
	.uleb128 0x22
	.string	"builtin"
	.byte	0x2
	.value	0x1f6
	.long	0x1dc2
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1583
	.uleb128 0x1f
	.string	"answer"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1e91
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
	.long	0x1eda
	.byte	0x4
	.byte	0x4
	.byte	0x4f
	.uleb128 0x1c
	.string	"tokens"
	.byte	0x4
	.byte	0x50
	.long	0x1eda
	.uleb128 0x1c
	.string	"text"
	.byte	0x4
	.byte	0x51
	.long	0x1ee0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1448
	.uleb128 0x2
	.byte	0x4
	.long	0x1ee6
	.uleb128 0x3
	.long	0x1ea0
	.uleb128 0x2
	.byte	0x4
	.long	0x1b5b
	.uleb128 0x15
	.long	.LASF21
	.byte	0x4
	.byte	0x6f
	.long	0x1efc
	.uleb128 0x8
	.long	0x1f43
	.long	.LASF21
	.byte	0x10
	.byte	0x4
	.byte	0x6f
	.uleb128 0xe
	.string	"next"
	.byte	0x4
	.byte	0x72
	.long	0x1f43
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"base"
	.byte	0x4
	.byte	0x73
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cur"
	.byte	0x4
	.byte	0x73
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x73
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1efc
	.uleb128 0x1f
	.string	"file_name_map"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1f49
	.uleb128 0x23
	.long	0x1f8a
	.string	"utoken"
	.byte	0x4
	.byte	0x4
	.byte	0x9b
	.uleb128 0x1c
	.string	"token"
	.byte	0x4
	.byte	0x9c
	.long	0x1b61
	.uleb128 0x1c
	.string	"ptoken"
	.byte	0x4
	.byte	0x9d
	.long	0x1f8a
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1b61
	.uleb128 0x15
	.long	.LASF22
	.byte	0x4
	.byte	0xa1
	.long	0x1f9b
	.uleb128 0x8
	.long	0x1fe3
	.long	.LASF22
	.byte	0x10
	.byte	0x4
	.byte	0xa1
	.uleb128 0xe
	.string	"next"
	.byte	0x4
	.byte	0xa4
	.long	0x1fe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x4
	.byte	0xa4
	.long	0x1fe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x4
	.byte	0xa5
	.long	0x1eda
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0xa5
	.long	0x1eda
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f90
	.uleb128 0x15
	.long	.LASF23
	.byte	0x4
	.byte	0xae
	.long	0x1ff4
	.uleb128 0x8
	.long	0x205d
	.long	.LASF23
	.byte	0x1c
	.byte	0x4
	.byte	0xae
	.uleb128 0xe
	.string	"next"
	.byte	0x4
	.byte	0xb2
	.long	0x20ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x4
	.byte	0xb2
	.long	0x20ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0x4
	.byte	0xc5
	.long	0x20aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"buff"
	.byte	0x4
	.byte	0xc9
	.long	0x20d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"macro"
	.byte	0x4
	.byte	0xcc
	.long	0x1b5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"direct_p"
	.byte	0x4
	.byte	0xcf
	.long	0xce0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x2085
	.byte	0x8
	.byte	0x4
	.byte	0xba
	.uleb128 0xe
	.string	"first"
	.byte	0x4
	.byte	0xbb
	.long	0x1f5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"last"
	.byte	0x4
	.byte	0xbc
	.long	0x1f5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x24
	.long	0x20aa
	.byte	0x8
	.byte	0x4
	.byte	0xc1
	.uleb128 0xe
	.string	"cur"
	.byte	0x4
	.byte	0xc2
	.long	0x1ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF13
	.byte	0x4
	.byte	0xc3
	.long	0x1ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1b
	.long	0x20ca
	.byte	0x8
	.byte	0x4
	.byte	0xb5
	.uleb128 0x1c
	.string	"iso"
	.byte	0x4
	.byte	0xbd
	.long	0x205d
	.uleb128 0x1c
	.string	"trad"
	.byte	0x4
	.byte	0xc4
	.long	0x2085
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1fe9
	.uleb128 0x2
	.byte	0x4
	.long	0x1ef1
	.uleb128 0xd
	.long	0x2202
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
	.uleb128 0xf
	.long	.LASF24
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
	.long	0x2260
	.long	.LASF11
	.byte	0x10
	.byte	0x4
	.byte	0xfe
	.uleb128 0xe
	.string	"n_defined"
	.byte	0x4
	.byte	0xff
	.long	0x1b5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"n_true"
	.byte	0x4
	.value	0x100
	.long	0x1b5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"n_false"
	.byte	0x4
	.value	0x101
	.long	0x1b5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"n__VA_ARGS__"
	.byte	0x4
	.value	0x102
	.long	0x1b5b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x22d5
	.string	"printer"
	.byte	0x18
	.byte	0x4
	.value	0x108
	.uleb128 0x9
	.string	"outf"
	.byte	0x4
	.value	0x109
	.long	0x22d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map"
	.byte	0x4
	.value	0x10a
	.long	0x1cec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"prev"
	.byte	0x4
	.value	0x10b
	.long	0x1b61
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"source"
	.byte	0x4
	.value	0x10c
	.long	0x1b61
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.long	.LASF8
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
	.long	0x1c9
	.uleb128 0x2
	.byte	0x4
	.long	0xcff
	.uleb128 0x1f
	.string	"include_file"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x22e1
	.uleb128 0x25
	.long	.LASF14
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x22f6
	.uleb128 0x1e
	.long	0x2350
	.byte	0x10
	.byte	0x4
	.value	0x1bf
	.uleb128 0x9
	.string	"base"
	.byte	0x4
	.value	0x1c0
	.long	0x2350
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x4
	.value	0x1c1
	.long	0x2350
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cur"
	.byte	0x4
	.value	0x1c2
	.long	0x2350
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
	.long	0x1ea0
	.uleb128 0x2
	.byte	0x4
	.long	0xcf4
	.uleb128 0x2
	.byte	0x4
	.long	0x1ff4
	.uleb128 0x25
	.long	.LASF9
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x236e
	.uleb128 0x3
	.long	0x2362
	.uleb128 0x1f
	.string	"pending_option"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x238a
	.uleb128 0x2
	.byte	0x4
	.long	0x2373
	.uleb128 0x2
	.byte	0x4
	.long	0x2396
	.uleb128 0x3
	.long	0x14e1
	.uleb128 0x1f
	.string	"splay_tree_s"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x239b
	.uleb128 0x1f
	.string	"deps"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23b0
	.uleb128 0x1f
	.string	"pragma_entry"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23bd
	.uleb128 0x2
	.byte	0x4
	.long	0x704
	.uleb128 0x1f
	.string	"op"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23d8
	.uleb128 0x26
	.long	0x245f
	.byte	0x1
	.string	"cpp_preprocess_file"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST0
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0x3a
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"in_fname"
	.byte	0x1
	.byte	0x3b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"out_stream"
	.byte	0x1
	.byte	0x3c
	.long	0x22d5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2a
	.string	"options"
	.byte	0x1
	.byte	0x4b
	.long	0x245f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xe83
	.uleb128 0x2b
	.long	0x24b7
	.string	"setup_callbacks"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST1
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0x69
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"options"
	.byte	0x1
	.byte	0x6b
	.long	0x245f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"cb"
	.byte	0x1
	.byte	0x6c
	.long	0x24b7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x163b
	.uleb128 0x2b
	.long	0x251e
	.string	"scan_translation_unit"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST2
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0x8b
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.byte	0x8d
	.long	0xce0
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x29
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2a
	.string	"token"
	.byte	0x1
	.byte	0x92
	.long	0x1b61
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2572
	.string	"account_for_newlines"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST3
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0xbc
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"str"
	.byte	0x1
	.byte	0xbd
	.long	0x1ee0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xbe
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2b
	.long	0x25c8
	.string	"scan_translation_unit_trad"
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST4
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0xc8
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.byte	0xcc
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2618
	.string	"maybe_print_line"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST5
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0xda
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"map"
	.byte	0x1
	.byte	0xdb
	.long	0x1cec
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.byte	0xdc
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2b
	.long	0x26c2
	.string	"print_line"
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST6
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0xf6
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"map"
	.byte	0x1
	.byte	0xf7
	.long	0x1cec
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.byte	0xf8
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"special_flags"
	.byte	0x1
	.byte	0xf9
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2d
	.string	"to_file_len"
	.byte	0x1
	.value	0x103
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"to_file_quoted"
	.byte	0x1
	.value	0x104
	.long	0x46b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x105
	.long	0x46b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x2732
	.string	"cb_line_change"
	.byte	0x1
	.value	0x120
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST7
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x11d
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"token"
	.byte	0x1
	.value	0x11e
	.long	0x1b61
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x11f
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2d
	.string	"spaces"
	.byte	0x1
	.value	0x132
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x277e
	.string	"cb_ident"
	.byte	0x1
	.value	0x13f
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST8
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x13c
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x13d
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"str"
	.byte	0x1
	.value	0x13e
	.long	0x1d50
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2e
	.long	0x27cc
	.string	"cb_define"
	.byte	0x1
	.value	0x14a
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST9
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x147
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x148
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"node"
	.byte	0x1
	.value	0x149
	.long	0x1b5b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2e
	.long	0x2819
	.string	"cb_undef"
	.byte	0x1
	.value	0x15e
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST10
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x15b
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x15c
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"node"
	.byte	0x1
	.value	0x15d
	.long	0x1b5b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2e
	.long	0x2879
	.string	"cb_include"
	.byte	0x1
	.value	0x16a
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST11
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x166
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x167
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"dir"
	.byte	0x1
	.value	0x168
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"header"
	.byte	0x1
	.value	0x169
	.long	0x1b61
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x2e
	.long	0x28cd
	.string	"cb_file_change"
	.byte	0x1
	.value	0x179
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST12
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x177
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"map"
	.byte	0x1
	.value	0x178
	.long	0x1cec
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"flags"
	.byte	0x1
	.value	0x17a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x290f
	.string	"cb_def_pragma"
	.byte	0x1
	.value	0x198
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST13
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x196
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x197
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.string	"dump_macro"
	.byte	0x1
	.value	0x1a5
	.byte	0x1
	.long	0xaf
	.long	.LFB35
	.long	.LFE35
	.long	.LLST14
	.uleb128 0x2f
	.long	.LASF5
	.byte	0x1
	.value	0x1a2
	.long	0x1ccf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"node"
	.byte	0x1
	.value	0x1a3
	.long	0x1b5b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"v"
	.byte	0x1
	.value	0x1a4
	.long	0x1c1
	.byte	0x2
	.byte	0x91
	.sleb128 8
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
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
	.long	0x26
	.value	0x2
	.long	.Ldebug_info0
	.long	0x295d
	.long	0x23e3
	.string	"cpp_preprocess_file"
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
.LASF19:
	.string	"cpp_macro"
.LASF23:
	.string	"cpp_context"
.LASF11:
	.string	"spec_nodes"
.LASF24:
	.string	"parsing_args"
.LASF12:
	.string	"cpp_buffer"
.LASF21:
	.string	"_cpp_buff"
.LASF4:
	.string	"hash_table"
.LASF22:
	.string	"tokenrun"
.LASF5:
	.string	"pfile"
.LASF7:
	.string	"line_maps"
.LASF15:
	.string	"cpp_options"
.LASF8:
	.string	"line"
.LASF1:
	.string	"_IO_FILE"
.LASF14:
	.string	"if_stack"
.LASF13:
	.string	"rlimit"
.LASF6:
	.string	"cpp_reader"
.LASF17:
	.string	"cpp_string"
.LASF2:
	.string	"limit"
.LASF20:
	.string	"cpp_callbacks"
.LASF18:
	.string	"cpp_hashnode"
.LASF10:
	.string	"avoid_paste"
.LASF16:
	.string	"cpp_token"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"directive"
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
