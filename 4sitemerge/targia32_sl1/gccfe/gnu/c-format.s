	.file	"c-format.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl set_Wformat
	.type	set_Wformat, @function
set_Wformat:
.LFB15:
	.file 1 "../../../kgccfe/gnu/c-format.c"
	.loc 1 43 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 44 0
	movl	warn_format@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 45 0
	movl	warn_format_y2k@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 46 0
	movl	warn_format_extra_args@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 47 0
	movl	warn_format_zero_length@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 48 0
	cmpl	$1, 8(%ebp)
	je	.L2
	.loc 1 50 0
	movl	warn_format_nonliteral@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 51 0
	movl	warn_format_security@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L2:
	.loc 1 54 0
	cmpl	$0, 8(%ebp)
	je	.L6
	.loc 1 55 0
	movl	warn_nonnull@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L6:
	.loc 1 56 0
	popl	%ebp
	ret
.LFE15:
	.size	set_Wformat, .-set_Wformat
	.section	.rodata
	.align 4
.LC0:
	.string	"format string arg not a string type"
	.align 4
.LC1:
	.string	"args to be formatted is not '...'"
	.align 4
.LC2:
	.string	"strftime formats cannot format arguments"
	.text
.globl handle_format_attribute
	.type	handle_format_attribute, @function
handle_format_attribute:
.LFB16:
	.loc 1 87 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$84, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 88 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 93 0
	movl	$0, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_format_attr
	xorl	$1, %eax
	testb	%al, %al
	je	.L8
	.loc 1 95 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 96 0
	movl	$0, -60(%ebp)
	jmp	.L10
.L8:
	.loc 1 102 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 103 0
	cmpl	$0, -12(%ebp)
	je	.L11
	.loc 1 105 0
	movl	$1, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L13
.L14:
	.loc 1 106 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L13:
	.loc 1 105 0
	cmpl	$0, -12(%ebp)
	je	.L15
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L14
.L15:
	.loc 1 109 0
	cmpl	$0, -12(%ebp)
	je	.L17
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L17
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L20
.L17:
	.loc 1 114 0
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L21
	.loc 1 115 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L21:
	.loc 1 116 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 117 0
	movl	$0, -60(%ebp)
	jmp	.L10
.L20:
	.loc 1 120 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 124 0
	jmp	.L24
.L25:
	.loc 1 125 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L24:
	.loc 1 124 0
	cmpl	$0, -12(%ebp)
	jne	.L25
	.loc 1 127 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 129 0
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L28
	.loc 1 130 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L28:
	.loc 1 131 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 132 0
	movl	$0, -60(%ebp)
	jmp	.L10
.L11:
	.loc 1 137 0
	movl	-44(%ebp), %eax
	cmpl	$2, %eax
	jne	.L30
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L30
	.loc 1 139 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 140 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 141 0
	movl	$0, -60(%ebp)
	jmp	.L10
.L30:
	.loc 1 144 0
	movl	$0, -60(%ebp)
.L10:
	movl	-60(%ebp), %eax
	.loc 1 145 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	handle_format_attribute, .-handle_format_attribute
	.section	.rodata
	.align 4
.LC3:
	.string	"format string has invalid operand number"
	.align 4
.LC4:
	.string	"function does not return string type"
	.text
.globl handle_format_arg_attribute
	.type	handle_format_arg_attribute, @function
handle_format_arg_attribute:
.LFB17:
	.loc 1 157 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$52, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 158 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 159 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 166 0
	jmp	.L35
