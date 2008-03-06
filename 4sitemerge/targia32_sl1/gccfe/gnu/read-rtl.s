	.file	"read-rtl.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl read_rtx_lineno
	.data
	.align 4
	.type	read_rtx_lineno, @object
	.size	read_rtx_lineno, 4
read_rtx_lineno:
	.long	1
.globl read_rtx_filename
	.section	.rodata
.LC0:
	.string	"<unknown>"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	read_rtx_filename, @object
	.size	read_rtx_filename, 4
read_rtx_filename:
	.long	.LC0
	.section	.rodata
.LC1:
	.string	"%s:%d: "
	.align 4
.LC2:
	.string	"%s:%d: following context is `%s'\n"
	.text
	.type	fatal_with_file_and_line, @function
fatal_with_file_and_line:
.LFB15:
	.file 1 "../../../kgccfe/gnu/read-rtl.c"
	.loc 1 59 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$112, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 59 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 71 0
	leal	16(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 74 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	read_rtx_filename@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 75 0
	movl	-88(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
	.loc 1 76 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 79 0
	movl	$0, -84(%ebp)
	jmp	.L2
.L3:
	.loc 1 81 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -80(%ebp)
	.loc 1 82 0
	cmpl	$-1, -80(%ebp)
	je	.L4
	.loc 1 84 0
	cmpl	$13, -80(%ebp)
	je	.L4
	cmpl	$10, -80(%ebp)
	je	.L4
	.loc 1 86 0
	movl	-84(%ebp), %eax
	movl	-80(%ebp), %edx
	movb	%dl, -76(%ebp,%eax)
	.loc 1 79 0
	addl	$1, -84(%ebp)
.L2:
	cmpl	$62, -84(%ebp)
	jbe	.L3
.L4:
	.loc 1 88 0
	movl	-84(%ebp), %eax
	movb	$0, -76(%ebp,%eax)
	.loc 1 90 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	read_rtx_filename@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	leal	-76(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 98 0
	movl	$1, (%esp)
	call	exit@PLT
.LFE15:
	.size	fatal_with_file_and_line, .-fatal_with_file_and_line
	.section	.rodata
	.align 4
.LC3:
	.string	"expected character `%c', found `%c'"
	.text
	.type	fatal_expected_char, @function
fatal_expected_char:
.LFB16:
	.loc 1 108 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$20, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 109 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_with_file_and_line
.LFE16:
	.size	fatal_expected_char, .-fatal_expected_char
.globl read_skip_spaces
	.type	read_skip_spaces, @function
read_skip_spaces:
.LFB17:
	.loc 1 121 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$36, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	jmp	.L34
.L13:
.L34:
	.loc 1 126 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 127 0
	movl	-12(%ebp), %eax
	subl	$9, %eax
	movl	%eax, -24(%ebp)
	cmpl	$50, -24(%ebp)
	ja	.L14
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L19@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L19:
	.long	.L13@GOTOFF
	.long	.L16@GOTOFF
	.long	.L14@GOTOFF
	.long	.L13@GOTOFF
	.long	.L13@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L13@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L17@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L14@GOTOFF
	.long	.L18@GOTOFF
	.text
.L16:
	.loc 1 130 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 131 0
	jmp	.L13
.L18:
	.loc 1 138 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 139 0
	cmpl	$10, -12(%ebp)
	je	.L21
	cmpl	$-1, -12(%ebp)
	jne	.L18
.L21:
	.loc 1 140 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 141 0
	jmp	.L13
.L17:
.LBB2:
	.loc 1 146 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 147 0
	cmpl	$42, -12(%ebp)
	je	.L23
	.loc 1 148 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$42, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_expected_char
.L23:
	.loc 1 150 0
	movl	$0, -8(%ebp)
	.loc 1 151 0
	jmp	.L25
.L26:
	.loc 1 153 0
	cmpl	$10, -12(%ebp)
	jne	.L27
	.loc 1 154 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L29
.L27:
	.loc 1 155 0
	cmpl	$42, -8(%ebp)
	jne	.L29
	cmpl	$47, -12(%ebp)
	je	.L13
.L29:
	.loc 1 157 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L25:
	.loc 1 151 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L13
	cmpl	$-1, -12(%ebp)
	jne	.L26
	.loc 1 160 0
	jmp	.L13
.L14:
.LBE2:
	.loc 1 163 0
	movl	-12(%ebp), %eax
	.loc 1 166 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	read_skip_spaces, .-read_skip_spaces
	.section	.rodata
.LC4:
	.string	"missing name or number"
	.text
	.type	read_name, @function
read_name:
.LFB18:
	.loc 1 175 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$36, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 179 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -8(%ebp)
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L36:
	.loc 1 184 0
	cmpl	$32, -8(%ebp)
	je	.L37
	cmpl	$10, -8(%ebp)
	je	.L37
	cmpl	$9, -8(%ebp)
	je	.L37
	cmpl	$12, -8(%ebp)
	je	.L37
	cmpl	$13, -8(%ebp)
	je	.L37
	.loc 1 186 0
	cmpl	$58, -8(%ebp)
	je	.L43
	cmpl	$41, -8(%ebp)
	je	.L43
	cmpl	$93, -8(%ebp)
	je	.L43
	cmpl	$34, -8(%ebp)
	je	.L43
	cmpl	$47, -8(%ebp)
	je	.L43
	cmpl	$40, -8(%ebp)
	je	.L43
	cmpl	$91, -8(%ebp)
	jne	.L50
.L43:
	.loc 1 189 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ungetc@PLT
	.loc 1 190 0
	jmp	.L37
.L50:
	.loc 1 192 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -12(%ebp)
	.loc 1 193 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 194 0
	jmp	.L36
.L37:
	.loc 1 195 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L51
	.loc 1 196 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_with_file_and_line
.L51:
	.loc 1 197 0
	cmpl	$10, -8(%ebp)
	jne	.L53
	.loc 1 198 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L53:
	.loc 1 200 0
	movl	-12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 222 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	read_name, .-read_name
	.section	.rodata
.LC5:
	.string	"\\n\\t"
	.align 4
.LC6:
	.string	"%s:%d: warning: unrecognized escape \\%c\n"
	.text
	.type	read_escape, @function
read_escape:
.LFB19:
	.loc 1 230 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%edi
.LCFI19:
	pushl	%esi
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$60, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 231 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 233 0
	movl	-36(%ebp), %eax
	subl	$10, %eax
	movl	%eax, -48(%ebp)
	cmpl	$110, -48(%ebp)
	ja	.L57
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L62@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L62:
	.long	.L58@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L64@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L64@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L60@GOTOFF
	.long	.L60@GOTOFF
	.long	.L60@GOTOFF
	.long	.L60@GOTOFF
	.long	.L60@GOTOFF
	.long	.L60@GOTOFF
	.long	.L60@GOTOFF
	.long	.L60@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L61@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L64@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L60@GOTOFF
	.long	.L60@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L60@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L60@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L57@GOTOFF
	.long	.L60@GOTOFF
	.long	.L57@GOTOFF
	.long	.L60@GOTOFF
	.long	.L57@GOTOFF
	.long	.L60@GOTOFF
	.long	.L57@GOTOFF
	.long	.L60@GOTOFF
	.text
.L58:
	.loc 1 237 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 238 0
	jmp	.L73
.L60:
.LBB3:
	.loc 1 258 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L65
	movl	$1, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L65:
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movb	$92, (%eax)
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 259 0
	jmp	.L64
.L61:
.LBE3:
.LBB4:
	.loc 1 264 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$4, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L67
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L67:
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	.LC5@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 265 0
	jmp	.L73
.L57:
.LBE4:
	.loc 1 269 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	read_rtx_filename@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.LBB5:
	.loc 1 271 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L69
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L69:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$92, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L64:
.LBE5:
.LBB6:
	.loc 1 275 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L71
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L71:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L73:
.LBE6:
	.loc 1 276 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	read_escape, .-read_escape
	.type	read_quoted_string, @function
read_quoted_string:
.LFB20:
	.loc 1 285 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%esi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$48, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	jmp	.L92
.L75:
.L92:
	.loc 1 290 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 291 0
	cmpl	$10, -28(%ebp)
	jne	.L76
	.loc 1 292 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L78
.L76:
	.loc 1 293 0
	cmpl	$92, -28(%ebp)
	jne	.L79
	.loc 1 295 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_escape
	.loc 1 296 0
	jmp	.L75
.L79:
	.loc 1 298 0
	cmpl	$34, -28(%ebp)
	je	.L82
.L78:
.LBB7:
	.loc 1 301 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L83
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L83:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 302 0
	jmp	.L75
.L82:
.LBE7:
.LBB8:
	.loc 1 304 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L85
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L85:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$0, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE8:
.LBB9:
	.loc 1 305 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L87
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L87:
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
	jle	.L89
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L89:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE9:
	.loc 1 306 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	read_quoted_string, .-read_quoted_string
	.type	read_braced_string, @function
read_braced_string:
.LFB21:
	.loc 1 315 0
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
	.loc 1 317 0
	movl	$1, -32(%ebp)
.LBB10:
	.loc 1 319 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L94
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L94:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movb	$123, (%eax)
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 320 0
	jmp	.L116
.L97:
.LBE10:
	.loc 1 322 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 323 0
	cmpl	$10, -36(%ebp)
	jne	.L98
	.loc 1 324 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L100
.L98:
	.loc 1 325 0
	cmpl	$123, -36(%ebp)
	jne	.L101
	.loc 1 326 0
	addl	$1, -32(%ebp)
	jmp	.L100
.L101:
	.loc 1 327 0
	cmpl	$125, -36(%ebp)
	jne	.L103
	.loc 1 328 0
	subl	$1, -32(%ebp)
	jmp	.L100
.L103:
	.loc 1 329 0
	cmpl	$92, -36(%ebp)
	jne	.L100
	.loc 1 331 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_escape
	.loc 1 332 0
	jmp	.L96
.L100:
.LBB11:
	.loc 1 335 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L106
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L106:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.L96:
.L116:
.LBE11:
	.loc 1 320 0
	cmpl	$0, -32(%ebp)
	jne	.L97
.LBB12:
	.loc 1 338 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L109
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L109:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$0, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE12:
.LBB13:
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L111
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L111:
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
	jle	.L113
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L113:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE13:
	.loc 1 340 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE21:
	.size	read_braced_string, .-read_braced_string
	.section	.rodata
	.align 4
.LC7:
	.string	"expected `\"' or `{', found `%c'"
	.text
	.type	read_string, @function
read_string:
.LFB22:
	.loc 1 351 0
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
	.loc 1 353 0
	movl	$0, -16(%ebp)
	.loc 1 356 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -12(%ebp)
	.loc 1 357 0
	cmpl	$40, -12(%ebp)
	jne	.L118
	.loc 1 359 0
	movl	$1, -16(%ebp)
	.loc 1 360 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -12(%ebp)
.L118:
	.loc 1 363 0
	cmpl	$34, -12(%ebp)
	jne	.L120
	.loc 1 364 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_quoted_string
	movl	%eax, -20(%ebp)
	jmp	.L122
.L120:
	.loc 1 365 0
	cmpl	$123, -12(%ebp)
	jne	.L123
	.loc 1 367 0
	cmpl	$0, 16(%ebp)
	je	.L125
.LBB14:
	.loc 1 368 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L127
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L127:
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$42, (%eax)
	leal	1(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.L125:
.LBE14:
	.loc 1 369 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_braced_string
	movl	%eax, -20(%ebp)
	jmp	.L122
.L123:
	.loc 1 372 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_with_file_and_line
.L122:
	.loc 1 374 0
	cmpl	$0, -16(%ebp)
	je	.L129
	.loc 1 376 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -12(%ebp)
	.loc 1 377 0
	cmpl	$41, -12(%ebp)
	je	.L129
	.loc 1 378 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$41, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_expected_char
.L129:
	.loc 1 381 0
	movl	-20(%ebp), %eax
	.loc 1 382 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	read_string, .-read_string
	.type	def_hash, @function
def_hash:
.LFB23:
	.loc 1 425 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	subl	$16, %esp
.LCFI39:
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 429 0
	movl	$0, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L134
.L135:
	.loc 1 430 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	andl	$7, %ecx
	movl	%edx, %eax
	sall	%cl, %eax
	addl	%eax, -12(%ebp)
	.loc 1 429 0
	addl	$1, -8(%ebp)
.L134:
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	setne	%al
	addl	$1, -4(%ebp)
	testb	%al, %al
	jne	.L135
	.loc 1 431 0
	movl	-12(%ebp), %eax
	.loc 1 432 0
	leave
	ret
.LFE23:
	.size	def_hash, .-def_hash
	.type	def_name_eq_p, @function
def_name_eq_p:
.LFB24:
	.loc 1 438 0
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
	.loc 1 439 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 441 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	def_name_eq_p, .-def_name_eq_p
.globl traverse_md_constants
	.type	traverse_md_constants, @function
traverse_md_constants:
.LFB25:
	.loc 1 510 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	.loc 1 515 0
	popl	%ebp
	ret
.LFE25:
	.size	traverse_md_constants, .-traverse_md_constants
	.section	.rodata
	.align 4
.LC8:
	.string	"invalid decimal constant \"%s\"\n"
	.text
	.type	validate_const_int, @function
validate_const_int:
.LFB26:
	.loc 1 521 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$36, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 523 0
	movl	$1, -8(%ebp)
	.loc 1 525 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 526 0
	jmp	.L143
.L144:
	.loc 1 527 0
	addl	$1, -12(%ebp)
.L143:
	.loc 1 526 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L145
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L144
.L145:
	.loc 1 528 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	je	.L147
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L149
.L147:
	.loc 1 529 0
	addl	$1, -12(%ebp)
.L149:
	.loc 1 530 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L152
	.loc 1 531 0
	movl	$0, -8(%ebp)
	.loc 1 532 0
	jmp	.L152
.L153:
	.loc 1 533 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L154
	.loc 1 534 0
	movl	$0, -8(%ebp)
.L154:
	.loc 1 532 0
	addl	$1, -12(%ebp)
.L152:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L153
	.loc 1 535 0
	cmpl	$0, -8(%ebp)
	jne	.L159
	.loc 1 536 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_with_file_and_line
.L159:
	.loc 1 537 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	validate_const_int, .-validate_const_int
	.section	.rodata
	.type	__FUNCTION__.7348, @object
	.size	__FUNCTION__.7348, 9
__FUNCTION__.7348:
	.string	"read_rtx"
	.local	initialized.7289
	.comm	initialized.7289,4,4
	.local	rtl_obstack.7288
	.comm	rtl_obstack.7288,44,32
.LC9:
	.string	"unknown rtx code `%s'"
.LC10:
	.string	"unknown mode `%s'"
.LC11:
	.string	"rtx"
.LC12:
	.string	":%d"
	.align 4
.LC13:
	.string	"switch format wrong in rtl.read_rtx(). format was: %c.\n"
.LC14:
	.string	"\tfile position: %ld\n"
	.align 4
.LC15:
	.string	"../../../kgccfe/gnu/read-rtl.c"
	.text
.globl read_rtx
	.type	read_rtx, @function
read_rtx:
.LFB27:
	.loc 1 547 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%edi
.LCFI52:
	pushl	%esi
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$508, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -468(%ebp)
	.loc 1 547 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 571 0
	movl	initialized.7289@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L161
	.loc 1 572 0
	movl	xmalloc@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	free@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	rtl_obstack.7288@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_obstack_begin@PLT
	.loc 1 573 0
	movl	$1, initialized.7289@GOTOFF(%ebx)
.L161:
	.loc 1 577 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -376(%ebp)
	.loc 1 578 0
	cmpl	$40, -376(%ebp)
	je	.L163
	.loc 1 579 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$40, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_expected_char
.L163:
	.loc 1 581 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	read_name
	.loc 1 583 0
	movl	$0, -388(%ebp)
	.loc 1 592 0
	movl	$0, -396(%ebp)
	jmp	.L165
.L166:
	.loc 1 593 0
	movl	-396(%ebp), %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L167
	.loc 1 595 0
	movl	-396(%ebp), %eax
	movl	%eax, -388(%ebp)
	.loc 1 596 0
	jmp	.L169
.L167:
	.loc 1 592 0
	addl	$1, -396(%ebp)
.L165:
	cmpl	$162, -396(%ebp)
	jle	.L166
.L169:
	.loc 1 599 0
	cmpl	$0, -388(%ebp)
	jne	.L170
	.loc 1 600 0
	leal	-296(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_with_file_and_line
.L170:
	.loc 1 603 0
	cmpl	$1, -388(%ebp)
	jne	.L172
.L173:
	.loc 1 606 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -376(%ebp)
	cmpl	$0, -376(%ebp)
	je	.L174
	cmpl	$41, -376(%ebp)
	jne	.L173
.L174:
	.loc 1 609 0
	movl	$0, -480(%ebp)
	jmp	.L176
.L172:
	.loc 1 613 0
	movl	-388(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_alloc@PLT
	movl	%eax, -380(%ebp)
	.loc 1 614 0
	movl	-380(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -384(%ebp)
	.loc 1 619 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -396(%ebp)
	.loc 1 620 0
	cmpl	$58, -396(%ebp)
	jne	.L177
	.loc 1 622 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	read_name
	.loc 1 623 0
	movl	$0, -392(%ebp)
	jmp	.L179
.L180:
	.loc 1 624 0
	movl	-392(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	leal	-296(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L181
	.loc 1 623 0
	addl	$1, -392(%ebp)
.L179:
	cmpl	$53, -392(%ebp)
	jle	.L180
.L181:
	.loc 1 627 0
	cmpl	$54, -392(%ebp)
	jne	.L183
	.loc 1 628 0
	leal	-296(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_with_file_and_line
.L183:
	.loc 1 630 0
	movl	-392(%ebp), %eax
	movl	%eax, %edx
	movl	-380(%ebp), %eax
	movb	%dl, 2(%eax)
	jmp	.L185
.L177:
	.loc 1 633 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-396(%ebp), %eax
	movl	%eax, (%esp)
	call	ungetc@PLT
.L185:
	.loc 1 635 0
	movl	$0, -396(%ebp)
	jmp	.L186
.L187:
	.loc 1 636 0
	movl	-384(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -384(%ebp)
	subl	$48, %eax
	movl	%eax, -484(%ebp)
	cmpl	$71, -484(%ebp)
	ja	.L188
	movl	-484(%ebp), %eax
	sall	$2, %eax
	movl	.L197@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L197:
	.long	.L198@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L190@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L191@GOTOFF
	.long	.L192@GOTOFF
	.long	.L188@GOTOFF
	.long	.L193@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L194@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L195@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L195@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L188@GOTOFF
	.long	.L192@GOTOFF
	.long	.L188@GOTOFF
	.long	.L194@GOTOFF
	.long	.L188@GOTOFF
	.long	.L196@GOTOFF
	.text
.L194:
	.loc 1 645 0
	movl	-396(%ebp), %esi
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_rtx@PLT
	movl	%eax, %edx
	movl	-380(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	.loc 1 646 0
	jmp	.L198
.L193:
	.loc 1 651 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -376(%ebp)
	.loc 1 652 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, (%esp)
	call	ungetc@PLT
	.loc 1 653 0
	cmpl	$41, -376(%ebp)
	jne	.L190
	.loc 1 655 0
	movl	-396(%ebp), %edx
	movl	-380(%ebp), %eax
	movl	$0, 4(%eax,%edx,8)
	.loc 1 656 0
	jmp	.L198
.L190:
.LBB15:
	.loc 1 664 0
	movl	$0, -368(%ebp)
	.loc 1 665 0
	movl	$0, -364(%ebp)
	.loc 1 667 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -376(%ebp)
	.loc 1 668 0
	cmpl	$91, -376(%ebp)
	je	.L200
	.loc 1 669 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$91, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_expected_char
.L200:
	.loc 1 672 0
	movl	xmalloc@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	free@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	-452(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_begin@PLT
	.loc 1 673 0
	jmp	.L202
.L203:
	.loc 1 675 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, (%esp)
	call	ungetc@PLT
	.loc 1 676 0
	addl	$1, -368(%ebp)
.LBB16:
	.loc 1 677 0
	leal	-452(%ebp), %eax
	movl	%eax, -360(%ebp)
	movl	-360(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-360(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L204
	movl	$4, 4(%esp)
	movl	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L204:
	movl	-360(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %esi
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_rtx@PLT
	movl	%eax, (%esi)
	movl	-360(%ebp), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	-360(%ebp), %eax
	movl	%edx, 12(%eax)
.L202:
.LBE16:
	.loc 1 673 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -376(%ebp)
	cmpl	$0, -376(%ebp)
	je	.L206
	cmpl	$93, -376(%ebp)
	jne	.L203
.L206:
	.loc 1 679 0
	cmpl	$0, -368(%ebp)
	jle	.L208
	.loc 1 681 0
	movl	-368(%ebp), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, -364(%ebp)
	.loc 1 682 0
	movl	-368(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -476(%ebp)
.LBB17:
	leal	-452(%ebp), %eax
	movl	%eax, -356(%ebp)
	movl	-356(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -352(%ebp)
	movl	-356(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-352(%ebp), %eax
	jne	.L210
	movl	-356(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L210:
	movl	-356(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-356(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-356(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-356(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L212
	movl	-356(%ebp), %eax
	movl	16(%eax), %edx
	movl	-356(%ebp), %eax
	movl	%edx, 12(%eax)
.L212:
	movl	-356(%ebp), %eax
	movl	12(%eax), %edx
	movl	-356(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-352(%ebp), %edx
.LBE17:
	movl	-364(%ebp), %eax
	addl	$4, %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	movl	-476(%ebp), %ecx
	rep
	movsb
.L208:
	.loc 1 685 0
	movl	-396(%ebp), %ecx
	movl	-380(%ebp), %edx
	movl	-364(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,8)
.LBB18:
	.loc 1 686 0
	leal	-452(%ebp), %eax
	movl	%eax, -348(%ebp)
	movl	$0, -344(%ebp)
	movl	-348(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-344(%ebp), %eax
	jae	.L214
	movl	-348(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-344(%ebp), %eax
	jbe	.L214
	movl	-344(%ebp), %edx
	movl	-348(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-348(%ebp), %eax
	movl	8(%eax), %edx
	movl	-348(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L198
.L214:
	movl	-344(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
	.loc 1 689 0
	jmp	.L198
.L191:
.LBE18:
.LBE15:
	.loc 1 694 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -376(%ebp)
	.loc 1 695 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, (%esp)
	call	ungetc@PLT
	.loc 1 696 0
	cmpl	$41, -376(%ebp)
	jne	.L192
	.loc 1 698 0
	movl	-396(%ebp), %edx
	movl	-380(%ebp), %eax
	movl	$0, 4(%eax,%edx,8)
	.loc 1 699 0
	jmp	.L198
.L192:
.LBB19:
	.loc 1 711 0
	movl	-384(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$84, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -336(%ebp)
	.loc 1 713 0
	movl	-336(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	rtl_obstack.7288@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	read_string
	movl	%eax, -340(%ebp)
	.loc 1 719 0
	movl	-340(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L219
	cmpl	$0, -396(%ebp)
	jne	.L219
	movl	-380(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$13, %ax
	je	.L222
	movl	-380(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$16, %ax
	jne	.L219
.L222:
.LBB20:
	.loc 1 725 0
	movl	read_rtx_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L224
	movl	read_rtx_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -472(%ebp)
	jmp	.L226
.L224:
	leal	.LC11@GOTOFF(%ebx), %edi
	movl	%edi, -472(%ebp)
.L226:
	movl	-472(%ebp), %eax
	movl	%eax, -332(%ebp)
	.loc 1 727 0
	movl	-332(%ebp), %eax
	movl	%eax, -328(%ebp)
	jmp	.L227
.L228:
	.loc 1 728 0
	movl	-328(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L229
	movl	-328(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	je	.L229
	movl	-328(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	.L232
.L229:
	.loc 1 729 0
	movl	-328(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -332(%ebp)
.L232:
	.loc 1 727 0
	addl	$1, -328(%ebp)
.L227:
	movl	-328(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L228
.LBB21:
	.loc 1 730 0
	leal	rtl_obstack.7288@GOTOFF(%ebx), %eax
	movl	%eax, -324(%ebp)
	movl	-324(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-324(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L234
	movl	$1, 4(%esp)
	movl	-324(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L234:
	movl	-324(%ebp), %eax
	movl	12(%eax), %eax
	movb	$42, (%eax)
	leal	1(%eax), %edx
	movl	-324(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE21:
.LBB22:
	.loc 1 731 0
	leal	rtl_obstack.7288@GOTOFF(%ebx), %eax
	movl	%eax, -320(%ebp)
	movl	-332(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -488(%ebp)
	movl	$0, %eax
	cld
	movl	-488(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -316(%ebp)
	movl	-320(%ebp), %eax
	movl	12(%eax), %edx
	movl	-316(%ebp), %eax
	addl	%eax, %edx
	movl	-320(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L236
	movl	-316(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-320(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L236:
	movl	-316(%ebp), %ecx
	movl	-320(%ebp), %eax
	movl	12(%eax), %eax
	movl	-332(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-320(%ebp), %eax
	movl	12(%eax), %edx
	movl	-316(%ebp), %eax
	addl	%eax, %edx
	movl	-320(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE22:
	.loc 1 732 0
	movl	read_rtx_lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.LBB23:
	.loc 1 733 0
	leal	rtl_obstack.7288@GOTOFF(%ebx), %eax
	movl	%eax, -312(%ebp)
	leal	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -492(%ebp)
	movl	$0, %eax
	cld
	movl	-492(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -308(%ebp)
	movl	-312(%ebp), %eax
	movl	12(%eax), %edx
	movl	-308(%ebp), %eax
	addl	%eax, %edx
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L238
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L238:
	movl	-308(%ebp), %ecx
	movl	-312(%ebp), %eax
	movl	12(%eax), %eax
	leal	-40(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-312(%ebp), %eax
	movl	12(%eax), %edx
	movl	-308(%ebp), %eax
	addl	%eax, %edx
	movl	-312(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE23:
.LBB24:
	.loc 1 734 0
	leal	rtl_obstack.7288@GOTOFF(%ebx), %eax
	movl	%eax, -304(%ebp)
	movl	-304(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -300(%ebp)
	movl	-304(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-300(%ebp), %eax
	jne	.L240
	movl	-304(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L240:
	movl	-304(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-304(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-304(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-304(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-304(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-304(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-304(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-304(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L242
	movl	-304(%ebp), %eax
	movl	16(%eax), %edx
	movl	-304(%ebp), %eax
	movl	%edx, 12(%eax)
.L242:
	movl	-304(%ebp), %eax
	movl	12(%eax), %edx
	movl	-304(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-300(%ebp), %eax
.LBE24:
	movl	%eax, -340(%ebp)
.L219:
.LBE20:
	.loc 1 737 0
	cmpl	$0, -336(%ebp)
	je	.L244
	.loc 1 738 0
	movl	-396(%ebp), %ecx
	movl	-380(%ebp), %edx
	movl	-340(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,8)
	jmp	.L198
.L244:
	.loc 1 740 0
	movl	-396(%ebp), %ecx
	movl	-380(%ebp), %edx
	movl	-340(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,8)
	.loc 1 742 0
	jmp	.L198
.L196:
.LBE19:
	.loc 1 745 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	read_name
	.loc 1 746 0
	leal	-296(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_const_int
	.loc 1 756 0
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	atoll@PLT
	movl	%eax, -408(%ebp)
	movl	%edx, -404(%ebp)
	.loc 1 762 0
	movl	-396(%ebp), %esi
	movl	-380(%ebp), %ecx
	movl	-408(%ebp), %eax
	movl	-404(%ebp), %edx
	movl	%eax, 4(%ecx,%esi,8)
	movl	%edx, 8(%ecx,%esi,8)
	.loc 1 763 0
	jmp	.L198
.L195:
	.loc 1 767 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	read_name
	.loc 1 768 0
	leal	-296(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_const_int
	.loc 1 769 0
	leal	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -372(%ebp)
	.loc 1 770 0
	movl	-396(%ebp), %ecx
	movl	-380(%ebp), %edx
	movl	-372(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,8)
	.loc 1 771 0
	jmp	.L198
.L188:
	.loc 1 774 0
	movl	-384(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 777 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	ftell@PLT
	movl	%eax, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 778 0
	leal	__FUNCTION__.7348@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$778, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L198:
	.loc 1 635 0
	addl	$1, -396(%ebp)
.L186:
	movl	-380(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-396(%ebp), %eax
	jg	.L187
	.loc 1 781 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	read_skip_spaces@PLT
	movl	%eax, -376(%ebp)
	.loc 1 782 0
	cmpl	$41, -376(%ebp)
	je	.L248
	.loc 1 783 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$41, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	fatal_expected_char
.L248:
	.loc 1 785 0
	movl	-380(%ebp), %edi
	movl	%edi, -480(%ebp)
.L176:
	movl	-480(%ebp), %eax
	.loc 1 786 0
	movl	-20(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L251
	call	__stack_chk_fail_local
.L251:
	addl	$508, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	read_rtx, .-read_rtx
	.local	md_constants
	.comm	md_constants,4,4
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
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI8-.LCFI6
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
	.long	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI10
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
	.long	.LCFI22-.LCFI18
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
	.long	.LCFI23-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI24
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
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI46-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI47
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
	.long	.LCFI50-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI51
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE24:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/libio.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 6 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 7 "../../../include/gnu/obstack.h"
	.file 8 "../../../include/gnu/hashtab.h"
	.file 9 "../../../kgccfe/gnu/MIPS/hconfig.h"
	.file 10 "../../../kgccfe/gnu/rtl.h"
	.file 11 "../../../kgccfe/gnu/machmode.h"
	.file 12 "../../../include/gnu/safe-ctype.h"
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
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
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
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
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
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI46-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI47-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI50-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI51-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x213a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/read-rtl.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x9
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19e
	.string	"rtx_def"
	.byte	0xc
	.byte	0x9
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0xa
	.byte	0x8a
	.long	0x8d9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0xa
	.byte	0x8d
	.long	0x690
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0xa
	.byte	0x94
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0xa
	.byte	0x97
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0xa
	.byte	0x9f
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0xa
	.byte	0xa8
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0xa
	.byte	0xba
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0xa
	.byte	0xc1
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0xa
	.byte	0xc6
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0xa
	.byte	0xcf
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0xa
	.byte	0xd4
	.long	0x1335
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x9
	.byte	0xe
	.long	0x1ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1b1
	.uleb128 0x4
	.long	0x1e6
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x9
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0xa
	.byte	0xf8
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0xa
	.byte	0xf9
	.long	0x1345
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x9
	.byte	0x10
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x1f8
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20a
	.uleb128 0x8
	.long	0x20f
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x6
	.byte	0x2b
	.long	0x242
	.uleb128 0x3
	.byte	0x4
	.long	0x20f
	.uleb128 0x2
	.string	"va_list"
	.byte	0x6
	.byte	0x69
	.long	0x22c
	.uleb128 0x2
	.string	"size_t"
	.byte	0x5
	.byte	0xd6
	.long	0x21e
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
	.byte	0x4
	.byte	0x3b
	.long	0x2bd
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x4
	.byte	0x90
	.long	0x307
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x4
	.byte	0x91
	.long	0x2e8
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20f
	.uleb128 0x2
	.string	"FILE"
	.byte	0x2
	.byte	0x2e
	.long	0x338
	.uleb128 0xc
	.long	0x5b3
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x3
	.value	0x10c
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x3
	.value	0x111
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x3
	.value	0x112
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x3
	.value	0x113
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x3
	.value	0x114
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x3
	.value	0x115
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x3
	.value	0x116
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x3
	.value	0x117
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x3
	.value	0x118
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x3
	.value	0x11a
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x3
	.value	0x11b
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x3
	.value	0x11c
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x3
	.value	0x11e
	.long	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x3
	.value	0x120
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x3
	.value	0x122
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x3
	.value	0x126
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x3
	.value	0x128
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x3
	.value	0x12c
	.long	0x276
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x3
	.value	0x12d
	.long	0x2a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x3
	.value	0x12e
	.long	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x3
	.value	0x132
	.long	0x648
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x3
	.value	0x13b
	.long	0x313
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x3
	.value	0x144
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x3
	.value	0x145
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x3
	.value	0x146
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x3
	.value	0x147
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x3
	.value	0x148
	.long	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x3
	.value	0x14a
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x3
	.value	0x14c
	.long	0x64e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.long	0x5c3
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x324
	.uleb128 0x3
	.byte	0x4
	.long	0x5cf
	.uleb128 0x10
	.long	0x5db
	.byte	0x1
	.uleb128 0x11
	.long	0x324
	.byte	0x0
	.uleb128 0x12
	.string	"_IO_lock_t"
	.byte	0x3
	.byte	0xb0
	.uleb128 0x4
	.long	0x62c
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x3
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x3
	.byte	0xb7
	.long	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x3
	.byte	0xb8
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x3
	.byte	0xbc
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e9
	.uleb128 0x3
	.byte	0x4
	.long	0x338
	.uleb128 0xe
	.long	0x648
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5db
	.uleb128 0xe
	.long	0x65e
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x27
	.byte	0x0
	.uleb128 0xe
	.long	0x66e
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x674
	.uleb128 0x13
	.long	0x689
	.byte	0x1
	.long	0x217
	.uleb128 0x11
	.long	0x689
	.uleb128 0x11
	.long	0x689
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68f
	.uleb128 0x14
	.uleb128 0x15
	.long	0x8d9
	.string	"machine_mode"
	.byte	0x4
	.byte	0xb
	.byte	0x1d
	.uleb128 0x16
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x16
	.string	"BImode"
	.sleb128 1
	.uleb128 0x16
	.string	"QImode"
	.sleb128 2
	.uleb128 0x16
	.string	"HImode"
	.sleb128 3
	.uleb128 0x16
	.string	"SImode"
	.sleb128 4
	.uleb128 0x16
	.string	"DImode"
	.sleb128 5
	.uleb128 0x16
	.string	"TImode"
	.sleb128 6
	.uleb128 0x16
	.string	"OImode"
	.sleb128 7
	.uleb128 0x16
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x16
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x16
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x16
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x16
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x16
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x16
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x16
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x16
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x16
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x16
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x16
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x16
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x16
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x16
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x16
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x16
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x16
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x16
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x16
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x16
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x16
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x16
	.string	"COImode"
	.sleb128 30
	.uleb128 0x16
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x16
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x16
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x16
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x16
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x16
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x16
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x16
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x16
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x16
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x16
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x16
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x16
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x16
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x16
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x16
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x16
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x16
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x16
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x16
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x16
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x16
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x16
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x16
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x15
	.long	0x10a8
	.string	"rtx_code"
	.byte	0x4
	.byte	0xa
	.byte	0x2f
	.uleb128 0x16
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0x16
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x16
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x16
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x16
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x16
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x16
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x16
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x16
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x16
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x16
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x16
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x16
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x16
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x16
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x16
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x16
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x16
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x16
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x16
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x16
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x16
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x16
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x16
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x16
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x16
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x16
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x16
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x16
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x16
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x16
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x16
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x16
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x16
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x16
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x16
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x16
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x16
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x16
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x16
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x16
	.string	"INSN"
	.sleb128 42
	.uleb128 0x16
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x16
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x16
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x16
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x16
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x16
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x16
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x16
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x16
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x16
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x16
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x16
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x16
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x16
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x16
	.string	"SET"
	.sleb128 57
	.uleb128 0x16
	.string	"USE"
	.sleb128 58
	.uleb128 0x16
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x16
	.string	"CALL"
	.sleb128 60
	.uleb128 0x16
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x16
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x16
	.string	"RESX"
	.sleb128 63
	.uleb128 0x16
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x16
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x16
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x16
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x16
	.string	"CONST"
	.sleb128 68
	.uleb128 0x16
	.string	"PC"
	.sleb128 69
	.uleb128 0x16
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x16
	.string	"REG"
	.sleb128 71
	.uleb128 0x16
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x16
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x16
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x16
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x16
	.string	"MEM"
	.sleb128 76
	.uleb128 0x16
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x16
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x16
	.string	"CC0"
	.sleb128 79
	.uleb128 0x16
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x16
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x16
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x16
	.string	"COND"
	.sleb128 83
	.uleb128 0x16
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x16
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x16
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x16
	.string	"NEG"
	.sleb128 87
	.uleb128 0x16
	.string	"MULT"
	.sleb128 88
	.uleb128 0x16
	.string	"DIV"
	.sleb128 89
	.uleb128 0x16
	.string	"MOD"
	.sleb128 90
	.uleb128 0x16
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x16
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x16
	.string	"AND"
	.sleb128 93
	.uleb128 0x16
	.string	"IOR"
	.sleb128 94
	.uleb128 0x16
	.string	"XOR"
	.sleb128 95
	.uleb128 0x16
	.string	"NOT"
	.sleb128 96
	.uleb128 0x16
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x16
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x16
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x16
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x16
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x16
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x16
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x16
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x16
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x16
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x16
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x16
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x16
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x16
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x16
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x16
	.string	"NE"
	.sleb128 112
	.uleb128 0x16
	.string	"EQ"
	.sleb128 113
	.uleb128 0x16
	.string	"GE"
	.sleb128 114
	.uleb128 0x16
	.string	"GT"
	.sleb128 115
	.uleb128 0x16
	.string	"LE"
	.sleb128 116
	.uleb128 0x16
	.string	"LT"
	.sleb128 117
	.uleb128 0x16
	.string	"GEU"
	.sleb128 118
	.uleb128 0x16
	.string	"GTU"
	.sleb128 119
	.uleb128 0x16
	.string	"LEU"
	.sleb128 120
	.uleb128 0x16
	.string	"LTU"
	.sleb128 121
	.uleb128 0x16
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x16
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x16
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x16
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x16
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x16
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x16
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x16
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x16
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x16
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x16
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x16
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x16
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x16
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x16
	.string	"FIX"
	.sleb128 136
	.uleb128 0x16
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x16
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x16
	.string	"ABS"
	.sleb128 139
	.uleb128 0x16
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x16
	.string	"FFS"
	.sleb128 141
	.uleb128 0x16
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x16
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x16
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x16
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x16
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x16
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x16
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x16
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x16
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x16
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x16
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x16
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x16
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x16
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x16
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x16
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x16
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x16
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x16
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x16
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x16
	.string	"PHI"
	.sleb128 162
	.uleb128 0x16
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x17
	.long	0x1182
	.byte	0x4
	.byte	0xa
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0xa
	.byte	0x4f
	.long	0x21e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0xa
	.byte	0x51
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0xa
	.byte	0x52
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0xa
	.byte	0x54
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0xa
	.byte	0x56
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0xa
	.byte	0x58
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0xa
	.byte	0x5b
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0xa
	.byte	0x5d
	.long	0x21e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0xa
	.byte	0x5e
	.long	0x10a8
	.uleb128 0xc
	.long	0x11f9
	.long	.LASF2
	.byte	0x18
	.byte	0xa
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0xa
	.byte	0x69
	.long	0x2bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0xa
	.byte	0x6a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0xa
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0xa
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0xa
	.byte	0x6d
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF2
	.byte	0xa
	.byte	0x6e
	.long	0x119d
	.uleb128 0x19
	.long	0x12d6
	.string	"rtunion_def"
	.byte	0x8
	.byte	0xa
	.byte	0x73
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0xa
	.byte	0x74
	.long	0x2bd
	.uleb128 0x1a
	.string	"rtint"
	.byte	0xa
	.byte	0x75
	.long	0x217
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0xa
	.byte	0x76
	.long	0x21e
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0xa
	.byte	0x77
	.long	0x204
	.uleb128 0x1a
	.string	"rtx"
	.byte	0xa
	.byte	0x78
	.long	0x9d
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0xa
	.byte	0x79
	.long	0x19e
	.uleb128 0x1a
	.string	"rttype"
	.byte	0xa
	.byte	0x7a
	.long	0x690
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0xa
	.byte	0x7b
	.long	0x1182
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0xa
	.byte	0x7c
	.long	0x12ea
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0xa
	.byte	0x7d
	.long	0x1302
	.uleb128 0x1a
	.string	"rttree"
	.byte	0xa
	.byte	0x7e
	.long	0x1e6
	.uleb128 0x1a
	.string	"bb"
	.byte	0xa
	.byte	0x7f
	.long	0x131a
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0xa
	.byte	0x80
	.long	0x1320
	.byte	0x0
	.uleb128 0x1b
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x12d6
	.uleb128 0x1b
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x12f0
	.uleb128 0x1b
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1308
	.uleb128 0x3
	.byte	0x4
	.long	0x11f9
	.uleb128 0x2
	.string	"rtunion"
	.byte	0xa
	.byte	0x82
	.long	0x1204
	.uleb128 0xe
	.long	0x1345
	.long	0x1326
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1355
	.long	0x9d
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x139f
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x7
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x7
	.byte	0xa3
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x7
	.byte	0xa4
	.long	0x139f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x7
	.byte	0xa5
	.long	0x5b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1355
	.uleb128 0x1c
	.long	0x14d2
	.string	"obstack"
	.byte	0x2c
	.byte	0x2
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x7
	.byte	0xaa
	.long	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x7
	.byte	0xab
	.long	0x139f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x7
	.byte	0xac
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x7
	.byte	0xad
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x7
	.byte	0xae
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x7
	.byte	0xaf
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x7
	.byte	0xb0
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x7
	.byte	0xb5
	.long	0x14e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x7
	.byte	0xb6
	.long	0x14fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x7
	.byte	0xb7
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x7
	.byte	0xbd
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x7
	.byte	0xbe
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x7
	.byte	0xc2
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x13
	.long	0x14e7
	.byte	0x1
	.long	0x139f
	.uleb128 0x11
	.long	0x324
	.uleb128 0x11
	.long	0x307
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14d2
	.uleb128 0x10
	.long	0x14fe
	.byte	0x1
	.uleb128 0x11
	.long	0x324
	.uleb128 0x11
	.long	0x139f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14ed
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0x8
	.byte	0x32
	.long	0x21e
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0x8
	.byte	0x37
	.long	0x1526
	.uleb128 0x3
	.byte	0x4
	.long	0x152c
	.uleb128 0x13
	.long	0x153c
	.byte	0x1
	.long	0x1504
	.uleb128 0x11
	.long	0x689
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0x8
	.byte	0x3e
	.long	0x66e
	.uleb128 0x2
	.string	"htab_del"
	.byte	0x8
	.byte	0x42
	.long	0x5c9
	.uleb128 0x2
	.string	"htab_trav"
	.byte	0x8
	.byte	0x48
	.long	0x156c
	.uleb128 0x3
	.byte	0x4
	.long	0x1572
	.uleb128 0x13
	.long	0x1587
	.byte	0x1
	.long	0x217
	.uleb128 0x11
	.long	0x5c3
	.uleb128 0x11
	.long	0x324
	.byte	0x0
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0x8
	.byte	0x4e
	.long	0x1599
	.uleb128 0x3
	.byte	0x4
	.long	0x159f
	.uleb128 0x13
	.long	0x15b4
	.byte	0x1
	.long	0x324
	.uleb128 0x11
	.long	0x257
	.uleb128 0x11
	.long	0x257
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0x8
	.byte	0x51
	.long	0x5c9
	.uleb128 0x4
	.long	0x1698
	.string	"htab"
	.byte	0x2c
	.byte	0x8
	.byte	0x59
	.uleb128 0x6
	.string	"hash_f"
	.byte	0x8
	.byte	0x5b
	.long	0x1515
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"eq_f"
	.byte	0x8
	.byte	0x5e
	.long	0x153c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"del_f"
	.byte	0x8
	.byte	0x61
	.long	0x154b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"entries"
	.byte	0x8
	.byte	0x64
	.long	0x5c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x8
	.byte	0x67
	.long	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"n_elements"
	.byte	0x8
	.byte	0x6a
	.long	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"n_deleted"
	.byte	0x8
	.byte	0x6d
	.long	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"searches"
	.byte	0x8
	.byte	0x71
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"collisions"
	.byte	0x8
	.byte	0x75
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"alloc_f"
	.byte	0x8
	.byte	0x78
	.long	0x1587
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"free_f"
	.byte	0x8
	.byte	0x79
	.long	0x15b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0x8
	.byte	0x7c
	.long	0x16a6
	.uleb128 0x3
	.byte	0x4
	.long	0x15c5
	.uleb128 0x1d
	.long	0x1734
	.string	"fatal_with_file_and_line"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.byte	0x3a
	.long	0x1734
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.byte	0x3a
	.long	0x204
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.uleb128 0x21
	.string	"context"
	.byte	0x1
	.byte	0x3c
	.long	0x173a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0x257
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x3e
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"ap"
	.byte	0x1
	.byte	0x45
	.long	0x248
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x32c
	.uleb128 0xe
	.long	0x174a
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0x17a9
	.string	"fatal_expected_char"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.byte	0x6a
	.long	0x1734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"expected_c"
	.byte	0x1
	.byte	0x6b
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"actual_c"
	.byte	0x1
	.byte	0x6b
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x22
	.long	0x1808
	.byte	0x1
	.string	"read_skip_spaces"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	0x217
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.byte	0x78
	.long	0x1734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x7a
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x21
	.string	"prevc"
	.byte	0x1
	.byte	0x91
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x185b
	.string	"read_name"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.string	"str"
	.byte	0x1
	.byte	0xad
	.long	0x326
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.byte	0xae
	.long	0x1734
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.byte	0xb0
	.long	0x326
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0xb1
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0x1924
	.string	"read_escape"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1f
	.string	"ob"
	.byte	0x1
	.byte	0xe4
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.byte	0xe5
	.long	0x1734
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0xe7
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	0x18bf
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x102
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x24
	.long	0x18ed
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x108
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"__len"
	.byte	0x1
	.value	0x108
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x24
	.long	0x190a
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x10f
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x23
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x113
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13a5
	.uleb128 0x26
	.long	0x19e4
	.string	"read_quoted_string"
	.byte	0x1
	.value	0x11d
	.byte	0x1
	.long	0x326
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x27
	.string	"ob"
	.byte	0x1
	.value	0x11b
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF3
	.byte	0x1
	.value	0x11c
	.long	0x1734
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"c"
	.byte	0x1
	.value	0x11e
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	0x199d
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x12d
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x24
	.long	0x19ba
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x130
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x23
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x25
	.string	"__o1"
	.byte	0x1
	.value	0x131
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.value	0x131
	.long	0x324
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1ad2
	.string	"read_braced_string"
	.byte	0x1
	.value	0x13b
	.byte	0x1
	.long	0x326
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x27
	.string	"ob"
	.byte	0x1
	.value	0x139
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF3
	.byte	0x1
	.value	0x13a
	.long	0x1734
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"c"
	.byte	0x1
	.value	0x13c
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"brace_depth"
	.byte	0x1
	.value	0x13d
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	0x1a6e
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x13f
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x24
	.long	0x1a8b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x14f
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x24
	.long	0x1aa8
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x152
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x23
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x25
	.string	"__o1"
	.byte	0x1
	.value	0x153
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.value	0x153
	.long	0x324
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1b6e
	.string	"read_string"
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.long	0x326
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x27
	.string	"ob"
	.byte	0x1
	.value	0x15c
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF3
	.byte	0x1
	.value	0x15d
	.long	0x1734
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF5
	.byte	0x1
	.value	0x15e
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF6
	.byte	0x1
	.value	0x160
	.long	0x326
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"saw_paren"
	.byte	0x1
	.value	0x161
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"c"
	.byte	0x1
	.value	0x162
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x170
	.long	0x1924
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1bd1
	.string	"def_hash"
	.byte	0x1
	.value	0x1a9
	.byte	0x1
	.long	0x1504
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x27
	.string	"def"
	.byte	0x1
	.value	0x1a8
	.long	0x689
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"result"
	.byte	0x1
	.value	0x1aa
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x1aa
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.string	"string"
	.byte	0x1
	.value	0x1ab
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x26
	.long	0x1c19
	.string	"def_name_eq_p"
	.byte	0x1
	.value	0x1b6
	.byte	0x1
	.long	0x217
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x27
	.string	"def1"
	.byte	0x1
	.value	0x1b5
	.long	0x689
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"def2"
	.byte	0x1
	.value	0x1b5
	.long	0x689
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2a
	.long	0x1c6a
	.byte	0x1
	.string	"traverse_md_constants"
	.byte	0x1
	.value	0x1fe
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x27
	.string	"callback"
	.byte	0x1
	.value	0x1fc
	.long	0x155b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"info"
	.byte	0x1
	.value	0x1fd
	.long	0x324
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2b
	.long	0x1cd3
	.string	"validate_const_int"
	.byte	0x1
	.value	0x209
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x28
	.long	.LASF3
	.byte	0x1
	.value	0x207
	.long	0x1734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"string"
	.byte	0x1
	.value	0x208
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"cp"
	.byte	0x1
	.value	0x20a
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"valid"
	.byte	0x1
	.value	0x20b
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x1ff4
	.byte	0x1
	.string	"read_rtx"
	.byte	0x1
	.value	0x223
	.byte	0x1
	.long	0x9d
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x28
	.long	.LASF3
	.byte	0x1
	.value	0x222
	.long	0x1734
	.byte	0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x224
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x224
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x25
	.string	"tmp_code"
	.byte	0x1
	.value	0x225
	.long	0x8d9
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x25
	.string	"format_ptr"
	.byte	0x1
	.value	0x226
	.long	0x204
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x25
	.string	"tmp_char"
	.byte	0x1
	.value	0x22a
	.long	0x1ff4
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x25
	.string	"return_rtx"
	.byte	0x1
	.value	0x22b
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x25
	.string	"c"
	.byte	0x1
	.value	0x22c
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x25
	.string	"tmp_int"
	.byte	0x1
	.value	0x22d
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x25
	.string	"tmp_wide"
	.byte	0x1
	.value	0x22e
	.long	0x2bd
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2d
	.string	"again"
	.byte	0x1
	.value	0x240
	.long	.L161
	.uleb128 0x24
	.long	0x1e8f
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x25
	.string	"vector_stack"
	.byte	0x1
	.value	0x297
	.long	0x13a5
	.byte	0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x25
	.string	"list_counter"
	.byte	0x1
	.value	0x298
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x25
	.string	"return_vec"
	.byte	0x1
	.value	0x299
	.long	0x19e
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x24
	.long	0x1e33
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x2a5
	.long	0x1924
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.byte	0x0
	.uleb128 0x24
	.long	0x1e62
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x25
	.string	"__o1"
	.byte	0x1
	.value	0x2aa
	.long	0x1924
	.byte	0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.value	0x2aa
	.long	0x324
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.byte	0x0
	.uleb128 0x23
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x2ae
	.long	0x1924
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x25
	.string	"__obj"
	.byte	0x1
	.value	0x2ae
	.long	0x324
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1fa6
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x29
	.long	.LASF6
	.byte	0x1
	.value	0x2c1
	.long	0x326
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.value	0x2c7
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x23
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x25
	.string	"line_name"
	.byte	0x1
	.value	0x2d4
	.long	0x65e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"fn"
	.byte	0x1
	.value	0x2d5
	.long	0x204
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x25
	.string	"slash"
	.byte	0x1
	.value	0x2d6
	.long	0x204
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x24
	.long	0x1f19
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x2da
	.long	0x1924
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.byte	0x0
	.uleb128 0x24
	.long	0x1f49
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x2db
	.long	0x1924
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x25
	.string	"__len"
	.byte	0x1
	.value	0x2db
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.byte	0x0
	.uleb128 0x24
	.long	0x1f79
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x25
	.string	"__o"
	.byte	0x1
	.value	0x2dd
	.long	0x1924
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x25
	.string	"__len"
	.byte	0x1
	.value	0x2dd
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.byte	0x0
	.uleb128 0x23
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x25
	.string	"__o1"
	.byte	0x1
	.value	0x2de
	.long	0x1924
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.value	0x2de
	.long	0x324
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.string	"rtl_obstack"
	.byte	0x1
	.value	0x231
	.long	0x13a5
	.byte	0x5
	.byte	0x3
	.long	rtl_obstack.7288
	.uleb128 0x25
	.string	"initialized"
	.byte	0x1
	.value	0x232
	.long	0x217
	.byte	0x5
	.byte	0x3
	.long	initialized.7289
	.uleb128 0x2e
	.string	"__FUNCTION__"
	.long	0x2014
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.7348
	.byte	0x0
	.uleb128 0xe
	.long	0x2004
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.long	0x2014
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x2004
	.uleb128 0x21
	.string	"md_constants"
	.byte	0x1
	.byte	0x22
	.long	0x1698
	.byte	0x5
	.byte	0x3
	.long	md_constants
	.uleb128 0x2f
	.string	"stderr"
	.byte	0x2
	.byte	0x90
	.long	0x632
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x2053
	.long	0x276
	.uleb128 0xf
	.long	0x225
	.byte	0xff
	.byte	0x0
	.uleb128 0x2f
	.string	"_sch_istable"
	.byte	0xc
	.byte	0x48
	.long	0x2069
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x2043
	.uleb128 0xe
	.long	0x207e
	.long	0x204
	.uleb128 0xf
	.long	0x225
	.byte	0x35
	.byte	0x0
	.uleb128 0x2f
	.string	"mode_name"
	.byte	0xb
	.byte	0x29
	.long	0x2091
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x206e
	.uleb128 0xe
	.long	0x20a6
	.long	0x265
	.uleb128 0xf
	.long	0x225
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2f
	.string	"rtx_length"
	.byte	0xa
	.byte	0x3c
	.long	0x20ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x2096
	.uleb128 0xe
	.long	0x20cf
	.long	0x204
	.uleb128 0xf
	.long	0x225
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2f
	.string	"rtx_name"
	.byte	0xa
	.byte	0x3f
	.long	0x20e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x20bf
	.uleb128 0x2f
	.string	"rtx_format"
	.byte	0xa
	.byte	0x42
	.long	0x20fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x20bf
	.uleb128 0x30
	.string	"read_rtx_filename"
	.byte	0x1
	.byte	0x37
	.long	0x204
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	read_rtx_filename
	.uleb128 0x30
	.string	"read_rtx_lineno"
	.byte	0x1
	.byte	0x34
	.long	0x217
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	read_rtx_lineno
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.long	0x74
	.value	0x2
	.long	.Ldebug_info0
	.long	0x213e
	.long	0x17a9
	.string	"read_skip_spaces"
	.long	0x1c19
	.string	"traverse_md_constants"
	.long	0x1cd3
	.string	"read_rtx"
	.long	0x20ff
	.string	"read_rtx_filename"
	.long	0x211f
	.string	"read_rtx_lineno"
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
.LASF6:
	.string	"stringbuf"
.LASF5:
	.string	"star_if_braced"
.LASF3:
	.string	"infile"
.LASF1:
	.string	"_IO_FILE"
.LASF2:
	.string	"mem_attrs"
.LASF4:
	.string	"value"
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