.L36:
	.loc 1 169 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L35:
	.loc 1 166 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L36
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L36
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L36
	.loc 1 171 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L40
	movl	-16(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L42
.L40:
	.loc 1 174 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 175 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 176 0
	movl	$0, -44(%ebp)
	jmp	.L43
.L42:
	.loc 1 179 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 184 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 185 0
	cmpl	$0, -12(%ebp)
	je	.L44
	.loc 1 187 0
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L46
.L47:
	.loc 1 188 0
	addl	$1, -32(%ebp)
	adcl	$0, -28(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L46:
	.loc 1 187 0
	cmpl	$0, -12(%ebp)
	je	.L48
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	xorl	-36(%ebp), %ecx
	xorl	-40(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L47
.L48:
	.loc 1 191 0
	cmpl	$0, -12(%ebp)
	je	.L50
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L50
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L44
.L50:
	.loc 1 196 0
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L53
	.loc 1 197 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L53:
	.loc 1 198 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 199 0
	movl	$0, -44(%ebp)
	jmp	.L43
.L44:
	.loc 1 203 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L55
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L57
.L55:
	.loc 1 207 0
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L58
	.loc 1 208 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L58:
	.loc 1 209 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 210 0
	movl	$0, -44(%ebp)
	jmp	.L43
.L57:
	.loc 1 213 0
	movl	$0, -44(%ebp)
.L43:
	movl	-44(%ebp), %eax
	.loc 1 214 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	handle_format_arg_attribute, .-handle_format_arg_attribute
	.section	.rodata
	.type	__FUNCTION__.10225, @object
	.size	__FUNCTION__.10225, 19
__FUNCTION__.10225:
	.string	"decode_format_attr"
	.align 4
.LC5:
	.string	"../../../kgccfe/gnu/c-format.c"
.LC6:
	.string	"unrecognized format specifier"
	.align 4
.LC7:
	.string	"`%s' is an unrecognized format function type"
	.align 4
.LC8:
	.string	"format string arg follows the args to be formatted"
	.text
	.type	decode_format_attr, @function
decode_format_attr:
.LFB18:
	.loc 1 229 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$68, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 233 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 235 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L62
	.loc 1 237 0
	cmpl	$0, 16(%ebp)
	je	.L64
	.loc 1 238 0
	leal	__FUNCTION__.10225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$238, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L64:
	.loc 1 239 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 240 0
	movl	$0, -44(%ebp)
	jmp	.L66
.L62:
.LBB2:
	.loc 1 244 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 246 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_format_type
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 248 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L71
	.loc 1 250 0
	cmpl	$0, 16(%ebp)
	je	.L69
	.loc 1 251 0
	leal	__FUNCTION__.10225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$251, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L69:
	.loc 1 252 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 253 0
	movl	$0, -44(%ebp)
	jmp	.L66
.L72:
.LBE2:
	.loc 1 262 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L71:
	.loc 1 259 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L72
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L72
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L72
	.loc 1 264 0
	jmp	.L76
.L77:
	.loc 1 267 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L76:
	.loc 1 264 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L77
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L77
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L77
	.loc 1 269 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L81
	movl	-20(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L81
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L81
	movl	-16(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L85
.L81:
	.loc 1 274 0
	cmpl	$0, 16(%ebp)
	je	.L86
	.loc 1 275 0
	leal	__FUNCTION__.10225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$275, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L86:
	.loc 1 276 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 277 0
	movl	$0, -44(%ebp)
	jmp	.L66
.L85:
	.loc 1 280 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	12(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 281 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	12(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 282 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L88
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %ecx
	cmpl	%ecx, -36(%ebp)
	ja	.L88
	movl	-28(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jb	.L91
	movl	-32(%ebp), %edx
	cmpl	%edx, -40(%ebp)
	ja	.L88
.L91:
	.loc 1 284 0
	cmpl	$0, 16(%ebp)
	je	.L92
	.loc 1 285 0
	leal	__FUNCTION__.10225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$285, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L92:
	.loc 1 286 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 287 0
	movl	$0, -44(%ebp)
	jmp	.L66
.L88:
	.loc 1 290 0
	movl	$1, -44(%ebp)
.L66:
	movl	-44(%ebp), %eax
	.loc 1 291 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	decode_format_attr, .-decode_format_attr
	.section	.rodata
.LC9:
	.string	"h"
.LC10:
	.string	"hh"
.LC11:
	.string	"l"
.LC12:
	.string	"ll"
.LC13:
	.string	"q"
.LC14:
	.string	"L"
.LC15:
	.string	"z"
.LC16:
	.string	"Z"
.LC17:
	.string	"t"
.LC18:
	.string	"j"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	printf_length_specs, @object
	.size	printf_length_specs, 216
printf_length_specs:
	.long	.LC9
	.long	2
	.long	0
	.long	.LC10
	.long	1
	.long	3
	.long	.LC11
	.long	3
	.long	0
	.long	.LC12
	.long	4
	.long	2
	.long	.LC13
	.long	4
	.long	4
	.long	0
	.long	0
	.long	0
	.long	.LC14
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC15
	.long	6
	.long	3
	.long	0
	.long	0
	.long	0
	.long	.LC16
	.long	6
	.long	4
	.long	0
	.long	0
	.long	0
	.long	.LC17
	.long	7
	.long	3
	.long	0
	.long	0
	.long	0
	.long	.LC18
	.long	8
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	scanf_length_specs, @object
	.size	scanf_length_specs, 192
scanf_length_specs:
	.long	.LC9
	.long	2
	.long	0
	.long	.LC10
	.long	1
	.long	3
	.long	.LC11
	.long	3
	.long	0
	.long	.LC12
	.long	4
	.long	2
	.long	.LC13
	.long	4
	.long	4
	.long	0
	.long	0
	.long	0
	.long	.LC14
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC15
	.long	6
	.long	3
	.long	0
	.long	0
	.long	0
	.long	.LC17
	.long	7
	.long	3
	.long	0
	.long	0
	.long	0
	.long	.LC18
	.long	8
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	strfmon_length_specs, @object
	.size	strfmon_length_specs, 48
strfmon_length_specs:
	.long	.LC14
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC19:
	.string	"` ' flag"
.LC20:
	.string	"the ` ' printf flag"
.LC21:
	.string	"`+' flag"
.LC22:
	.string	"the `+' printf flag"
.LC23:
	.string	"`#' flag"
.LC24:
	.string	"the `#' printf flag"
.LC25:
	.string	"`0' flag"
.LC26:
	.string	"the `0' printf flag"
.LC27:
	.string	"`-' flag"
.LC28:
	.string	"the `-' printf flag"
.LC29:
	.string	"`'' flag"
.LC30:
	.string	"the `'' printf flag"
.LC31:
	.string	"`I' flag"
.LC32:
	.string	"the `I' printf flag"
.LC33:
	.string	"field width"
.LC34:
	.string	"field width in printf format"
.LC35:
	.string	"precision"
.LC36:
	.string	"precision in printf format"
.LC37:
	.string	"length modifier"
	.align 4
.LC38:
	.string	"length modifier in printf format"
	.section	.data.rel.ro.local
	.align 32
	.type	printf_flag_specs, @object
	.size	printf_flag_specs, 264
printf_flag_specs:
	.long	32
	.long	0
	.long	0
	.long	.LC19
	.long	.LC20
	.long	0
	.long	43
	.long	0
	.long	0
	.long	.LC21
	.long	.LC22
	.long	0
	.long	35
	.long	0
	.long	0
	.long	.LC23
	.long	.LC24
	.long	0
	.long	48
	.long	0
	.long	0
	.long	.LC25
	.long	.LC26
	.long	0
	.long	45
	.long	0
	.long	0
	.long	.LC27
	.long	.LC28
	.long	0
	.long	39
	.long	0
	.long	0
	.long	.LC29
	.long	.LC30
	.long	4
	.long	73
	.long	0
	.long	0
	.long	.LC31
	.long	.LC32
	.long	4
	.long	119
	.long	0
	.long	0
	.long	.LC33
	.long	.LC34
	.long	0
	.long	112
	.long	0
	.long	0
	.long	.LC35
	.long	.LC36
	.long	0
	.long	76
	.long	0
	.long	0
	.long	.LC37
	.long	.LC38
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
	.align 32
	.type	printf_flag_pairs, @object
	.size	printf_flag_pairs, 64
printf_flag_pairs:
	.long	32
	.long	43
	.long	1
	.long	0
	.long	48
	.long	45
	.long	1
	.long	0
	.long	48
	.long	112
	.long	1
	.long	105
	.long	0
	.long	0
	.long	0
	.long	0
.LC39:
	.string	"assignment suppression"
	.align 4
.LC40:
	.string	"the assignment suppression scanf feature"
.LC41:
	.string	"`a' flag"
.LC42:
	.string	"the `a' scanf flag"
.LC43:
	.string	"field width in scanf format"
	.align 4
.LC44:
	.string	"length modifier in scanf format"
.LC45:
	.string	"the `'' scanf flag"
.LC46:
	.string	"the `I' scanf flag"
	.section	.data.rel.ro.local
	.align 32
	.type	scanf_flag_specs, @object
	.size	scanf_flag_specs, 168
scanf_flag_specs:
	.long	42
	.long	0
	.long	0
	.long	.LC39
	.long	.LC40
	.long	0
	.long	97
	.long	0
	.long	0
	.long	.LC41
	.long	.LC42
	.long	4
	.long	119
	.long	0
	.long	0
	.long	.LC33
	.long	.LC43
	.long	0
	.long	76
	.long	0
	.long	0
	.long	.LC37
	.long	.LC44
	.long	0
	.long	39
	.long	0
	.long	0
	.long	.LC29
	.long	.LC45
	.long	4
	.long	73
	.long	0
	.long	0
	.long	.LC31
	.long	.LC46
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
	.align 32
	.type	scanf_flag_pairs, @object
	.size	scanf_flag_pairs, 32
scanf_flag_pairs:
	.long	42
	.long	76
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC47:
	.string	"`_' flag"
.LC48:
	.string	"the `_' strftime flag"
.LC49:
	.string	"the `-' strftime flag"
.LC50:
	.string	"the `0' strftime flag"
.LC51:
	.string	"`^' flag"
.LC52:
	.string	"the `^' strftime flag"
.LC53:
	.string	"the `#' strftime flag"
	.align 4
.LC54:
	.string	"field width in strftime format"
.LC55:
	.string	"`E' modifier"
.LC56:
	.string	"the `E' strftime modifier"
.LC57:
	.string	"`O' modifier"
.LC58:
	.string	"the `O' strftime modifier"
.LC59:
	.string	"the `O' modifier"
	.section	.data.rel.ro.local
	.align 32
	.type	strftime_flag_specs, @object
	.size	strftime_flag_specs, 240
strftime_flag_specs:
	.long	95
	.long	0
	.long	0
	.long	.LC47
	.long	.LC48
	.long	4
	.long	45
	.long	0
	.long	0
	.long	.LC27
	.long	.LC49
	.long	4
	.long	48
	.long	0
	.long	0
	.long	.LC25
	.long	.LC50
	.long	4
	.long	94
	.long	0
	.long	0
	.long	.LC51
	.long	.LC52
	.long	4
	.long	35
	.long	0
	.long	0
	.long	.LC23
	.long	.LC53
	.long	4
	.long	119
	.long	0
	.long	0
	.long	.LC33
	.long	.LC54
	.long	4
	.long	69
	.long	0
	.long	0
	.long	.LC55
	.long	.LC56
	.long	3
	.long	79
	.long	0
	.long	0
	.long	.LC57
	.long	.LC58
	.long	3
	.long	79
	.long	111
	.long	0
	.long	0
	.long	.LC59
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
	.align 32
	.type	strftime_flag_pairs, @object
	.size	strftime_flag_pairs, 96
strftime_flag_pairs:
	.long	69
	.long	79
	.long	0
	.long	0
	.long	95
	.long	45
	.long	0
	.long	0
	.long	95
	.long	48
	.long	0
	.long	0
	.long	45
	.long	48
	.long	0
	.long	0
	.long	94
	.long	35
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC60:
	.string	"fill character"
	.align 4
.LC61:
	.string	"fill character in strfmon format"
.LC62:
	.string	"the `^' strfmon flag"
.LC63:
	.string	"the `+' strfmon flag"
.LC64:
	.string	"`(' flag"
.LC65:
	.string	"the `(' strfmon flag"
.LC66:
	.string	"`!' flag"
.LC67:
	.string	"the `!' strfmon flag"
.LC68:
	.string	"the `-' strfmon flag"
.LC69:
	.string	"field width in strfmon format"
.LC70:
	.string	"left precision"
	.align 4
.LC71:
	.string	"left precision in strfmon format"
.LC72:
	.string	"right precision"
	.align 4
.LC73:
	.string	"right precision in strfmon format"
	.align 4
.LC74:
	.string	"length modifier in strfmon format"
	.section	.data.rel.ro.local
	.align 32
	.type	strfmon_flag_specs, @object
	.size	strfmon_flag_specs, 264
strfmon_flag_specs:
	.long	61
	.long	0
	.long	1
	.long	.LC60
	.long	.LC61
	.long	0
	.long	94
	.long	0
	.long	0
	.long	.LC51
	.long	.LC62
	.long	0
	.long	43
	.long	0
	.long	0
	.long	.LC21
	.long	.LC63
	.long	0
	.long	40
	.long	0
	.long	0
	.long	.LC64
	.long	.LC65
	.long	0
	.long	33
	.long	0
	.long	0
	.long	.LC66
	.long	.LC67
	.long	0
	.long	45
	.long	0
	.long	0
	.long	.LC27
	.long	.LC68
	.long	0
	.long	119
	.long	0
	.long	0
	.long	.LC33
	.long	.LC69
	.long	0
	.long	35
	.long	0
	.long	0
	.long	.LC70
	.long	.LC71
	.long	0
	.long	112
	.long	0
	.long	0
	.long	.LC72
	.long	.LC73
	.long	0
	.long	76
	.long	0
	.long	0
	.long	.LC37
	.long	.LC74
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
	.align 32
	.type	strfmon_flag_pairs, @object
	.size	strfmon_flag_pairs, 32
strfmon_flag_pairs:
	.long	43
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC75:
	.string	"di"
.LC76:
	.string	"signed size_t"
.LC77:
	.string	"ptrdiff_t"
.LC78:
	.string	"intmax_t"
.LC79:
	.string	"-wp0 +'I"
.LC80:
	.string	"i"
.LC81:
	.string	"oxX"
.LC82:
	.string	"size_t"
.LC83:
	.string	"unsigned ptrdiff_t"
.LC84:
	.string	"uintmax_t"
.LC85:
	.string	"-wp0#"
.LC86:
	.string	"u"
.LC87:
	.string	"-wp0'I"
.LC88:
	.string	"fgG"
.LC89:
	.string	"-wp0 +#'"
.LC90:
	.string	""
.LC91:
	.string	"eE"
.LC92:
	.string	"-wp0 +#"
.LC93:
	.string	"c"
.LC94:
	.string	"wint_t"
.LC95:
	.string	"-w"
.LC96:
	.string	"s"
.LC97:
	.string	"wchar_t"
.LC98:
	.string	"-wp"
.LC99:
	.string	"cR"
.LC100:
	.string	"p"
.LC101:
	.string	"n"
.LC102:
	.string	"W"
.LC103:
	.string	"F"
.LC104:
	.string	"aA"
.LC105:
	.string	"C"
.LC106:
	.string	"S"
.LC107:
	.string	"R"
.LC108:
	.string	"m"
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	print_char_table, @object
	.size	print_char_table, 1920
print_char_table:
	.long	.LC75
	.long	0
	.long	0
	.long	0
	.long	0
	.long	integer_types+20
	.long	3
	.long	0
	.long	integer_types+4
	.long	0
	.long	0
	.long	integer_types+12
	.long	0
	.long	0
	.long	integer_types+28
	.long	2
	.long	0
	.long	integer_types+36
	.long	4
	.long	0
	.long	integer_types+36
	.long	3
	.long	.LC76
	.long	c_global_trees+16
	.long	3
	.long	.LC77
	.long	global_trees+124
	.long	3
	.long	.LC78
	.long	c_global_trees+24
	.long	.LC79
	.long	.LC80
	.long	.LC81
	.long	0
	.long	0
	.long	0
	.long	0
	.long	integer_types+24
	.long	3
	.long	0
	.long	integer_types+8
	.long	0
	.long	0
	.long	integer_types+16
	.long	0
	.long	0
	.long	integer_types+32
	.long	2
	.long	0
	.long	integer_types+40
	.long	4
	.long	0
	.long	integer_types+40
	.long	3
	.long	.LC82
	.long	global_trees+120
	.long	3
	.long	.LC83
	.long	c_global_trees+20
	.long	3
	.long	.LC84
	.long	c_global_trees+28
	.long	.LC85
	.long	.LC80
	.long	.LC86
	.long	0
	.long	0
	.long	0
	.long	0
	.long	integer_types+24
	.long	3
	.long	0
	.long	integer_types+8
	.long	0
	.long	0
	.long	integer_types+16
	.long	0
	.long	0
	.long	integer_types+32
	.long	2
	.long	0
	.long	integer_types+40
	.long	4
	.long	0
	.long	integer_types+40
	.long	3
	.long	.LC82
	.long	global_trees+120
	.long	3
	.long	.LC83
	.long	c_global_trees+20
	.long	3
	.long	.LC84
	.long	c_global_trees+28
	.long	.LC87
	.long	.LC80
	.long	.LC88
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+104
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC89
	.long	.LC90
	.long	.LC91
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+104
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC92
	.long	.LC90
	.long	.LC93
	.long	0
	.long	0
	.long	0
	.long	0
	.long	integer_types+20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	.LC94
	.long	c_global_trees+12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC95
	.long	.LC90
	.long	.LC96
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	.LC97
	.long	c_global_trees
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC98
	.long	.LC99
	.long	.LC100
	.long	1
	.long	0
	.long	0
	.long	0
	.long	global_trees+108
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC95
	.long	.LC93
	.long	.LC101
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types+20
	.long	3
	.long	0
	.long	integer_types+4
	.long	0
	.long	0
	.long	integer_types+12
	.long	0
	.long	0
	.long	integer_types+28
	.long	2
	.long	0
	.long	integer_types+36
	.long	0
	.long	0
	.long	0
	.long	3
	.long	.LC76
	.long	c_global_trees+16
	.long	3
	.long	.LC77
	.long	global_trees+124
	.long	3
	.long	.LC78
	.long	c_global_trees+24
	.long	.LC90
	.long	.LC102
	.long	.LC103
	.long	0
	.long	3
	.long	3
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+104
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC89
	.long	.LC90
	.long	.LC104
	.long	0
	.long	3
	.long	3
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+104
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC92
	.long	.LC90
	.long	.LC105
	.long	0
	.long	4
	.long	4
	.long	.LC94
	.long	c_global_trees+12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC95
	.long	.LC90
	.long	.LC106
	.long	1
	.long	4
	.long	4
	.long	.LC97
	.long	c_global_trees
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC98
	.long	.LC107
	.long	.LC108
	.long	0
	.long	4
	.long	0
	.long	0
	.long	global_trees+108
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC98
	.long	.LC90
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC109:
	.string	"*w'I"
.LC110:
	.string	"*w"
.LC111:
	.string	"efgEG"
.LC112:
	.string	"*w'"
.LC113:
	.string	"cW"
.LC114:
	.string	"*aw"
.LC115:
	.string	"["
.LC116:
	.string	"cW["
.LC117:
	.string	"FaA"
	.section	.data.rel.ro
	.align 32
	.type	scan_char_table, @object
	.size	scan_char_table, 1664
scan_char_table:
	.long	.LC75
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types+20
	.long	3
	.long	0
	.long	integer_types+4
	.long	0
	.long	0
	.long	integer_types+12
	.long	0
	.long	0
	.long	integer_types+28
	.long	2
	.long	0
	.long	integer_types+36
	.long	4
	.long	0
	.long	integer_types+36
	.long	3
	.long	.LC76
	.long	c_global_trees+16
	.long	3
	.long	.LC77
	.long	global_trees+124
	.long	3
	.long	.LC78
	.long	c_global_trees+24
	.long	.LC109
	.long	.LC102
	.long	.LC86
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types+24
	.long	3
	.long	0
	.long	integer_types+8
	.long	0
	.long	0
	.long	integer_types+16
	.long	0
	.long	0
	.long	integer_types+32
	.long	2
	.long	0
	.long	integer_types+40
	.long	4
	.long	0
	.long	integer_types+40
	.long	3
	.long	.LC82
	.long	global_trees+120
	.long	3
	.long	.LC83
	.long	c_global_trees+20
	.long	3
	.long	.LC84
	.long	c_global_trees+28
	.long	.LC109
	.long	.LC102
	.long	.LC81
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types+24
	.long	3
	.long	0
	.long	integer_types+8
	.long	0
	.long	0
	.long	integer_types+16
	.long	0
	.long	0
	.long	integer_types+32
	.long	2
	.long	0
	.long	integer_types+40
	.long	4
	.long	0
	.long	integer_types+40
	.long	3
	.long	.LC82
	.long	global_trees+120
	.long	3
	.long	.LC83
	.long	c_global_trees+20
	.long	3
	.long	.LC84
	.long	c_global_trees+28
	.long	.LC110
	.long	.LC102
	.long	.LC111
	.long	1
	.long	0
	.long	0
	.long	0
	.long	global_trees+96
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+104
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC112
	.long	.LC102
	.long	.LC93
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	.LC97
	.long	c_global_trees
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC110
	.long	.LC113
	.long	.LC96
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	.LC97
	.long	c_global_trees
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC114
	.long	.LC113
	.long	.LC115
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	.LC97
	.long	c_global_trees
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC114
	.long	.LC116
	.long	.LC100
	.long	2
	.long	0
	.long	0
	.long	0
	.long	global_trees+108
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC110
	.long	.LC102
	.long	.LC101
	.long	1
	.long	0
	.long	0
	.long	0
	.long	integer_types+20
	.long	3
	.long	0
	.long	integer_types+4
	.long	0
	.long	0
	.long	integer_types+12
	.long	0
	.long	0
	.long	integer_types+28
	.long	2
	.long	0
	.long	integer_types+36
	.long	0
	.long	0
	.long	0
	.long	3
	.long	.LC76
	.long	c_global_trees+16
	.long	3
	.long	.LC77
	.long	global_trees+124
	.long	3
	.long	.LC78
	.long	c_global_trees+24
	.long	.LC90
	.long	.LC102
	.long	.LC117
	.long	1
	.long	3
	.long	3
	.long	0
	.long	global_trees+96
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+104
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC112
	.long	.LC102
	.long	.LC105
	.long	1
	.long	4
	.long	4
	.long	.LC97
	.long	c_global_trees
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC110
	.long	.LC102
	.long	.LC106
	.long	1
	.long	4
	.long	4
	.long	.LC97
	.long	c_global_trees
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC114
	.long	.LC102
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC118:
	.string	"ABZab"
.LC119:
	.string	"^#"
.LC120:
	.string	"cx"
.LC121:
	.string	"E"
.LC122:
	.string	"3"
.LC123:
	.string	"HIMSUWdmw"
.LC124:
	.string	"-_0Ow"
.LC125:
	.string	"o"
.LC126:
	.string	"#"
.LC127:
	.string	"X"
.LC128:
	.string	"y"
.LC129:
	.string	"EO-_0w"
.LC130:
	.string	"4"
.LC131:
	.string	"Y"
.LC132:
	.string	"-_0EOw"
.LC133:
	.string	"%"
.LC134:
	.string	"D"
.LC135:
	.string	"2"
.LC136:
	.string	"eVu"
.LC137:
	.string	"FRTnrt"
.LC138:
	.string	"g"
.LC139:
	.string	"O-_0w"
.LC140:
	.string	"2o"
.LC141:
	.string	"G"
.LC142:
	.string	"O"
.LC143:
	.string	"kls"
.LC144:
	.string	"P"
	.section	.data.rel.ro.local
	.align 32
	.type	time_char_table, @object
	.size	time_char_table, 2560
time_char_table:
	.long	.LC118
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC119
	.long	.LC90
	.long	.LC120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC121
	.long	.LC122
	.long	.LC123
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC124
	.long	.LC90
	.long	.LC18
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC124
	.long	.LC125
	.long	.LC100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC126
	.long	.LC90
	.long	.LC127
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC121
	.long	.LC90
	.long	.LC128
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC129
	.long	.LC130
	.long	.LC131
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC132
	.long	.LC125
	.long	.LC133
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC90
	.long	.LC90
	.long	.LC105
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC132
	.long	.LC125
	.long	.LC134
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC90
	.long	.LC135
	.long	.LC136
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC124
	.long	.LC90
	.long	.LC137
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC90
	.long	.LC90
	.long	.LC138
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC139
	.long	.LC140
	.long	.LC141
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC124
	.long	.LC125
	.long	.LC9
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC119
	.long	.LC90
	.long	.LC15
	.long	0
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC142
	.long	.LC125
	.long	.LC143
	.long	0
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC124
	.long	.LC90
	.long	.LC144
	.long	0
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC90
	.long	.LC90
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC145:
	.string	"in"
.LC146:
	.string	"=^+(!-w#p"
	.section	.data.rel.ro
	.align 32
	.type	monetary_char_table, @object
	.size	monetary_char_table, 256
monetary_char_table:
	.long	.LC145
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+104
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC146
	.long	.LC90
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC147:
	.string	"printf"
.LC148:
	.string	" +#0-'I"
.LC149:
	.string	"scanf"
.LC150:
	.string	"*'I"
.LC151:
	.string	"strftime"
.LC152:
	.string	"_-0^#"
.LC153:
	.string	"EO"
.LC154:
	.string	"strfmon"
.LC155:
	.string	"=^+(!-"
	.section	.data.rel.ro
	.align 32
	.type	format_types, @object
	.size	format_types, 240
format_types:
	.long	.LC147
	.long	printf_length_specs
	.long	print_char_table
	.long	.LC148
	.long	0
	.long	printf_flag_specs
	.long	printf_flag_pairs
	.long	89
	.long	119
	.long	0
	.long	112
	.long	0
	.long	76
	.long	integer_types+20
	.long	integer_types+20
	.long	.LC149
	.long	scanf_length_specs
	.long	scan_char_table
	.long	.LC150
	.long	0
	.long	scanf_flag_specs
	.long	scanf_flag_pairs
	.long	179
	.long	119
	.long	0
	.long	0
	.long	42
	.long	76
	.long	0
	.long	0
	.long	.LC151
	.long	0
	.long	time_char_table
	.long	.LC152
	.long	.LC153
	.long	strftime_flag_specs
	.long	strftime_flag_pairs
	.long	4
	.long	119
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.LC154
	.long	strfmon_length_specs
	.long	monetary_char_table
	.long	.LC155
	.long	0
	.long	strfmon_flag_specs
	.long	strfmon_flag_pairs
	.long	1
	.long	119
	.long	35
	.long	112
	.long	0
	.long	76
	.long	0
	.long	0
	.text
	.type	decode_format_type, @function
decode_format_type:
.LFB19:
	.loc 1 917 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%edi
.LCFI16:
	pushl	%esi
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$44, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 920 0
	movl	8(%ebp), %eax
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
	movl	%eax, -20(%ebp)
	.loc 1 921 0
	movl	$0, -24(%ebp)
	jmp	.L96
.L97:
.LBB3:
	.loc 1 924 0
	movl	-24(%ebp), %eax
	leal	format_types@GOTOFF(%ebx), %ecx
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L98
	.loc 1 926 0
	movl	-24(%ebp), %eax
	leal	format_types@GOTOFF(%ebx), %ecx
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movl	(%eax,%ecx), %eax
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
	movl	%eax, -16(%ebp)
	.loc 1 927 0
	movl	-16(%ebp), %eax
	addl	$4, %eax
	cmpl	-20(%ebp), %eax
	jne	.L100
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L100
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L100
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L100
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	subl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L100
	movl	-16(%ebp), %esi
	movl	-24(%ebp), %eax
	leal	format_types@GOTOFF(%ebx), %ecx
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movl	(%eax,%ecx), %eax
	movl	8(%ebp), %edx
	addl	$2, %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L98
.L100:
.LBE3:
	.loc 1 921 0
	addl	$1, -24(%ebp)
.L96:
	cmpl	$3, -24(%ebp)
	jle	.L97
.L98:
	.loc 1 932 0
	movl	-24(%ebp), %eax
	.loc 1 933 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	decode_format_type, .-decode_format_type
	.section	.rodata
.LC156:
	.string	"format"
	.align 4
.LC157:
	.string	"function might be possible candidate for `%s' format attribute"
	.text
.globl check_function_format
	.type	check_function_format, @function
check_function_format:
.LFB20:
	.loc 1 947 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$52, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 951 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L108
.L109:
	.loc 1 953 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	is_attribute_p@PLT
	testl	%eax, %eax
	je	.L110
.LBB4:
	.loc 1 957 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	$1, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	decode_format_attr
	.loc 1 958 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_format_info
	.loc 1 959 0
	movl	warn_missing_format_attribute@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L110
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L110
	movl	-36(%ebp), %eax
	leal	format_types@GOTOFF(%ebx), %ecx
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	12(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L110
.LBB5:
	.loc 1 964 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 965 0
	jmp	.L115
.L116:
	.loc 1 967 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	is_attribute_p@PLT
	testl	%eax, %eax
	je	.L117
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	decode_format_type
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	cmpl	%eax, %edx
	je	.L119
.L117:
	.loc 1 966 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L115:
	.loc 1 965 0
	cmpl	$0, -12(%ebp)
	jne	.L116
.L119:
	.loc 1 972 0
	cmpl	$0, -12(%ebp)
	jne	.L110
.LBB6:
	.loc 1 979 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 980 0
	jmp	.L121
.L122:
	.loc 1 983 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L123
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L125
.L123:
	.loc 1 981 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L121:
	.loc 1 980 0
	cmpl	$0, -8(%ebp)
	jne	.L122
.L125:
	.loc 1 988 0
	cmpl	$0, -8(%ebp)
	je	.L110
	.loc 1 989 0
	movl	-36(%ebp), %eax
	leal	format_types@GOTOFF(%ebx), %ecx
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L110:
.LBE6:
.LBE5:
.LBE4:
	.loc 1 951 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L108:
	cmpl	$0, -16(%ebp)
	jne	.L109
	.loc 1 995 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	check_function_format, .-check_function_format
	.type	status_warning, @function
status_warning:
.LFB21:
	.loc 1 1004 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$68, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1014 0
	leal	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1017 0
	cmpl	$0, 8(%ebp)
	je	.L130
	.loc 1 1018 0
	movl	8(%ebp), %eax
	movl	$1, (%eax)
	jmp	.L133
.L130:
	.loc 1 1022 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	diagnostic_set_info@PLT
	.loc 1 1024 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	diagnostic_report_diagnostic@PLT
.L133:
	.loc 1 1032 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	status_warning, .-status_warning
	.local	dollar_arguments_used
	.comm	dollar_arguments_used,4,4
	.local	dollar_arguments_pointer_p
	.comm	dollar_arguments_pointer_p,4,4
	.local	dollar_arguments_alloc
	.comm	dollar_arguments_alloc,4,4
	.type	init_dollar_format_checking, @function
init_dollar_format_checking:
.LFB22:
	.loc 1 1053 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%edi
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$32, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1054 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1056 0
	movl	8(%ebp), %eax
	movl	%eax, dollar_first_arg_num@GOTOFF(%ebx)
	.loc 1 1057 0
	movl	$0, dollar_arguments_count@GOTOFF(%ebx)
	.loc 1 1058 0
	movl	$0, dollar_max_arg_used@GOTOFF(%ebx)
	.loc 1 1059 0
	movl	$0, dollar_format_warned@GOTOFF(%ebx)
	.loc 1 1060 0
	cmpl	$0, 8(%ebp)
	jle	.L135
	.loc 1 1062 0
	jmp	.L137
.L138:
	.loc 1 1064 0
	movl	dollar_arguments_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, dollar_arguments_count@GOTOFF(%ebx)
	.loc 1 1065 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L137:
	.loc 1 1062 0
	cmpl	$0, 12(%ebp)
	jne	.L138
.L135:
	.loc 1 1068 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %edx
	movl	dollar_arguments_count@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L139
	.loc 1 1070 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L141
	.loc 1 1071 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L141:
	.loc 1 1072 0
	movl	dollar_arguments_pointer_p@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L143
	.loc 1 1073 0
	movl	dollar_arguments_pointer_p@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L143:
	.loc 1 1074 0
	movl	dollar_arguments_count@GOTOFF(%ebx), %eax
	movl	%eax, dollar_arguments_alloc@GOTOFF(%ebx)
	.loc 1 1075 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, dollar_arguments_used@GOTOFF(%ebx)
	.loc 1 1076 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, dollar_arguments_pointer_p@GOTOFF(%ebx)
.L139:
	.loc 1 1078 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L150
	.loc 1 1080 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	dollar_arguments_used@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1081 0
	cmpl	$0, 8(%ebp)
	jle	.L150
.LBB7:
	.loc 1 1083 0
	movl	$0, -12(%ebp)
	.loc 1 1084 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1085 0
	jmp	.L148
.L149:
	.loc 1 1087 0
	movl	dollar_arguments_pointer_p@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	sete	%al
	movb	%al, (%edx)
	.loc 1 1089 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1090 0
	addl	$1, -12(%ebp)
.L148:
	.loc 1 1085 0
	cmpl	$0, 12(%ebp)
	jne	.L149
.L150:
.LBE7:
	.loc 1 1094 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	init_dollar_format_checking, .-init_dollar_format_checking
	.section	.rodata
	.type	__FUNCTION__.10650, @object
	.size	__FUNCTION__.10650, 25
__FUNCTION__.10650:
	.string	"maybe_read_dollar_number"
	.align 4
.LC158:
	.string	"missing $ operand number in format"
.LC159:
	.string	"ISO C++"
.LC160:
	.string	"ISO C"
	.align 4
.LC161:
	.string	"%s does not support %%n$ operand number formats"
	.align 4
.LC162:
	.string	"operand number out of range in format"
	.align 4
.LC163:
	.string	"format argument %d used more than once in %s format"
	.text
	.type	maybe_read_dollar_number, @function
maybe_read_dollar_number:
.LFB23:
	.loc 1 1115 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%edi
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$64, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1118 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1119 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L152
	.loc 1 1121 0
	cmpl	$0, 16(%ebp)
	je	.L154
	.loc 1 1123 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1124 0
	movl	$-1, -48(%ebp)
	jmp	.L156
.L154:
	.loc 1 1127 0
	movl	$0, -48(%ebp)
	jmp	.L156
.L152:
	.loc 1 1129 0
	movl	$0, -32(%ebp)
	.loc 1 1130 0
	movl	$0, -28(%ebp)
	.loc 1 1131 0
	jmp	.L157
.L158:
.LBB8:
	.loc 1 1134 0
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	subl	$48, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1135 0
	cmpl	$0, -20(%ebp)
	js	.L159
	movl	-20(%ebp), %ecx
	movl	$1717986919, -52(%ebp)
	movl	-52(%ebp), %eax
	imull	%ecx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-32(%ebp), %eax
	je	.L161
.L159:
	.loc 1 1136 0
	movl	$1, -28(%ebp)
.L161:
	.loc 1 1137 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1138 0
	addl	$1, -24(%ebp)
.L157:
.LBE8:
	.loc 1 1131 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L158
	.loc 1 1140 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	je	.L163
	.loc 1 1142 0
	cmpl	$0, 16(%ebp)
	je	.L165
	.loc 1 1144 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1145 0
	movl	$-1, -48(%ebp)
	jmp	.L156
.L165:
	.loc 1 1148 0
	movl	$0, -48(%ebp)
	jmp	.L156
.L163:
	.loc 1 1150 0
	movl	-24(%ebp), %edx
	addl	$1, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1151 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L167
	movl	dollar_format_warned@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L167
	.loc 1 1153 0
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L170
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L172
.L170:
	leal	.LC160@GOTOFF(%ebx), %ecx
	movl	%ecx, -44(%ebp)
.L172:
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1156 0
	movl	$1, dollar_format_warned@GOTOFF(%ebx)
.L167:
	.loc 1 1158 0
	cmpl	$0, -28(%ebp)
	jne	.L173
	cmpl	$0, -32(%ebp)
	je	.L173
	movl	dollar_first_arg_num@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L176
	movl	dollar_arguments_count@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jle	.L176
.L173:
	.loc 1 1161 0
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1162 0
	movl	$-1, -48(%ebp)
	jmp	.L156
.L176:
	.loc 1 1164 0
	movl	dollar_max_arg_used@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jle	.L180
	.loc 1 1165 0
	movl	-32(%ebp), %eax
	movl	%eax, dollar_max_arg_used@GOTOFF(%ebx)
	.loc 1 1168 0
	jmp	.L180
.L181:
.LBB9:
	.loc 1 1171 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	addl	$16, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1172 0
	movl	-16(%ebp), %eax
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, dollar_arguments_used@GOTOFF(%ebx)
	.loc 1 1173 0
	movl	-16(%ebp), %eax
	movl	dollar_arguments_pointer_p@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, dollar_arguments_pointer_p@GOTOFF(%ebx)
	.loc 1 1175 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
	.loc 1 1177 0
	movl	-16(%ebp), %eax
	movl	%eax, dollar_arguments_alloc@GOTOFF(%ebx)
.L180:
.LBE9:
	.loc 1 1168 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %edx
	movl	dollar_max_arg_used@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jl	.L181
	.loc 1 1179 0
	movl	28(%ebp), %eax
	movl	28(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L183
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$1, %al
	jne	.L183
	.loc 1 1182 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movb	$2, (%eax)
	.loc 1 1183 0
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1179 0
	jmp	.L186
.L183:
	.loc 1 1188 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movb	$1, (%eax)
.L186:
	.loc 1 1189 0
	movl	dollar_first_arg_num@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L187
.LBB10:
	.loc 1 1192 0
	movl	24(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1193 0
	movl	$1, -12(%ebp)
	jmp	.L189
.L190:
	.loc 1 1194 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1193 0
	addl	$1, -12(%ebp)
.L189:
	movl	-12(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	.L191
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L190
.L191:
	.loc 1 1196 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L195
	.loc 1 1199 0
	leal	__FUNCTION__.10650@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1199, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L187:
.LBE10:
	.loc 1 1203 0
	movl	24(%ebp), %eax
	movl	$0, (%eax)
.L195:
	.loc 1 1204 0
	movl	-32(%ebp), %ecx
	movl	%ecx, -48(%ebp)
.L156:
	movl	-48(%ebp), %eax
	.loc 1 1205 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	maybe_read_dollar_number, .-maybe_read_dollar_number
	.section	.rodata
	.align 4
.LC164:
	.string	"format argument %d unused before used argument %d in $-style format"
	.text
	.type	finish_dollar_format_checking, @function
finish_dollar_format_checking:
.LFB24:
	.loc 1 1223 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$36, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1225 0
	movb	$0, -5(%ebp)
	.loc 1 1226 0
	movl	$0, -12(%ebp)
	jmp	.L198
.L199:
	.loc 1 1228 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L200
	.loc 1 1230 0
	cmpl	$0, 16(%ebp)
	je	.L202
	movl	dollar_first_arg_num@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L204
	movl	dollar_arguments_pointer_p@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L202
.L204:
	.loc 1 1232 0
	movb	$1, -5(%ebp)
	.loc 1 1230 0
	jmp	.L200
.L202:
	.loc 1 1234 0
	movl	dollar_max_arg_used@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	addl	$1, %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L200:
	.loc 1 1226 0
	addl	$1, -12(%ebp)
.L198:
	movl	dollar_max_arg_used@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L199
	.loc 1 1238 0
	cmpb	$0, -5(%ebp)
	jne	.L207
	movl	dollar_first_arg_num@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L211
	movl	dollar_max_arg_used@GOTOFF(%ebx), %edx
	movl	dollar_arguments_count@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L211
.L207:
	.loc 1 1242 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1243 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
.L211:
	.loc 1 1245 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	finish_dollar_format_checking, .-finish_dollar_format_checking
	.section	.rodata
	.type	__FUNCTION__.10805, @object
	.size	__FUNCTION__.10805, 14
__FUNCTION__.10805:
	.string	"get_flag_spec"
	.text
	.type	get_flag_spec, @function
get_flag_spec:
.LFB25:
	.loc 1 1261 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$36, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1263 0
	movl	$0, -8(%ebp)
	jmp	.L213
.L214:
	.loc 1 1265 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L215
	.loc 1 1267 0
	cmpl	$0, 16(%ebp)
	je	.L217
	.loc 1 1269 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L215
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L215
	.loc 1 1271 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	8(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -24(%ebp)
	jmp	.L222
.L217:
	.loc 1 1273 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L215
	.loc 1 1274 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	8(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -24(%ebp)
	jmp	.L222
.L215:
	.loc 1 1263 0
	addl	$1, -8(%ebp)
.L213:
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L214
	.loc 1 1276 0
	cmpl	$0, 16(%ebp)
	jne	.L225
	.loc 1 1277 0
	leal	__FUNCTION__.10805@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1277, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L225:
	.loc 1 1279 0
	movl	$0, -24(%ebp)
.L222:
	movl	-24(%ebp), %eax
	.loc 1 1280 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	get_flag_spec, .-get_flag_spec
	.section	.rodata
	.align 4
.LC165:
	.string	"format not a string literal, format string not checked"
	.align 4
.LC166:
	.string	"format not a string literal and no format arguments"
	.align 4
.LC167:
	.string	"format not a string literal, argument types not checked"
.LC168:
	.string	"too many arguments for format"
	.align 4
.LC169:
	.string	"unused arguments in $-style format"
.LC170:
	.string	"zero-length %s format string"
	.align 4
.LC171:
	.string	"format is a wide character string"
.LC172:
	.string	"unterminated format string"
	.text
	.type	check_format_info, @function
check_format_info:
.LFB26:
	.loc 1 1292 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$116, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1299 0
	movl	$1, -24(%ebp)
	movl	$0, -20(%ebp)
.L229:
	.loc 1 1301 0
	cmpl	$0, 16(%ebp)
	je	.L270
	.loc 1 1303 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L232
	.loc 1 1305 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1299 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
	.loc 1 1306 0
	jmp	.L229
.L232:
	.loc 1 1307 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1308 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1309 0
	cmpl	$0, -12(%ebp)
	je	.L270
	.loc 1 1312 0
	movl	$0, -68(%ebp)
	.loc 1 1313 0
	movl	$0, -64(%ebp)
	.loc 1 1314 0
	movl	$0, -60(%ebp)
	.loc 1 1315 0
	movl	$0, -56(%ebp)
	.loc 1 1316 0
	movl	$0, -52(%ebp)
	.loc 1 1317 0
	movl	$0, -48(%ebp)
	.loc 1 1318 0
	movl	$0, -44(%ebp)
	.loc 1 1320 0
	leal	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1321 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1322 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1323 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1325 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	check_format_arg@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	check_function_arguments_recurse@PLT
	.loc 1 1328 0
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jle	.L235
	.loc 1 1333 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	format_types@GOTOFF(%ebx), %ecx
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	12(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L237
	.loc 1 1337 0
	movl	warn_format_nonliteral@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L235
	.loc 1 1338 0
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L235
.L237:
	.loc 1 1340 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L235
	.loc 1 1344 0
	jmp	.L242
.L243:
	.loc 1 1346 0
	cmpl	$0, 16(%ebp)
	je	.L244
	.loc 1 1348 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1349 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
.L242:
	.loc 1 1344 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %ecx
	cmpl	%ecx, -84(%ebp)
	jb	.L243
	movl	-76(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	ja	.L244
	movl	-80(%ebp), %edx
	cmpl	%edx, -88(%ebp)
	jb	.L243
.L244:
	.loc 1 1351 0
	cmpl	$0, 16(%ebp)
	jne	.L247
	movl	warn_format_nonliteral@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L249
	movl	warn_format_security@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L247
.L249:
	.loc 1 1352 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1351 0
	jmp	.L235
.L247:
	.loc 1 1353 0
	movl	warn_format_nonliteral@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L235
	.loc 1 1354 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L235:
	.loc 1 1365 0
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jle	.L252
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	.L252
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L252
	movl	warn_format_extra_args@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L252
	.loc 1 1367 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L252:
	.loc 1 1368 0
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	jle	.L257
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	.L257
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L257
	movl	warn_format_extra_args@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L257
	.loc 1 1370 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L257:
	.loc 1 1371 0
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	.L262
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	.L262
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L262
	movl	warn_format_zero_length@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L262
	.loc 1 1373 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	format_types@GOTOFF(%ebx), %ecx
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 8(%esp)
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L262:
	.loc 1 1376 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	jle	.L267
	.loc 1 1377 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L267:
	.loc 1 1379 0
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	jle	.L270
	.loc 1 1380 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L270:
	.loc 1 1381 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	check_format_info, .-check_format_info
	.section	.rodata
	.type	__FUNCTION__.10969, @object
	.size	__FUNCTION__.10969, 17
__FUNCTION__.10969:
	.string	"check_format_arg"
	.text
	.type	check_format_arg, @function
check_format_arg:
.LFB27:
	.loc 1 1393 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$164, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1394 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1395 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1396 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1397 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1398 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1403 0
	movl	$0, -24(%ebp)
	.loc 1 1406 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L272
	.loc 1 1410 0
	jmp	.L274
.L275:
	.loc 1 1412 0
	cmpl	$0, -40(%ebp)
	je	.L343
	.loc 1 1414 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1415 0
	addl	$1, -80(%ebp)
	adcl	$0, -76(%ebp)
.L274:
	.loc 1 1410 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-116(%ebp), %ecx
	cmpl	%ecx, -124(%ebp)
	jb	.L275
	movl	-116(%ebp), %eax
	cmpl	%eax, -124(%ebp)
	ja	.L279
	movl	-120(%ebp), %edx
	cmpl	%edx, -128(%ebp)
	jb	.L275
.L279:
	.loc 1 1418 0
	cmpl	$0, -40(%ebp)
	jne	.L280
	.loc 1 1419 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L343
.L280:
	.loc 1 1421 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1423 0
	jmp	.L343
.L272:
	.loc 1 1426 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 1427 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L283
.LBB11:
	.loc 1 1431 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1432 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1433 0
	jmp	.L285
.L286:
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L285:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L287
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L287
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L292
.L287:
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L292
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L286
	.loc 1 1434 0
	jmp	.L292
.L293:
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L292:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L294
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L294
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L297
.L294:
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L297
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L293
.L297:
	.loc 1 1435 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L299
	.loc 1 1436 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.L301
.L299:
	.loc 1 1437 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L302
	.loc 1 1439 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1440 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L301
.L302:
	.loc 1 1444 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1445 0
	jmp	.L343
.L301:
	.loc 1 1447 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L304
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	cmpl	$0, -68(%ebp)
	jns	.L283
.L304:
	.loc 1 1450 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1451 0
	jmp	.L343
.L283:
.LBE11:
	.loc 1 1454 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	je	.L306
	.loc 1 1456 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1457 0
	jmp	.L343
.L306:
	.loc 1 1459 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1460 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L308
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L308
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L308
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L308
	.loc 1 1468 0
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1469 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%ebp)
.L308:
	.loc 1 1471 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L313
	.loc 1 1473 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1474 0
	jmp	.L343
.L313:
	.loc 1 1476 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L315
	.loc 1 1478 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1479 0
	jmp	.L343
.L315:
	.loc 1 1481 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1482 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1483 0
	cmpl	$0, -24(%ebp)
	je	.L317
	.loc 1 1486 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L319
	.loc 1 1487 0
	leal	__FUNCTION__.10969@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1487, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L319:
	.loc 1 1488 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L317
.LBB12:
	.loc 1 1490 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 1491 0
	cmpl	$0, -60(%ebp)
	js	.L317
	cmpl	$0, -60(%ebp)
	jg	.L323
	cmpl	$0, -64(%ebp)
	jbe	.L317
.L323:
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L317
	movl	-32(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -108(%ebp)
	movl	-108(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jl	.L317
	movl	-108(%ebp), %edx
	cmpl	-60(%ebp), %edx
	jg	.L326
	movl	-112(%ebp), %ecx
	cmpl	-64(%ebp), %ecx
	jbe	.L317
.L326:
	.loc 1 1494 0
	movl	-64(%ebp), %eax
	movl	%eax, -32(%ebp)
.L317:
.LBE12:
	.loc 1 1497 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L327
	.loc 1 1499 0
	movl	-32(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -100(%ebp)
	movl	-100(%ebp), %ecx
	cmpl	-68(%ebp), %ecx
	jg	.L329
	movl	-100(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L331
	movl	-104(%ebp), %edx
	cmpl	-72(%ebp), %edx
	ja	.L329
.L331:
	.loc 1 1501 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1502 0
	jmp	.L343
.L329:
	.loc 1 1504 0
	movl	-72(%ebp), %eax
	addl	%eax, -28(%ebp)
	.loc 1 1505 0
	movl	-32(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -32(%ebp)
.L327:
	.loc 1 1507 0
	cmpl	$0, -32(%ebp)
	jg	.L332
	.loc 1 1509 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1510 0
	jmp	.L343
.L332:
	.loc 1 1512 0
	cmpl	$1, -32(%ebp)
	jne	.L334
	.loc 1 1514 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1515 0
	jmp	.L343
.L334:
	.loc 1 1517 0
	subl	$1, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L338
	.loc 1 1519 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1520 0
	jmp	.L343
.L339:
	.loc 1 1526 0
	cmpl	$0, -40(%ebp)
	je	.L343
	.loc 1 1528 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1529 0
	addl	$1, -80(%ebp)
	adcl	$0, -76(%ebp)
.L338:
	.loc 1 1524 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-84(%ebp), %ecx
	cmpl	%ecx, -92(%ebp)
	jb	.L339
	movl	-84(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	ja	.L342
	movl	-88(%ebp), %edx
	cmpl	%edx, -96(%ebp)
	jb	.L339
.L342:
	.loc 1 1534 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1535 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	check_format_info_main
.L343:
	.loc 1 1537 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	check_format_arg, .-check_format_arg
	.section	.rodata
.LC173:
	.string	"embedded `\\0' in format"
	.align 4
.LC174:
	.string	"spurious trailing `%%' in format"
.LC175:
	.string	"repeated %s in format"
	.align 4
.LC176:
	.string	"missing fill character at end of strfmon format"
.LC177:
	.string	"too few arguments for format"
.LC178:
	.string	"zero width in %s format"
	.align 4
.LC179:
	.string	"empty left precision in %s format"
.LC180:
	.string	"field precision"
.LC181:
	.string	"empty precision in %s format"
.LC182:
	.string	"ISO C90"
	.align 4
.LC183:
	.string	"%s does not support the `%s' %s length modifier"
	.align 4
.LC184:
	.string	"conversion lacks type at end of format"
	.align 4
.LC185:
	.string	"unknown conversion type character `%c' in format"
	.align 4
.LC186:
	.string	"unknown conversion type character 0x%x in format"
	.align 4
.LC187:
	.string	"%s does not support the `%%%c' %s format"
.LC188:
	.string	"%s used with `%%%c' %s format"
.LC189:
	.string	"%s does not support %s"
	.align 4
.LC190:
	.string	"%s does not support %s with the `%%%c' %s format"
	.align 4
.LC191:
	.string	"%s ignored with %s and `%%%c' %s format"
	.align 4
.LC192:
	.string	"%s ignored with %s in %s format"
	.align 4
.LC193:
	.string	"use of %s and %s together with `%%%c' %s format"
	.align 4
.LC194:
	.string	"use of %s and %s together in %s format"
	.align 4
.LC195:
	.string	"`%%%c' yields only last 2 digits of year in some locales"
	.align 4
.LC196:
	.string	"`%%%c' yields only last 2 digits of year"
	.align 4
.LC197:
	.string	"no closing `]' for `%%[' format"
	.align 4
.LC198:
	.string	"use of `%s' length modifier with `%c' type character"
	.align 4
.LC199:
	.string	"%s does not support the `%%%s%c' %s format"
	.align 4
.LC200:
	.string	"operand number specified with suppressed assignment"
	.align 4
.LC201:
	.string	"operand number specified for format taking no argument"
	.text
	.type	check_format_info_main, @function
check_format_info_main:
.LFB28:
	.loc 1 1557 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%edi
.LCFI56:
	pushl	%esi
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$828, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -548(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -552(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -556(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -560(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -564(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -576(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -572(%ebp)
	.loc 1 1557 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 1558 0
	movl	-560(%ebp), %eax
	movl	%eax, -420(%ebp)
	.loc 1 1559 0
	movl	-564(%ebp), %eax
	movl	%eax, -416(%ebp)
	.loc 1 1561 0
	movl	-556(%ebp), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	leal	format_types@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -412(%ebp)
	.loc 1 1562 0
	movl	-412(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -408(%ebp)
	.loc 1 1563 0
	movl	-412(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -404(%ebp)
	.loc 1 1567 0
	movl	$-1, -400(%ebp)
	.loc 1 1569 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-416(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	init_dollar_format_checking
	jmp	.L718
.L345:
.L718:
.LBB13:
	.loc 1 1574 0
	movl	$0, -392(%ebp)
	.loc 1 1575 0
	movl	$0, -388(%ebp)
	.loc 1 1576 0
	movl	$0, -384(%ebp)
	.loc 1 1577 0
	movl	$0, -380(%ebp)
	.loc 1 1581 0
	movl	$0, -364(%ebp)
	.loc 1 1582 0
	movl	$0, -424(%ebp)
	.loc 1 1588 0
	movl	$0, -352(%ebp)
	.loc 1 1589 0
	movl	$0, -348(%ebp)
	.loc 1 1590 0
	movl	$0, -344(%ebp)
	.loc 1 1591 0
	movl	$0, -340(%ebp)
	.loc 1 1593 0
	movl	$0, -336(%ebp)
	.loc 1 1594 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L346
	.loc 1 1596 0
	movl	-560(%ebp), %eax
	movl	%eax, %edx
	movl	-420(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	24(%ebp), %eax
	je	.L348
	.loc 1 1597 0
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L348:
	.loc 1 1598 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L350
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	je	.L350
	cmpl	$0, -400(%ebp)
	jg	.L350
	.loc 1 1601 0
	movl	-552(%ebp), %eax
	movl	24(%eax), %eax
	leal	-1(%eax), %edx
	movl	-552(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1602 0
	movl	-552(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-552(%ebp), %eax
	movl	%edx, 4(%eax)
.L350:
	.loc 1 1604 0
	cmpl	$0, -400(%ebp)
	jle	.L716
	.loc 1 1605 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$128, %eax
	movl	%eax, 8(%esp)
	movl	-552(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_dollar_format_checking
	.loc 1 1606 0
	jmp	.L716
.L346:
	.loc 1 1608 0
	movl	-560(%ebp), %edx
	movzbl	(%edx), %eax
	cmpb	$37, %al
	setne	%cl
	leal	1(%edx), %eax
	movl	%eax, -560(%ebp)
	testb	%cl, %cl
	jne	.L345
	.loc 1 1610 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L359
	.loc 1 1612 0
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1613 0
	jmp	.L345
.L359:
	.loc 1 1615 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L361
	.loc 1 1617 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1618 0
	jmp	.L345
.L361:
	.loc 1 1620 0
	movb	$0, -276(%ebp)
	.loc 1 1622 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L368
	cmpl	$0, -400(%ebp)
	je	.L368
.LBB14:
	.loc 1 1629 0
	movl	-412(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-424(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-416(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	-560(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_read_dollar_number
	movl	%eax, -332(%ebp)
	.loc 1 1632 0
	cmpl	$-1, -332(%ebp)
	je	.L716
	.loc 1 1634 0
	cmpl	$0, -332(%ebp)
	jle	.L368
	.loc 1 1636 0
	movl	$1, -400(%ebp)
	.loc 1 1637 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-332(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movl	%eax, -364(%ebp)
	.loc 1 1644 0
	jmp	.L368
.L369:
.LBE14:
.LBB15:
	.loc 1 1648 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -328(%ebp)
	.loc 1 1649 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L370
	.loc 1 1651 0
	movl	-328(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L372
.L370:
	.loc 1 1655 0
	leal	-276(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -776(%ebp)
	movl	$0, %eax
	cld
	movl	-776(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -396(%ebp)
	.loc 1 1656 0
	movl	-396(%ebp), %edx
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1657 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
.L372:
	.loc 1 1659 0
	movl	-328(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L373
	.loc 1 1661 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1662 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L373
	.loc 1 1664 0
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1665 0
	jmp	.L716
.L373:
	.loc 1 1668 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L368:
.LBE15:
	.loc 1 1644 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L376
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-412(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	jne	.L369
.L376:
	.loc 1 1672 0
	movl	-412(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L378
	.loc 1 1674 0
	movl	-412(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L380
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L380
	.loc 1 1676 0
	leal	-276(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -780(%ebp)
	movl	$0, %eax
	cld
	movl	-780(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -396(%ebp)
	.loc 1 1677 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	32(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1678 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
	.loc 1 1681 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1682 0
	cmpl	$0, -400(%ebp)
	je	.L383
.LBB16:
	.loc 1 1685 0
	cmpl	$1, -400(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	-412(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-564(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-416(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-560(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_read_dollar_number
	movl	%eax, -324(%ebp)
	.loc 1 1689 0
	cmpl	$-1, -324(%ebp)
	je	.L716
	.loc 1 1691 0
	cmpl	$0, -324(%ebp)
	jle	.L386
	.loc 1 1693 0
	movl	$1, -400(%ebp)
	.loc 1 1694 0
	movl	-324(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -576(%ebp)
	movl	%edx, -572(%ebp)
	jmp	.L383
.L386:
	.loc 1 1697 0
	movl	$0, -400(%ebp)
.L383:
.LBE16:
	.loc 1 1699 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L378
	.loc 1 1701 0
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	jne	.L390
	.loc 1 1703 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1704 0
	jmp	.L716
.L390:
	.loc 1 1706 0
	movl	-564(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -372(%ebp)
	.loc 1 1707 0
	cmpl	$0, -400(%ebp)
	jg	.L392
	.loc 1 1709 0
	movl	-564(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	.loc 1 1710 0
	addl	$1, -576(%ebp)
	adcl	$0, -572(%ebp)
.L392:
	.loc 1 1712 0
	movl	-412(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -464(%ebp)
	.loc 1 1713 0
	movl	$0, -460(%ebp)
	.loc 1 1714 0
	movl	$0, -456(%ebp)
	.loc 1 1715 0
	movl	$0, -452(%ebp)
	.loc 1 1716 0
	movl	$0, -448(%ebp)
	.loc 1 1717 0
	movl	$0, -444(%ebp)
	.loc 1 1718 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, -440(%ebp)
	.loc 1 1719 0
	movl	-372(%ebp), %eax
	movl	%eax, -436(%ebp)
	.loc 1 1720 0
	movl	-576(%ebp), %eax
	movl	%eax, -432(%ebp)
	.loc 1 1721 0
	movl	$0, -428(%ebp)
	.loc 1 1722 0
	cmpl	$0, -348(%ebp)
	je	.L394
	.loc 1 1723 0
	movl	-348(%ebp), %edx
	leal	-464(%ebp), %eax
	movl	%eax, 36(%edx)
.L394:
	.loc 1 1724 0
	cmpl	$0, -352(%ebp)
	jne	.L396
	.loc 1 1725 0
	leal	-464(%ebp), %eax
	movl	%eax, -352(%ebp)
.L396:
	.loc 1 1726 0
	leal	-464(%ebp), %eax
	movl	%eax, -348(%ebp)
	.loc 1 1674 0
	jmp	.L378
.L380:
.LBB17:
	.loc 1 1733 0
	movl	$0, -320(%ebp)
	.loc 1 1734 0
	movl	$0, -316(%ebp)
	.loc 1 1735 0
	jmp	.L398
.L399:
	.loc 1 1737 0
	movl	$1, -316(%ebp)
	.loc 1 1738 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L400
	.loc 1 1739 0
	movl	$1, -320(%ebp)
.L400:
	.loc 1 1740 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L398:
	.loc 1 1735 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L399
	.loc 1 1742 0
	cmpl	$0, -316(%ebp)
	je	.L403
	cmpl	$0, -320(%ebp)
	jne	.L403
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L403
	.loc 1 1744 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L403:
	.loc 1 1746 0
	cmpl	$0, -316(%ebp)
	je	.L378
	.loc 1 1748 0
	leal	-276(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -784(%ebp)
	movl	$0, %eax
	cld
	movl	-784(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -396(%ebp)
	.loc 1 1749 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	32(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1750 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
.L378:
.LBE17:
	.loc 1 1756 0
	movl	-412(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L408
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L408
	.loc 1 1758 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1759 0
	leal	-276(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -788(%ebp)
	movl	$0, %eax
	cld
	movl	-788(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -396(%ebp)
	.loc 1 1760 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	36(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1761 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
	.loc 1 1762 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L413
	.loc 1 1763 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1765 0
	jmp	.L413
.L414:
	.loc 1 1766 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L413:
	.loc 1 1765 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L414
.L408:
	.loc 1 1770 0
	movl	-412(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L415
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L415
	.loc 1 1772 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1773 0
	leal	-276(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -792(%ebp)
	movl	$0, %eax
	cld
	movl	-792(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -396(%ebp)
	.loc 1 1774 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	40(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1775 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
	.loc 1 1776 0
	movl	-412(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L418
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L418
	.loc 1 1780 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1781 0
	cmpl	$0, -400(%ebp)
	je	.L421
.LBB18:
	.loc 1 1784 0
	cmpl	$1, -400(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	-412(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-564(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-416(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-560(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_read_dollar_number
	movl	%eax, -312(%ebp)
	.loc 1 1788 0
	cmpl	$-1, -312(%ebp)
	je	.L716
	.loc 1 1790 0
	cmpl	$0, -312(%ebp)
	jle	.L424
	.loc 1 1792 0
	movl	$1, -400(%ebp)
	.loc 1 1793 0
	movl	-312(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -576(%ebp)
	movl	%edx, -572(%ebp)
	jmp	.L421
.L424:
	.loc 1 1796 0
	movl	$0, -400(%ebp)
.L421:
.LBE18:
	.loc 1 1798 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L415
	.loc 1 1800 0
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	jne	.L428
	.loc 1 1802 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1803 0
	jmp	.L716
.L428:
	.loc 1 1805 0
	movl	-564(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -372(%ebp)
	.loc 1 1806 0
	cmpl	$0, -400(%ebp)
	jg	.L430
	.loc 1 1808 0
	movl	-564(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	.loc 1 1809 0
	addl	$1, -576(%ebp)
	adcl	$0, -572(%ebp)
.L430:
	.loc 1 1811 0
	movl	-412(%ebp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -504(%ebp)
	.loc 1 1812 0
	movl	$0, -500(%ebp)
	.loc 1 1813 0
	movl	$0, -496(%ebp)
	.loc 1 1814 0
	movl	$0, -492(%ebp)
	.loc 1 1815 0
	movl	$0, -488(%ebp)
	.loc 1 1816 0
	movl	$0, -484(%ebp)
	.loc 1 1817 0
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, -480(%ebp)
	.loc 1 1818 0
	movl	-372(%ebp), %eax
	movl	%eax, -476(%ebp)
	.loc 1 1819 0
	movl	-576(%ebp), %eax
	movl	%eax, -472(%ebp)
	.loc 1 1820 0
	movl	$0, -468(%ebp)
	.loc 1 1821 0
	cmpl	$0, -348(%ebp)
	je	.L432
	.loc 1 1822 0
	movl	-348(%ebp), %edx
	leal	-504(%ebp), %eax
	movl	%eax, 36(%edx)
.L432:
	.loc 1 1823 0
	cmpl	$0, -352(%ebp)
	jne	.L434
	.loc 1 1824 0
	leal	-504(%ebp), %eax
	movl	%eax, -352(%ebp)
.L434:
	.loc 1 1825 0
	leal	-504(%ebp), %eax
	movl	%eax, -348(%ebp)
	.loc 1 1776 0
	jmp	.L415
.L418:
	.loc 1 1830 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L439
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L439
	.loc 1 1832 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1834 0
	jmp	.L439
.L440:
	.loc 1 1835 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L439:
	.loc 1 1834 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L440
.L415:
	.loc 1 1840 0
	movl	-412(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -344(%ebp)
	.loc 1 1841 0
	movl	$0, -388(%ebp)
	.loc 1 1842 0
	movl	$0, -384(%ebp)
	.loc 1 1843 0
	movl	$0, -380(%ebp)
	.loc 1 1844 0
	cmpl	$0, -344(%ebp)
	je	.L441
	.loc 1 1846 0
	jmp	.L443
.L444:
	.loc 1 1847 0
	addl	$24, -344(%ebp)
.L443:
	.loc 1 1846 0
	movl	-344(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L445
	movl	-344(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %edx
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	.L444
.L445:
	.loc 1 1848 0
	movl	-344(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L447
	.loc 1 1850 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1851 0
	movl	-344(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L449
	movl	-344(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %edx
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	.L449
	.loc 1 1853 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1854 0
	movl	-344(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -388(%ebp)
	.loc 1 1855 0
	movl	-344(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -384(%ebp)
	.loc 1 1856 0
	movl	-344(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -380(%ebp)
	.loc 1 1851 0
	jmp	.L452
.L449:
	.loc 1 1860 0
	movl	-344(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -388(%ebp)
	.loc 1 1861 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -384(%ebp)
	.loc 1 1862 0
	movl	-344(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -380(%ebp)
.L452:
	.loc 1 1864 0
	leal	-276(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -796(%ebp)
	movl	$0, %eax
	cld
	movl	-796(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -396(%ebp)
	.loc 1 1865 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	48(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1866 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
.L447:
	.loc 1 1868 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L441
	.loc 1 1871 0
	cmpl	$2, -380(%ebp)
	jne	.L454
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L456
	movl	$3, -768(%ebp)
	jmp	.L458
.L456:
	movl	$0, -768(%ebp)
.L458:
	movl	-768(%ebp), %eax
	movl	%eax, -772(%ebp)
	jmp	.L459
.L454:
	movl	-380(%ebp), %ecx
	movl	%ecx, -772(%ebp)
.L459:
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L460
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L462
	movl	flag_isoc94@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -760(%ebp)
	jmp	.L464
.L462:
	movl	$3, -760(%ebp)
.L464:
	movl	-760(%ebp), %edi
	movl	%edi, -764(%ebp)
	jmp	.L465
.L460:
	movl	$1, -764(%ebp)
.L465:
	movl	-764(%ebp), %eax
	cmpl	%eax, -772(%ebp)
	jle	.L441
	.loc 1 1872 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -756(%ebp)
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L467
	cmpl	$4, -380(%ebp)
	jne	.L469
	leal	.LC160@GOTOFF(%ebx), %ecx
	movl	%ecx, -748(%ebp)
	jmp	.L471
.L469:
	leal	.LC182@GOTOFF(%ebx), %edi
	movl	%edi, -748(%ebp)
.L471:
	movl	-748(%ebp), %eax
	movl	%eax, -752(%ebp)
	jmp	.L472
.L467:
	leal	.LC159@GOTOFF(%ebx), %ecx
	movl	%ecx, -752(%ebp)
.L472:
	movl	-756(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-752(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L441:
	.loc 1 1879 0
	movl	-412(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L473
	.loc 1 1881 0
	jmp	.L475
.L476:
	.loc 1 1884 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L477
.LBB19:
	.loc 1 1887 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -308(%ebp)
	.loc 1 1888 0
	movl	-308(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L479
.L477:
.LBE19:
	.loc 1 1892 0
	leal	-276(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -800(%ebp)
	movl	$0, %eax
	cld
	movl	-800(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -396(%ebp)
	.loc 1 1893 0
	movl	-396(%ebp), %edx
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1894 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
.L479:
	.loc 1 1896 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L475:
	.loc 1 1881 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L473
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-412(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	jne	.L476
.L473:
	.loc 1 1901 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L481
	.loc 1 1903 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$97, %al
	jne	.L481
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L481
	.loc 1 1905 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	je	.L485
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$83, %al
	je	.L485
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$91, %al
	jne	.L481
.L485:
	.loc 1 1909 0
	leal	-276(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -804(%ebp)
	movl	$0, %eax
	cld
	movl	-804(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -396(%ebp)
	.loc 1 1910 0
	movl	-396(%ebp), %eax
	movb	$97, -276(%ebp,%eax)
	addl	$1, -396(%ebp)
	.loc 1 1911 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
	.loc 1 1912 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L481:
	.loc 1 1917 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -376(%ebp)
	.loc 1 1918 0
	cmpl	$0, -376(%ebp)
	je	.L488
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L490
	cmpl	$37, -376(%ebp)
	jne	.L490
.L488:
	.loc 1 1922 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1923 0
	jmp	.L345
.L490:
	.loc 1 1925 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1926 0
	movl	-412(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -340(%ebp)
	.loc 1 1927 0
	jmp	.L492
.L493:
	.loc 1 1929 0
	subl	$-128, -340(%ebp)
.L492:
	.loc 1 1927 0
	movl	-340(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L494
	movl	-340(%ebp), %eax
	movl	(%eax), %edx
	movl	-376(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L493
.L494:
	.loc 1 1930 0
	movl	-340(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L496
	.loc 1 1932 0
	movzbl	-376(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$172, %eax
	testl	%eax, %eax
	je	.L498
	.loc 1 1933 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L345
.L498:
	.loc 1 1936 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1938 0
	jmp	.L345
.L496:
	.loc 1 1940 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L501
	.loc 1 1942 0
	movl	-340(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$2, %eax
	jne	.L503
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L505
	movl	$3, -740(%ebp)
	jmp	.L507
.L505:
	movl	$0, -740(%ebp)
.L507:
	movl	-740(%ebp), %eax
	movl	%eax, -744(%ebp)
	jmp	.L508
.L503:
	movl	-340(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -744(%ebp)
.L508:
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L509
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L511
	movl	flag_isoc94@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -732(%ebp)
	jmp	.L513
.L511:
	movl	$3, -732(%ebp)
.L513:
	movl	-732(%ebp), %ecx
	movl	%ecx, -736(%ebp)
	jmp	.L514
.L509:
	movl	$1, -736(%ebp)
.L514:
	movl	-736(%ebp), %edi
	cmpl	%edi, -744(%ebp)
	jle	.L501
	.loc 1 1943 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -728(%ebp)
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L516
	movl	-340(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$4, %eax
	jne	.L518
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, -720(%ebp)
	jmp	.L520
.L518:
	leal	.LC182@GOTOFF(%ebx), %ecx
	movl	%ecx, -720(%ebp)
.L520:
	movl	-720(%ebp), %edi
	movl	%edi, -724(%ebp)
	jmp	.L521
.L516:
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, -724(%ebp)
.L521:
	movl	-728(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-724(%ebp), %edi
	movl	%edi, 8(%esp)
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L501:
.LBB20:
	.loc 1 1949 0
	movl	$0, -304(%ebp)
	.loc 1 1950 0
	movl	$0, -396(%ebp)
	jmp	.L522
.L523:
.LBB21:
	.loc 1 1953 0
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -300(%ebp)
	.loc 1 1954 0
	movl	-304(%ebp), %edx
	movl	-396(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	movb	%al, -276(%ebp,%edx)
	.loc 1 1955 0
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	movzbl	%al, %edx
	movl	-412(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, %edx
	je	.L524
	.loc 1 1957 0
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	movzbl	%al, %edx
	movl	-340(%ebp), %eax
	movl	120(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	jne	.L526
	.loc 1 1959 0
	movl	-412(%ebp), %eax
	movl	(%eax), %edx
	movl	-300(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1961 0
	addl	$1, -304(%ebp)
	.loc 1 1962 0
	jmp	.L524
.L526:
	.loc 1 1964 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L524
.LBB22:
	.loc 1 1967 0
	movl	-300(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$2, %eax
	jne	.L529
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L531
	movl	$3, -712(%ebp)
	jmp	.L533
.L531:
	movl	$0, -712(%ebp)
.L533:
	movl	-712(%ebp), %edi
	movl	%edi, -716(%ebp)
	jmp	.L534
.L529:
	movl	-300(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -716(%ebp)
.L534:
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L535
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L537
	movl	flag_isoc94@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -704(%ebp)
	jmp	.L539
.L537:
	movl	$3, -704(%ebp)
.L539:
	movl	-704(%ebp), %eax
	movl	%eax, -708(%ebp)
	jmp	.L540
.L535:
	movl	$1, -708(%ebp)
.L540:
	movl	-708(%ebp), %ecx
	cmpl	%ecx, -716(%ebp)
	jle	.L541
	.loc 1 1968 0
	movl	-300(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -700(%ebp)
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L543
	movl	-300(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$4, %eax
	jne	.L545
	leal	.LC160@GOTOFF(%ebx), %edi
	movl	%edi, -692(%ebp)
	jmp	.L547
.L545:
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, -692(%ebp)
.L547:
	movl	-692(%ebp), %ecx
	movl	%ecx, -696(%ebp)
	jmp	.L548
.L543:
	leal	.LC159@GOTOFF(%ebx), %edi
	movl	%edi, -696(%ebp)
.L548:
	movl	-700(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-696(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L541:
	.loc 1 1970 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %edx
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -296(%ebp)
	.loc 1 1971 0
	cmpl	$0, -296(%ebp)
	je	.L524
	movl	-296(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$2, %eax
	jne	.L550
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L552
	movl	$3, -684(%ebp)
	jmp	.L554
.L552:
	movl	$0, -684(%ebp)
.L554:
	movl	-684(%ebp), %edi
	movl	%edi, -688(%ebp)
	jmp	.L555
.L550:
	movl	-296(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -688(%ebp)
.L555:
	movl	-300(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$2, %eax
	jne	.L556
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L558
	movl	$3, -676(%ebp)
	jmp	.L560
.L558:
	movl	$0, -676(%ebp)
.L560:
	movl	-676(%ebp), %eax
	movl	%eax, -680(%ebp)
	jmp	.L561
.L556:
	movl	-300(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -680(%ebp)
.L561:
	movl	-680(%ebp), %ecx
	cmpl	%ecx, -688(%ebp)
	jle	.L524
.LBB23:
	.loc 1 1975 0
	movl	-296(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L563
	movl	-296(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -672(%ebp)
	jmp	.L565
.L563:
	movl	-300(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -672(%ebp)
.L565:
	movl	-672(%ebp), %edi
	movl	%edi, -292(%ebp)
	.loc 1 1976 0
	movl	-296(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$2, %eax
	jne	.L566
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L568
	movl	$3, -664(%ebp)
	jmp	.L570
.L568:
	movl	$0, -664(%ebp)
.L570:
	movl	-664(%ebp), %eax
	movl	%eax, -668(%ebp)
	jmp	.L571
.L566:
	movl	-296(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -668(%ebp)
.L571:
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L572
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L574
	movl	flag_isoc94@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -656(%ebp)
	jmp	.L576
.L574:
	movl	$3, -656(%ebp)
.L576:
	movl	-656(%ebp), %ecx
	movl	%ecx, -660(%ebp)
	jmp	.L577
.L572:
	movl	$1, -660(%ebp)
.L577:
	movl	-660(%ebp), %edi
	cmpl	%edi, -668(%ebp)
	jle	.L524
	.loc 1 1977 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -652(%ebp)
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L579
	movl	-296(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$4, %eax
	jne	.L581
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, -644(%ebp)
	jmp	.L583
.L581:
	leal	.LC182@GOTOFF(%ebx), %ecx
	movl	%ecx, -644(%ebp)
.L583:
	movl	-644(%ebp), %edi
	movl	%edi, -648(%ebp)
	jmp	.L584
.L579:
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, -648(%ebp)
.L584:
	movl	-652(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-648(%ebp), %edi
	movl	%edi, 8(%esp)
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L524:
.LBE23:
.LBE22:
.LBE21:
	.loc 1 1950 0
	addl	$1, -396(%ebp)
.L522:
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L523
	.loc 1 1983 0
	movl	-304(%ebp), %edx
	movl	-396(%ebp), %eax
	subl	%edx, %eax
	movb	$0, -276(%ebp,%eax)
.LBE20:
	.loc 1 1986 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L586
	movl	$97, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L586
	.loc 1 1988 0
	movl	$1, -336(%ebp)
.L586:
	.loc 1 1990 0
	movl	-412(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L589
	movl	-412(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L589
	.loc 1 1992 0
	movl	$1, -392(%ebp)
.L589:
	.loc 1 1995 0
	movl	$0, -396(%ebp)
	jmp	.L592
.L593:
.LBB24:
	.loc 1 1998 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L594
	.loc 1 2000 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L594
	.loc 1 2002 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L597
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	12(%eax), %edx
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L594
.L597:
	.loc 1 2005 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -288(%ebp)
	.loc 1 2006 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -284(%ebp)
	.loc 1 2007 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L599
	.loc 1 2009 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L601
	.loc 1 2010 0
	movl	-412(%ebp), %eax
	movl	(%eax), %edx
	movl	-284(%ebp), %eax
	movl	12(%eax), %esi
	movl	-288(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, 20(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC191@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L594
.L601:
	.loc 1 2014 0
	movl	-412(%ebp), %eax
	movl	(%eax), %edx
	movl	-284(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-288(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L594
.L599:
	.loc 1 2019 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L604
	.loc 1 2020 0
	movl	-412(%ebp), %eax
	movl	(%eax), %edx
	movl	-284(%ebp), %eax
	movl	12(%eax), %esi
	movl	-288(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, 20(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L594
.L604:
	.loc 1 2024 0
	movl	-412(%ebp), %eax
	movl	(%eax), %edx
	movl	-284(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-288(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L594:
.LBE24:
	.loc 1 1995 0
	addl	$1, -396(%ebp)
.L592:
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L593
	.loc 1 2030 0
	movl	warn_format_y2k@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L607
.LBB25:
	.loc 1 2032 0
	movl	$0, -280(%ebp)
	.loc 1 2033 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$52, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L609
	.loc 1 2034 0
	movl	$69, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L611
	.loc 1 2035 0
	movl	$3, -280(%ebp)
	jmp	.L614
.L611:
	.loc 1 2037 0
	movl	$2, -280(%ebp)
	jmp	.L614
.L609:
	.loc 1 2038 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$51, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L615
	.loc 1 2039 0
	movl	$3, -280(%ebp)
	jmp	.L614
.L615:
	.loc 1 2040 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$50, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L614
	.loc 1 2041 0
	movl	$2, -280(%ebp)
.L614:
	.loc 1 2042 0
	cmpl	$3, -280(%ebp)
	jne	.L618
	.loc 1 2043 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L607
.L618:
	.loc 1 2045 0
	cmpl	$2, -280(%ebp)
	jne	.L607
	.loc 1 2046 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L607:
.LBE25:
	.loc 1 2049 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$91, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L621
	.loc 1 2052 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$94, %al
	jne	.L623
	.loc 1 2053 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L623:
	.loc 1 2056 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$93, %al
	jne	.L627
	.loc 1 2057 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 2058 0
	jmp	.L627
.L628:
	.loc 1 2059 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L627:
	.loc 1 2058 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L629
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$93, %al
	jne	.L628
.L629:
	.loc 1 2060 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$93, %al
	je	.L621
	.loc 1 2062 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L621:
	.loc 1 2065 0
	movl	$0, -368(%ebp)
	.loc 1 2066 0
	movl	$0, -356(%ebp)
	.loc 1 2067 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L632
	.loc 1 2069 0
	movl	-384(%ebp), %edx
	movl	-340(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$20, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L634
	movl	-384(%ebp), %edx
	movl	-340(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$20, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -640(%ebp)
	jmp	.L636
.L634:
	movl	$0, -640(%ebp)
.L636:
	movl	-640(%ebp), %eax
	movl	%eax, -368(%ebp)
	.loc 1 2071 0
	movl	-384(%ebp), %edx
	movl	-340(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, -356(%ebp)
	.loc 1 2072 0
	movl	-384(%ebp), %edx
	movl	-340(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -360(%ebp)
	.loc 1 2073 0
	cmpl	$0, -368(%ebp)
	jne	.L637
	.loc 1 2075 0
	movl	-376(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2079 0
	addl	$1, -576(%ebp)
	adcl	$0, -572(%ebp)
	.loc 1 2080 0
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	jne	.L639
	.loc 1 2082 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2083 0
	jmp	.L716
.L639:
	.loc 1 2085 0
	movl	-564(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	.loc 1 2086 0
	jmp	.L345
.L637:
	.loc 1 2088 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L632
	cmpl	$2, -360(%ebp)
	jne	.L642
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L644
	movl	$3, -632(%ebp)
	jmp	.L646
.L644:
	movl	$0, -632(%ebp)
.L646:
	movl	-632(%ebp), %ecx
	movl	%ecx, -636(%ebp)
	jmp	.L647
.L642:
	movl	-360(%ebp), %edi
	movl	%edi, -636(%ebp)
.L647:
	cmpl	$2, -380(%ebp)
	jne	.L648
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L650
	movl	$3, -624(%ebp)
	jmp	.L652
.L650:
	movl	$0, -624(%ebp)
.L652:
	movl	-624(%ebp), %eax
	movl	%eax, -628(%ebp)
	jmp	.L653
.L648:
	movl	-380(%ebp), %ecx
	movl	%ecx, -628(%ebp)
.L653:
	movl	-628(%ebp), %edi
	cmpl	%edi, -636(%ebp)
	jle	.L632
	cmpl	$2, -360(%ebp)
	jne	.L655
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L657
	movl	$3, -616(%ebp)
	jmp	.L659
.L657:
	movl	$0, -616(%ebp)
.L659:
	movl	-616(%ebp), %eax
	movl	%eax, -620(%ebp)
	jmp	.L660
.L655:
	movl	-360(%ebp), %ecx
	movl	%ecx, -620(%ebp)
.L660:
	movl	-340(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$2, %eax
	jne	.L661
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L663
	movl	$3, -608(%ebp)
	jmp	.L665
.L663:
	movl	$0, -608(%ebp)
.L665:
	movl	-608(%ebp), %edi
	movl	%edi, -612(%ebp)
	jmp	.L666
.L661:
	movl	-340(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -612(%ebp)
.L666:
	movl	-612(%ebp), %eax
	cmpl	%eax, -620(%ebp)
	jle	.L632
	.loc 1 2095 0
	cmpl	$2, -360(%ebp)
	jne	.L668
	movl	warn_long_long@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L670
	movl	$3, -600(%ebp)
	jmp	.L672
.L670:
	movl	$0, -600(%ebp)
.L672:
	movl	-600(%ebp), %ecx
	movl	%ecx, -604(%ebp)
	jmp	.L673
.L668:
	movl	-360(%ebp), %edi
	movl	%edi, -604(%ebp)
.L673:
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L674
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L676
	movl	flag_isoc94@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -592(%ebp)
	jmp	.L678
.L676:
	movl	$3, -592(%ebp)
.L678:
	movl	-592(%ebp), %eax
	movl	%eax, -596(%ebp)
	jmp	.L679
.L674:
	movl	$1, -596(%ebp)
.L679:
	movl	-596(%ebp), %ecx
	cmpl	%ecx, -604(%ebp)
	jle	.L632
	.loc 1 2096 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -588(%ebp)
	movl	c_language@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L681
	cmpl	$4, -360(%ebp)
	jne	.L683
	leal	.LC160@GOTOFF(%ebx), %edi
	movl	%edi, -580(%ebp)
	jmp	.L685
.L683:
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, -580(%ebp)
.L685:
	movl	-580(%ebp), %ecx
	movl	%ecx, -584(%ebp)
	jmp	.L686
.L681:
	leal	.LC159@GOTOFF(%ebx), %edi
	movl	%edi, -584(%ebp)
.L686:
	movl	-588(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-376(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-584(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC199@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L632:
	.loc 1 2103 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L345
	.loc 1 2105 0
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L688
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	-368(%ebp), %eax
	je	.L690
.L688:
	cmpl	$0, -392(%ebp)
	je	.L691
.L690:
	.loc 1 2108 0
	cmpl	$0, -364(%ebp)
	je	.L696
	.loc 1 2110 0
	cmpl	$0, -392(%ebp)
	je	.L694
	.loc 1 2111 0
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L696
.L694:
	.loc 1 2113 0
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2105 0
	jmp	.L696
.L691:
	.loc 1 2118 0
	cmpl	$0, -364(%ebp)
	je	.L697
	.loc 1 2120 0
	movl	-364(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -576(%ebp)
	movl	%edx, -572(%ebp)
	.loc 1 2121 0
	movl	-424(%ebp), %eax
	movl	%eax, -564(%ebp)
	jmp	.L699
.L697:
	.loc 1 2125 0
	addl	$1, -576(%ebp)
	adcl	$0, -572(%ebp)
	.loc 1 2126 0
	cmpl	$0, -400(%ebp)
	jle	.L700
	.loc 1 2128 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2129 0
	jmp	.L716
.L700:
	.loc 1 2132 0
	movl	$0, -400(%ebp)
	.loc 1 2133 0
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	jne	.L699
	.loc 1 2135 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2136 0
	jmp	.L716
.L699:
	.loc 1 2139 0
	movl	-564(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -372(%ebp)
	.loc 1 2140 0
	movl	-564(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	.loc 1 2141 0
	movl	-368(%ebp), %eax
	movl	%eax, -544(%ebp)
	.loc 1 2142 0
	movl	-356(%ebp), %eax
	movl	%eax, -540(%ebp)
	.loc 1 2143 0
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	addl	-336(%ebp), %eax
	movl	%eax, -536(%ebp)
	.loc 1 2144 0
	movl	$0, -532(%ebp)
	.loc 1 2145 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$99, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L703
	.loc 1 2146 0
	movl	$1, -532(%ebp)
.L703:
	.loc 1 2147 0
	movl	$0, -528(%ebp)
	.loc 1 2148 0
	movl	$0, -524(%ebp)
	.loc 1 2149 0
	cmpl	$0, -336(%ebp)
	je	.L705
	.loc 1 2150 0
	movl	$1, -528(%ebp)
	jmp	.L707
.L705:
	.loc 1 2153 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$87, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L708
	.loc 1 2154 0
	movl	$1, -528(%ebp)
.L708:
	.loc 1 2155 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$82, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L707
	.loc 1 2156 0
	movl	$1, -524(%ebp)
.L707:
	.loc 1 2158 0
	movl	$0, -520(%ebp)
	.loc 1 2159 0
	movl	-372(%ebp), %eax
	movl	%eax, -516(%ebp)
	.loc 1 2160 0
	movl	-576(%ebp), %eax
	movl	%eax, -512(%ebp)
	.loc 1 2161 0
	movl	$0, -508(%ebp)
	.loc 1 2162 0
	cmpl	$0, -348(%ebp)
	je	.L711
	.loc 1 2163 0
	movl	-348(%ebp), %edx
	leal	-544(%ebp), %eax
	movl	%eax, 36(%edx)
.L711:
	.loc 1 2164 0
	cmpl	$0, -352(%ebp)
	jne	.L713
	.loc 1 2165 0
	leal	-544(%ebp), %eax
	movl	%eax, -352(%ebp)
.L713:
	.loc 1 2166 0
	leal	-544(%ebp), %eax
	movl	%eax, -348(%ebp)
.L696:
	.loc 1 2169 0
	cmpl	$0, -352(%ebp)
	je	.L345
	.loc 1 2170 0
	movl	-352(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	check_format_types
	.loc 1 2172 0
	jmp	.L345
.L716:
.LBE13:
	.loc 1 2173 0
	movl	-20(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L717
	call	__stack_chk_fail_local
.L717:
	addl	$828, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	check_format_info_main, .-check_format_info_main
	.section	.rodata
	.type	__FUNCTION__.12108, @object
	.size	__FUNCTION__.12108, 19
__FUNCTION__.12108:
	.string	"check_format_types"
	.align 4
.LC202:
	.string	"writing through null pointer (arg %d)"
	.align 4
.LC203:
	.string	"reading through null pointer (arg %d)"
	.align 4
.LC204:
	.string	"writing into constant object (arg %d)"
	.align 4
.LC205:
	.string	"extra type qualifiers in format argument (arg %d)"
	.align 4
.LC206:
	.string	"format argument is not a pointer (arg %d)"
	.align 4
.LC207:
	.string	"format argument is not a pointer to a pointer (arg %d)"
.LC208:
	.string	"pointer"
.LC209:
	.string	"different type"
.LC210:
	.string	"%s is not type %s (arg %d)"
.LC211:
	.string	"%s format, %s arg (arg %d)"
	.text
	.type	check_format_types, @function
check_format_types:
.LFB29:
	.loc 1 2182 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$84, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB26:
	.loc 1 2183 0
	jmp	.L720
.L721:
	.loc 1 2192 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2193 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2194 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L722
	.loc 1 2196 0
	movl	$0, -16(%ebp)
	.loc 1 2197 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2198 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2201 0
	cmpl	$0, -28(%ebp)
	jne	.L724
	.loc 1 2202 0
	leal	__FUNCTION__.12108@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2202, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L724:
	.loc 1 2203 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L726
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L726
	.loc 1 2204 0
	leal	__FUNCTION__.12108@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2204, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L726:
	.loc 1 2206 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L731
	.loc 1 2207 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	280(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 2209 0
	jmp	.L731
.L732:
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L731:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L733
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L733
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L736
.L733:
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L736
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L732
.L736:
	.loc 1 2213 0
	movl	$0, -20(%ebp)
	jmp	.L738
.L739:
	.loc 1 2215 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L740
	.loc 1 2217 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2218 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L742
	.loc 1 2222 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L744
	cmpl	$0, -20(%ebp)
	jne	.L744
	cmpl	$0, -40(%ebp)
	je	.L744
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L744
	.loc 1 2226 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L744:
	.loc 1 2231 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L749
	cmpl	$0, -20(%ebp)
	jne	.L749
	cmpl	$0, -40(%ebp)
	je	.L749
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L749
	.loc 1 2235 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L749:
	.loc 1 2239 0
	cmpl	$0, -40(%ebp)
	je	.L754
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L754
	.loc 1 2240 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2239 0
	jmp	.L757
.L754:
	.loc 1 2242 0
	movl	$0, -40(%ebp)
.L757:
	.loc 1 2249 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L758
	cmpl	$0, -20(%ebp)
	jne	.L758
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L761
	cmpl	$0, -40(%ebp)
	je	.L758
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	je	.L761
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L758
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L758
.L761:
	.loc 1 2256 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L758:
	.loc 1 2261 0
	cmpl	$0, -20(%ebp)
	jle	.L766
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L766
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L769
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L769
	movl	-36(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L766
.L769:
	.loc 1 2266 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L766:
	.loc 1 2213 0
	addl	$1, -20(%ebp)
	jmp	.L738
.L740:
	.loc 1 2272 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	.L772
	.loc 1 2273 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L742
.L772:
	.loc 1 2275 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2276 0
	jmp	.L742
.L738:
	.loc 1 2213 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L739
.L742:
	.loc 1 2280 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L722
	.loc 1 2283 0
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2284 0
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2289 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L776
	.loc 1 2290 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L778
	movl	integer_types@GOT(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L778
	movl	integer_types@GOT(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L781
.L778:
	movl	$1, -60(%ebp)
	jmp	.L782
.L781:
	movl	$0, -60(%ebp)
.L782:
	movl	-60(%ebp), %eax
	movl	%eax, -16(%ebp)
.L776:
	.loc 1 2295 0
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L722
	.loc 1 2301 0
	movl	global_trees@GOT(%ebx), %eax
	movl	108(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L784
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L722
	cmpl	$1, -20(%ebp)
	jne	.L784
	cmpl	$0, -16(%ebp)
	jne	.L722
.L784:
	.loc 1 2308 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L788
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L788
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L791
	cmpl	$0, -20(%ebp)
	je	.L791
	cmpl	$1, -20(%ebp)
	jne	.L788
	cmpl	$0, -16(%ebp)
	je	.L788
.L791:
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L795
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_unsigned_type@PLT
	cmpl	-28(%ebp), %eax
	sete	-53(%ebp)
	jmp	.L797
.L795:
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	c_common_signed_type@PLT
	cmpl	-28(%ebp), %eax
	sete	-53(%ebp)
.L797:
	cmpb	$0, -53(%ebp)
	jne	.L722
.L788:
	.loc 1 2317 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L798
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L800
	cmpl	$1, -20(%ebp)
	jg	.L798
.L800:
	cmpl	$0, -16(%ebp)
	jne	.L722
.L798:
.LBB27:
	.loc 1 2326 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2327 0
	movl	$0, -8(%ebp)
	.loc 1 2328 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L802
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L802
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L805
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L802
.L805:
	.loc 1 2333 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L807
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L807
	.loc 1 2335 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2333 0
	jmp	.L802
.L807:
	.loc 1 2337 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L802:
	.loc 1 2343 0
	cmpl	$0, -8(%ebp)
	jne	.L810
	.loc 1 2345 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L812
	.loc 1 2346 0
	leal	.LC208@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L810
.L812:
	.loc 1 2348 0
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L810:
	.loc 1 2352 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L814
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L814
	movl	-32(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-28(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L814
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L814
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L814
	.loc 1 2357 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L814:
	.loc 1 2359 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L722
	.loc 1 2365 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L821
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L821
	.loc 1 2367 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L821:
	.loc 1 2368 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L824
	.loc 1 2369 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L722
.L824:
	.loc 1 2372 0
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC211@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L722:
.LBE27:
.LBE26:
	.loc 1 2183 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 12(%ebp)
.L720:
	cmpl	$0, 12(%ebp)
	jne	.L721
	.loc 1 2376 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	check_format_types, .-check_format_types
	.local	dollar_arguments_count
	.comm	dollar_arguments_count,4,4
	.local	dollar_first_arg_num
	.comm	dollar_first_arg_num,4,4
	.local	dollar_max_arg_used
	.comm	dollar_max_arg_used,4,4
	.local	dollar_format_warned
	.comm	dollar_format_warned,4,4
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI3
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
	.long	.LCFI6-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI10-.LFB18
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI14-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI15
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
	.long	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI21
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
	.long	.LCFI24-.LFB21
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
	.long	.LCFI32-.LCFI29
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
	.long	.LCFI37-.LCFI34
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI38-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI39
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
	.long	.LCFI45-.LCFI43
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
	.long	.LCFI53-.LCFI51
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
	.long	.LCFI54-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI55
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/tree.h"
	.file 4 "../../../kgccfe/gnu/hashtable.h"
	.file 5 "../../../kgccfe/gnu/location.h"
	.file 6 "../../../kgccfe/gnu/machmode.h"
	.file 7 "../../../kgccfe/omp_types.h"
	.file 8 "../../../kgccfe/gnu/diagnostic.h"
	.file 9 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 10 "../../../include/gnu/safe-ctype.h"
	.file 11 "../../../kgccfe/gnu/flags.h"
	.file 12 "../../../kgccfe/gnu/c-common.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/libio.h"
	.file 15 "/usr/include/bits/types.h"
	.file 16 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 17 "../../../include/gnu/obstack.h"
	.file 18 "../../../kgccfe/gnu/langhooks.h"
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
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI3-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI38-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI39-.Ltext0
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
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI55-.Ltext0
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
	.section	.debug_info
	.long	0x728c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/c-format.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.string	"rtx_def"
	.byte	0x1
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0xc4
	.uleb128 0x3
	.byte	0x4
	.long	0xca
	.uleb128 0x5
	.long	0x1a4
	.string	"tree_node"
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.value	0x855
	.long	0x2ad8
	.uleb128 0x7
	.string	"int_cst"
	.byte	0x3
	.value	0x856
	.long	0x2df2
	.uleb128 0x7
	.string	"real_cst"
	.byte	0x3
	.value	0x857
	.long	0x2e3a
	.uleb128 0x7
	.string	"vector"
	.byte	0x3
	.value	0x858
	.long	0x2f5d
	.uleb128 0x7
	.string	"string"
	.byte	0x3
	.value	0x859
	.long	0x2e9b
	.uleb128 0x7
	.string	"complex"
	.byte	0x3
	.value	0x85a
	.long	0x2f08
	.uleb128 0x7
	.string	"identifier"
	.byte	0x3
	.value	0x85b
	.long	0x3192
	.uleb128 0x7
	.string	"decl"
	.byte	0x3
	.value	0x85c
	.long	0x386e
	.uleb128 0x7
	.string	"type"
	.byte	0x3
	.value	0x85d
	.long	0x33f7
	.uleb128 0x7
	.string	"list"
	.byte	0x3
	.value	0x85e
	.long	0x31c9
	.uleb128 0x7
	.string	"vec"
	.byte	0x3
	.value	0x85f
	.long	0x3210
	.uleb128 0x7
	.string	"exp"
	.byte	0x3
	.value	0x860
	.long	0x3261
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.value	0x861
	.long	0x32ad
	.uleb128 0x7
	.string	"omp"
	.byte	0x3
	.value	0x863
	.long	0x420d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1aa
	.uleb128 0x8
	.long	0x1af
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x9
	.byte	0x2b
	.long	0x1e2
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x2
	.string	"va_list"
	.byte	0x9
	.byte	0x69
	.long	0x1cc
	.uleb128 0x2
	.string	"size_t"
	.byte	0x10
	.byte	0xd6
	.long	0x1be
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
	.byte	0xf
	.byte	0x3b
	.long	0x25d
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xf
	.byte	0x90
	.long	0x2a7
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xf
	.byte	0x91
	.long	0x288
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x2
	.string	"FILE"
	.byte	0xd
	.byte	0x2e
	.long	0x2d8
	.uleb128 0xc
	.long	0x553
	.long	.LASF2
	.byte	0x94
	.byte	0xd
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xe
	.value	0x10c
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xe
	.value	0x111
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xe
	.value	0x112
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xe
	.value	0x113
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xe
	.value	0x114
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xe
	.value	0x115
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xe
	.value	0x116
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xe
	.value	0x117
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xe
	.value	0x118
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xe
	.value	0x11a
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xe
	.value	0x11b
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xe
	.value	0x11c
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xe
	.value	0x11e
	.long	0x5c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xe
	.value	0x120
	.long	0x5cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xe
	.value	0x122
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xe
	.value	0x126
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xe
	.value	0x128
	.long	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xe
	.value	0x12c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xe
	.value	0x12d
	.long	0x241
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xe
	.value	0x12e
	.long	0x5d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xe
	.value	0x132
	.long	0x5e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xe
	.value	0x13b
	.long	0x2b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xe
	.value	0x144
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xe
	.value	0x145
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xe
	.value	0x146
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xe
	.value	0x147
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xe
	.value	0x148
	.long	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xe
	.value	0x14a
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xe
	.value	0x14c
	.long	0x5e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.long	0x563
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x569
	.uleb128 0x8
	.long	0x205
	.uleb128 0x3
	.byte	0x4
	.long	0x1a4
	.uleb128 0x10
	.string	"_IO_lock_t"
	.byte	0xe
	.byte	0xb0
	.uleb128 0x11
	.long	0x5c5
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xe
	.byte	0xb6
	.uleb128 0x12
	.string	"_next"
	.byte	0xe
	.byte	0xb7
	.long	0x5c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"_sbuf"
	.byte	0xe
	.byte	0xb8
	.long	0x5cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"_pos"
	.byte	0xe
	.byte	0xbc
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x582
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8
	.uleb128 0xe
	.long	0x5e1
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x574
	.uleb128 0xe
	.long	0x5f7
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0x27
	.byte	0x0
	.uleb128 0x8
	.long	0x1b7
	.uleb128 0x3
	.byte	0x4
	.long	0x1b7
	.uleb128 0x3
	.byte	0x4
	.long	0x608
	.uleb128 0x13
	.long	0x614
	.byte	0x1
	.uleb128 0x14
	.long	0x1b7
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x614
	.uleb128 0x16
	.long	0x865
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.uleb128 0x17
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x17
	.string	"BImode"
	.sleb128 1
	.uleb128 0x17
	.string	"QImode"
	.sleb128 2
	.uleb128 0x17
	.string	"HImode"
	.sleb128 3
	.uleb128 0x17
	.string	"SImode"
	.sleb128 4
	.uleb128 0x17
	.string	"DImode"
	.sleb128 5
	.uleb128 0x17
	.string	"TImode"
	.sleb128 6
	.uleb128 0x17
	.string	"OImode"
	.sleb128 7
	.uleb128 0x17
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x17
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x17
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x17
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x17
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x17
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x17
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x17
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x17
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x17
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x17
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x17
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x17
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x17
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x17
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x17
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x17
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x17
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x17
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x17
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x17
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x17
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x17
	.string	"COImode"
	.sleb128 30
	.uleb128 0x17
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x17
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x17
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x17
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x17
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x17
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x17
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x17
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x17
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x17
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x17
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x17
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x17
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x17
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x17
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x17
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x17
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x17
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x17
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x17
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x17
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x17
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x17
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x17
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x11
	.long	0x897
	.string	"location_s"
	.byte	0x8
	.byte	0x5
	.byte	0x1c
	.uleb128 0x12
	.string	"file"
	.byte	0x5
	.byte	0x1e
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"line"
	.byte	0x5
	.byte	0x21
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x5
	.byte	0x23
	.long	0x865
	.uleb128 0x16
	.long	0x11cb
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x27
	.uleb128 0x17
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x17
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x17
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x17
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x17
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x17
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x17
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x17
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x17
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x17
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x17
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x17
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x17
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x17
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x17
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x17
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x17
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x17
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x17
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x17
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x17
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x17
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x17
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x17
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x17
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x17
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x17
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x17
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x17
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x17
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x17
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x17
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x17
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x17
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x17
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x17
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x17
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x17
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x17
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x17
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x17
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x17
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x17
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x17
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x17
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x17
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x17
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x17
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x17
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x17
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x17
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x17
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x17
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x17
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x17
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x17
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x17
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x17
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x17
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x17
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x17
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x17
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x17
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x17
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x17
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x17
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x17
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x17
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x17
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x17
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x17
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x17
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x17
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x17
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x17
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x17
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x17
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x17
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x17
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x17
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x17
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x17
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x17
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x17
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x17
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x17
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x17
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x17
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x17
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x17
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x17
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x17
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x17
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x17
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x17
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x17
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x17
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x17
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x17
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x17
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x17
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x17
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x17
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x17
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x17
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x17
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x17
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x17
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x17
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x17
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x17
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x17
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x17
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x17
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x17
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x17
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x17
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x17
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x17
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x17
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x17
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x17
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x17
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x17
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x17
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x17
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x17
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x17
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x17
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x17
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x17
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x17
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x17
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x17
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x17
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x17
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x17
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x17
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x17
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x17
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x17
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x17
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x17
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x17
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x17
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x17
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x17
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x17
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x17
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x17
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x17
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x17
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x31
	.long	0x1be
	.uleb128 0x11
	.long	0x121b
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x32
	.uleb128 0x12
	.string	"block"
	.byte	0x3
	.byte	0x32
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"offset"
	.byte	0x3
	.byte	0x32
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x36
	.long	0x1225
	.uleb128 0x4
	.string	"st"
	.byte	0x1
	.uleb128 0x18
	.long	0x127a
	.long	.LASF3
	.byte	0x4
	.byte	0x3
	.byte	0x5a
	.uleb128 0x17
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x17
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x17
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x17
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x16
	.long	0x2ad8
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x69
	.uleb128 0x17
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x17
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x17
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x17
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x17
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x17
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x17
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x17
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x17
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x17
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x17
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x17
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x17
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x17
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x17
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x17
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x17
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x17
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x17
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x17
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x17
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x17
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x17
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x17
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x17
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x17
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x17
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x17
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x17
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x17
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x17
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x17
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x17
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x17
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x17
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x17
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x17
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x17
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x17
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x17
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x17
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x17
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x17
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x17
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x17
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x17
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x17
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x17
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x17
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x17
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x17
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x17
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x17
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x17
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x17
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x17
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x17
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x17
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x17
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x17
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x17
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x17
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x17
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x17
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x17
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x17
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x17
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x17
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x17
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x17
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x17
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x17
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x17
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x17
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x17
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x17
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x17
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x17
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x17
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x17
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x17
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x17
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x17
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x17
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x17
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x17
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x17
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x17
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x17
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x17
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x17
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x17
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x17
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x17
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x17
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x17
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x17
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x17
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x17
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x17
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x17
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x17
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x17
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x17
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x17
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x17
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x17
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x17
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x17
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x17
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x17
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x17
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x17
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x17
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x17
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x17
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x17
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x17
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x17
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x17
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x17
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x17
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x17
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x17
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x17
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x17
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x17
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x17
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x17
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x17
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x17
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x17
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x17
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x17
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x17
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x17
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x17
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x17
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x17
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x17
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x17
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x17
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x17
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x17
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x17
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x17
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x17
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x17
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x17
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x17
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x17
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x17
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x17
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x17
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x17
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x17
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x17
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x17
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x17
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x17
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x17
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x17
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x17
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x17
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x17
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x17
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x17
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x17
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x11
	.long	0x2db6
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8e
	.uleb128 0x12
	.string	"chain"
	.byte	0x3
	.byte	0x8f
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"type"
	.byte	0x3
	.byte	0x90
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.string	"code"
	.byte	0x3
	.byte	0x92
	.long	0x8a9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x94
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"constant_flag"
	.byte	0x3
	.byte	0x95
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x96
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x97
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x98
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x99
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x9a
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"unused_0"
	.byte	0x3
	.byte	0x9b
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"used_flag"
	.byte	0x3
	.byte	0x9d
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0x9e
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"static_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"public_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"private_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x3
	.byte	0xa6
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x3
	.byte	0xa7
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x3
	.byte	0xa8
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x3
	.byte	0xa9
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x3
	.byte	0xaa
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x3
	.byte	0xab
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x3
	.byte	0xac
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"unused_1"
	.byte	0x3
	.byte	0xad
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"sbuf"
	.byte	0x3
	.byte	0xaf
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.string	"sdram"
	.byte	0x3
	.byte	0xb0
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.string	"v1buf"
	.byte	0x3
	.byte	0xb1
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.string	"v2buf"
	.byte	0x3
	.byte	0xb2
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.string	"v4buf"
	.byte	0x3
	.byte	0xb3
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1b
	.long	0x2df2
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x2f6
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x2f7
	.long	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x2f8
	.long	0x25d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1b
	.long	0x2e3a
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x2ef
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x2f0
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x2f1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x2f9
	.long	0x2db6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	0x2e88
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x30b
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x30c
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x30d
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x30e
	.long	0x2e95
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2e88
	.uleb128 0x1b
	.long	0x2f02
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x31f
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x322
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x323
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x325
	.long	0x2f02
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x121b
	.uleb128 0x1b
	.long	0x2f5d
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x32e
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x32f
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x330
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x331
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x332
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1b
	.long	0x2fa5
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x340
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x341
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x342
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x343
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x11
	.long	0x2fef
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x11
	.byte	0xa2
	.uleb128 0x12
	.string	"limit"
	.byte	0x11
	.byte	0xa3
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"prev"
	.byte	0x11
	.byte	0xa4
	.long	0x2fef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"contents"
	.byte	0x11
	.byte	0xa5
	.long	0x553
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fa5
	.uleb128 0x1b
	.long	0x3122
	.string	"obstack"
	.byte	0x2c
	.byte	0xd
	.value	0x31b
	.uleb128 0x12
	.string	"chunk_size"
	.byte	0x11
	.byte	0xaa
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"chunk"
	.byte	0x11
	.byte	0xab
	.long	0x2fef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"object_base"
	.byte	0x11
	.byte	0xac
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"next_free"
	.byte	0x11
	.byte	0xad
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"chunk_limit"
	.byte	0x11
	.byte	0xae
	.long	0x2c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"temp"
	.byte	0x11
	.byte	0xaf
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"alignment_mask"
	.byte	0x11
	.byte	0xb0
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"chunkfun"
	.byte	0x11
	.byte	0xb5
	.long	0x3137
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"freefun"
	.byte	0x11
	.byte	0xb6
	.long	0x314e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"extra_arg"
	.byte	0x11
	.byte	0xb7
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.string	"use_extra_arg"
	.byte	0x11
	.byte	0xbd
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.string	"maybe_empty_object"
	.byte	0x11
	.byte	0xbe
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.string	"alloc_failed"
	.byte	0x11
	.byte	0xc2
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1d
	.long	0x3137
	.byte	0x1
	.long	0x2fef
	.uleb128 0x14
	.long	0x2c4
	.uleb128 0x14
	.long	0x2a7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3122
	.uleb128 0x13
	.long	0x314e
	.byte	0x1
	.uleb128 0x14
	.long	0x2c4
	.uleb128 0x14
	.long	0x2fef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x313d
	.uleb128 0xc
	.long	0x3192
	.long	.LASF11
	.byte	0xc
	.byte	0x4
	.byte	0x19
	.uleb128 0x12
	.string	"str"
	.byte	0x4
	.byte	0x1c
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"len"
	.byte	0x4
	.byte	0x1d
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"hash_value"
	.byte	0x4
	.byte	0x1e
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1b
	.long	0x31c9
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x35f
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x360
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x361
	.long	0x3154
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1b
	.long	0x3210
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x369
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x36a
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x36b
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x36c
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	0x3251
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x377
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x378
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x3
	.value	0x379
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x37a
	.long	0x3251
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xe
	.long	0x3261
	.long	0xb8
	.uleb128 0xf
	.long	0x1c5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x32ad
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3bd
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x3be
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3bf
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3c2
	.long	0x3251
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	0x339d
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x3f3
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x3f4
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x3f6
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.value	0x3f7
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.string	"block_num"
	.byte	0x3
	.value	0x3f8
	.long	0x1be
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x3
	.value	0x3fa
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x3fb
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x3fc
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x3
	.value	0x3fd
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x3fe
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x3ff
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x20
	.long	0x33e4
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x562
	.uleb128 0x7
	.string	"address"
	.byte	0x3
	.value	0x563
	.long	0x1b7
	.uleb128 0x7
	.string	"pointer"
	.byte	0x3
	.value	0x564
	.long	0x2c6
	.uleb128 0x7
	.string	"die"
	.byte	0x3
	.value	0x565
	.long	0x33f1
	.byte	0x0
	.uleb128 0x4
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x33e4
	.uleb128 0x1b
	.long	0x3749
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x53f
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x540
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x541
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x542
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x3
	.value	0x543
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x3
	.value	0x544
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x545
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"precision"
	.byte	0x3
	.value	0x547
	.long	0x1be
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"mode"
	.byte	0x3
	.value	0x548
	.long	0x61c
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"string_flag"
	.byte	0x3
	.value	0x54a
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x54b
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x54c
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x54d
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"packed_flag"
	.byte	0x3
	.value	0x54e
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"restrict_flag"
	.byte	0x3
	.value	0x54f
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF16
	.byte	0x3
	.value	0x550
	.long	0x1be
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x3
	.value	0x552
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x3
	.value	0x553
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x3
	.value	0x554
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x3
	.value	0x555
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x3
	.value	0x556
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x557
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.value	0x558
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x3
	.value	0x559
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"defer_expansion"
	.byte	0x3
	.value	0x55c
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"align"
	.byte	0x3
	.value	0x55f
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x560
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x561
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x566
	.long	0x339d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x3
	.value	0x568
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x569
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x56a
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x56b
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x56c
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x56d
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x56e
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x56f
	.long	0x25d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x571
	.long	0x3755
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x573
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x574
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x575
	.long	0x11dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x4
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3749
	.uleb128 0x1b
	.long	0x37a0
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x7f0
	.uleb128 0x1e
	.string	"align"
	.byte	0x3
	.value	0x7f1
	.long	0x1be
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"off_align"
	.byte	0x3
	.value	0x7f2
	.long	0x1be
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x37d5
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x7e7
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x7ea
	.long	0x127a
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x7ed
	.long	0x25d
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.value	0x7f3
	.long	0x375b
	.byte	0x0
	.uleb128 0x20
	.long	0x3814
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x808
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x809
	.long	0x381a
	.uleb128 0x7
	.string	"r"
	.byte	0x3
	.value	0x80a
	.long	0x9d
	.uleb128 0x7
	.string	"t"
	.byte	0x3
	.value	0x80b
	.long	0xb8
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x80c
	.long	0x1b7
	.byte	0x0
	.uleb128 0x21
	.long	.LASF20
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3814
	.uleb128 0x22
	.long	0x3858
	.byte	0x4
	.byte	0x3
	.value	0x81e
	.uleb128 0x7
	.string	"st"
	.byte	0x3
	.value	0x81f
	.long	0x2f02
	.uleb128 0x7
	.string	"label_idx"
	.byte	0x3
	.value	0x820
	.long	0x11cb
	.uleb128 0x7
	.string	"field_id"
	.byte	0x3
	.value	0x821
	.long	0x1be
	.byte	0x0
	.uleb128 0x22
	.long	0x386e
	.byte	0x4
	.byte	0x3
	.value	0x823
	.uleb128 0x7
	.string	"st2"
	.byte	0x3
	.value	0x824
	.long	0x2f02
	.byte	0x0
	.uleb128 0x1b
	.long	0x3faa
	.string	"tree_decl"
	.byte	0x94
	.byte	0x3
	.value	0x7a0
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x7a1
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7a2
	.long	0x897
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7a3
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7a4
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.string	"mode"
	.byte	0x3
	.value	0x7a5
	.long	0x61c
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"external_flag"
	.byte	0x3
	.value	0x7a7
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7a8
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7a9
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"inline_flag"
	.byte	0x3
	.value	0x7aa
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7ab
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7ac
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7ad
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.value	0x7ae
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7b2
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7b3
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7b4
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7b5
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7b6
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7ba
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"common_flag"
	.byte	0x3
	.value	0x7bb
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"defer_output"
	.byte	0x3
	.value	0x7bc
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"transparent_union"
	.byte	0x3
	.value	0x7bd
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7be
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7bf
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7c0
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"weak_flag"
	.byte	0x3
	.value	0x7c1
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7c3
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7c4
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7c5
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7c6
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7c7
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF3
	.byte	0x3
	.value	0x7c8
	.long	0x122a
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"pure_flag"
	.byte	0x3
	.value	0x7c9
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF16
	.byte	0x3
	.value	0x7cb
	.long	0x1be
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"non_addressable"
	.byte	0x3
	.value	0x7cc
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x3
	.value	0x7cd
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"uninlinable"
	.byte	0x3
	.value	0x7ce
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"noinline_attrib"
	.byte	0x3
	.value	0x7d2
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x3
	.value	0x7d5
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x3
	.value	0x7d6
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x3
	.value	0x7d7
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x3
	.value	0x7d8
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x3
	.value	0x7d9
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x7da
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.value	0x7db
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"lang_flag_7"
	.byte	0x3
	.value	0x7dc
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x7df
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"promote_static"
	.byte	0x3
	.value	0x7e3
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"always_inline_attrib"
	.byte	0x3
	.value	0x7e4
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x3
	.value	0x7f4
	.long	0x37a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x3
	.value	0x7f6
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x3
	.value	0x7f7
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x7f8
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x7f9
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x7fa
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x7fb
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x3
	.value	0x7fc
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x7fd
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x7fe
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x3
	.value	0x7ff
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x800
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x801
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x80d
	.long	0x37d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x810
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x814
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x816
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x817
	.long	0x25d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x819
	.long	0x3fb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1e
	.string	"symtab_idx"
	.byte	0x3
	.value	0x81b
	.long	0x1be
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x1e
	.string	"label_defined"
	.byte	0x3
	.value	0x81c
	.long	0x1be
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x3
	.value	0x822
	.long	0x3820
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"sgi_u2"
	.byte	0x3
	.value	0x825
	.long	0x3858
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x826
	.long	0x11dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x82a
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x4
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3faa
	.uleb128 0x16
	.long	0x420d
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x7
	.byte	0x1e
	.uleb128 0x17
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x17
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x17
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x17
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x17
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x17
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x17
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x17
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x17
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x17
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x17
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x17
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x17
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x17
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x17
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x17
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x17
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x17
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x17
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x17
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x17
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x17
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x17
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x17
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x17
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x17
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x17
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x17
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x17
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x17
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x17
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x17
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0x1b
	.long	0x425c
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x832
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x833
	.long	0x2ad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x834
	.long	0x3fbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x835
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1b
	.long	0x4317
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0x9db
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x3
	.value	0x9de
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0x9e0
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0x9e3
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0x9eb
	.long	0x431c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0x9ee
	.long	0x431c
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0x9f3
	.long	0x431c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa02
	.long	0x435a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x1a4
	.uleb128 0x8
	.long	0x4321
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x1d
	.long	0x434e
	.byte	0x1
	.long	0xb8
	.uleb128 0x14
	.long	0x434e
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0x1b7
	.uleb128 0x14
	.long	0x4354
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xb8
	.uleb128 0x3
	.byte	0x4
	.long	0x4321
	.uleb128 0x8
	.long	0x435f
	.uleb128 0x3
	.byte	0x4
	.long	0x432a
	.uleb128 0x18
	.long	0x438a
	.long	.LASF21
	.byte	0x4
	.byte	0xc
	.byte	0xfa
	.uleb128 0x17
	.string	"clk_c"
	.sleb128 0
	.uleb128 0x17
	.string	"clk_cplusplus"
	.sleb128 1
	.byte	0x0
	.uleb128 0x23
	.long	.LASF21
	.byte	0xc
	.byte	0xfe
	.long	0x4365
	.uleb128 0x24
	.long	0x43c7
	.byte	0x8
	.byte	0x8
	.byte	0x1f
	.uleb128 0x12
	.string	"format_spec"
	.byte	0x8
	.byte	0x20
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"args_ptr"
	.byte	0x8
	.byte	0x21
	.long	0x43c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e8
	.uleb128 0x2
	.string	"text_info"
	.byte	0x8
	.byte	0x22
	.long	0x4395
	.uleb128 0x25
	.long	0x445e
	.byte	0x4
	.byte	0x8
	.byte	0x26
	.uleb128 0x17
	.string	"DK_FATAL"
	.sleb128 0
	.uleb128 0x17
	.string	"DK_ICE"
	.sleb128 1
	.uleb128 0x17
	.string	"DK_SORRY"
	.sleb128 2
	.uleb128 0x17
	.string	"DK_ERROR"
	.sleb128 3
	.uleb128 0x17
	.string	"DK_WARNING"
	.sleb128 4
	.uleb128 0x17
	.string	"DK_ANACHRONISM"
	.sleb128 5
	.uleb128 0x17
	.string	"DK_NOTE"
	.sleb128 6
	.uleb128 0x17
	.string	"DK_DEBUG"
	.sleb128 7
	.uleb128 0x17
	.string	"DK_LAST_DIAGNOSTIC_KIND"
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_t"
	.byte	0x8
	.byte	0x2b
	.long	0x43de
	.uleb128 0x24
	.long	0x44af
	.byte	0x14
	.byte	0x8
	.byte	0x31
	.uleb128 0x12
	.string	"message"
	.byte	0x8
	.byte	0x32
	.long	0x43cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"location"
	.byte	0x8
	.byte	0x33
	.long	0x897
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"kind"
	.byte	0x8
	.byte	0x35
	.long	0x445e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x8
	.byte	0x36
	.long	0x4472
	.uleb128 0x25
	.long	0x4533
	.byte	0x4
	.byte	0x8
	.byte	0x40
	.uleb128 0x17
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
	.sleb128 0
	.uleb128 0x17
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
	.sleb128 1
	.uleb128 0x17
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_prefixing_rule_t"
	.byte	0x8
	.byte	0x44
	.long	0x44c6
	.uleb128 0x24
	.long	0x460b
	.byte	0x18
	.byte	0x8
	.byte	0x48
	.uleb128 0x12
	.string	"prefix"
	.byte	0x8
	.byte	0x4a
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"maximum_length"
	.byte	0x8
	.byte	0x4e
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"ideal_maximum_length"
	.byte	0x8
	.byte	0x52
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"indent_skip"
	.byte	0x8
	.byte	0x55
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"emitted_prefix_p"
	.byte	0x8
	.byte	0x58
	.long	0x4321
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"need_newline_p"
	.byte	0x8
	.byte	0x5b
	.long	0x4321
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x12
	.string	"prefixing_rule"
	.byte	0x8
	.byte	0x5e
	.long	0x4533
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x8
	.byte	0x5f
	.long	0x4556
	.uleb128 0x23
	.long	.LASF22
	.byte	0x8
	.byte	0x64
	.long	0x462a
	.uleb128 0xc
	.long	0x46b1
	.long	.LASF22
	.byte	0xd0
	.byte	0x8
	.byte	0x64
	.uleb128 0x12
	.string	"state"
	.byte	0x8
	.byte	0x6c
	.long	0x460b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"stream"
	.byte	0x8
	.byte	0x6f
	.long	0x46ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"obstack"
	.byte	0x8
	.byte	0x72
	.long	0x2ff5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"line_length"
	.byte	0x8
	.byte	0x75
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"digit_buffer"
	.byte	0x8
	.byte	0x79
	.long	0x46f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"format_decoder"
	.byte	0x8
	.byte	0x83
	.long	0x46b1
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x8
	.byte	0x65
	.long	0x46c3
	.uleb128 0x3
	.byte	0x4
	.long	0x46c9
	.uleb128 0x1d
	.long	0x46de
	.byte	0x1
	.long	0x4321
	.uleb128 0x14
	.long	0x46de
	.uleb128 0x14
	.long	0x46e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x461f
	.uleb128 0x3
	.byte	0x4
	.long	0x43cd
	.uleb128 0x3
	.byte	0x4
	.long	0x2cc
	.uleb128 0xe
	.long	0x4700
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0x7f
	.byte	0x0
	.uleb128 0x23
	.long	.LASF23
	.byte	0x8
	.byte	0xac
	.long	0x470b
	.uleb128 0x26
	.long	0x480f
	.long	.LASF23
	.value	0x110
	.byte	0x8
	.byte	0xac
	.uleb128 0x12
	.string	"buffer"
	.byte	0x8
	.byte	0xb8
	.long	0x461f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"diagnostic_count"
	.byte	0x8
	.byte	0xbb
	.long	0x486e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x12
	.string	"warnings_are_errors_message"
	.byte	0x8
	.byte	0xbf
	.long	0x4321
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x12
	.string	"begin_diagnostic"
	.byte	0x8
	.byte	0xc8
	.long	0x480f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x12
	.string	"end_diagnostic"
	.byte	0x8
	.byte	0xcb
	.long	0x484f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x12
	.string	"internal_error"
	.byte	0x8
	.byte	0xce
	.long	0x488f
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x12
	.string	"last_function"
	.byte	0x8
	.byte	0xd3
	.long	0xb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x12
	.string	"last_module"
	.byte	0x8
	.byte	0xd6
	.long	0x1b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x12
	.string	"lock"
	.byte	0x8
	.byte	0xd8
	.long	0x1b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x12
	.string	"x_data"
	.byte	0x8
	.byte	0xdb
	.long	0x2c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_starter_fn"
	.byte	0x8
	.byte	0xad
	.long	0x482c
	.uleb128 0x3
	.byte	0x4
	.long	0x4832
	.uleb128 0x13
	.long	0x4843
	.byte	0x1
	.uleb128 0x14
	.long	0x4843
	.uleb128 0x14
	.long	0x4849
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4700
	.uleb128 0x3
	.byte	0x4
	.long	0x44af
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x8
	.byte	0xaf
	.long	0x480f
	.uleb128 0xe
	.long	0x487e
	.long	0x1b7
	.uleb128 0xf
	.long	0x1c5
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.long	0x488f
	.byte	0x1
	.uleb128 0x14
	.long	0x1a4
	.uleb128 0x14
	.long	0x43c7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x487e
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x12
	.byte	0x1d
	.long	0x48b1
	.uleb128 0x3
	.byte	0x4
	.long	0x48b7
	.uleb128 0x13
	.long	0x48cd
	.byte	0x1
	.uleb128 0x14
	.long	0x46ea
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0x1b7
	.byte	0x0
	.uleb128 0x11
	.long	0x4a53
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x12
	.byte	0x23
	.uleb128 0x12
	.string	"walk_subtrees"
	.byte	0x12
	.byte	0x24
	.long	0x4a9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"cannot_inline_tree_fn"
	.byte	0x12
	.byte	0x29
	.long	0x4ab3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"disregard_inline_limits"
	.byte	0x12
	.byte	0x2a
	.long	0x4ac9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"add_pending_fn_decls"
	.byte	0x12
	.byte	0x2b
	.long	0x4ae4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"tree_chain_matters_p"
	.byte	0x12
	.byte	0x2d
	.long	0x4ac9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"auto_var_in_fn_p"
	.byte	0x12
	.byte	0x2e
	.long	0x4aff
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"copy_res_decl_for_inlining"
	.byte	0x12
	.byte	0x2f
	.long	0x4b2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"anon_aggr_type_p"
	.byte	0x12
	.byte	0x34
	.long	0x4ac9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"var_mod_type_p"
	.byte	0x12
	.byte	0x35
	.long	0x4b44
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"start_inlining"
	.byte	0x12
	.byte	0x36
	.long	0x4ac9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"end_inlining"
	.byte	0x12
	.byte	0x37
	.long	0x4b56
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"convert_parm_for_inlining"
	.byte	0x12
	.byte	0x38
	.long	0x4b76
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x1d
	.long	0x4a77
	.byte	0x1
	.long	0xc4
	.uleb128 0x14
	.long	0x4a77
	.uleb128 0x14
	.long	0x5fc
	.uleb128 0x14
	.long	0x4a7d
	.uleb128 0x14
	.long	0x2c4
	.uleb128 0x14
	.long	0x2c4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xc4
	.uleb128 0x3
	.byte	0x4
	.long	0x4a83
	.uleb128 0x1d
	.long	0x4a9d
	.byte	0x1
	.long	0xc4
	.uleb128 0x14
	.long	0x4a77
	.uleb128 0x14
	.long	0x5fc
	.uleb128 0x14
	.long	0x2c4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a53
	.uleb128 0x1d
	.long	0x4ab3
	.byte	0x1
	.long	0x1b7
	.uleb128 0x14
	.long	0x4a77
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4aa3
	.uleb128 0x1d
	.long	0x4ac9
	.byte	0x1
	.long	0x1b7
	.uleb128 0x14
	.long	0xc4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ab9
	.uleb128 0x1d
	.long	0x4ae4
	.byte	0x1
	.long	0xc4
	.uleb128 0x14
	.long	0x2c4
	.uleb128 0x14
	.long	0xc4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4acf
	.uleb128 0x1d
	.long	0x4aff
	.byte	0x1
	.long	0x1b7
	.uleb128 0x14
	.long	0xc4
	.uleb128 0x14
	.long	0xc4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4aea
	.uleb128 0x1d
	.long	0x4b2e
	.byte	0x1
	.long	0xc4
	.uleb128 0x14
	.long	0xc4
	.uleb128 0x14
	.long	0xc4
	.uleb128 0x14
	.long	0xc4
	.uleb128 0x14
	.long	0x2c4
	.uleb128 0x14
	.long	0x5fc
	.uleb128 0x14
	.long	0x2c4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b05
	.uleb128 0x1d
	.long	0x4b44
	.byte	0x1
	.long	0x4321
	.uleb128 0x14
	.long	0xc4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b34
	.uleb128 0x13
	.long	0x4b56
	.byte	0x1
	.uleb128 0x14
	.long	0xc4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b4a
	.uleb128 0x1d
	.long	0x4b76
	.byte	0x1
	.long	0xc4
	.uleb128 0x14
	.long	0xc4
	.uleb128 0x14
	.long	0xc4
	.uleb128 0x14
	.long	0xc4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b5c
	.uleb128 0x11
	.long	0x4beb
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x12
	.byte	0x40
	.uleb128 0x12
	.string	"init"
	.byte	0x12
	.byte	0x42
	.long	0x4bf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"final"
	.byte	0x12
	.byte	0x45
	.long	0x4bf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"enter_nested"
	.byte	0x12
	.byte	0x48
	.long	0x4bf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"leave_nested"
	.byte	0x12
	.byte	0x4b
	.long	0x4bf7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.long	0x4bf7
	.byte	0x1
	.uleb128 0x14
	.long	0x381a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4beb
	.uleb128 0x11
	.long	0x4c48
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x12
	.byte	0x51
	.uleb128 0x12
	.string	"dump_tree"
	.byte	0x12
	.byte	0x54
	.long	0x4c5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"type_quals"
	.byte	0x12
	.byte	0x57
	.long	0x4c73
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1d
	.long	0x4c5d
	.byte	0x1
	.long	0x1b7
	.uleb128 0x14
	.long	0x2c4
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c48
	.uleb128 0x1d
	.long	0x4c73
	.byte	0x1
	.long	0x1b7
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c63
	.uleb128 0x11
	.long	0x4d66
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x12
	.byte	0x5d
	.uleb128 0x12
	.string	"make_type"
	.byte	0x12
	.byte	0x60
	.long	0x4d76
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"type_for_mode"
	.byte	0x12
	.byte	0x64
	.long	0x4d91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"type_for_size"
	.byte	0x12
	.byte	0x68
	.long	0x4dac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"unsigned_type"
	.byte	0x12
	.byte	0x6c
	.long	0x4dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"signed_type"
	.byte	0x12
	.byte	0x70
	.long	0x4dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"signed_or_unsigned_type"
	.byte	0x12
	.byte	0x74
	.long	0x4ddd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"type_promotes_to"
	.byte	0x12
	.byte	0x7a
	.long	0x4dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"incomplete_type_error"
	.byte	0x12
	.byte	0x80
	.long	0x4df4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x1d
	.long	0x4d76
	.byte	0x1
	.long	0xb8
	.uleb128 0x14
	.long	0x8a9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4d66
	.uleb128 0x1d
	.long	0x4d91
	.byte	0x1
	.long	0xb8
	.uleb128 0x14
	.long	0x61c
	.uleb128 0x14
	.long	0x1b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4d7c
	.uleb128 0x1d
	.long	0x4dac
	.byte	0x1
	.long	0xb8
	.uleb128 0x14
	.long	0x1be
	.uleb128 0x14
	.long	0x1b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4d97
	.uleb128 0x1d
	.long	0x4dc2
	.byte	0x1
	.long	0xb8
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4db2
	.uleb128 0x1d
	.long	0x4ddd
	.byte	0x1
	.long	0xb8
	.uleb128 0x14
	.long	0x1b7
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4dc8
	.uleb128 0x13
	.long	0x4df4
	.byte	0x1
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4de3
	.uleb128 0x11
	.long	0x4f00
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x12
	.byte	0x86
	.uleb128 0x12
	.string	"pushlevel"
	.byte	0x12
	.byte	0x89
	.long	0x602
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"poplevel"
	.byte	0x12
	.byte	0x90
	.long	0x4f1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"global_bindings_p"
	.byte	0x12
	.byte	0x94
	.long	0x4f26
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"insert_block"
	.byte	0x12
	.byte	0x99
	.long	0x4f38
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"set_block"
	.byte	0x12
	.byte	0x9c
	.long	0x4f38
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"pushdecl"
	.byte	0x12
	.byte	0xa2
	.long	0x4dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"getdecls"
	.byte	0x12
	.byte	0xa5
	.long	0x4f44
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"warn_unused_global"
	.byte	0x12
	.byte	0xa9
	.long	0x4f5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"final_write_globals"
	.byte	0x12
	.byte	0xad
	.long	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"ok_for_sibcall"
	.byte	0x12
	.byte	0xb0
	.long	0x4f5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x1d
	.long	0x4f1a
	.byte	0x1
	.long	0xb8
	.uleb128 0x14
	.long	0x1b7
	.uleb128 0x14
	.long	0x1b7
	.uleb128 0x14
	.long	0x1b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f00
	.uleb128 0x27
	.byte	0x1
	.long	0x1b7
	.uleb128 0x3
	.byte	0x4
	.long	0x4f20
	.uleb128 0x13
	.long	0x4f38
	.byte	0x1
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f2c
	.uleb128 0x27
	.byte	0x1
	.long	0xb8
	.uleb128 0x3
	.byte	0x4
	.long	0x4f3e
	.uleb128 0x1d
	.long	0x4f5a
	.byte	0x1
	.long	0x4321
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f4a
	.uleb128 0x26
	.long	0x5391
	.long	.LASF24
	.value	0x120
	.byte	0x12
	.byte	0xb6
	.uleb128 0x28
	.long	.LASF18
	.byte	0x12
	.byte	0xb8
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"identifier_size"
	.byte	0x12
	.byte	0xbc
	.long	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"init_options"
	.byte	0x12
	.byte	0xc0
	.long	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"decode_option"
	.byte	0x12
	.byte	0xca
	.long	0x53ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"post_options"
	.byte	0x12
	.byte	0xd6
	.long	0x53b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"init"
	.byte	0x12
	.byte	0xde
	.long	0x53ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"finish"
	.byte	0x12
	.byte	0xe1
	.long	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"parse_file"
	.byte	0x12
	.byte	0xe5
	.long	0x602
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"clear_binding_stack"
	.byte	0x12
	.byte	0xe8
	.long	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"get_alias_set"
	.byte	0x12
	.byte	0xec
	.long	0x53e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"expand_constant"
	.byte	0x12
	.byte	0xf1
	.long	0x4dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"expand_expr"
	.byte	0x12
	.byte	0xf5
	.long	0x5409
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"truthvalue_conversion"
	.byte	0x12
	.value	0x102
	.long	0x4dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"insert_default_attributes"
	.byte	0x12
	.value	0x106
	.long	0x4f38
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"safe_from_p"
	.byte	0x12
	.value	0x10f
	.long	0x5424
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"finish_incomplete_decl"
	.byte	0x12
	.value	0x113
	.long	0x4f38
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"unsafe_for_reeval"
	.byte	0x12
	.value	0x118
	.long	0x4c73
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"mark_addressable"
	.byte	0x12
	.value	0x11d
	.long	0x4f5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"staticp"
	.byte	0x12
	.value	0x120
	.long	0x4c73
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"dup_lang_specific_decl"
	.byte	0x12
	.value	0x124
	.long	0x4f38
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"unsave_expr_now"
	.byte	0x12
	.value	0x129
	.long	0x4dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"maybe_build_cleanup"
	.byte	0x12
	.value	0x12d
	.long	0x4dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"set_decl_assembler_name"
	.byte	0x12
	.value	0x134
	.long	0x4f38
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"can_use_bit_fields_p"
	.byte	0x12
	.value	0x138
	.long	0x53b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"honor_readonly"
	.byte	0x12
	.value	0x13b
	.long	0x4321
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"print_statistics"
	.byte	0x12
	.value	0x13f
	.long	0x616
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"print_xnode"
	.byte	0x12
	.value	0x143
	.long	0x4895
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"print_decl"
	.byte	0x12
	.value	0x147
	.long	0x4895
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"print_type"
	.byte	0x12
	.value	0x148
	.long	0x4895
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"print_identifier"
	.byte	0x12
	.value	0x149
	.long	0x4895
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"decl_printable_name"
	.byte	0x12
	.value	0x151
	.long	0x543f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"print_error_function"
	.byte	0x12
	.value	0x154
	.long	0x545c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"expr_size"
	.byte	0x12
	.value	0x15b
	.long	0x4dc2
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"attribute_table"
	.byte	0x12
	.value	0x162
	.long	0x5462
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"common_attribute_table"
	.byte	0x12
	.value	0x163
	.long	0x5462
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"format_attribute_table"
	.byte	0x12
	.value	0x164
	.long	0x5462
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x12
	.value	0x167
	.long	0x4b7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"tree_inlining"
	.byte	0x12
	.value	0x169
	.long	0x48cd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"tree_dump"
	.byte	0x12
	.value	0x16b
	.long	0x4bfd
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"decls"
	.byte	0x12
	.value	0x16d
	.long	0x4dfa
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"types"
	.byte	0x12
	.value	0x16f
	.long	0x4c79
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x1d
	.long	0x53a6
	.byte	0x1
	.long	0x1b7
	.uleb128 0x14
	.long	0x1b7
	.uleb128 0x14
	.long	0x53a6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c6
	.uleb128 0x3
	.byte	0x4
	.long	0x5391
	.uleb128 0x27
	.byte	0x1
	.long	0x4321
	.uleb128 0x3
	.byte	0x4
	.long	0x53b2
	.uleb128 0x1d
	.long	0x53ce
	.byte	0x1
	.long	0x1a4
	.uleb128 0x14
	.long	0x1a4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x53be
	.uleb128 0x1d
	.long	0x53e4
	.byte	0x1
	.long	0x25d
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x53d4
	.uleb128 0x1d
	.long	0x5409
	.byte	0x1
	.long	0x9d
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0x9d
	.uleb128 0x14
	.long	0x61c
	.uleb128 0x14
	.long	0x1b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x53ea
	.uleb128 0x1d
	.long	0x5424
	.byte	0x1
	.long	0x1b7
	.uleb128 0x14
	.long	0x9d
	.uleb128 0x14
	.long	0xb8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x540f
	.uleb128 0x1d
	.long	0x543f
	.byte	0x1
	.long	0x1a4
	.uleb128 0x14
	.long	0xb8
	.uleb128 0x14
	.long	0x1b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x542a
	.uleb128 0x13
	.long	0x5456
	.byte	0x1
	.uleb128 0x14
	.long	0x5456
	.uleb128 0x14
	.long	0x1a4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x470b
	.uleb128 0x3
	.byte	0x4
	.long	0x5445
	.uleb128 0x3
	.byte	0x4
	.long	0x5468
	.uleb128 0x8
	.long	0x425c
	.uleb128 0x29
	.long	0x54a1
	.byte	0x1
	.string	"set_Wformat"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2a
	.string	"setting"
	.byte	0x1
	.byte	0x2a
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x18
	.long	0x5518
	.long	.LASF25
	.byte	0x4
	.byte	0x1
	.byte	0x3f
	.uleb128 0x17
	.string	"printf_format_type"
	.sleb128 0
	.uleb128 0x17
	.string	"scanf_format_type"
	.sleb128 1
	.uleb128 0x17
	.string	"strftime_format_type"
	.sleb128 2
	.uleb128 0x17
	.string	"strfmon_format_type"
	.sleb128 3
	.uleb128 0x17
	.string	"format_type_error"
	.sleb128 4
	.byte	0x0
	.uleb128 0xc
	.long	0x554f
	.long	.LASF26
	.byte	0x14
	.byte	0x1
	.byte	0x44
	.uleb128 0x28
	.long	.LASF25
	.byte	0x1
	.byte	0x45
	.long	0x54a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x28
	.long	.LASF27
	.byte	0x1
	.byte	0x46
	.long	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x28
	.long	.LASF28
	.byte	0x1
	.byte	0x47
	.long	0x26e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x23
	.long	.LASF26
	.byte	0x1
	.byte	0x48
	.long	0x5518
	.uleb128 0x2b
	.long	0x560f
	.byte	0x1
	.string	"handle_format_attribute"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	0xb8
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2a
	.string	"node"
	.byte	0x1
	.byte	0x52
	.long	0x434e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.byte	0x53
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"args"
	.byte	0x1
	.byte	0x54
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"flags"
	.byte	0x1
	.byte	0x55
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.byte	0x56
	.long	0x4354
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"type"
	.byte	0x1
	.byte	0x58
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF30
	.byte	0x1
	.byte	0x59
	.long	0x554f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LASF31
	.byte	0x1
	.byte	0x5a
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF32
	.byte	0x1
	.byte	0x5b
	.long	0x26e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	0x56d6
	.byte	0x1
	.string	"handle_format_arg_attribute"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0xb8
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2a
	.string	"node"
	.byte	0x1
	.byte	0x98
	.long	0x434e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.byte	0x99
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"args"
	.byte	0x1
	.byte	0x9a
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.string	"flags"
	.byte	0x1
	.byte	0x9b
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.byte	0x9c
	.long	0x4354
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.string	"type"
	.byte	0x1
	.byte	0x9e
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.byte	0x9f
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF27
	.byte	0x1
	.byte	0xa0
	.long	0x26e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF32
	.byte	0x1
	.byte	0xa1
	.long	0x26e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF31
	.byte	0x1
	.byte	0xa2
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x57a3
	.string	"decode_format_attr"
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.long	0x4321
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2a
	.string	"args"
	.byte	0x1
	.byte	0xe2
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.byte	0xe3
	.long	0x57a3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"validated_p"
	.byte	0x1
	.byte	0xe4
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"format_type_id"
	.byte	0x1
	.byte	0xe6
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.byte	0xe7
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"first_arg_num_expr"
	.byte	0x1
	.byte	0xe8
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	0x5792
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0xf4
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	.LASF34
	.long	0x6ba0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10225
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x554f
	.uleb128 0x32
	.long	0x5841
	.string	"format_lengths"
	.byte	0x4
	.byte	0x1
	.value	0x12a
	.uleb128 0x17
	.string	"FMT_LEN_none"
	.sleb128 0
	.uleb128 0x17
	.string	"FMT_LEN_hh"
	.sleb128 1
	.uleb128 0x17
	.string	"FMT_LEN_h"
	.sleb128 2
	.uleb128 0x17
	.string	"FMT_LEN_l"
	.sleb128 3
	.uleb128 0x17
	.string	"FMT_LEN_ll"
	.sleb128 4
	.uleb128 0x17
	.string	"FMT_LEN_L"
	.sleb128 5
	.uleb128 0x17
	.string	"FMT_LEN_z"
	.sleb128 6
	.uleb128 0x17
	.string	"FMT_LEN_t"
	.sleb128 7
	.uleb128 0x17
	.string	"FMT_LEN_j"
	.sleb128 8
	.uleb128 0x17
	.string	"FMT_LEN_MAX"
	.sleb128 9
	.byte	0x0
	.uleb128 0x32
	.long	0x5890
	.string	"format_std_version"
	.byte	0x4
	.byte	0x1
	.value	0x13a
	.uleb128 0x17
	.string	"STD_C89"
	.sleb128 0
	.uleb128 0x17
	.string	"STD_C94"
	.sleb128 1
	.uleb128 0x17
	.string	"STD_C9L"
	.sleb128 2
	.uleb128 0x17
	.string	"STD_C99"
	.sleb128 3
	.uleb128 0x17
	.string	"STD_EXT"
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0x590e
	.byte	0x18
	.byte	0x1
	.value	0x17a
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x1
	.value	0x17c
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"index"
	.byte	0x1
	.value	0x17e
	.long	0x590e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"std"
	.byte	0x1
	.value	0x180
	.long	0x5913
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"double_name"
	.byte	0x1
	.value	0x182
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"double_index"
	.byte	0x1
	.value	0x183
	.long	0x590e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"double_std"
	.byte	0x1
	.value	0x184
	.long	0x5913
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x8
	.long	0x57a9
	.uleb128 0x8
	.long	0x5841
	.uleb128 0x34
	.string	"format_length_info"
	.byte	0x1
	.value	0x185
	.long	0x5890
	.uleb128 0x33
	.long	0x596b
	.byte	0xc
	.byte	0x1
	.value	0x18b
	.uleb128 0xd
	.string	"std"
	.byte	0x1
	.value	0x18f
	.long	0x5841
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x1
	.value	0x192
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"type"
	.byte	0x1
	.value	0x194
	.long	0x434e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x34
	.string	"format_type_detail"
	.byte	0x1
	.value	0x195
	.long	0x5933
	.uleb128 0x33
	.long	0x59ef
	.byte	0x80
	.byte	0x1
	.value	0x1a0
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x1
	.value	0x1a1
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x1
	.value	0x1a2
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"std"
	.byte	0x1
	.value	0x1a3
	.long	0x5913
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"types"
	.byte	0x1
	.value	0x1a5
	.long	0x59ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF37
	.byte	0x1
	.value	0x1ac
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"flags2"
	.byte	0x1
	.value	0x1b6
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0xe
	.long	0x59ff
	.long	0x596b
	.uleb128 0xf
	.long	0x1c5
	.byte	0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x59ef
	.uleb128 0x34
	.string	"format_char_info"
	.byte	0x1
	.value	0x1b7
	.long	0x5986
	.uleb128 0x33
	.long	0x5a92
	.byte	0x18
	.byte	0x1
	.value	0x1bc
	.uleb128 0xd
	.string	"flag_char"
	.byte	0x1
	.value	0x1be
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF38
	.byte	0x1
	.value	0x1c7
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"skip_next_char"
	.byte	0x1
	.value	0x1ca
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x1
	.value	0x1cd
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF39
	.byte	0x1
	.value	0x1d0
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"std"
	.byte	0x1
	.value	0x1d2
	.long	0x5913
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x34
	.string	"format_flag_spec"
	.byte	0x1
	.value	0x1d3
	.long	0x5a1d
	.uleb128 0x33
	.long	0x5b03
	.byte	0x10
	.byte	0x1
	.value	0x1d9
	.uleb128 0xd
	.string	"flag_char1"
	.byte	0x1
	.value	0x1db
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"flag_char2"
	.byte	0x1
	.value	0x1dd
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"ignored"
	.byte	0x1
	.value	0x1e0
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF38
	.byte	0x1
	.value	0x1e4
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x34
	.string	"format_flag_pair"
	.byte	0x1
	.value	0x1e5
	.long	0x5aab
	.uleb128 0x33
	.long	0x5c7d
	.byte	0x3c
	.byte	0x1
	.value	0x1ea
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x1
	.value	0x1ed
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length_char_specs"
	.byte	0x1
	.value	0x1ef
	.long	0x5c7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"conversion_specs"
	.byte	0x1
	.value	0x1f1
	.long	0x5c8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF37
	.byte	0x1
	.value	0x1f3
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"modifier_chars"
	.byte	0x1
	.value	0x1f5
	.long	0x4317
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF40
	.byte	0x1
	.value	0x1f7
	.long	0x5c9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF41
	.byte	0x1
	.value	0x1f9
	.long	0x5cad
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"flags"
	.byte	0x1
	.value	0x1fb
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"width_char"
	.byte	0x1
	.value	0x1fd
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"left_precision_char"
	.byte	0x1
	.value	0x200
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"precision_char"
	.byte	0x1
	.value	0x203
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"suppression_char"
	.byte	0x1
	.value	0x206
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"length_code_char"
	.byte	0x1
	.value	0x20b
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"width_type"
	.byte	0x1
	.value	0x20e
	.long	0x5cbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"precision_type"
	.byte	0x1
	.value	0x211
	.long	0x5cbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x8
	.long	0x5c82
	.uleb128 0x3
	.byte	0x4
	.long	0x5c88
	.uleb128 0x8
	.long	0x5918
	.uleb128 0x8
	.long	0x5c92
	.uleb128 0x3
	.byte	0x4
	.long	0x5c98
	.uleb128 0x8
	.long	0x5a04
	.uleb128 0x8
	.long	0x5ca2
	.uleb128 0x3
	.byte	0x4
	.long	0x5ca8
	.uleb128 0x8
	.long	0x5a92
	.uleb128 0x8
	.long	0x5cb2
	.uleb128 0x3
	.byte	0x4
	.long	0x5cb8
	.uleb128 0x8
	.long	0x5b03
	.uleb128 0x8
	.long	0x434e
	.uleb128 0x34
	.string	"format_kind_info"
	.byte	0x1
	.value	0x212
	.long	0x5b1c
	.uleb128 0x35
	.long	0x5daa
	.long	.LASF42
	.byte	0x28
	.byte	0x1
	.value	0x218
	.uleb128 0x1c
	.long	.LASF43
	.byte	0x1
	.value	0x21a
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF44
	.byte	0x1
	.value	0x21c
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x1
	.value	0x21e
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"char_lenient_flag"
	.byte	0x1
	.value	0x221
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"writing_in_flag"
	.byte	0x1
	.value	0x224
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"reading_from_flag"
	.byte	0x1
	.value	0x227
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x1
	.value	0x22e
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"param"
	.byte	0x1
	.value	0x230
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF32
	.byte	0x1
	.value	0x232
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"next"
	.byte	0x1
	.value	0x234
	.long	0x5daa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5cdb
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0x235
	.long	0x5cdb
	.uleb128 0x33
	.long	0x5e8b
	.byte	0x1c
	.byte	0x1
	.value	0x35c
	.uleb128 0xd
	.string	"number_non_literal"
	.byte	0x1
	.value	0x35f
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"number_extra_args"
	.byte	0x1
	.value	0x362
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"number_dollar_extra_args"
	.byte	0x1
	.value	0x366
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"number_wide"
	.byte	0x1
	.value	0x369
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"number_empty"
	.byte	0x1
	.value	0x36b
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"number_unterminated"
	.byte	0x1
	.value	0x36e
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"number_other"
	.byte	0x1
	.value	0x370
	.long	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x34
	.string	"format_check_results"
	.byte	0x1
	.value	0x371
	.long	0x5dbc
	.uleb128 0x33
	.long	0x5eee
	.byte	0x10
	.byte	0x1
	.value	0x374
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.value	0x375
	.long	0x5eee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x1
	.value	0x376
	.long	0x57a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x1
	.value	0x377
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF46
	.byte	0x1
	.value	0x378
	.long	0x5fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e8b
	.uleb128 0x34
	.string	"format_check_context"
	.byte	0x1
	.value	0x379
	.long	0x5ea8
	.uleb128 0x37
	.long	0x5f82
	.string	"decode_format_type"
	.byte	0x1
	.value	0x395
	.byte	0x1
	.long	0x54a1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0x394
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x396
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"slen"
	.byte	0x1
	.value	0x397
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x39
	.string	"alen"
	.byte	0x1
	.value	0x39b
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x6035
	.byte	0x1
	.string	"check_function_format"
	.byte	0x1
	.value	0x3b3
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x3c
	.long	.LASF46
	.byte	0x1
	.value	0x3b0
	.long	0x5fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"attrs"
	.byte	0x1
	.value	0x3b1
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	.LASF45
	.byte	0x1
	.value	0x3b2
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.string	"a"
	.byte	0x1
	.value	0x3b4
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x3d
	.long	.LASF30
	.byte	0x1
	.value	0x3bc
	.long	0x554f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x39
	.string	"c"
	.byte	0x1
	.value	0x3c3
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x39
	.string	"args"
	.byte	0x1
	.value	0x3d2
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x609f
	.string	"status_warning"
	.byte	0x1
	.value	0x3ec
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x3c
	.long	.LASF46
	.byte	0x1
	.value	0x3eb
	.long	0x5fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"msgid"
	.byte	0x1
	.value	0x3eb
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3f
	.uleb128 0x39
	.string	"diagnostic"
	.byte	0x1
	.value	0x3ed
	.long	0x44af
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.string	"ap"
	.byte	0x1
	.value	0x3f4
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3e
	.long	0x6119
	.string	"init_dollar_format_checking"
	.byte	0x1
	.value	0x41d
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x3c
	.long	.LASF28
	.byte	0x1
	.value	0x41b
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LASF45
	.byte	0x1
	.value	0x41c
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"oparams"
	.byte	0x1
	.value	0x41e
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x43b
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x625f
	.string	"maybe_read_dollar_number"
	.byte	0x1
	.value	0x45b
	.byte	0x1
	.long	0x1b7
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x3c
	.long	.LASF46
	.byte	0x1
	.value	0x455
	.long	0x5fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"format"
	.byte	0x1
	.value	0x456
	.long	0x56e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"dollar_needed"
	.byte	0x1
	.value	0x457
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3c
	.long	.LASF45
	.byte	0x1
	.value	0x458
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.string	"param_ptr"
	.byte	0x1
	.value	0x459
	.long	0x434e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"fki"
	.byte	0x1
	.value	0x45a
	.long	0x625f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x39
	.string	"argnum"
	.byte	0x1
	.value	0x45c
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.string	"overflow_flag"
	.byte	0x1
	.value	0x45d
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.string	"fcp"
	.byte	0x1
	.value	0x45e
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	0x6213
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x39
	.string	"nargnum"
	.byte	0x1
	.value	0x46d
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x30
	.long	0x6233
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x39
	.string	"nalloc"
	.byte	0x1
	.value	0x492
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	0x624e
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x4a7
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	.LASF34
	.long	0x6b9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10650
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6265
	.uleb128 0x8
	.long	0x5cc2
	.uleb128 0x3e
	.long	0x6300
	.string	"finish_dollar_format_checking"
	.byte	0x1
	.value	0x4c7
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x3c
	.long	.LASF46
	.byte	0x1
	.value	0x4c4
	.long	0x5fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"res"
	.byte	0x1
	.value	0x4c5
	.long	0x5eee
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"pointer_gap_ok"
	.byte	0x1
	.value	0x4c6
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x4c8
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.string	"found_pointer_gap"
	.byte	0x1
	.value	0x4c9
	.long	0x4321
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x37
	.long	0x637b
	.string	"get_flag_spec"
	.byte	0x1
	.value	0x4ed
	.byte	0x1
	.long	0x5ca2
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x38
	.string	"spec"
	.byte	0x1
	.value	0x4ea
	.long	0x5ca2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"flag"
	.byte	0x1
	.value	0x4eb
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"predicates"
	.byte	0x1
	.value	0x4ec
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x4ee
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.long	.LASF34
	.long	0x6b86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10805
	.byte	0x0
	.uleb128 0x3e
	.long	0x640d
	.string	"check_format_info"
	.byte	0x1
	.value	0x50c
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x3c
	.long	.LASF46
	.byte	0x1
	.value	0x509
	.long	0x5fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LASF30
	.byte	0x1
	.value	0x50a
	.long	0x57a3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	.LASF45
	.byte	0x1
	.value	0x50b
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3d
	.long	.LASF47
	.byte	0x1
	.value	0x50d
	.long	0x5ef4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.long	.LASF32
	.byte	0x1
	.value	0x50e
	.long	0x26e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3d
	.long	.LASF48
	.byte	0x1
	.value	0x50f
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.value	0x510
	.long	0x5e8b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x3e
	.long	0x6573
	.string	"check_format_arg"
	.byte	0x1
	.value	0x571
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x38
	.string	"ctx"
	.byte	0x1
	.value	0x56e
	.long	0x2c4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LASF48
	.byte	0x1
	.value	0x56f
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	.LASF32
	.byte	0x1
	.value	0x570
	.long	0x26e
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3d
	.long	.LASF47
	.byte	0x1
	.value	0x572
	.long	0x6573
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.value	0x573
	.long	0x5eee
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF30
	.byte	0x1
	.value	0x574
	.long	0x57a3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3d
	.long	.LASF45
	.byte	0x1
	.value	0x575
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.long	.LASF46
	.byte	0x1
	.value	0x576
	.long	0x5fc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3d
	.long	.LASF49
	.byte	0x1
	.value	0x578
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.string	"offset"
	.byte	0x1
	.value	0x579
	.long	0x25d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3d
	.long	.LASF35
	.byte	0x1
	.value	0x57a
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.string	"array_size"
	.byte	0x1
	.value	0x57b
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"array_init"
	.byte	0x1
	.value	0x57c
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	0x6537
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x39
	.string	"arg0"
	.byte	0x1
	.value	0x595
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"arg1"
	.byte	0x1
	.value	0x595
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	0x6562
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x39
	.string	"array_size_value"
	.byte	0x1
	.value	0x5d2
	.long	0x25d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x31
	.long	.LASF34
	.long	0x6b71
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10969
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ef4
	.uleb128 0x3e
	.long	0x6a24
	.string	"check_format_info_main"
	.byte	0x1
	.value	0x615
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x3c
	.long	.LASF46
	.byte	0x1
	.value	0x60e
	.long	0x5fc
	.byte	0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x38
	.string	"res"
	.byte	0x1
	.value	0x60f
	.long	0x5eee
	.byte	0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x3c
	.long	.LASF30
	.byte	0x1
	.value	0x610
	.long	0x57a3
	.byte	0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x3c
	.long	.LASF35
	.byte	0x1
	.value	0x611
	.long	0x1a4
	.byte	0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x3c
	.long	.LASF49
	.byte	0x1
	.value	0x612
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3c
	.long	.LASF45
	.byte	0x1
	.value	0x613
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x3c
	.long	.LASF32
	.byte	0x1
	.value	0x614
	.long	0x26e
	.byte	0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x39
	.string	"orig_format_chars"
	.byte	0x1
	.value	0x616
	.long	0x1a4
	.byte	0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x39
	.string	"first_fillin_param"
	.byte	0x1
	.value	0x617
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x39
	.string	"fki"
	.byte	0x1
	.value	0x619
	.long	0x625f
	.byte	0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x3d
	.long	.LASF40
	.byte	0x1
	.value	0x61a
	.long	0x5ca2
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x3d
	.long	.LASF41
	.byte	0x1
	.value	0x61b
	.long	0x5cb2
	.byte	0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x39
	.string	"has_operand_number"
	.byte	0x1
	.value	0x61f
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x3a
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x625
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x39
	.string	"suppressed"
	.byte	0x1
	.value	0x626
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x39
	.string	"length_chars"
	.byte	0x1
	.value	0x627
	.long	0x1a4
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x39
	.string	"length_chars_val"
	.byte	0x1
	.value	0x628
	.long	0x57a9
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x39
	.string	"length_chars_std"
	.byte	0x1
	.value	0x629
	.long	0x5841
	.byte	0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x39
	.string	"format_char"
	.byte	0x1
	.value	0x62a
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x3d
	.long	.LASF50
	.byte	0x1
	.value	0x62b
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x3d
	.long	.LASF43
	.byte	0x1
	.value	0x62c
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x39
	.string	"main_arg_num"
	.byte	0x1
	.value	0x62d
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x39
	.string	"main_arg_params"
	.byte	0x1
	.value	0x62e
	.long	0xb8
	.byte	0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x39
	.string	"wanted_type_std"
	.byte	0x1
	.value	0x62f
	.long	0x5841
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x3d
	.long	.LASF44
	.byte	0x1
	.value	0x630
	.long	0x1a4
	.byte	0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x39
	.string	"width_wanted_type"
	.byte	0x1
	.value	0x631
	.long	0x5db0
	.byte	0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x39
	.string	"precision_wanted_type"
	.byte	0x1
	.value	0x632
	.long	0x5db0
	.byte	0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x39
	.string	"main_wanted_type"
	.byte	0x1
	.value	0x633
	.long	0x5db0
	.byte	0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x39
	.string	"first_wanted_type"
	.byte	0x1
	.value	0x634
	.long	0x6a24
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x39
	.string	"last_wanted_type"
	.byte	0x1
	.value	0x635
	.long	0x6a24
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x39
	.string	"fli"
	.byte	0x1
	.value	0x636
	.long	0x5c82
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x39
	.string	"fci"
	.byte	0x1
	.value	0x637
	.long	0x5c92
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x3d
	.long	.LASF37
	.byte	0x1
	.value	0x638
	.long	0x6a2a
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x39
	.string	"aflag"
	.byte	0x1
	.value	0x639
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x30
	.long	0x68b4
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x39
	.string	"opnum"
	.byte	0x1
	.value	0x65c
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.byte	0x0
	.uleb128 0x30
	.long	0x68d0
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x66f
	.long	0x5ca2
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.uleb128 0x30
	.long	0x68f0
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x39
	.string	"opnum"
	.byte	0x1
	.value	0x694
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.byte	0x0
	.uleb128 0x30
	.long	0x6936
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x39
	.string	"non_zero_width_char"
	.byte	0x1
	.value	0x6c5
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x39
	.string	"found_width"
	.byte	0x1
	.value	0x6c6
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.byte	0x0
	.uleb128 0x30
	.long	0x6956
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x39
	.string	"opnum"
	.byte	0x1
	.value	0x6f7
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.byte	0x0
	.uleb128 0x30
	.long	0x6972
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x75e
	.long	0x5ca2
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.byte	0x0
	.uleb128 0x30
	.long	0x69d8
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x39
	.string	"d"
	.byte	0x1
	.value	0x79d
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x3a
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x7a0
	.long	0x5ca2
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x3a
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x39
	.string	"t"
	.byte	0x1
	.value	0x7ae
	.long	0x5ca2
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3a
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x3d
	.long	.LASF39
	.byte	0x1
	.value	0x7b5
	.long	0x1a4
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x6a02
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x7cd
	.long	0x5ca2
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x39
	.string	"t"
	.byte	0x1
	.value	0x7cd
	.long	0x5ca2
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x39
	.string	"y2k_level"
	.byte	0x1
	.value	0x7f0
	.long	0x1b7
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5db0
	.uleb128 0xe
	.long	0x6a3a
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0xff
	.byte	0x0
	.uleb128 0x3e
	.long	0x6b4c
	.string	"check_format_types"
	.byte	0x1
	.value	0x886
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x3c
	.long	.LASF46
	.byte	0x1
	.value	0x884
	.long	0x5fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"types"
	.byte	0x1
	.value	0x885
	.long	0x6a24
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	0x6b3b
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x3d
	.long	.LASF50
	.byte	0x1
	.value	0x889
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.string	"cur_type"
	.byte	0x1
	.value	0x88a
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.string	"orig_cur_type"
	.byte	0x1
	.value	0x88b
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3d
	.long	.LASF43
	.byte	0x1
	.value	0x88c
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3d
	.long	.LASF32
	.byte	0x1
	.value	0x88d
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x88e
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.string	"char_type_flag"
	.byte	0x1
	.value	0x88f
	.long	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x39
	.string	"this"
	.byte	0x1
	.value	0x913
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.string	"that"
	.byte	0x1
	.value	0x914
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	.LASF34
	.long	0x6b5c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12108
	.byte	0x0
	.uleb128 0xe
	.long	0x6b5c
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x6b4c
	.uleb128 0xe
	.long	0x6b71
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x6b61
	.uleb128 0xe
	.long	0x6b86
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x6b76
	.uleb128 0xe
	.long	0x6b9b
	.long	0x1af
	.uleb128 0xf
	.long	0x1c5
	.byte	0x18
	.byte	0x0
	.uleb128 0x8
	.long	0x6b8b
	.uleb128 0x8
	.long	0x6b4c
	.uleb128 0xe
	.long	0x6bb5
	.long	0x5918
	.uleb128 0xf
	.long	0x1c5
	.byte	0x8
	.byte	0x0
	.uleb128 0x39
	.string	"printf_length_specs"
	.byte	0x1
	.value	0x238
	.long	0x6bd7
	.byte	0x5
	.byte	0x3
	.long	printf_length_specs
	.uleb128 0x8
	.long	0x6ba5
	.uleb128 0xe
	.long	0x6bec
	.long	0x5918
	.uleb128 0xf
	.long	0x1c5
	.byte	0x7
	.byte	0x0
	.uleb128 0x39
	.string	"scanf_length_specs"
	.byte	0x1
	.value	0x247
	.long	0x6c0d
	.byte	0x5
	.byte	0x3
	.long	scanf_length_specs
	.uleb128 0x8
	.long	0x6bdc
	.uleb128 0xe
	.long	0x6c22
	.long	0x5918
	.uleb128 0xf
	.long	0x1c5
	.byte	0x1
	.byte	0x0
	.uleb128 0x39
	.string	"strfmon_length_specs"
	.byte	0x1
	.value	0x256
	.long	0x6c45
	.byte	0x5
	.byte	0x3
	.long	strfmon_length_specs
	.uleb128 0x8
	.long	0x6c12
	.uleb128 0xe
	.long	0x6c5a
	.long	0x5a92
	.uleb128 0xf
	.long	0x1c5
	.byte	0xa
	.byte	0x0
	.uleb128 0x39
	.string	"printf_flag_specs"
	.byte	0x1
	.value	0x25d
	.long	0x6c7a
	.byte	0x5
	.byte	0x3
	.long	printf_flag_specs
	.uleb128 0x8
	.long	0x6c4a
	.uleb128 0xe
	.long	0x6c8f
	.long	0x5b03
	.uleb128 0xf
	.long	0x1c5
	.byte	0x3
	.byte	0x0
	.uleb128 0x39
	.string	"printf_flag_pairs"
	.byte	0x1
	.value	0x26d
	.long	0x6caf
	.byte	0x5
	.byte	0x3
	.long	printf_flag_pairs
	.uleb128 0x8
	.long	0x6c7f
	.uleb128 0xe
	.long	0x6cc4
	.long	0x5a92
	.uleb128 0xf
	.long	0x1c5
	.byte	0x6
	.byte	0x0
	.uleb128 0x39
	.string	"scanf_flag_specs"
	.byte	0x1
	.value	0x276
	.long	0x6ce3
	.byte	0x5
	.byte	0x3
	.long	scanf_flag_specs
	.uleb128 0x8
	.long	0x6cb4
	.uleb128 0xe
	.long	0x6cf8
	.long	0x5b03
	.uleb128 0xf
	.long	0x1c5
	.byte	0x1
	.byte	0x0
	.uleb128 0x39
	.string	"scanf_flag_pairs"
	.byte	0x1
	.value	0x282
	.long	0x6d17
	.byte	0x5
	.byte	0x3
	.long	scanf_flag_pairs
	.uleb128 0x8
	.long	0x6ce8
	.uleb128 0xe
	.long	0x6d2c
	.long	0x5a92
	.uleb128 0xf
	.long	0x1c5
	.byte	0x9
	.byte	0x0
	.uleb128 0x39
	.string	"strftime_flag_specs"
	.byte	0x1
	.value	0x289
	.long	0x6d4e
	.byte	0x5
	.byte	0x3
	.long	strftime_flag_specs
	.uleb128 0x8
	.long	0x6d1c
	.uleb128 0xe
	.long	0x6d63
	.long	0x5b03
	.uleb128 0xf
	.long	0x1c5
	.byte	0x5
	.byte	0x0
	.uleb128 0x39
	.string	"strftime_flag_pairs"
	.byte	0x1
	.value	0x298
	.long	0x6d85
	.byte	0x5
	.byte	0x3
	.long	strftime_flag_pairs
	.uleb128 0x8
	.long	0x6d53
	.uleb128 0xe
	.long	0x6d9a
	.long	0x5a92
	.uleb128 0xf
	.long	0x1c5
	.byte	0xa
	.byte	0x0
	.uleb128 0x39
	.string	"strfmon_flag_specs"
	.byte	0x1
	.value	0x2a3
	.long	0x6dbb
	.byte	0x5
	.byte	0x3
	.long	strfmon_flag_specs
	.uleb128 0x8
	.long	0x6d8a
	.uleb128 0xe
	.long	0x6dd0
	.long	0x5b03
	.uleb128 0xf
	.long	0x1c5
	.byte	0x1
	.byte	0x0
	.uleb128 0x39
	.string	"strfmon_flag_pairs"
	.byte	0x1
	.value	0x2b2
	.long	0x6df1
	.byte	0x5
	.byte	0x3
	.long	strfmon_flag_pairs
	.uleb128 0x8
	.long	0x6dc0
	.uleb128 0xe
	.long	0x6e06
	.long	0x5a04
	.uleb128 0xf
	.long	0x1c5
	.byte	0xe
	.byte	0x0
	.uleb128 0x39
	.string	"print_char_table"
	.byte	0x1
	.value	0x2ef
	.long	0x6e25
	.byte	0x5
	.byte	0x3
	.long	print_char_table
	.uleb128 0x8
	.long	0x6df6
	.uleb128 0xe
	.long	0x6e3a
	.long	0x5a04
	.uleb128 0xf
	.long	0x1c5
	.byte	0xc
	.byte	0x0
	.uleb128 0x39
	.string	"scan_char_table"
	.byte	0x1
	.value	0x306
	.long	0x6e58
	.byte	0x5
	.byte	0x3
	.long	scan_char_table
	.uleb128 0x8
	.long	0x6e2a
	.uleb128 0xe
	.long	0x6e6d
	.long	0x5a04
	.uleb128 0xf
	.long	0x1c5
	.byte	0x13
	.byte	0x0
	.uleb128 0x39
	.string	"time_char_table"
	.byte	0x1
	.value	0x31a
	.long	0x6e8b
	.byte	0x5
	.byte	0x3
	.long	time_char_table
	.uleb128 0x8
	.long	0x6e5d
	.uleb128 0xe
	.long	0x6ea0
	.long	0x5a04
	.uleb128 0xf
	.long	0x1c5
	.byte	0x1
	.byte	0x0
	.uleb128 0x39
	.string	"monetary_char_table"
	.byte	0x1
	.value	0x335
	.long	0x6ec2
	.byte	0x5
	.byte	0x3
	.long	monetary_char_table
	.uleb128 0x8
	.long	0x6e90
	.uleb128 0xe
	.long	0x6ed7
	.long	0x5cc2
	.uleb128 0xf
	.long	0x1c5
	.byte	0x3
	.byte	0x0
	.uleb128 0x39
	.string	"format_types"
	.byte	0x1
	.value	0x33d
	.long	0x6ef2
	.byte	0x5
	.byte	0x3
	.long	format_types
	.uleb128 0x8
	.long	0x6ec7
	.uleb128 0x39
	.string	"dollar_arguments_used"
	.byte	0x1
	.value	0x40b
	.long	0x2c6
	.byte	0x5
	.byte	0x3
	.long	dollar_arguments_used
	.uleb128 0x39
	.string	"dollar_arguments_pointer_p"
	.byte	0x1
	.value	0x40c
	.long	0x2c6
	.byte	0x5
	.byte	0x3
	.long	dollar_arguments_pointer_p
	.uleb128 0x39
	.string	"dollar_arguments_alloc"
	.byte	0x1
	.value	0x40d
	.long	0x1b7
	.byte	0x5
	.byte	0x3
	.long	dollar_arguments_alloc
	.uleb128 0x39
	.string	"dollar_arguments_count"
	.byte	0x1
	.value	0x40e
	.long	0x1b7
	.byte	0x5
	.byte	0x3
	.long	dollar_arguments_count
	.uleb128 0x39
	.string	"dollar_first_arg_num"
	.byte	0x1
	.value	0x40f
	.long	0x1b7
	.byte	0x5
	.byte	0x3
	.long	dollar_first_arg_num
	.uleb128 0x39
	.string	"dollar_max_arg_used"
	.byte	0x1
	.value	0x410
	.long	0x1b7
	.byte	0x5
	.byte	0x3
	.long	dollar_max_arg_used
	.uleb128 0x39
	.string	"dollar_format_warned"
	.byte	0x1
	.value	0x411
	.long	0x1b7
	.byte	0x5
	.byte	0x3
	.long	dollar_format_warned
	.uleb128 0xe
	.long	0x7006
	.long	0x216
	.uleb128 0xf
	.long	0x1c5
	.byte	0xff
	.byte	0x0
	.uleb128 0x40
	.string	"_sch_istable"
	.byte	0xa
	.byte	0x48
	.long	0x701c
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x6ff6
	.uleb128 0xe
	.long	0x702c
	.long	0x1af
	.uleb128 0x41
	.byte	0x0
	.uleb128 0x40
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x45
	.long	0x7044
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x7021
	.uleb128 0xe
	.long	0x7059
	.long	0xb8
	.uleb128 0xf
	.long	0x1c5
	.byte	0x3a
	.byte	0x0
	.uleb128 0x42
	.string	"global_trees"
	.byte	0x3
	.value	0x8b5
	.long	0x7049
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x7080
	.long	0xb8
	.uleb128 0xf
	.long	0x1c5
	.byte	0xa
	.byte	0x0
	.uleb128 0x42
	.string	"integer_types"
	.byte	0x3
	.value	0x91d
	.long	0x7070
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"input_filename"
	.byte	0x3
	.value	0xbb7
	.long	0x1a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"lineno"
	.byte	0x3
	.value	0xbba
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"current_function_decl"
	.byte	0x3
	.value	0xbc8
	.long	0xb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"pedantic"
	.byte	0xb
	.byte	0xe5
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x7104
	.long	0xb8
	.uleb128 0xf
	.long	0x1c5
	.byte	0x1e
	.byte	0x0
	.uleb128 0x40
	.string	"c_global_trees"
	.byte	0xc
	.byte	0xef
	.long	0x70f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"c_language"
	.byte	0xc
	.value	0x178
	.long	0x438a
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_missing_format_attribute"
	.byte	0xc
	.value	0x1b7
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_long_long"
	.byte	0xc
	.value	0x1d2
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_format"
	.byte	0xc
	.value	0x1f1
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_format_y2k"
	.byte	0xc
	.value	0x1f5
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_format_extra_args"
	.byte	0xc
	.value	0x1f9
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_format_zero_length"
	.byte	0xc
	.value	0x1fd
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_format_nonliteral"
	.byte	0xc
	.value	0x201
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_format_security"
	.byte	0xc
	.value	0x205
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_isoc94"
	.byte	0xc
	.value	0x217
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"flag_isoc99"
	.byte	0xc
	.value	0x21b
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"warn_nonnull"
	.byte	0xc
	.value	0x258
	.long	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"global_dc"
	.byte	0x8
	.value	0x109
	.long	0x4843
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF24
	.byte	0x12
	.value	0x176
	.long	0x728a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4f60
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
	.uleb128 0xb
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
	.byte	0x0
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
	.uleb128 0x19
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x16
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x74
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7290
	.long	0x546d
	.string	"set_Wformat"
	.long	0x555a
	.string	"handle_format_attribute"
	.long	0x560f
	.string	"handle_format_arg_attribute"
	.long	0x5f82
	.string	"check_function_format"
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
.LASF30:
	.string	"info"
.LASF37:
	.string	"flag_chars"
.LASF40:
	.string	"flag_specs"
.LASF0:
	.string	"common"
.LASF32:
	.string	"arg_num"
.LASF36:
	.string	"pointer_count"
.LASF31:
	.string	"argument"
.LASF41:
	.string	"bad_flag_pairs"
.LASF11:
	.string	"ht_identifier"
.LASF46:
	.string	"status"
.LASF49:
	.string	"format_length"
.LASF42:
	.string	"format_wanted_type"
.LASF21:
	.string	"c_language_kind"
.LASF48:
	.string	"format_tree"
.LASF50:
	.string	"cur_param"
.LASF28:
	.string	"first_arg_num"
.LASF35:
	.string	"format_chars"
.LASF44:
	.string	"wanted_type_name"
.LASF13:
	.string	"abstract_origin"
.LASF47:
	.string	"format_ctx"
.LASF27:
	.string	"format_num"
.LASF19:
	.string	"lang_specific"
.LASF14:
	.string	"size_unit"
.LASF18:
	.string	"name"
.LASF45:
	.string	"params"
.LASF17:
	.string	"user_align"
.LASF23:
	.string	"diagnostic_context"
.LASF29:
	.string	"no_add_attrs"
.LASF43:
	.string	"wanted_type"
.LASF20:
	.string	"function"
.LASF34:
	.string	"__FUNCTION__"
.LASF22:
	.string	"output_buffer"
.LASF33:
	.string	"format_num_expr"
.LASF38:
	.string	"predicate"
.LASF2:
	.string	"_IO_FILE"
.LASF5:
	.string	"lang_flag_1"
.LASF6:
	.string	"lang_flag_2"
.LASF9:
	.string	"lang_flag_5"
.LASF15:
	.string	"attributes"
.LASF4:
	.string	"lang_flag_0"
.LASF3:
	.string	"built_in_class"
.LASF7:
	.string	"lang_flag_3"
.LASF8:
	.string	"lang_flag_4"
.LASF10:
	.string	"lang_flag_6"
.LASF24:
	.string	"lang_hooks"
.LASF16:
	.string	"pointer_depth"
.LASF12:
	.string	"abstract_flag"
.LASF26:
	.string	"function_format_info"
.LASF1:
	.string	"unsigned int"
.LASF25:
	.string	"format_type"
.LASF39:
	.string	"long_name"
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
