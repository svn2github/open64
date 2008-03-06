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
	.file 1 "../../../kg++fe/gnu/c-format.c"
	.loc 1 45 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 46 0
	movl	warn_format@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 47 0
	movl	warn_format_y2k@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 48 0
	movl	warn_format_extra_args@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 49 0
	movl	warn_format_zero_length@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 50 0
	cmpl	$1, 8(%ebp)
	je	.L2
	.loc 1 52 0
	movl	warn_format_nonliteral@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 53 0
	movl	warn_format_security@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L2:
	.loc 1 56 0
	cmpl	$0, 8(%ebp)
	je	.L6
	.loc 1 57 0
	movl	warn_nonnull@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L6:
	.loc 1 58 0
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
	.loc 1 89 0
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
	.loc 1 90 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 95 0
	movl	$0, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_format_attr
	xorl	$1, %eax
	testb	%al, %al
	je	.L8
	.loc 1 97 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 98 0
	movl	$0, -60(%ebp)
	jmp	.L10
.L8:
	.loc 1 104 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 105 0
	cmpl	$0, -12(%ebp)
	je	.L11
	.loc 1 107 0
	movl	$1, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L13
.L14:
	.loc 1 108 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L13:
	.loc 1 107 0
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
	.loc 1 111 0
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
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L20
.L17:
	.loc 1 116 0
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L21
	.loc 1 117 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L21:
	.loc 1 118 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 119 0
	movl	$0, -60(%ebp)
	jmp	.L10
.L20:
	.loc 1 122 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 126 0
	jmp	.L24
.L25:
	.loc 1 127 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L24:
	.loc 1 126 0
	cmpl	$0, -12(%ebp)
	jne	.L25
	.loc 1 129 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L11
	.loc 1 131 0
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L28
	.loc 1 132 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L28:
	.loc 1 133 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 134 0
	movl	$0, -60(%ebp)
	jmp	.L10
.L11:
	.loc 1 139 0
	movl	-44(%ebp), %eax
	cmpl	$2, %eax
	jne	.L30
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L30
	.loc 1 141 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 142 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 143 0
	movl	$0, -60(%ebp)
	jmp	.L10
.L30:
	.loc 1 146 0
	movl	$0, -60(%ebp)
.L10:
	movl	-60(%ebp), %eax
	.loc 1 147 0
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
	.loc 1 159 0
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
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 161 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 168 0
	jmp	.L35
.L36:
	.loc 1 171 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L35:
	.loc 1 168 0
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
	.loc 1 173 0
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
	.loc 1 176 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 177 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 178 0
	movl	$0, -44(%ebp)
	jmp	.L43
.L42:
	.loc 1 181 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 186 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 187 0
	cmpl	$0, -12(%ebp)
	je	.L44
	.loc 1 189 0
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L46
.L47:
	.loc 1 190 0
	addl	$1, -32(%ebp)
	adcl	$0, -28(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L46:
	.loc 1 189 0
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
	.loc 1 193 0
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
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L44
.L50:
	.loc 1 198 0
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L53
	.loc 1 199 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L53:
	.loc 1 200 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 201 0
	movl	$0, -44(%ebp)
	jmp	.L43
.L44:
	.loc 1 205 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L55
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L57
.L55:
	.loc 1 209 0
	movl	20(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L58
	.loc 1 210 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L58:
	.loc 1 211 0
	movl	24(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 212 0
	movl	$0, -44(%ebp)
	jmp	.L43
.L57:
	.loc 1 215 0
	movl	$0, -44(%ebp)
.L43:
	movl	-44(%ebp), %eax
	.loc 1 216 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	handle_format_arg_attribute, .-handle_format_arg_attribute
	.section	.rodata
	.type	__FUNCTION__.12098, @object
	.size	__FUNCTION__.12098, 19
__FUNCTION__.12098:
	.string	"decode_format_attr"
	.align 4
.LC5:
	.string	"../../../kg++fe/gnu/c-format.c"
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
	.loc 1 231 0
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
	.loc 1 232 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 233 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 237 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L62
	.loc 1 239 0
	cmpl	$0, 16(%ebp)
	je	.L64
	.loc 1 240 0
	leal	__FUNCTION__.12098@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$240, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L64:
	.loc 1 241 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 242 0
	movl	$0, -44(%ebp)
	jmp	.L66
.L62:
.LBB2:
	.loc 1 246 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 248 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_format_type
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 250 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L71
	.loc 1 252 0
	cmpl	$0, 16(%ebp)
	je	.L69
	.loc 1 253 0
	leal	__FUNCTION__.12098@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$253, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L69:
	.loc 1 254 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 255 0
	movl	$0, -44(%ebp)
	jmp	.L66
.L72:
.LBE2:
	.loc 1 264 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L71:
	.loc 1 261 0
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
	.loc 1 266 0
	jmp	.L76
.L77:
	.loc 1 269 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L76:
	.loc 1 266 0
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
	.loc 1 271 0
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
	.loc 1 276 0
	cmpl	$0, 16(%ebp)
	je	.L86
	.loc 1 277 0
	leal	__FUNCTION__.12098@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$277, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L86:
	.loc 1 278 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 279 0
	movl	$0, -44(%ebp)
	jmp	.L66
.L85:
	.loc 1 282 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	12(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 283 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	12(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 284 0
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
	.loc 1 286 0
	cmpl	$0, 16(%ebp)
	je	.L92
	.loc 1 287 0
	leal	__FUNCTION__.12098@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$287, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L92:
	.loc 1 288 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 289 0
	movl	$0, -44(%ebp)
	jmp	.L66
.L88:
	.loc 1 292 0
	movl	$1, -44(%ebp)
.L66:
	movl	-44(%ebp), %eax
	.loc 1 293 0
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
	.long	global_trees+144
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
	.long	global_trees+140
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
	.long	global_trees+140
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
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+124
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
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+124
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
	.long	global_trees+128
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	global_trees+144
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
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+124
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
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+124
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
	.long	global_trees+128
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	global_trees+144
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
	.long	global_trees+140
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
	.long	global_trees+140
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
	.long	global_trees+116
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+124
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
	.long	global_trees+128
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	global_trees+144
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
	.long	global_trees+116
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	3
	.long	0
	.long	global_trees+124
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
	.long	global_trees+120
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	global_trees+124
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
	.loc 1 919 0
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
	.loc 1 922 0
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
	.loc 1 923 0
	movl	$0, -24(%ebp)
	jmp	.L96
.L97:
.LBB3:
	.loc 1 926 0
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
	.loc 1 928 0
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
	.loc 1 929 0
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
	.loc 1 923 0
	addl	$1, -24(%ebp)
.L96:
	cmpl	$3, -24(%ebp)
	jle	.L97
.L98:
	.loc 1 934 0
	movl	-24(%ebp), %eax
	.loc 1 935 0
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
	.loc 1 949 0
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
	.loc 1 953 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L108
.L109:
	.loc 1 955 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	is_attribute_p@PLT
	testl	%eax, %eax
	je	.L110
.LBB4:
	.loc 1 959 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	$1, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	decode_format_attr
	.loc 1 960 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_format_info
	.loc 1 961 0
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
	.loc 1 966 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 967 0
	jmp	.L115
.L116:
	.loc 1 969 0
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
	.loc 1 968 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L115:
	.loc 1 967 0
	cmpl	$0, -12(%ebp)
	jne	.L116
.L119:
	.loc 1 974 0
	cmpl	$0, -12(%ebp)
	jne	.L110
.LBB6:
	.loc 1 981 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 982 0
	jmp	.L121
.L122:
	.loc 1 985 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L123
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L125
.L123:
	.loc 1 983 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L121:
	.loc 1 982 0
	cmpl	$0, -8(%ebp)
	jne	.L122
.L125:
	.loc 1 990 0
	cmpl	$0, -8(%ebp)
	je	.L110
	.loc 1 991 0
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
	.loc 1 953 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L108:
	cmpl	$0, -16(%ebp)
	jne	.L109
	.loc 1 997 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	check_function_format, .-check_function_format
	.type	status_warning, @function
status_warning:
.LFB21:
	.loc 1 1006 0
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
	.loc 1 1016 0
	leal	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1019 0
	cmpl	$0, 8(%ebp)
	je	.L130
	.loc 1 1020 0
	movl	8(%ebp), %eax
	movl	$1, (%eax)
	jmp	.L133
.L130:
	.loc 1 1024 0
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
	.loc 1 1026 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	diagnostic_report_diagnostic@PLT
.L133:
	.loc 1 1034 0
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
	.loc 1 1055 0
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
	.loc 1 1056 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1058 0
	movl	8(%ebp), %eax
	movl	%eax, dollar_first_arg_num@GOTOFF(%ebx)
	.loc 1 1059 0
	movl	$0, dollar_arguments_count@GOTOFF(%ebx)
	.loc 1 1060 0
	movl	$0, dollar_max_arg_used@GOTOFF(%ebx)
	.loc 1 1061 0
	movl	$0, dollar_format_warned@GOTOFF(%ebx)
	.loc 1 1062 0
	cmpl	$0, 8(%ebp)
	jle	.L135
	.loc 1 1064 0
	jmp	.L137
.L138:
	.loc 1 1066 0
	movl	dollar_arguments_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, dollar_arguments_count@GOTOFF(%ebx)
	.loc 1 1067 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
.L137:
	.loc 1 1064 0
	cmpl	$0, 12(%ebp)
	jne	.L138
.L135:
	.loc 1 1070 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %edx
	movl	dollar_arguments_count@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L139
	.loc 1 1072 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L141
	.loc 1 1073 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L141:
	.loc 1 1074 0
	movl	dollar_arguments_pointer_p@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L143
	.loc 1 1075 0
	movl	dollar_arguments_pointer_p@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L143:
	.loc 1 1076 0
	movl	dollar_arguments_count@GOTOFF(%ebx), %eax
	movl	%eax, dollar_arguments_alloc@GOTOFF(%ebx)
	.loc 1 1077 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, dollar_arguments_used@GOTOFF(%ebx)
	.loc 1 1078 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, dollar_arguments_pointer_p@GOTOFF(%ebx)
.L139:
	.loc 1 1080 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L150
	.loc 1 1082 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	dollar_arguments_used@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 1083 0
	cmpl	$0, 8(%ebp)
	jle	.L150
.LBB7:
	.loc 1 1085 0
	movl	$0, -12(%ebp)
	.loc 1 1086 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1087 0
	jmp	.L148
.L149:
	.loc 1 1089 0
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
	.loc 1 1091 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1092 0
	addl	$1, -12(%ebp)
.L148:
	.loc 1 1087 0
	cmpl	$0, 12(%ebp)
	jne	.L149
.L150:
.LBE7:
	.loc 1 1096 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	init_dollar_format_checking, .-init_dollar_format_checking
	.section	.rodata
	.type	__FUNCTION__.12523, @object
	.size	__FUNCTION__.12523, 25
__FUNCTION__.12523:
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
	.loc 1 1117 0
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
	.loc 1 1120 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1121 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L152
	.loc 1 1123 0
	cmpl	$0, 16(%ebp)
	je	.L154
	.loc 1 1125 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1126 0
	movl	$-1, -48(%ebp)
	jmp	.L156
.L154:
	.loc 1 1129 0
	movl	$0, -48(%ebp)
	jmp	.L156
.L152:
	.loc 1 1131 0
	movl	$0, -32(%ebp)
	.loc 1 1132 0
	movl	$0, -28(%ebp)
	.loc 1 1133 0
	jmp	.L157
.L158:
.LBB8:
	.loc 1 1136 0
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
	.loc 1 1137 0
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
	.loc 1 1138 0
	movl	$1, -28(%ebp)
.L161:
	.loc 1 1139 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1140 0
	addl	$1, -24(%ebp)
.L157:
.LBE8:
	.loc 1 1133 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L158
	.loc 1 1142 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	je	.L163
	.loc 1 1144 0
	cmpl	$0, 16(%ebp)
	je	.L165
	.loc 1 1146 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1147 0
	movl	$-1, -48(%ebp)
	jmp	.L156
.L165:
	.loc 1 1150 0
	movl	$0, -48(%ebp)
	jmp	.L156
.L163:
	.loc 1 1152 0
	movl	-24(%ebp), %edx
	addl	$1, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1153 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L167
	movl	dollar_format_warned@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L167
	.loc 1 1155 0
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
	.loc 1 1158 0
	movl	$1, dollar_format_warned@GOTOFF(%ebx)
.L167:
	.loc 1 1160 0
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
	.loc 1 1163 0
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1164 0
	movl	$-1, -48(%ebp)
	jmp	.L156
.L176:
	.loc 1 1166 0
	movl	dollar_max_arg_used@GOTOFF(%ebx), %eax
	cmpl	%eax, -32(%ebp)
	jle	.L180
	.loc 1 1167 0
	movl	-32(%ebp), %eax
	movl	%eax, dollar_max_arg_used@GOTOFF(%ebx)
	.loc 1 1170 0
	jmp	.L180
.L181:
.LBB9:
	.loc 1 1173 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	addl	$16, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1174 0
	movl	-16(%ebp), %eax
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, dollar_arguments_used@GOTOFF(%ebx)
	.loc 1 1175 0
	movl	-16(%ebp), %eax
	movl	dollar_arguments_pointer_p@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, dollar_arguments_pointer_p@GOTOFF(%ebx)
	.loc 1 1177 0
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
	.loc 1 1179 0
	movl	-16(%ebp), %eax
	movl	%eax, dollar_arguments_alloc@GOTOFF(%ebx)
.L180:
.LBE9:
	.loc 1 1170 0
	movl	dollar_arguments_alloc@GOTOFF(%ebx), %edx
	movl	dollar_max_arg_used@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jl	.L181
	.loc 1 1181 0
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
	.loc 1 1184 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movb	$2, (%eax)
	.loc 1 1185 0
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
	.loc 1 1181 0
	jmp	.L186
.L183:
	.loc 1 1190 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movb	$1, (%eax)
.L186:
	.loc 1 1191 0
	movl	dollar_first_arg_num@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L187
.LBB10:
	.loc 1 1194 0
	movl	24(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1195 0
	movl	$1, -12(%ebp)
	jmp	.L189
.L190:
	.loc 1 1196 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1195 0
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
	.loc 1 1198 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L195
	.loc 1 1201 0
	leal	__FUNCTION__.12523@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1201, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L187:
.LBE10:
	.loc 1 1205 0
	movl	24(%ebp), %eax
	movl	$0, (%eax)
.L195:
	.loc 1 1206 0
	movl	-32(%ebp), %ecx
	movl	%ecx, -48(%ebp)
.L156:
	movl	-48(%ebp), %eax
	.loc 1 1207 0
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
	.loc 1 1225 0
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
	.loc 1 1227 0
	movb	$0, -5(%ebp)
	.loc 1 1228 0
	movl	$0, -12(%ebp)
	jmp	.L198
.L199:
	.loc 1 1230 0
	movl	dollar_arguments_used@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L200
	.loc 1 1232 0
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
	.loc 1 1234 0
	movb	$1, -5(%ebp)
	.loc 1 1232 0
	jmp	.L200
.L202:
	.loc 1 1236 0
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
	.loc 1 1228 0
	addl	$1, -12(%ebp)
.L198:
	movl	dollar_max_arg_used@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L199
	.loc 1 1240 0
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
	.loc 1 1244 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1245 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
.L211:
	.loc 1 1247 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	finish_dollar_format_checking, .-finish_dollar_format_checking
	.section	.rodata
	.type	__FUNCTION__.12678, @object
	.size	__FUNCTION__.12678, 14
__FUNCTION__.12678:
	.string	"get_flag_spec"
	.text
	.type	get_flag_spec, @function
get_flag_spec:
.LFB25:
	.loc 1 1263 0
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
	.loc 1 1265 0
	movl	$0, -8(%ebp)
	jmp	.L213
.L214:
	.loc 1 1267 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L215
	.loc 1 1269 0
	cmpl	$0, 16(%ebp)
	je	.L217
	.loc 1 1271 0
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
	.loc 1 1273 0
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
	.loc 1 1275 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L215
	.loc 1 1276 0
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
	.loc 1 1265 0
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
	.loc 1 1278 0
	cmpl	$0, 16(%ebp)
	jne	.L225
	.loc 1 1279 0
	leal	__FUNCTION__.12678@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1279, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L225:
	.loc 1 1281 0
	movl	$0, -24(%ebp)
.L222:
	movl	-24(%ebp), %eax
	.loc 1 1282 0
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
	.loc 1 1294 0
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
	.loc 1 1301 0
	movl	$1, -24(%ebp)
	movl	$0, -20(%ebp)
.L229:
	.loc 1 1303 0
	cmpl	$0, 16(%ebp)
	je	.L270
	.loc 1 1305 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L232
	.loc 1 1307 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1301 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
	.loc 1 1308 0
	jmp	.L229
.L232:
	.loc 1 1309 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1310 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1311 0
	cmpl	$0, -12(%ebp)
	je	.L270
	.loc 1 1314 0
	movl	$0, -68(%ebp)
	.loc 1 1315 0
	movl	$0, -64(%ebp)
	.loc 1 1316 0
	movl	$0, -60(%ebp)
	.loc 1 1317 0
	movl	$0, -56(%ebp)
	.loc 1 1318 0
	movl	$0, -52(%ebp)
	.loc 1 1319 0
	movl	$0, -48(%ebp)
	.loc 1 1320 0
	movl	$0, -44(%ebp)
	.loc 1 1322 0
	leal	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1323 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1324 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1325 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1327 0
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
	.loc 1 1330 0
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jle	.L235
	.loc 1 1335 0
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
	.loc 1 1339 0
	movl	warn_format_nonliteral@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L235
	.loc 1 1340 0
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L235
.L237:
	.loc 1 1342 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L235
	.loc 1 1346 0
	jmp	.L242
.L243:
	.loc 1 1348 0
	cmpl	$0, 16(%ebp)
	je	.L244
	.loc 1 1350 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 1351 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
.L242:
	.loc 1 1346 0
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
	.loc 1 1353 0
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
	.loc 1 1354 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1353 0
	jmp	.L235
.L247:
	.loc 1 1355 0
	movl	warn_format_nonliteral@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L235
	.loc 1 1356 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L235:
	.loc 1 1367 0
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
	.loc 1 1369 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L252:
	.loc 1 1370 0
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
	.loc 1 1372 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L257:
	.loc 1 1373 0
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
	.loc 1 1375 0
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
	.loc 1 1378 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	jle	.L267
	.loc 1 1379 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L267:
	.loc 1 1381 0
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	jle	.L270
	.loc 1 1382 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L270:
	.loc 1 1383 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	check_format_info, .-check_format_info
	.section	.rodata
	.type	__FUNCTION__.12842, @object
	.size	__FUNCTION__.12842, 17
__FUNCTION__.12842:
	.string	"check_format_arg"
	.text
	.type	check_format_arg, @function
check_format_arg:
.LFB27:
	.loc 1 1395 0
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
	.loc 1 1396 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1397 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1398 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1399 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1400 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1405 0
	movl	$0, -24(%ebp)
	.loc 1 1408 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L272
	.loc 1 1412 0
	jmp	.L274
.L275:
	.loc 1 1414 0
	cmpl	$0, -40(%ebp)
	je	.L343
	.loc 1 1416 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1417 0
	addl	$1, -80(%ebp)
	adcl	$0, -76(%ebp)
.L274:
	.loc 1 1412 0
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
	.loc 1 1420 0
	cmpl	$0, -40(%ebp)
	jne	.L280
	.loc 1 1421 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L343
.L280:
	.loc 1 1423 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1425 0
	jmp	.L343
.L272:
	.loc 1 1428 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 1429 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L283
.LBB11:
	.loc 1 1433 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1434 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1435 0
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
	.loc 1 1436 0
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
	.loc 1 1437 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L299
	.loc 1 1438 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%ebp)
	jmp	.L301
.L299:
	.loc 1 1439 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L302
	.loc 1 1441 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1442 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L301
.L302:
	.loc 1 1446 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1447 0
	jmp	.L343
.L301:
	.loc 1 1449 0
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
	.loc 1 1452 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1453 0
	jmp	.L343
.L283:
.LBE11:
	.loc 1 1456 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	je	.L306
	.loc 1 1458 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1459 0
	jmp	.L343
.L306:
	.loc 1 1461 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 1462 0
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
	.loc 1 1470 0
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1471 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%ebp)
.L308:
	.loc 1 1473 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L313
	.loc 1 1475 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1476 0
	jmp	.L343
.L313:
	.loc 1 1478 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L315
	.loc 1 1480 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1481 0
	jmp	.L343
.L315:
	.loc 1 1483 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1484 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1485 0
	cmpl	$0, -24(%ebp)
	je	.L317
	.loc 1 1488 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L319
	.loc 1 1489 0
	leal	__FUNCTION__.12842@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1489, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L319:
	.loc 1 1490 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L317
.LBB12:
	.loc 1 1492 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 1493 0
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
	.loc 1 1496 0
	movl	-64(%ebp), %eax
	movl	%eax, -32(%ebp)
.L317:
.LBE12:
	.loc 1 1499 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L327
	.loc 1 1501 0
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
	.loc 1 1503 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1504 0
	jmp	.L343
.L329:
	.loc 1 1506 0
	movl	-72(%ebp), %eax
	addl	%eax, -28(%ebp)
	.loc 1 1507 0
	movl	-32(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -32(%ebp)
.L327:
	.loc 1 1509 0
	cmpl	$0, -32(%ebp)
	jg	.L332
	.loc 1 1511 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1512 0
	jmp	.L343
.L332:
	.loc 1 1514 0
	cmpl	$1, -32(%ebp)
	jne	.L334
	.loc 1 1516 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1517 0
	jmp	.L343
.L334:
	.loc 1 1519 0
	subl	$1, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L338
	.loc 1 1521 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1522 0
	jmp	.L343
.L339:
	.loc 1 1528 0
	cmpl	$0, -40(%ebp)
	je	.L343
	.loc 1 1530 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1531 0
	addl	$1, -80(%ebp)
	adcl	$0, -76(%ebp)
.L338:
	.loc 1 1526 0
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
	.loc 1 1536 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1537 0
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
	.loc 1 1539 0
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
	.loc 1 1559 0
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
	.loc 1 1559 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 1560 0
	movl	-560(%ebp), %eax
	movl	%eax, -420(%ebp)
	.loc 1 1561 0
	movl	-564(%ebp), %eax
	movl	%eax, -416(%ebp)
	.loc 1 1563 0
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
	.loc 1 1564 0
	movl	-412(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -408(%ebp)
	.loc 1 1565 0
	movl	-412(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -404(%ebp)
	.loc 1 1569 0
	movl	$-1, -400(%ebp)
	.loc 1 1571 0
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
	.loc 1 1576 0
	movl	$0, -392(%ebp)
	.loc 1 1577 0
	movl	$0, -388(%ebp)
	.loc 1 1578 0
	movl	$0, -384(%ebp)
	.loc 1 1579 0
	movl	$0, -380(%ebp)
	.loc 1 1583 0
	movl	$0, -364(%ebp)
	.loc 1 1584 0
	movl	$0, -424(%ebp)
	.loc 1 1590 0
	movl	$0, -352(%ebp)
	.loc 1 1591 0
	movl	$0, -348(%ebp)
	.loc 1 1592 0
	movl	$0, -344(%ebp)
	.loc 1 1593 0
	movl	$0, -340(%ebp)
	.loc 1 1595 0
	movl	$0, -336(%ebp)
	.loc 1 1596 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L346
	.loc 1 1598 0
	movl	-560(%ebp), %eax
	movl	%eax, %edx
	movl	-420(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	24(%ebp), %eax
	je	.L348
	.loc 1 1599 0
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L348:
	.loc 1 1600 0
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
	.loc 1 1603 0
	movl	-552(%ebp), %eax
	movl	24(%eax), %eax
	leal	-1(%eax), %edx
	movl	-552(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1604 0
	movl	-552(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-552(%ebp), %eax
	movl	%edx, 4(%eax)
.L350:
	.loc 1 1606 0
	cmpl	$0, -400(%ebp)
	jle	.L716
	.loc 1 1607 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$128, %eax
	movl	%eax, 8(%esp)
	movl	-552(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_dollar_format_checking
	.loc 1 1608 0
	jmp	.L716
.L346:
	.loc 1 1610 0
	movl	-560(%ebp), %edx
	movzbl	(%edx), %eax
	cmpb	$37, %al
	setne	%cl
	leal	1(%edx), %eax
	movl	%eax, -560(%ebp)
	testb	%cl, %cl
	jne	.L345
	.loc 1 1612 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L359
	.loc 1 1614 0
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1615 0
	jmp	.L345
.L359:
	.loc 1 1617 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L361
	.loc 1 1619 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1620 0
	jmp	.L345
.L361:
	.loc 1 1622 0
	movb	$0, -276(%ebp)
	.loc 1 1624 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L368
	cmpl	$0, -400(%ebp)
	je	.L368
.LBB14:
	.loc 1 1631 0
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
	.loc 1 1634 0
	cmpl	$-1, -332(%ebp)
	je	.L716
	.loc 1 1636 0
	cmpl	$0, -332(%ebp)
	jle	.L368
	.loc 1 1638 0
	movl	$1, -400(%ebp)
	.loc 1 1639 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-332(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movl	%eax, -364(%ebp)
	.loc 1 1646 0
	jmp	.L368
.L369:
.LBE14:
.LBB15:
	.loc 1 1650 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -328(%ebp)
	.loc 1 1651 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L370
	.loc 1 1653 0
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
	.loc 1 1657 0
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
	.loc 1 1658 0
	movl	-396(%ebp), %edx
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1659 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
.L372:
	.loc 1 1661 0
	movl	-328(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L373
	.loc 1 1663 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1664 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L373
	.loc 1 1666 0
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1667 0
	jmp	.L716
.L373:
	.loc 1 1670 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L368:
.LBE15:
	.loc 1 1646 0
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
	.loc 1 1674 0
	movl	-412(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L378
	.loc 1 1676 0
	movl	-412(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L380
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L380
	.loc 1 1678 0
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
	.loc 1 1679 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	32(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1680 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
	.loc 1 1683 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1684 0
	cmpl	$0, -400(%ebp)
	je	.L383
.LBB16:
	.loc 1 1687 0
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
	.loc 1 1691 0
	cmpl	$-1, -324(%ebp)
	je	.L716
	.loc 1 1693 0
	cmpl	$0, -324(%ebp)
	jle	.L386
	.loc 1 1695 0
	movl	$1, -400(%ebp)
	.loc 1 1696 0
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
	.loc 1 1699 0
	movl	$0, -400(%ebp)
.L383:
.LBE16:
	.loc 1 1701 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L378
	.loc 1 1703 0
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	jne	.L390
	.loc 1 1705 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1706 0
	jmp	.L716
.L390:
	.loc 1 1708 0
	movl	-564(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -372(%ebp)
	.loc 1 1709 0
	cmpl	$0, -400(%ebp)
	jg	.L392
	.loc 1 1711 0
	movl	-564(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	.loc 1 1712 0
	addl	$1, -576(%ebp)
	adcl	$0, -572(%ebp)
.L392:
	.loc 1 1714 0
	movl	-412(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -464(%ebp)
	.loc 1 1715 0
	movl	$0, -460(%ebp)
	.loc 1 1716 0
	movl	$0, -456(%ebp)
	.loc 1 1717 0
	movl	$0, -452(%ebp)
	.loc 1 1718 0
	movl	$0, -448(%ebp)
	.loc 1 1719 0
	movl	$0, -444(%ebp)
	.loc 1 1720 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, -440(%ebp)
	.loc 1 1721 0
	movl	-372(%ebp), %eax
	movl	%eax, -436(%ebp)
	.loc 1 1722 0
	movl	-576(%ebp), %eax
	movl	%eax, -432(%ebp)
	.loc 1 1723 0
	movl	$0, -428(%ebp)
	.loc 1 1724 0
	cmpl	$0, -348(%ebp)
	je	.L394
	.loc 1 1725 0
	movl	-348(%ebp), %edx
	leal	-464(%ebp), %eax
	movl	%eax, 36(%edx)
.L394:
	.loc 1 1726 0
	cmpl	$0, -352(%ebp)
	jne	.L396
	.loc 1 1727 0
	leal	-464(%ebp), %eax
	movl	%eax, -352(%ebp)
.L396:
	.loc 1 1728 0
	leal	-464(%ebp), %eax
	movl	%eax, -348(%ebp)
	.loc 1 1676 0
	jmp	.L378
.L380:
.LBB17:
	.loc 1 1735 0
	movl	$0, -320(%ebp)
	.loc 1 1736 0
	movl	$0, -316(%ebp)
	.loc 1 1737 0
	jmp	.L398
.L399:
	.loc 1 1739 0
	movl	$1, -316(%ebp)
	.loc 1 1740 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L400
	.loc 1 1741 0
	movl	$1, -320(%ebp)
.L400:
	.loc 1 1742 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L398:
	.loc 1 1737 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L399
	.loc 1 1744 0
	cmpl	$0, -316(%ebp)
	je	.L403
	cmpl	$0, -320(%ebp)
	jne	.L403
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L403
	.loc 1 1746 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L403:
	.loc 1 1748 0
	cmpl	$0, -316(%ebp)
	je	.L378
	.loc 1 1750 0
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
	.loc 1 1751 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	32(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1752 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
.L378:
.LBE17:
	.loc 1 1758 0
	movl	-412(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L408
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L408
	.loc 1 1760 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1761 0
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
	.loc 1 1762 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	36(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1763 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
	.loc 1 1764 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L413
	.loc 1 1765 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1767 0
	jmp	.L413
.L414:
	.loc 1 1768 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L413:
	.loc 1 1767 0
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
	.loc 1 1772 0
	movl	-412(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L415
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L415
	.loc 1 1774 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1775 0
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
	.loc 1 1776 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	40(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1777 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
	.loc 1 1778 0
	movl	-412(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L418
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L418
	.loc 1 1782 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1783 0
	cmpl	$0, -400(%ebp)
	je	.L421
.LBB18:
	.loc 1 1786 0
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
	.loc 1 1790 0
	cmpl	$-1, -312(%ebp)
	je	.L716
	.loc 1 1792 0
	cmpl	$0, -312(%ebp)
	jle	.L424
	.loc 1 1794 0
	movl	$1, -400(%ebp)
	.loc 1 1795 0
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
	.loc 1 1798 0
	movl	$0, -400(%ebp)
.L421:
.LBE18:
	.loc 1 1800 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L415
	.loc 1 1802 0
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	jne	.L428
	.loc 1 1804 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1805 0
	jmp	.L716
.L428:
	.loc 1 1807 0
	movl	-564(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -372(%ebp)
	.loc 1 1808 0
	cmpl	$0, -400(%ebp)
	jg	.L430
	.loc 1 1810 0
	movl	-564(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	.loc 1 1811 0
	addl	$1, -576(%ebp)
	adcl	$0, -572(%ebp)
.L430:
	.loc 1 1813 0
	movl	-412(%ebp), %eax
	movl	56(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -504(%ebp)
	.loc 1 1814 0
	movl	$0, -500(%ebp)
	.loc 1 1815 0
	movl	$0, -496(%ebp)
	.loc 1 1816 0
	movl	$0, -492(%ebp)
	.loc 1 1817 0
	movl	$0, -488(%ebp)
	.loc 1 1818 0
	movl	$0, -484(%ebp)
	.loc 1 1819 0
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, -480(%ebp)
	.loc 1 1820 0
	movl	-372(%ebp), %eax
	movl	%eax, -476(%ebp)
	.loc 1 1821 0
	movl	-576(%ebp), %eax
	movl	%eax, -472(%ebp)
	.loc 1 1822 0
	movl	$0, -468(%ebp)
	.loc 1 1823 0
	cmpl	$0, -348(%ebp)
	je	.L432
	.loc 1 1824 0
	movl	-348(%ebp), %edx
	leal	-504(%ebp), %eax
	movl	%eax, 36(%edx)
.L432:
	.loc 1 1825 0
	cmpl	$0, -352(%ebp)
	jne	.L434
	.loc 1 1826 0
	leal	-504(%ebp), %eax
	movl	%eax, -352(%ebp)
.L434:
	.loc 1 1827 0
	leal	-504(%ebp), %eax
	movl	%eax, -348(%ebp)
	.loc 1 1778 0
	jmp	.L415
.L418:
	.loc 1 1832 0
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
	.loc 1 1834 0
	movl	-412(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1836 0
	jmp	.L439
.L440:
	.loc 1 1837 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L439:
	.loc 1 1836 0
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
	.loc 1 1842 0
	movl	-412(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -344(%ebp)
	.loc 1 1843 0
	movl	$0, -388(%ebp)
	.loc 1 1844 0
	movl	$0, -384(%ebp)
	.loc 1 1845 0
	movl	$0, -380(%ebp)
	.loc 1 1846 0
	cmpl	$0, -344(%ebp)
	je	.L441
	.loc 1 1848 0
	jmp	.L443
.L444:
	.loc 1 1849 0
	addl	$24, -344(%ebp)
.L443:
	.loc 1 1848 0
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
	.loc 1 1850 0
	movl	-344(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L447
	.loc 1 1852 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1853 0
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
	.loc 1 1855 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1856 0
	movl	-344(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -388(%ebp)
	.loc 1 1857 0
	movl	-344(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -384(%ebp)
	.loc 1 1858 0
	movl	-344(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -380(%ebp)
	.loc 1 1853 0
	jmp	.L452
.L449:
	.loc 1 1862 0
	movl	-344(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -388(%ebp)
	.loc 1 1863 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -384(%ebp)
	.loc 1 1864 0
	movl	-344(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -380(%ebp)
.L452:
	.loc 1 1866 0
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
	.loc 1 1867 0
	movl	-396(%ebp), %edx
	movl	-412(%ebp), %eax
	movl	48(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1868 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
.L447:
	.loc 1 1870 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L441
	.loc 1 1873 0
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
	.loc 1 1874 0
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
	.loc 1 1881 0
	movl	-412(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L473
	.loc 1 1883 0
	jmp	.L475
.L476:
	.loc 1 1886 0
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
	.loc 1 1889 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -308(%ebp)
	.loc 1 1890 0
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
	.loc 1 1894 0
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
	.loc 1 1895 0
	movl	-396(%ebp), %edx
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -276(%ebp,%edx)
	addl	$1, -396(%ebp)
	.loc 1 1896 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
.L479:
	.loc 1 1898 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L475:
	.loc 1 1883 0
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
	.loc 1 1903 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L481
	.loc 1 1905 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$97, %al
	jne	.L481
	movl	flag_isoc99@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L481
	.loc 1 1907 0
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
	.loc 1 1911 0
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
	.loc 1 1912 0
	movl	-396(%ebp), %eax
	movb	$97, -276(%ebp,%eax)
	addl	$1, -396(%ebp)
	.loc 1 1913 0
	movl	-396(%ebp), %eax
	movb	$0, -276(%ebp,%eax)
	.loc 1 1914 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L481:
	.loc 1 1919 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -376(%ebp)
	.loc 1 1920 0
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
	.loc 1 1924 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1925 0
	jmp	.L345
.L490:
	.loc 1 1927 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 1928 0
	movl	-412(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -340(%ebp)
	.loc 1 1929 0
	jmp	.L492
.L493:
	.loc 1 1931 0
	subl	$-128, -340(%ebp)
.L492:
	.loc 1 1929 0
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
	.loc 1 1932 0
	movl	-340(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L496
	.loc 1 1934 0
	movzbl	-376(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$172, %eax
	testl	%eax, %eax
	je	.L498
	.loc 1 1935 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L345
.L498:
	.loc 1 1938 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 1940 0
	jmp	.L345
.L496:
	.loc 1 1942 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L501
	.loc 1 1944 0
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
	.loc 1 1945 0
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
	.loc 1 1951 0
	movl	$0, -304(%ebp)
	.loc 1 1952 0
	movl	$0, -396(%ebp)
	jmp	.L522
.L523:
.LBB21:
	.loc 1 1955 0
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	get_flag_spec
	movl	%eax, -300(%ebp)
	.loc 1 1956 0
	movl	-304(%ebp), %edx
	movl	-396(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	movb	%al, -276(%ebp,%edx)
	.loc 1 1957 0
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	movzbl	%al, %edx
	movl	-412(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	%eax, %edx
	je	.L524
	.loc 1 1959 0
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
	.loc 1 1961 0
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
	.loc 1 1963 0
	addl	$1, -304(%ebp)
	.loc 1 1964 0
	jmp	.L524
.L526:
	.loc 1 1966 0
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L524
.LBB22:
	.loc 1 1969 0
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
	.loc 1 1970 0
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
	.loc 1 1972 0
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
	.loc 1 1973 0
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
	.loc 1 1977 0
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
	.loc 1 1978 0
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
	.loc 1 1979 0
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
	.loc 1 1952 0
	addl	$1, -396(%ebp)
.L522:
	movl	-396(%ebp), %eax
	movzbl	-276(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L523
	.loc 1 1985 0
	movl	-304(%ebp), %edx
	movl	-396(%ebp), %eax
	subl	%edx, %eax
	movb	$0, -276(%ebp,%eax)
.LBE20:
	.loc 1 1988 0
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
	.loc 1 1990 0
	movl	$1, -336(%ebp)
.L586:
	.loc 1 1992 0
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
	.loc 1 1994 0
	movl	$1, -392(%ebp)
.L589:
	.loc 1 1997 0
	movl	$0, -396(%ebp)
	jmp	.L592
.L593:
.LBB24:
	.loc 1 2000 0
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
	.loc 1 2002 0
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
	.loc 1 2004 0
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
	.loc 1 2007 0
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
	.loc 1 2008 0
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
	.loc 1 2009 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L599
	.loc 1 2011 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L601
	.loc 1 2012 0
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
	.loc 1 2016 0
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
	.loc 1 2021 0
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L604
	.loc 1 2022 0
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
	.loc 1 2026 0
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
	.loc 1 1997 0
	addl	$1, -396(%ebp)
.L592:
	movl	-396(%ebp), %eax
	sall	$4, %eax
	addl	-404(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L593
	.loc 1 2032 0
	movl	warn_format_y2k@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L607
.LBB25:
	.loc 1 2034 0
	movl	$0, -280(%ebp)
	.loc 1 2035 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$52, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L609
	.loc 1 2036 0
	movl	$69, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L611
	.loc 1 2037 0
	movl	$3, -280(%ebp)
	jmp	.L614
.L611:
	.loc 1 2039 0
	movl	$2, -280(%ebp)
	jmp	.L614
.L609:
	.loc 1 2040 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$51, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L615
	.loc 1 2041 0
	movl	$3, -280(%ebp)
	jmp	.L614
.L615:
	.loc 1 2042 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$50, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L614
	.loc 1 2043 0
	movl	$2, -280(%ebp)
.L614:
	.loc 1 2044 0
	cmpl	$3, -280(%ebp)
	jne	.L618
	.loc 1 2045 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L607
.L618:
	.loc 1 2047 0
	cmpl	$2, -280(%ebp)
	jne	.L607
	.loc 1 2048 0
	movl	-376(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L607:
.LBE25:
	.loc 1 2051 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$91, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L621
	.loc 1 2054 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$94, %al
	jne	.L623
	.loc 1 2055 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L623:
	.loc 1 2058 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$93, %al
	jne	.L627
	.loc 1 2059 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
	.loc 1 2060 0
	jmp	.L627
.L628:
	.loc 1 2061 0
	movl	-560(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -560(%ebp)
.L627:
	.loc 1 2060 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L629
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$93, %al
	jne	.L628
.L629:
	.loc 1 2062 0
	movl	-560(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$93, %al
	je	.L621
	.loc 1 2064 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L621:
	.loc 1 2067 0
	movl	$0, -368(%ebp)
	.loc 1 2068 0
	movl	$0, -356(%ebp)
	.loc 1 2069 0
	movl	-412(%ebp), %eax
	movl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L632
	.loc 1 2071 0
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
	.loc 1 2073 0
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
	.loc 1 2074 0
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
	.loc 1 2075 0
	cmpl	$0, -368(%ebp)
	jne	.L637
	.loc 1 2077 0
	movl	-376(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-388(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2081 0
	addl	$1, -576(%ebp)
	adcl	$0, -572(%ebp)
	.loc 1 2082 0
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	jne	.L639
	.loc 1 2084 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2085 0
	jmp	.L716
.L639:
	.loc 1 2087 0
	movl	-564(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	.loc 1 2088 0
	jmp	.L345
.L637:
	.loc 1 2090 0
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
	.loc 1 2097 0
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
	.loc 1 2098 0
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
	.loc 1 2105 0
	movl	-556(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L345
	.loc 1 2107 0
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L688
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-368(%ebp), %eax
	je	.L690
.L688:
	cmpl	$0, -392(%ebp)
	je	.L691
.L690:
	.loc 1 2110 0
	cmpl	$0, -364(%ebp)
	je	.L696
	.loc 1 2112 0
	cmpl	$0, -392(%ebp)
	je	.L694
	.loc 1 2113 0
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L696
.L694:
	.loc 1 2115 0
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2107 0
	jmp	.L696
.L691:
	.loc 1 2120 0
	cmpl	$0, -364(%ebp)
	je	.L697
	.loc 1 2122 0
	movl	-364(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -576(%ebp)
	movl	%edx, -572(%ebp)
	.loc 1 2123 0
	movl	-424(%ebp), %eax
	movl	%eax, -564(%ebp)
	jmp	.L699
.L697:
	.loc 1 2127 0
	addl	$1, -576(%ebp)
	adcl	$0, -572(%ebp)
	.loc 1 2128 0
	cmpl	$0, -400(%ebp)
	jle	.L700
	.loc 1 2130 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2131 0
	jmp	.L716
.L700:
	.loc 1 2134 0
	movl	$0, -400(%ebp)
	.loc 1 2135 0
	movl	-564(%ebp), %eax
	testl	%eax, %eax
	jne	.L699
	.loc 1 2137 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2138 0
	jmp	.L716
.L699:
	.loc 1 2141 0
	movl	-564(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -372(%ebp)
	.loc 1 2142 0
	movl	-564(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	.loc 1 2143 0
	movl	-368(%ebp), %eax
	movl	%eax, -544(%ebp)
	.loc 1 2144 0
	movl	-356(%ebp), %eax
	movl	%eax, -540(%ebp)
	.loc 1 2145 0
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	addl	-336(%ebp), %eax
	movl	%eax, -536(%ebp)
	.loc 1 2146 0
	movl	$0, -532(%ebp)
	.loc 1 2147 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$99, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L703
	.loc 1 2148 0
	movl	$1, -532(%ebp)
.L703:
	.loc 1 2149 0
	movl	$0, -528(%ebp)
	.loc 1 2150 0
	movl	$0, -524(%ebp)
	.loc 1 2151 0
	cmpl	$0, -336(%ebp)
	je	.L705
	.loc 1 2152 0
	movl	$1, -528(%ebp)
	jmp	.L707
.L705:
	.loc 1 2155 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$87, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L708
	.loc 1 2156 0
	movl	$1, -528(%ebp)
.L708:
	.loc 1 2157 0
	movl	-340(%ebp), %eax
	movl	124(%eax), %eax
	movl	$82, 4(%esp)
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L707
	.loc 1 2158 0
	movl	$1, -524(%ebp)
.L707:
	.loc 1 2160 0
	movl	$0, -520(%ebp)
	.loc 1 2161 0
	movl	-372(%ebp), %eax
	movl	%eax, -516(%ebp)
	.loc 1 2162 0
	movl	-576(%ebp), %eax
	movl	%eax, -512(%ebp)
	.loc 1 2163 0
	movl	$0, -508(%ebp)
	.loc 1 2164 0
	cmpl	$0, -348(%ebp)
	je	.L711
	.loc 1 2165 0
	movl	-348(%ebp), %edx
	leal	-544(%ebp), %eax
	movl	%eax, 36(%edx)
.L711:
	.loc 1 2166 0
	cmpl	$0, -352(%ebp)
	jne	.L713
	.loc 1 2167 0
	leal	-544(%ebp), %eax
	movl	%eax, -352(%ebp)
.L713:
	.loc 1 2168 0
	leal	-544(%ebp), %eax
	movl	%eax, -348(%ebp)
.L696:
	.loc 1 2171 0
	cmpl	$0, -352(%ebp)
	je	.L345
	.loc 1 2172 0
	movl	-352(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-548(%ebp), %eax
	movl	%eax, (%esp)
	call	check_format_types
	.loc 1 2174 0
	jmp	.L345
.L716:
.LBE13:
	.loc 1 2175 0
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
	.type	__FUNCTION__.13981, @object
	.size	__FUNCTION__.13981, 19
__FUNCTION__.13981:
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
	.loc 1 2184 0
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
	.loc 1 2185 0
	jmp	.L720
.L721:
	.loc 1 2194 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2195 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2196 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L722
	.loc 1 2198 0
	movl	$0, -16(%ebp)
	.loc 1 2199 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2200 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2203 0
	cmpl	$0, -28(%ebp)
	jne	.L724
	.loc 1 2204 0
	leal	__FUNCTION__.13981@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2204, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L724:
	.loc 1 2205 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L726
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L726
	.loc 1 2206 0
	leal	__FUNCTION__.13981@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2206, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L726:
	.loc 1 2208 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L731
	.loc 1 2209 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	280(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 2211 0
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
	.loc 1 2215 0
	movl	$0, -20(%ebp)
	jmp	.L738
.L739:
	.loc 1 2217 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L740
	.loc 1 2219 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2220 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L742
	.loc 1 2224 0
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
	.loc 1 2228 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L744:
	.loc 1 2233 0
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
	.loc 1 2237 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L749:
	.loc 1 2241 0
	cmpl	$0, -40(%ebp)
	je	.L754
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L754
	.loc 1 2242 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2241 0
	jmp	.L757
.L754:
	.loc 1 2244 0
	movl	$0, -40(%ebp)
.L757:
	.loc 1 2251 0
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
	.loc 1 2258 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L758:
	.loc 1 2263 0
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
	.loc 1 2268 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
.L766:
	.loc 1 2215 0
	addl	$1, -20(%ebp)
	jmp	.L738
.L740:
	.loc 1 2274 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	.L772
	.loc 1 2275 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	jmp	.L742
.L772:
	.loc 1 2277 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	status_warning
	.loc 1 2278 0
	jmp	.L742
.L738:
	.loc 1 2215 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L739
.L742:
	.loc 1 2282 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L722
	.loc 1 2285 0
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2286 0
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2291 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L776
	.loc 1 2292 0
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
	.loc 1 2297 0
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L722
	.loc 1 2303 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
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
	.loc 1 2310 0
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
	.loc 1 2319 0
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
	.loc 1 2328 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2329 0
	movl	$0, -8(%ebp)
	.loc 1 2330 0
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
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
	.loc 1 2335 0
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L807
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L807
	.loc 1 2337 0
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2335 0
	jmp	.L802
.L807:
	.loc 1 2339 0
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L802:
	.loc 1 2345 0
	cmpl	$0, -8(%ebp)
	jne	.L810
	.loc 1 2347 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L812
	.loc 1 2348 0
	leal	.LC208@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L810
.L812:
	.loc 1 2350 0
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L810:
	.loc 1 2354 0
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
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L814
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L814
	.loc 1 2359 0
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L814:
	.loc 1 2361 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L722
	.loc 1 2367 0
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
	.loc 1 2369 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L821:
	.loc 1 2370 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L824
	.loc 1 2371 0
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
	.loc 1 2374 0
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
	.loc 1 2185 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 12(%ebp)
.L720:
	cmpl	$0, 12(%ebp)
	jne	.L721
	.loc 1 2378 0
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
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/hashtable.h"
	.file 7 "../../../kg++fe/gnu/location.h"
	.file 8 "../../../kg++fe/omp_types.h"
	.file 9 "../../../kg++fe/gnu/diagnostic.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 11 "../../../include/gnu/safe-ctype.h"
	.file 12 "../../../kg++fe/gnu/flags.h"
	.file 13 "../../../kg++fe/gnu/c-common.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 18 "../../../include/gnu/obstack.h"
	.file 19 "../../../kg++fe/gnu/langhooks.h"
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
	.long	0x829d
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/c-format.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19e
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0x993
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x87
	.long	0x74a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x13ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1b1
	.uleb128 0x4
	.long	0x1e6
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x13fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x1f8
	.uleb128 0x7
	.long	0x2d2
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x3ac8
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x3de7
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3e2f
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x3f52
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x3e90
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x3efd
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x4187
	.uleb128 0x9
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x4848
	.uleb128 0x9
	.string	"type"
	.byte	0x3
	.value	0x88f
	.long	0x43ec
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x41be
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x4205
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x4256
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x42a2
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x5221
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8
	.uleb128 0xa
	.long	0x2dd
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0xa
	.byte	0x2b
	.long	0x310
	.uleb128 0x3
	.byte	0x4
	.long	0x2dd
	.uleb128 0x2
	.string	"va_list"
	.byte	0xa
	.byte	0x69
	.long	0x2fa
	.uleb128 0x2
	.string	"size_t"
	.byte	0x11
	.byte	0xd6
	.long	0x2ec
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
	.byte	0x10
	.byte	0x3b
	.long	0x38b
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x10
	.byte	0x90
	.long	0x3d5
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x10
	.byte	0x91
	.long	0x3b6
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2dd
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x406
	.uleb128 0xe
	.long	0x681
	.long	.LASF2
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xf
	.string	"_flags"
	.byte	0xf
	.value	0x10c
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"_IO_read_ptr"
	.byte	0xf
	.value	0x111
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"_IO_read_end"
	.byte	0xf
	.value	0x112
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"_IO_read_base"
	.byte	0xf
	.value	0x113
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"_IO_write_base"
	.byte	0xf
	.value	0x114
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"_IO_write_ptr"
	.byte	0xf
	.value	0x115
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"_IO_write_end"
	.byte	0xf
	.value	0x116
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"_IO_buf_base"
	.byte	0xf
	.value	0x117
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"_IO_buf_end"
	.byte	0xf
	.value	0x118
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"_IO_save_base"
	.byte	0xf
	.value	0x11a
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"_IO_backup_base"
	.byte	0xf
	.value	0x11b
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"_IO_save_end"
	.byte	0xf
	.value	0x11c
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"_markers"
	.byte	0xf
	.value	0x11e
	.long	0x6f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"_chain"
	.byte	0xf
	.value	0x120
	.long	0x6f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"_fileno"
	.byte	0xf
	.value	0x122
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"_flags2"
	.byte	0xf
	.value	0x126
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"_old_offset"
	.byte	0xf
	.value	0x128
	.long	0x3c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"_cur_column"
	.byte	0xf
	.value	0x12c
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"_vtable_offset"
	.byte	0xf
	.value	0x12d
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xf
	.string	"_shortbuf"
	.byte	0xf
	.value	0x12e
	.long	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xf
	.string	"_lock"
	.byte	0xf
	.value	0x132
	.long	0x70f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"_offset"
	.byte	0xf
	.value	0x13b
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"__pad1"
	.byte	0xf
	.value	0x144
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"__pad2"
	.byte	0xf
	.value	0x145
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"__pad3"
	.byte	0xf
	.value	0x146
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"__pad4"
	.byte	0xf
	.value	0x147
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"__pad5"
	.byte	0xf
	.value	0x148
	.long	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"_mode"
	.byte	0xf
	.value	0x14a
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"_unused2"
	.byte	0xf
	.value	0x14c
	.long	0x715
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.long	0x691
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x697
	.uleb128 0xa
	.long	0x333
	.uleb128 0x3
	.byte	0x4
	.long	0x2d2
	.uleb128 0x12
	.string	"_IO_lock_t"
	.byte	0xf
	.byte	0xb0
	.uleb128 0x4
	.long	0x6f3
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xf
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xf
	.byte	0xb7
	.long	0x6f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xf
	.byte	0xb8
	.long	0x6f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xf
	.byte	0xbc
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b0
	.uleb128 0x3
	.byte	0x4
	.long	0x406
	.uleb128 0x10
	.long	0x70f
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a2
	.uleb128 0x10
	.long	0x725
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0x27
	.byte	0x0
	.uleb128 0xa
	.long	0x2e5
	.uleb128 0x3
	.byte	0x4
	.long	0x2e5
	.uleb128 0x3
	.byte	0x4
	.long	0x736
	.uleb128 0x13
	.long	0x742
	.byte	0x1
	.uleb128 0x14
	.long	0x2e5
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x742
	.uleb128 0x16
	.long	0x993
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
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
	.uleb128 0x16
	.long	0x1162
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x17
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0x17
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x17
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x17
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x17
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x17
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x17
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x17
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x17
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x17
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x17
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x17
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x17
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x17
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x17
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x17
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x17
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x17
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x17
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x17
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x17
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x17
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x17
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x17
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x17
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x17
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x17
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x17
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x17
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x17
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x17
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x17
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x17
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x17
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x17
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x17
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x17
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x17
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x17
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x17
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x17
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x17
	.string	"INSN"
	.sleb128 42
	.uleb128 0x17
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x17
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x17
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x17
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x17
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x17
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x17
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x17
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x17
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x17
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x17
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x17
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x17
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x17
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x17
	.string	"SET"
	.sleb128 57
	.uleb128 0x17
	.string	"USE"
	.sleb128 58
	.uleb128 0x17
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x17
	.string	"CALL"
	.sleb128 60
	.uleb128 0x17
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x17
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x17
	.string	"RESX"
	.sleb128 63
	.uleb128 0x17
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x17
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x17
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x17
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x17
	.string	"CONST"
	.sleb128 68
	.uleb128 0x17
	.string	"PC"
	.sleb128 69
	.uleb128 0x17
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x17
	.string	"REG"
	.sleb128 71
	.uleb128 0x17
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x17
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x17
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x17
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x17
	.string	"MEM"
	.sleb128 76
	.uleb128 0x17
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x17
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x17
	.string	"CC0"
	.sleb128 79
	.uleb128 0x17
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x17
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x17
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x17
	.string	"COND"
	.sleb128 83
	.uleb128 0x17
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x17
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x17
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x17
	.string	"NEG"
	.sleb128 87
	.uleb128 0x17
	.string	"MULT"
	.sleb128 88
	.uleb128 0x17
	.string	"DIV"
	.sleb128 89
	.uleb128 0x17
	.string	"MOD"
	.sleb128 90
	.uleb128 0x17
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x17
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x17
	.string	"AND"
	.sleb128 93
	.uleb128 0x17
	.string	"IOR"
	.sleb128 94
	.uleb128 0x17
	.string	"XOR"
	.sleb128 95
	.uleb128 0x17
	.string	"NOT"
	.sleb128 96
	.uleb128 0x17
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x17
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x17
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x17
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x17
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x17
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x17
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x17
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x17
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x17
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x17
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x17
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x17
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x17
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x17
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x17
	.string	"NE"
	.sleb128 112
	.uleb128 0x17
	.string	"EQ"
	.sleb128 113
	.uleb128 0x17
	.string	"GE"
	.sleb128 114
	.uleb128 0x17
	.string	"GT"
	.sleb128 115
	.uleb128 0x17
	.string	"LE"
	.sleb128 116
	.uleb128 0x17
	.string	"LT"
	.sleb128 117
	.uleb128 0x17
	.string	"GEU"
	.sleb128 118
	.uleb128 0x17
	.string	"GTU"
	.sleb128 119
	.uleb128 0x17
	.string	"LEU"
	.sleb128 120
	.uleb128 0x17
	.string	"LTU"
	.sleb128 121
	.uleb128 0x17
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x17
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x17
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x17
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x17
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x17
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x17
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x17
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x17
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x17
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x17
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x17
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x17
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x17
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x17
	.string	"FIX"
	.sleb128 136
	.uleb128 0x17
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x17
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x17
	.string	"ABS"
	.sleb128 139
	.uleb128 0x17
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x17
	.string	"FFS"
	.sleb128 141
	.uleb128 0x17
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x17
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x17
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x17
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x17
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x17
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x17
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x17
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x17
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x17
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x17
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x17
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x17
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x17
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x17
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x17
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x17
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x17
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x17
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x17
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x17
	.string	"PHI"
	.sleb128 162
	.uleb128 0x17
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x18
	.long	0x123c
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x2ec
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x4
	.byte	0x57
	.long	0x2ec
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x4
	.byte	0x58
	.long	0x1162
	.uleb128 0xe
	.long	0x12b0
	.long	.LASF3
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF4
	.byte	0x4
	.byte	0x65
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x4
	.byte	0x68
	.long	0x1257
	.uleb128 0x7
	.long	0x138d
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x1b
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x38b
	.uleb128 0x1b
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e5
	.uleb128 0x1b
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x2ec
	.uleb128 0x1b
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2d2
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9d
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19e
	.uleb128 0x1b
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x74a
	.uleb128 0x1b
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x123c
	.uleb128 0x1b
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x13a1
	.uleb128 0x1b
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x13b9
	.uleb128 0x1b
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e6
	.uleb128 0x1b
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x13d1
	.uleb128 0x1b
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x13d7
	.byte	0x0
	.uleb128 0x1c
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x138d
	.uleb128 0x1c
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x13a7
	.uleb128 0x1c
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x13bf
	.uleb128 0x3
	.byte	0x4
	.long	0x12b0
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x12bb
	.uleb128 0x10
	.long	0x13fc
	.long	0x13dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x140c
	.long	0x9d
	.uleb128 0x11
	.long	0x2f3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x143e
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0x140c
	.uleb128 0x16
	.long	0x1d72
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
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
	.byte	0x2f
	.long	0x2ec
	.uleb128 0x4
	.long	0x1dbf
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF4
	.byte	0x3
	.byte	0x30
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x1dc9
	.uleb128 0x1c
	.string	"st"
	.byte	0x1
	.uleb128 0x1d
	.long	0x1e1e
	.long	.LASF5
	.byte	0x4
	.byte	0x3
	.byte	0x58
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
	.long	0x3ac8
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
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
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x17
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x17
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x17
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x17
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x17
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x17
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x17
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x17
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x17
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x17
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x17
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x17
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x17
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x17
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x17
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x17
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x17
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x17
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x17
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x17
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x17
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x17
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x17
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x17
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x17
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x17
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x17
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x17
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x17
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x17
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x17
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x17
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x17
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x17
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x17
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x17
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x17
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x17
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x17
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x17
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x17
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x17
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x17
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x17
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x17
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x17
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x17
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x17
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x17
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x17
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x17
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x17
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x17
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x17
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x17
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x17
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x17
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x17
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x17
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x17
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x17
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x17
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x17
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x17
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x17
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x17
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x17
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x17
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x17
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x17
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x17
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x17
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x17
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x17
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x17
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x17
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x17
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x17
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x17
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x17
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x17
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x17
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x17
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x17
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x17
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x17
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x17
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x17
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x17
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x17
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x17
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x17
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x17
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x17
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x17
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x17
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x17
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x17
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x17
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x17
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x17
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x17
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x17
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x17
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x17
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x17
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x17
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x17
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x17
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x17
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x17
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x17
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x17
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x17
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x17
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x17
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x17
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x17
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x17
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x17
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x17
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x17
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x17
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x17
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x17
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x17
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x17
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x17
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x17
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x17
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x17
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x17
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x17
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x17
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x17
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x17
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x17
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x17
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x17
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x17
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x17
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x17
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x17
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x17
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x17
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x17
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x17
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x17
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x17
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x17
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x17
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x17
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x17
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x17
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x17
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x17
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x17
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x17
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x17
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x17
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x17
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x17
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x17
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x17
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x17
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x17
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x17
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x17
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x17
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x17
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x17
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x17
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x17
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x17
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x17
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x17
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x17
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x17
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x17
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x17
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x17
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x17
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x17
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x17
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x17
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x17
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x17
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x17
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x17
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x17
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x17
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x17
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x17
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x17
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x17
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x17
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x17
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x17
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x17
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x17
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x17
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x17
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x17
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x17
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x17
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x17
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x17
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x17
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x17
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x17
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x17
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3dab
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x3
	.byte	0x8e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x1450
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x3
	.byte	0xa8
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x3
	.byte	0xa9
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x3
	.byte	0xaa
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x3
	.byte	0xab
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x3
	.byte	0xac
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x3
	.byte	0xad
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x3
	.byte	0xae
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x3
	.byte	0xb0
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1f
	.long	0x3de7
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xf
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1f
	.long	0x3e2f
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x3dab
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	0x3e7d
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x3e8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1c
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3e7d
	.uleb128 0x1f
	.long	0x3ef7
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x3ef7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dbf
	.uleb128 0x1f
	.long	0x3f52
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1f
	.long	0x3f9a
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x3fe4
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x12
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x12
	.byte	0xa3
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x12
	.byte	0xa4
	.long	0x3fe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x12
	.byte	0xa5
	.long	0x681
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f9a
	.uleb128 0x1f
	.long	0x4117
	.string	"obstack"
	.byte	0x2c
	.byte	0xe
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x12
	.byte	0xaa
	.long	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x12
	.byte	0xab
	.long	0x3fe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x12
	.byte	0xac
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x12
	.byte	0xad
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x12
	.byte	0xae
	.long	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x12
	.byte	0xaf
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x12
	.byte	0xb0
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x12
	.byte	0xb5
	.long	0x412c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x12
	.byte	0xb6
	.long	0x4143
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x12
	.byte	0xb7
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x12
	.byte	0xbd
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x12
	.byte	0xbe
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x12
	.byte	0xc2
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x412c
	.byte	0x1
	.long	0x3fe4
	.uleb128 0x14
	.long	0x3f2
	.uleb128 0x14
	.long	0x3d5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4117
	.uleb128 0x13
	.long	0x4143
	.byte	0x1
	.uleb128 0x14
	.long	0x3f2
	.uleb128 0x14
	.long	0x3fe4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4132
	.uleb128 0xe
	.long	0x4187
	.long	.LASF14
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x691
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1f
	.long	0x41be
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x4149
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1f
	.long	0x4205
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	0x4246
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x4246
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x4256
	.long	0x1e6
	.uleb128 0x11
	.long	0x2f3
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x42a2
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x4246
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	0x4392
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF15
	.byte	0x3
	.value	0x40e
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x2ec
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.long	.LASF16
	.byte	0x3
	.value	0x414
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x43d9
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2e5
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x3f4
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x43e6
	.byte	0x0
	.uleb128 0x1c
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x43d9
	.uleb128 0x1f
	.long	0x4739
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x20
	.long	.LASF17
	.byte	0x3
	.value	0x555
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x20
	.long	.LASF18
	.byte	0x3
	.value	0x556
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x2ec
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x74a
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF19
	.byte	0x3
	.value	0x562
	.long	0x2ec
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF6
	.byte	0x3
	.value	0x564
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0x3
	.value	0x565
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0x3
	.value	0x566
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x3
	.value	0x567
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x3
	.value	0x568
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x3
	.value	0x569
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x3
	.value	0x56a
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF20
	.byte	0x3
	.value	0x56b
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x4392
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0x576
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"context"
	.byte	0x3
	.value	0x57c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x57f
	.long	0x4745
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x1d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1c
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4739
	.uleb128 0x1f
	.long	0x4790
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x22
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x2ec
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x2ec
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x47c5
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1e1e
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x38b
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x474b
	.byte	0x0
	.uleb128 0x24
	.long	0x4804
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x480a
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9d
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e6
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2e5
	.byte	0x0
	.uleb128 0x25
	.long	.LASF23
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4804
	.uleb128 0x26
	.long	0x4848
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x3ef7
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x1d72
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x2ec
	.byte	0x0
	.uleb128 0x1f
	.long	0x4f91
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x143e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x74a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF15
	.byte	0x3
	.value	0x7d3
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF5
	.byte	0x3
	.value	0x7ed
	.long	0x1dce
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF19
	.byte	0x3
	.value	0x7f0
	.long	0x2ec
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF20
	.byte	0x3
	.value	0x7f2
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF6
	.byte	0x3
	.value	0x7fa
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0x3
	.value	0x7fb
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0x3
	.value	0x7fc
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x3
	.value	0x7fd
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x3
	.value	0x7fe
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x3
	.value	0x7ff
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x3
	.value	0x800
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x3
	.value	0x801
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x4790
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x20
	.long	.LASF17
	.byte	0x3
	.value	0x81d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0x81e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"context"
	.byte	0x3
	.value	0x81f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x20
	.long	.LASF16
	.byte	0x3
	.value	0x82b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x20
	.long	.LASF18
	.byte	0x3
	.value	0x82e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x47c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x38b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x848
	.long	0x4f9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x2ec
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x2ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xf
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x4810
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x1d83
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xf
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1c
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4f91
	.uleb128 0x16
	.long	0x5221
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x8
	.byte	0x1d
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
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x17
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x17
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x17
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x17
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x17
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x17
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x17
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x17
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x17
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x17
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x17
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x17
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x17
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0x1f
	.long	0x5270
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x3ac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4fa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1f
	.long	0x532b
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0xa20
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x5330
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x5330
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x5330
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x536e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2d2
	.uleb128 0xa
	.long	0x5335
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x21
	.long	0x5362
	.byte	0x1
	.long	0x1e6
	.uleb128 0x14
	.long	0x5362
	.uleb128 0x14
	.long	0x1e6
	.uleb128 0x14
	.long	0x1e6
	.uleb128 0x14
	.long	0x2e5
	.uleb128 0x14
	.long	0x5368
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x5335
	.uleb128 0xa
	.long	0x5373
	.uleb128 0x3
	.byte	0x4
	.long	0x533e
	.uleb128 0x1d
	.long	0x539e
	.long	.LASF24
	.byte	0x4
	.byte	0xd
	.byte	0xf9
	.uleb128 0x17
	.string	"clk_c"
	.sleb128 0
	.uleb128 0x17
	.string	"clk_cplusplus"
	.sleb128 1
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF24
	.byte	0xd
	.byte	0xfd
	.long	0x5379
	.uleb128 0x18
	.long	0x53db
	.byte	0x8
	.byte	0x9
	.byte	0x1f
	.uleb128 0x6
	.string	"format_spec"
	.byte	0x9
	.byte	0x20
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"args_ptr"
	.byte	0x9
	.byte	0x21
	.long	0x53db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x316
	.uleb128 0x2
	.string	"text_info"
	.byte	0x9
	.byte	0x22
	.long	0x53a9
	.uleb128 0x27
	.long	0x5472
	.byte	0x4
	.byte	0x9
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
	.byte	0x9
	.byte	0x2b
	.long	0x53f2
	.uleb128 0x18
	.long	0x54c3
	.byte	0x14
	.byte	0x9
	.byte	0x31
	.uleb128 0x6
	.string	"message"
	.byte	0x9
	.byte	0x32
	.long	0x53e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"location"
	.byte	0x9
	.byte	0x33
	.long	0x143e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"kind"
	.byte	0x9
	.byte	0x35
	.long	0x5472
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x9
	.byte	0x36
	.long	0x5486
	.uleb128 0x27
	.long	0x5547
	.byte	0x4
	.byte	0x9
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
	.byte	0x9
	.byte	0x44
	.long	0x54da
	.uleb128 0x18
	.long	0x561f
	.byte	0x18
	.byte	0x9
	.byte	0x48
	.uleb128 0x6
	.string	"prefix"
	.byte	0x9
	.byte	0x4a
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"maximum_length"
	.byte	0x9
	.byte	0x4e
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ideal_maximum_length"
	.byte	0x9
	.byte	0x52
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"indent_skip"
	.byte	0x9
	.byte	0x55
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"emitted_prefix_p"
	.byte	0x9
	.byte	0x58
	.long	0x5335
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"need_newline_p"
	.byte	0x9
	.byte	0x5b
	.long	0x5335
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x6
	.string	"prefixing_rule"
	.byte	0x9
	.byte	0x5e
	.long	0x5547
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x9
	.byte	0x5f
	.long	0x556a
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x9
	.byte	0x64
	.long	0x563e
	.uleb128 0xe
	.long	0x56c5
	.long	.LASF25
	.byte	0xd0
	.byte	0x9
	.byte	0x64
	.uleb128 0x6
	.string	"state"
	.byte	0x9
	.byte	0x6c
	.long	0x561f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stream"
	.byte	0x9
	.byte	0x6f
	.long	0x56fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"obstack"
	.byte	0x9
	.byte	0x72
	.long	0x3fea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"line_length"
	.byte	0x9
	.byte	0x75
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"digit_buffer"
	.byte	0x9
	.byte	0x79
	.long	0x5704
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"format_decoder"
	.byte	0x9
	.byte	0x83
	.long	0x56c5
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x9
	.byte	0x65
	.long	0x56d7
	.uleb128 0x3
	.byte	0x4
	.long	0x56dd
	.uleb128 0x21
	.long	0x56f2
	.byte	0x1
	.long	0x5335
	.uleb128 0x14
	.long	0x56f2
	.uleb128 0x14
	.long	0x56f8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5633
	.uleb128 0x3
	.byte	0x4
	.long	0x53e1
	.uleb128 0x3
	.byte	0x4
	.long	0x3fa
	.uleb128 0x10
	.long	0x5714
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0x7f
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF26
	.byte	0x9
	.byte	0xac
	.long	0x571f
	.uleb128 0x28
	.long	0x5823
	.long	.LASF26
	.value	0x110
	.byte	0x9
	.byte	0xac
	.uleb128 0x6
	.string	"buffer"
	.byte	0x9
	.byte	0xb8
	.long	0x5633
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"diagnostic_count"
	.byte	0x9
	.byte	0xbb
	.long	0x5882
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"warnings_are_errors_message"
	.byte	0x9
	.byte	0xbf
	.long	0x5335
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x6
	.string	"begin_diagnostic"
	.byte	0x9
	.byte	0xc8
	.long	0x5823
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x6
	.string	"end_diagnostic"
	.byte	0x9
	.byte	0xcb
	.long	0x5863
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x6
	.string	"internal_error"
	.byte	0x9
	.byte	0xce
	.long	0x58a3
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x6
	.string	"last_function"
	.byte	0x9
	.byte	0xd3
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.string	"last_module"
	.byte	0x9
	.byte	0xd6
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.string	"lock"
	.byte	0x9
	.byte	0xd8
	.long	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x6
	.string	"x_data"
	.byte	0x9
	.byte	0xdb
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_starter_fn"
	.byte	0x9
	.byte	0xad
	.long	0x5840
	.uleb128 0x3
	.byte	0x4
	.long	0x5846
	.uleb128 0x13
	.long	0x5857
	.byte	0x1
	.uleb128 0x14
	.long	0x5857
	.uleb128 0x14
	.long	0x585d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5714
	.uleb128 0x3
	.byte	0x4
	.long	0x54c3
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x9
	.byte	0xaf
	.long	0x5823
	.uleb128 0x10
	.long	0x5892
	.long	0x2e5
	.uleb128 0x11
	.long	0x2f3
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.long	0x58a3
	.byte	0x1
	.uleb128 0x14
	.long	0x2d2
	.uleb128 0x14
	.long	0x53db
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5892
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x13
	.byte	0x1d
	.long	0x58c5
	.uleb128 0x3
	.byte	0x4
	.long	0x58cb
	.uleb128 0x13
	.long	0x58e1
	.byte	0x1
	.uleb128 0x14
	.long	0x56fe
	.uleb128 0x14
	.long	0x1e6
	.uleb128 0x14
	.long	0x2e5
	.byte	0x0
	.uleb128 0x4
	.long	0x5a67
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x13
	.byte	0x23
	.uleb128 0x6
	.string	"walk_subtrees"
	.byte	0x13
	.byte	0x24
	.long	0x5ab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"cannot_inline_tree_fn"
	.byte	0x13
	.byte	0x29
	.long	0x5ac7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"disregard_inline_limits"
	.byte	0x13
	.byte	0x2a
	.long	0x5add
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"add_pending_fn_decls"
	.byte	0x13
	.byte	0x2b
	.long	0x5af8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"tree_chain_matters_p"
	.byte	0x13
	.byte	0x2d
	.long	0x5add
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"auto_var_in_fn_p"
	.byte	0x13
	.byte	0x2e
	.long	0x5b13
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"copy_res_decl_for_inlining"
	.byte	0x13
	.byte	0x2f
	.long	0x5b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"anon_aggr_type_p"
	.byte	0x13
	.byte	0x34
	.long	0x5add
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"var_mod_type_p"
	.byte	0x13
	.byte	0x35
	.long	0x5b58
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"start_inlining"
	.byte	0x13
	.byte	0x36
	.long	0x5add
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"end_inlining"
	.byte	0x13
	.byte	0x37
	.long	0x5b6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"convert_parm_for_inlining"
	.byte	0x13
	.byte	0x38
	.long	0x5b8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x21
	.long	0x5a8b
	.byte	0x1
	.long	0x1f2
	.uleb128 0x14
	.long	0x5a8b
	.uleb128 0x14
	.long	0x72a
	.uleb128 0x14
	.long	0x5a91
	.uleb128 0x14
	.long	0x3f2
	.uleb128 0x14
	.long	0x3f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x5a97
	.uleb128 0x21
	.long	0x5ab1
	.byte	0x1
	.long	0x1f2
	.uleb128 0x14
	.long	0x5a8b
	.uleb128 0x14
	.long	0x72a
	.uleb128 0x14
	.long	0x3f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a67
	.uleb128 0x21
	.long	0x5ac7
	.byte	0x1
	.long	0x2e5
	.uleb128 0x14
	.long	0x5a8b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ab7
	.uleb128 0x21
	.long	0x5add
	.byte	0x1
	.long	0x2e5
	.uleb128 0x14
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5acd
	.uleb128 0x21
	.long	0x5af8
	.byte	0x1
	.long	0x1f2
	.uleb128 0x14
	.long	0x3f2
	.uleb128 0x14
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ae3
	.uleb128 0x21
	.long	0x5b13
	.byte	0x1
	.long	0x2e5
	.uleb128 0x14
	.long	0x1f2
	.uleb128 0x14
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5afe
	.uleb128 0x21
	.long	0x5b42
	.byte	0x1
	.long	0x1f2
	.uleb128 0x14
	.long	0x1f2
	.uleb128 0x14
	.long	0x1f2
	.uleb128 0x14
	.long	0x1f2
	.uleb128 0x14
	.long	0x3f2
	.uleb128 0x14
	.long	0x72a
	.uleb128 0x14
	.long	0x3f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b19
	.uleb128 0x21
	.long	0x5b58
	.byte	0x1
	.long	0x5335
	.uleb128 0x14
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b48
	.uleb128 0x13
	.long	0x5b6a
	.byte	0x1
	.uleb128 0x14
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b5e
	.uleb128 0x21
	.long	0x5b8a
	.byte	0x1
	.long	0x1f2
	.uleb128 0x14
	.long	0x1f2
	.uleb128 0x14
	.long	0x1f2
	.uleb128 0x14
	.long	0x1f2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b70
	.uleb128 0x4
	.long	0x5bff
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x13
	.byte	0x40
	.uleb128 0x6
	.string	"init"
	.byte	0x13
	.byte	0x42
	.long	0x5c0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"final"
	.byte	0x13
	.byte	0x45
	.long	0x5c0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"enter_nested"
	.byte	0x13
	.byte	0x48
	.long	0x5c0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"leave_nested"
	.byte	0x13
	.byte	0x4b
	.long	0x5c0b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.long	0x5c0b
	.byte	0x1
	.uleb128 0x14
	.long	0x480a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5bff
	.uleb128 0x4
	.long	0x5c5c
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x13
	.byte	0x51
	.uleb128 0x6
	.string	"dump_tree"
	.byte	0x13
	.byte	0x54
	.long	0x5c71
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_quals"
	.byte	0x13
	.byte	0x57
	.long	0x5c87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x21
	.long	0x5c71
	.byte	0x1
	.long	0x2e5
	.uleb128 0x14
	.long	0x3f2
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c5c
	.uleb128 0x21
	.long	0x5c87
	.byte	0x1
	.long	0x2e5
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c77
	.uleb128 0x4
	.long	0x5d7a
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x13
	.byte	0x5d
	.uleb128 0x6
	.string	"make_type"
	.byte	0x13
	.byte	0x60
	.long	0x5d8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_for_mode"
	.byte	0x13
	.byte	0x64
	.long	0x5da5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type_for_size"
	.byte	0x13
	.byte	0x68
	.long	0x5dc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_type"
	.byte	0x13
	.byte	0x6c
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"signed_type"
	.byte	0x13
	.byte	0x70
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"signed_or_unsigned_type"
	.byte	0x13
	.byte	0x74
	.long	0x5df1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"type_promotes_to"
	.byte	0x13
	.byte	0x7a
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"incomplete_type_error"
	.byte	0x13
	.byte	0x80
	.long	0x5e08
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x21
	.long	0x5d8a
	.byte	0x1
	.long	0x1e6
	.uleb128 0x14
	.long	0x1450
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d7a
	.uleb128 0x21
	.long	0x5da5
	.byte	0x1
	.long	0x1e6
	.uleb128 0x14
	.long	0x74a
	.uleb128 0x14
	.long	0x2e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d90
	.uleb128 0x21
	.long	0x5dc0
	.byte	0x1
	.long	0x1e6
	.uleb128 0x14
	.long	0x2ec
	.uleb128 0x14
	.long	0x2e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5dab
	.uleb128 0x21
	.long	0x5dd6
	.byte	0x1
	.long	0x1e6
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5dc6
	.uleb128 0x21
	.long	0x5df1
	.byte	0x1
	.long	0x1e6
	.uleb128 0x14
	.long	0x2e5
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ddc
	.uleb128 0x13
	.long	0x5e08
	.byte	0x1
	.uleb128 0x14
	.long	0x1e6
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5df7
	.uleb128 0x4
	.long	0x5f14
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x13
	.byte	0x86
	.uleb128 0x6
	.string	"pushlevel"
	.byte	0x13
	.byte	0x89
	.long	0x730
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"poplevel"
	.byte	0x13
	.byte	0x90
	.long	0x5f2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"global_bindings_p"
	.byte	0x13
	.byte	0x94
	.long	0x5f3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"insert_block"
	.byte	0x13
	.byte	0x99
	.long	0x5f4c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"set_block"
	.byte	0x13
	.byte	0x9c
	.long	0x5f4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pushdecl"
	.byte	0x13
	.byte	0xa2
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"getdecls"
	.byte	0x13
	.byte	0xa5
	.long	0x5f58
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"warn_unused_global"
	.byte	0x13
	.byte	0xa9
	.long	0x5f6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"final_write_globals"
	.byte	0x13
	.byte	0xad
	.long	0x744
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"ok_for_sibcall"
	.byte	0x13
	.byte	0xb0
	.long	0x5f6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x21
	.long	0x5f2e
	.byte	0x1
	.long	0x1e6
	.uleb128 0x14
	.long	0x2e5
	.uleb128 0x14
	.long	0x2e5
	.uleb128 0x14
	.long	0x2e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f14
	.uleb128 0x29
	.byte	0x1
	.long	0x2e5
	.uleb128 0x3
	.byte	0x4
	.long	0x5f34
	.uleb128 0x13
	.long	0x5f4c
	.byte	0x1
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f40
	.uleb128 0x29
	.byte	0x1
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x5f52
	.uleb128 0x21
	.long	0x5f6e
	.byte	0x1
	.long	0x5335
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f5e
	.uleb128 0x28
	.long	0x63a5
	.long	.LASF27
	.value	0x120
	.byte	0x13
	.byte	0xb6
	.uleb128 0x19
	.long	.LASF21
	.byte	0x13
	.byte	0xb8
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"identifier_size"
	.byte	0x13
	.byte	0xbc
	.long	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"init_options"
	.byte	0x13
	.byte	0xc0
	.long	0x744
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"decode_option"
	.byte	0x13
	.byte	0xca
	.long	0x63c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"post_options"
	.byte	0x13
	.byte	0xd6
	.long	0x63cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"init"
	.byte	0x13
	.byte	0xde
	.long	0x63e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"finish"
	.byte	0x13
	.byte	0xe1
	.long	0x744
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"parse_file"
	.byte	0x13
	.byte	0xe5
	.long	0x730
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"clear_binding_stack"
	.byte	0x13
	.byte	0xe8
	.long	0x744
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"get_alias_set"
	.byte	0x13
	.byte	0xec
	.long	0x63f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"expand_constant"
	.byte	0x13
	.byte	0xf1
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"expand_expr"
	.byte	0x13
	.byte	0xf5
	.long	0x641d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"truthvalue_conversion"
	.byte	0x13
	.value	0x102
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"insert_default_attributes"
	.byte	0x13
	.value	0x106
	.long	0x5f4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"safe_from_p"
	.byte	0x13
	.value	0x10f
	.long	0x6438
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"finish_incomplete_decl"
	.byte	0x13
	.value	0x113
	.long	0x5f4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"unsafe_for_reeval"
	.byte	0x13
	.value	0x118
	.long	0x5c87
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"mark_addressable"
	.byte	0x13
	.value	0x11d
	.long	0x5f6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"staticp"
	.byte	0x13
	.value	0x120
	.long	0x5c87
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"dup_lang_specific_decl"
	.byte	0x13
	.value	0x124
	.long	0x5f4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"unsave_expr_now"
	.byte	0x13
	.value	0x129
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"maybe_build_cleanup"
	.byte	0x13
	.value	0x12d
	.long	0x5dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"set_decl_assembler_name"
	.byte	0x13
	.value	0x134
	.long	0x5f4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"can_use_bit_fields_p"
	.byte	0x13
	.value	0x138
	.long	0x63cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"honor_readonly"
	.byte	0x13
	.value	0x13b
	.long	0x5335
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"print_statistics"
	.byte	0x13
	.value	0x13f
	.long	0x744
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"print_xnode"
	.byte	0x13
	.value	0x143
	.long	0x58a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"print_decl"
	.byte	0x13
	.value	0x147
	.long	0x58a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"print_type"
	.byte	0x13
	.value	0x148
	.long	0x58a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"print_identifier"
	.byte	0x13
	.value	0x149
	.long	0x58a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"decl_printable_name"
	.byte	0x13
	.value	0x151
	.long	0x6453
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"print_error_function"
	.byte	0x13
	.value	0x154
	.long	0x6470
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"expr_size"
	.byte	0x13
	.value	0x15b
	.long	0x5dd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.string	"attribute_table"
	.byte	0x13
	.value	0x162
	.long	0x6476
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xf
	.string	"common_attribute_table"
	.byte	0x13
	.value	0x163
	.long	0x6476
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xf
	.string	"format_attribute_table"
	.byte	0x13
	.value	0x164
	.long	0x6476
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x20
	.long	.LASF23
	.byte	0x13
	.value	0x167
	.long	0x5b90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"tree_inlining"
	.byte	0x13
	.value	0x169
	.long	0x58e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xf
	.string	"tree_dump"
	.byte	0x13
	.value	0x16b
	.long	0x5c11
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xf
	.string	"decls"
	.byte	0x13
	.value	0x16d
	.long	0x5e0e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xf
	.string	"types"
	.byte	0x13
	.value	0x16f
	.long	0x5c8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x21
	.long	0x63ba
	.byte	0x1
	.long	0x2e5
	.uleb128 0x14
	.long	0x2e5
	.uleb128 0x14
	.long	0x63ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f4
	.uleb128 0x3
	.byte	0x4
	.long	0x63a5
	.uleb128 0x29
	.byte	0x1
	.long	0x5335
	.uleb128 0x3
	.byte	0x4
	.long	0x63c6
	.uleb128 0x21
	.long	0x63e2
	.byte	0x1
	.long	0x2d2
	.uleb128 0x14
	.long	0x2d2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x63d2
	.uleb128 0x21
	.long	0x63f8
	.byte	0x1
	.long	0x38b
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x63e8
	.uleb128 0x21
	.long	0x641d
	.byte	0x1
	.long	0x9d
	.uleb128 0x14
	.long	0x1e6
	.uleb128 0x14
	.long	0x9d
	.uleb128 0x14
	.long	0x74a
	.uleb128 0x14
	.long	0x2e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x63fe
	.uleb128 0x21
	.long	0x6438
	.byte	0x1
	.long	0x2e5
	.uleb128 0x14
	.long	0x9d
	.uleb128 0x14
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6423
	.uleb128 0x21
	.long	0x6453
	.byte	0x1
	.long	0x2d2
	.uleb128 0x14
	.long	0x1e6
	.uleb128 0x14
	.long	0x2e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x643e
	.uleb128 0x13
	.long	0x646a
	.byte	0x1
	.uleb128 0x14
	.long	0x646a
	.uleb128 0x14
	.long	0x2d2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x571f
	.uleb128 0x3
	.byte	0x4
	.long	0x6459
	.uleb128 0x3
	.byte	0x4
	.long	0x647c
	.uleb128 0xa
	.long	0x5270
	.uleb128 0x2a
	.long	0x64b5
	.byte	0x1
	.string	"set_Wformat"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2b
	.string	"setting"
	.byte	0x1
	.byte	0x2c
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.long	0x652c
	.long	.LASF28
	.byte	0x4
	.byte	0x1
	.byte	0x41
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
	.uleb128 0xe
	.long	0x6563
	.long	.LASF29
	.byte	0x14
	.byte	0x1
	.byte	0x46
	.uleb128 0x19
	.long	.LASF28
	.byte	0x1
	.byte	0x47
	.long	0x64b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x48
	.long	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x49
	.long	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF29
	.byte	0x1
	.byte	0x4a
	.long	0x652c
	.uleb128 0x2c
	.long	0x6623
	.byte	0x1
	.string	"handle_format_attribute"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	0x1e6
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2b
	.string	"node"
	.byte	0x1
	.byte	0x54
	.long	0x5362
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF21
	.byte	0x1
	.byte	0x55
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"args"
	.byte	0x1
	.byte	0x56
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"flags"
	.byte	0x1
	.byte	0x57
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF32
	.byte	0x1
	.byte	0x58
	.long	0x5368
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.string	"type"
	.byte	0x1
	.byte	0x5a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.byte	0x5b
	.long	0x6563
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.byte	0x5c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF35
	.byte	0x1
	.byte	0x5d
	.long	0x39c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2c
	.long	0x66ea
	.byte	0x1
	.string	"handle_format_arg_attribute"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.long	0x1e6
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2b
	.string	"node"
	.byte	0x1
	.byte	0x9a
	.long	0x5362
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF21
	.byte	0x1
	.byte	0x9b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"args"
	.byte	0x1
	.byte	0x9c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"flags"
	.byte	0x1
	.byte	0x9d
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF32
	.byte	0x1
	.byte	0x9e
	.long	0x5368
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.string	"type"
	.byte	0x1
	.byte	0xa0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF36
	.byte	0x1
	.byte	0xa1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF30
	.byte	0x1
	.byte	0xa2
	.long	0x39c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF35
	.byte	0x1
	.byte	0xa3
	.long	0x39c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF34
	.byte	0x1
	.byte	0xa4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	0x67b7
	.string	"decode_format_attr"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.long	0x5335
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2b
	.string	"args"
	.byte	0x1
	.byte	0xe4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF33
	.byte	0x1
	.byte	0xe5
	.long	0x67b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"validated_p"
	.byte	0x1
	.byte	0xe6
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"format_type_id"
	.byte	0x1
	.byte	0xe8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF36
	.byte	0x1
	.byte	0xe9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"first_arg_num_expr"
	.byte	0x1
	.byte	0xea
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	0x67a6
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.byte	0xf6
	.long	0x2d2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	.LASF37
	.long	0x7bb1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12098
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6563
	.uleb128 0x33
	.long	0x6855
	.string	"format_lengths"
	.byte	0x4
	.byte	0x1
	.value	0x12c
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
	.uleb128 0x33
	.long	0x68a4
	.string	"format_std_version"
	.byte	0x4
	.byte	0x1
	.value	0x13c
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
	.uleb128 0x34
	.long	0x6922
	.byte	0x18
	.byte	0x1
	.value	0x17c
	.uleb128 0x20
	.long	.LASF21
	.byte	0x1
	.value	0x17e
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"index"
	.byte	0x1
	.value	0x180
	.long	0x6922
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"std"
	.byte	0x1
	.value	0x182
	.long	0x6927
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"double_name"
	.byte	0x1
	.value	0x184
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"double_index"
	.byte	0x1
	.value	0x185
	.long	0x6922
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"double_std"
	.byte	0x1
	.value	0x186
	.long	0x6927
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x67bd
	.uleb128 0xa
	.long	0x6855
	.uleb128 0x35
	.string	"format_length_info"
	.byte	0x1
	.value	0x187
	.long	0x68a4
	.uleb128 0x34
	.long	0x697f
	.byte	0xc
	.byte	0x1
	.value	0x18d
	.uleb128 0xf
	.string	"std"
	.byte	0x1
	.value	0x191
	.long	0x6855
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF21
	.byte	0x1
	.value	0x194
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"type"
	.byte	0x1
	.value	0x196
	.long	0x5362
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x35
	.string	"format_type_detail"
	.byte	0x1
	.value	0x197
	.long	0x6947
	.uleb128 0x34
	.long	0x6a03
	.byte	0x80
	.byte	0x1
	.value	0x1a2
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.value	0x1a3
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF39
	.byte	0x1
	.value	0x1a4
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"std"
	.byte	0x1
	.value	0x1a5
	.long	0x6927
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"types"
	.byte	0x1
	.value	0x1a7
	.long	0x6a13
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x20
	.long	.LASF40
	.byte	0x1
	.value	0x1ae
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"flags2"
	.byte	0x1
	.value	0x1b8
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x10
	.long	0x6a13
	.long	0x697f
	.uleb128 0x11
	.long	0x2f3
	.byte	0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x6a03
	.uleb128 0x35
	.string	"format_char_info"
	.byte	0x1
	.value	0x1b9
	.long	0x699a
	.uleb128 0x34
	.long	0x6aa6
	.byte	0x18
	.byte	0x1
	.value	0x1be
	.uleb128 0xf
	.string	"flag_char"
	.byte	0x1
	.value	0x1c0
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF41
	.byte	0x1
	.value	0x1c9
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"skip_next_char"
	.byte	0x1
	.value	0x1cc
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF21
	.byte	0x1
	.value	0x1cf
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x20
	.long	.LASF42
	.byte	0x1
	.value	0x1d2
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"std"
	.byte	0x1
	.value	0x1d4
	.long	0x6927
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x35
	.string	"format_flag_spec"
	.byte	0x1
	.value	0x1d5
	.long	0x6a31
	.uleb128 0x34
	.long	0x6b17
	.byte	0x10
	.byte	0x1
	.value	0x1db
	.uleb128 0xf
	.string	"flag_char1"
	.byte	0x1
	.value	0x1dd
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"flag_char2"
	.byte	0x1
	.value	0x1df
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"ignored"
	.byte	0x1
	.value	0x1e2
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF41
	.byte	0x1
	.value	0x1e6
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x35
	.string	"format_flag_pair"
	.byte	0x1
	.value	0x1e7
	.long	0x6abf
	.uleb128 0x34
	.long	0x6c91
	.byte	0x3c
	.byte	0x1
	.value	0x1ec
	.uleb128 0x20
	.long	.LASF21
	.byte	0x1
	.value	0x1ef
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"length_char_specs"
	.byte	0x1
	.value	0x1f1
	.long	0x6c91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"conversion_specs"
	.byte	0x1
	.value	0x1f3
	.long	0x6ca1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF40
	.byte	0x1
	.value	0x1f5
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"modifier_chars"
	.byte	0x1
	.value	0x1f7
	.long	0x532b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF43
	.byte	0x1
	.value	0x1f9
	.long	0x6cb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x20
	.long	.LASF44
	.byte	0x1
	.value	0x1fb
	.long	0x6cc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"flags"
	.byte	0x1
	.value	0x1fd
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"width_char"
	.byte	0x1
	.value	0x1ff
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"left_precision_char"
	.byte	0x1
	.value	0x202
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"precision_char"
	.byte	0x1
	.value	0x205
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"suppression_char"
	.byte	0x1
	.value	0x208
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"length_code_char"
	.byte	0x1
	.value	0x20d
	.long	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"width_type"
	.byte	0x1
	.value	0x210
	.long	0x6cd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"precision_type"
	.byte	0x1
	.value	0x213
	.long	0x6cd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xa
	.long	0x6c96
	.uleb128 0x3
	.byte	0x4
	.long	0x6c9c
	.uleb128 0xa
	.long	0x692c
	.uleb128 0xa
	.long	0x6ca6
	.uleb128 0x3
	.byte	0x4
	.long	0x6cac
	.uleb128 0xa
	.long	0x6a18
	.uleb128 0xa
	.long	0x6cb6
	.uleb128 0x3
	.byte	0x4
	.long	0x6cbc
	.uleb128 0xa
	.long	0x6aa6
	.uleb128 0xa
	.long	0x6cc6
	.uleb128 0x3
	.byte	0x4
	.long	0x6ccc
	.uleb128 0xa
	.long	0x6b17
	.uleb128 0xa
	.long	0x5362
	.uleb128 0x35
	.string	"format_kind_info"
	.byte	0x1
	.value	0x214
	.long	0x6b30
	.uleb128 0x36
	.long	0x6dbe
	.long	.LASF45
	.byte	0x28
	.byte	0x1
	.value	0x21a
	.uleb128 0x20
	.long	.LASF46
	.byte	0x1
	.value	0x21c
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF47
	.byte	0x1
	.value	0x21e
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF39
	.byte	0x1
	.value	0x220
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"char_lenient_flag"
	.byte	0x1
	.value	0x223
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"writing_in_flag"
	.byte	0x1
	.value	0x226
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"reading_from_flag"
	.byte	0x1
	.value	0x229
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x20
	.long	.LASF21
	.byte	0x1
	.value	0x230
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"param"
	.byte	0x1
	.value	0x232
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.long	.LASF35
	.byte	0x1
	.value	0x234
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"next"
	.byte	0x1
	.value	0x236
	.long	0x6dbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6cef
	.uleb128 0x37
	.long	.LASF45
	.byte	0x1
	.value	0x237
	.long	0x6cef
	.uleb128 0x34
	.long	0x6e9f
	.byte	0x1c
	.byte	0x1
	.value	0x35e
	.uleb128 0xf
	.string	"number_non_literal"
	.byte	0x1
	.value	0x361
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"number_extra_args"
	.byte	0x1
	.value	0x364
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"number_dollar_extra_args"
	.byte	0x1
	.value	0x368
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"number_wide"
	.byte	0x1
	.value	0x36b
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"number_empty"
	.byte	0x1
	.value	0x36d
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"number_unterminated"
	.byte	0x1
	.value	0x370
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"number_other"
	.byte	0x1
	.value	0x372
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x35
	.string	"format_check_results"
	.byte	0x1
	.value	0x373
	.long	0x6dd0
	.uleb128 0x34
	.long	0x6f02
	.byte	0x10
	.byte	0x1
	.value	0x376
	.uleb128 0xf
	.string	"res"
	.byte	0x1
	.value	0x377
	.long	0x6f02
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF33
	.byte	0x1
	.value	0x378
	.long	0x67b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF48
	.byte	0x1
	.value	0x379
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF49
	.byte	0x1
	.value	0x37a
	.long	0x72a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e9f
	.uleb128 0x35
	.string	"format_check_context"
	.byte	0x1
	.value	0x37b
	.long	0x6ebc
	.uleb128 0x38
	.long	0x6f96
	.string	"decode_format_type"
	.byte	0x1
	.value	0x397
	.byte	0x1
	.long	0x64b5
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x39
	.string	"s"
	.byte	0x1
	.value	0x396
	.long	0x2d2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x398
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"slen"
	.byte	0x1
	.value	0x399
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x3a
	.string	"alen"
	.byte	0x1
	.value	0x39d
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x7049
	.byte	0x1
	.string	"check_function_format"
	.byte	0x1
	.value	0x3b5
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x3d
	.long	.LASF49
	.byte	0x1
	.value	0x3b2
	.long	0x72a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"attrs"
	.byte	0x1
	.value	0x3b3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3d
	.long	.LASF48
	.byte	0x1
	.value	0x3b4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"a"
	.byte	0x1
	.value	0x3b6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x3e
	.long	.LASF33
	.byte	0x1
	.value	0x3be
	.long	0x6563
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x3a
	.string	"c"
	.byte	0x1
	.value	0x3c5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x3a
	.string	"args"
	.byte	0x1
	.value	0x3d4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0x70b3
	.string	"status_warning"
	.byte	0x1
	.value	0x3ee
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x3d
	.long	.LASF49
	.byte	0x1
	.value	0x3ed
	.long	0x72a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"msgid"
	.byte	0x1
	.value	0x3ed
	.long	0x2d2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x40
	.uleb128 0x3a
	.string	"diagnostic"
	.byte	0x1
	.value	0x3ef
	.long	0x54c3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"ap"
	.byte	0x1
	.value	0x3f6
	.long	0x316
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3f
	.long	0x712d
	.string	"init_dollar_format_checking"
	.byte	0x1
	.value	0x41f
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x3d
	.long	.LASF31
	.byte	0x1
	.value	0x41d
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.long	.LASF48
	.byte	0x1
	.value	0x41e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"oparams"
	.byte	0x1
	.value	0x420
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x43d
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x7273
	.string	"maybe_read_dollar_number"
	.byte	0x1
	.value	0x45d
	.byte	0x1
	.long	0x2e5
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x3d
	.long	.LASF49
	.byte	0x1
	.value	0x457
	.long	0x72a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"format"
	.byte	0x1
	.value	0x458
	.long	0x69c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"dollar_needed"
	.byte	0x1
	.value	0x459
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3d
	.long	.LASF48
	.byte	0x1
	.value	0x45a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x39
	.string	"param_ptr"
	.byte	0x1
	.value	0x45b
	.long	0x5362
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x39
	.string	"fki"
	.byte	0x1
	.value	0x45c
	.long	0x7273
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x3a
	.string	"argnum"
	.byte	0x1
	.value	0x45e
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.string	"overflow_flag"
	.byte	0x1
	.value	0x45f
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"fcp"
	.byte	0x1
	.value	0x460
	.long	0x2d2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	0x7227
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x3a
	.string	"nargnum"
	.byte	0x1
	.value	0x46f
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x31
	.long	0x7247
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x3a
	.string	"nalloc"
	.byte	0x1
	.value	0x494
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0x7262
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x4a9
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	.LASF37
	.long	0x7bac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12523
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7279
	.uleb128 0xa
	.long	0x6cd6
	.uleb128 0x3f
	.long	0x7314
	.string	"finish_dollar_format_checking"
	.byte	0x1
	.value	0x4c9
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x3d
	.long	.LASF49
	.byte	0x1
	.value	0x4c6
	.long	0x72a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.value	0x4c7
	.long	0x6f02
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"pointer_gap_ok"
	.byte	0x1
	.value	0x4c8
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x4ca
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.string	"found_pointer_gap"
	.byte	0x1
	.value	0x4cb
	.long	0x5335
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x38
	.long	0x738f
	.string	"get_flag_spec"
	.byte	0x1
	.value	0x4ef
	.byte	0x1
	.long	0x6cb6
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x39
	.string	"spec"
	.byte	0x1
	.value	0x4ec
	.long	0x6cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"flag"
	.byte	0x1
	.value	0x4ed
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"predicates"
	.byte	0x1
	.value	0x4ee
	.long	0x2d2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x4f0
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF37
	.long	0x7b97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12678
	.byte	0x0
	.uleb128 0x3f
	.long	0x7421
	.string	"check_format_info"
	.byte	0x1
	.value	0x50e
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x3d
	.long	.LASF49
	.byte	0x1
	.value	0x50b
	.long	0x72a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.long	.LASF33
	.byte	0x1
	.value	0x50c
	.long	0x67b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3d
	.long	.LASF48
	.byte	0x1
	.value	0x50d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3e
	.long	.LASF50
	.byte	0x1
	.value	0x50f
	.long	0x6f08
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.long	.LASF35
	.byte	0x1
	.value	0x510
	.long	0x39c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3e
	.long	.LASF51
	.byte	0x1
	.value	0x511
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.string	"res"
	.byte	0x1
	.value	0x512
	.long	0x6e9f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x3f
	.long	0x7584
	.string	"check_format_arg"
	.byte	0x1
	.value	0x573
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x39
	.string	"ctx"
	.byte	0x1
	.value	0x570
	.long	0x3f2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.long	.LASF51
	.byte	0x1
	.value	0x571
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3d
	.long	.LASF35
	.byte	0x1
	.value	0x572
	.long	0x39c
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3e
	.long	.LASF50
	.byte	0x1
	.value	0x574
	.long	0x7584
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3a
	.string	"res"
	.byte	0x1
	.value	0x575
	.long	0x6f02
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3e
	.long	.LASF33
	.byte	0x1
	.value	0x576
	.long	0x67b7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3e
	.long	.LASF48
	.byte	0x1
	.value	0x577
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.long	.LASF49
	.byte	0x1
	.value	0x578
	.long	0x72a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3e
	.long	.LASF52
	.byte	0x1
	.value	0x57a
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3e
	.long	.LASF4
	.byte	0x1
	.value	0x57b
	.long	0x38b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3e
	.long	.LASF38
	.byte	0x1
	.value	0x57c
	.long	0x2d2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"array_size"
	.byte	0x1
	.value	0x57d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"array_init"
	.byte	0x1
	.value	0x57e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.long	0x7548
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x3a
	.string	"arg0"
	.byte	0x1
	.value	0x597
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.string	"arg1"
	.byte	0x1
	.value	0x597
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0x7573
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x3a
	.string	"array_size_value"
	.byte	0x1
	.value	0x5d4
	.long	0x38b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x32
	.long	.LASF37
	.long	0x7b82
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12842
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f08
	.uleb128 0x3f
	.long	0x7a35
	.string	"check_format_info_main"
	.byte	0x1
	.value	0x617
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x3d
	.long	.LASF49
	.byte	0x1
	.value	0x610
	.long	0x72a
	.byte	0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.value	0x611
	.long	0x6f02
	.byte	0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x3d
	.long	.LASF33
	.byte	0x1
	.value	0x612
	.long	0x67b7
	.byte	0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x3d
	.long	.LASF38
	.byte	0x1
	.value	0x613
	.long	0x2d2
	.byte	0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x3d
	.long	.LASF52
	.byte	0x1
	.value	0x614
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3d
	.long	.LASF48
	.byte	0x1
	.value	0x615
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x3d
	.long	.LASF35
	.byte	0x1
	.value	0x616
	.long	0x39c
	.byte	0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x3a
	.string	"orig_format_chars"
	.byte	0x1
	.value	0x618
	.long	0x2d2
	.byte	0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x3a
	.string	"first_fillin_param"
	.byte	0x1
	.value	0x619
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x3a
	.string	"fki"
	.byte	0x1
	.value	0x61b
	.long	0x7273
	.byte	0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x3e
	.long	.LASF43
	.byte	0x1
	.value	0x61c
	.long	0x6cb6
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x3e
	.long	.LASF44
	.byte	0x1
	.value	0x61d
	.long	0x6cc6
	.byte	0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x3a
	.string	"has_operand_number"
	.byte	0x1
	.value	0x621
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x3b
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x627
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x3a
	.string	"suppressed"
	.byte	0x1
	.value	0x628
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x3a
	.string	"length_chars"
	.byte	0x1
	.value	0x629
	.long	0x2d2
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x3a
	.string	"length_chars_val"
	.byte	0x1
	.value	0x62a
	.long	0x67bd
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x3a
	.string	"length_chars_std"
	.byte	0x1
	.value	0x62b
	.long	0x6855
	.byte	0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x3a
	.string	"format_char"
	.byte	0x1
	.value	0x62c
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x3e
	.long	.LASF53
	.byte	0x1
	.value	0x62d
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x3e
	.long	.LASF46
	.byte	0x1
	.value	0x62e
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x3a
	.string	"main_arg_num"
	.byte	0x1
	.value	0x62f
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x3a
	.string	"main_arg_params"
	.byte	0x1
	.value	0x630
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x3a
	.string	"wanted_type_std"
	.byte	0x1
	.value	0x631
	.long	0x6855
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x3e
	.long	.LASF47
	.byte	0x1
	.value	0x632
	.long	0x2d2
	.byte	0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x3a
	.string	"width_wanted_type"
	.byte	0x1
	.value	0x633
	.long	0x6dc4
	.byte	0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x3a
	.string	"precision_wanted_type"
	.byte	0x1
	.value	0x634
	.long	0x6dc4
	.byte	0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x3a
	.string	"main_wanted_type"
	.byte	0x1
	.value	0x635
	.long	0x6dc4
	.byte	0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x3a
	.string	"first_wanted_type"
	.byte	0x1
	.value	0x636
	.long	0x7a35
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x3a
	.string	"last_wanted_type"
	.byte	0x1
	.value	0x637
	.long	0x7a35
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x3a
	.string	"fli"
	.byte	0x1
	.value	0x638
	.long	0x6c96
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x3a
	.string	"fci"
	.byte	0x1
	.value	0x639
	.long	0x6ca6
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x3e
	.long	.LASF40
	.byte	0x1
	.value	0x63a
	.long	0x7a3b
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x3a
	.string	"aflag"
	.byte	0x1
	.value	0x63b
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x31
	.long	0x78c5
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x3a
	.string	"opnum"
	.byte	0x1
	.value	0x65e
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.byte	0x0
	.uleb128 0x31
	.long	0x78e1
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x3a
	.string	"s"
	.byte	0x1
	.value	0x671
	.long	0x6cb6
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.uleb128 0x31
	.long	0x7901
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x3a
	.string	"opnum"
	.byte	0x1
	.value	0x696
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.byte	0x0
	.uleb128 0x31
	.long	0x7947
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x3a
	.string	"non_zero_width_char"
	.byte	0x1
	.value	0x6c7
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x3a
	.string	"found_width"
	.byte	0x1
	.value	0x6c8
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.byte	0x0
	.uleb128 0x31
	.long	0x7967
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x3a
	.string	"opnum"
	.byte	0x1
	.value	0x6f9
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.byte	0x0
	.uleb128 0x31
	.long	0x7983
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x3a
	.string	"s"
	.byte	0x1
	.value	0x760
	.long	0x6cb6
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.byte	0x0
	.uleb128 0x31
	.long	0x79e9
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x3a
	.string	"d"
	.byte	0x1
	.value	0x79f
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x3b
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x3a
	.string	"s"
	.byte	0x1
	.value	0x7a2
	.long	0x6cb6
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x3b
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x7b0
	.long	0x6cb6
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3b
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x3e
	.long	.LASF42
	.byte	0x1
	.value	0x7b7
	.long	0x2d2
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x7a13
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x3a
	.string	"s"
	.byte	0x1
	.value	0x7cf
	.long	0x6cb6
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x3a
	.string	"t"
	.byte	0x1
	.value	0x7cf
	.long	0x6cb6
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x3a
	.string	"y2k_level"
	.byte	0x1
	.value	0x7f2
	.long	0x2e5
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6dc4
	.uleb128 0x10
	.long	0x7a4b
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0xff
	.byte	0x0
	.uleb128 0x3f
	.long	0x7b5d
	.string	"check_format_types"
	.byte	0x1
	.value	0x888
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x3d
	.long	.LASF49
	.byte	0x1
	.value	0x886
	.long	0x72a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"types"
	.byte	0x1
	.value	0x887
	.long	0x7a35
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	0x7b4c
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x3e
	.long	.LASF53
	.byte	0x1
	.value	0x88b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.string	"cur_type"
	.byte	0x1
	.value	0x88c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.string	"orig_cur_type"
	.byte	0x1
	.value	0x88d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3e
	.long	.LASF46
	.byte	0x1
	.value	0x88e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3e
	.long	.LASF35
	.byte	0x1
	.value	0x88f
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.value	0x890
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.string	"char_type_flag"
	.byte	0x1
	.value	0x891
	.long	0x2e5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x3a
	.string	"this"
	.byte	0x1
	.value	0x915
	.long	0x2d2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.string	"that"
	.byte	0x1
	.value	0x916
	.long	0x2d2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LASF37
	.long	0x7b6d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13981
	.byte	0x0
	.uleb128 0x10
	.long	0x7b6d
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0x12
	.byte	0x0
	.uleb128 0xa
	.long	0x7b5d
	.uleb128 0x10
	.long	0x7b82
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x7b72
	.uleb128 0x10
	.long	0x7b97
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0xd
	.byte	0x0
	.uleb128 0xa
	.long	0x7b87
	.uleb128 0x10
	.long	0x7bac
	.long	0x2dd
	.uleb128 0x11
	.long	0x2f3
	.byte	0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x7b9c
	.uleb128 0xa
	.long	0x7b5d
	.uleb128 0x10
	.long	0x7bc6
	.long	0x692c
	.uleb128 0x11
	.long	0x2f3
	.byte	0x8
	.byte	0x0
	.uleb128 0x3a
	.string	"printf_length_specs"
	.byte	0x1
	.value	0x23a
	.long	0x7be8
	.byte	0x5
	.byte	0x3
	.long	printf_length_specs
	.uleb128 0xa
	.long	0x7bb6
	.uleb128 0x10
	.long	0x7bfd
	.long	0x692c
	.uleb128 0x11
	.long	0x2f3
	.byte	0x7
	.byte	0x0
	.uleb128 0x3a
	.string	"scanf_length_specs"
	.byte	0x1
	.value	0x249
	.long	0x7c1e
	.byte	0x5
	.byte	0x3
	.long	scanf_length_specs
	.uleb128 0xa
	.long	0x7bed
	.uleb128 0x10
	.long	0x7c33
	.long	0x692c
	.uleb128 0x11
	.long	0x2f3
	.byte	0x1
	.byte	0x0
	.uleb128 0x3a
	.string	"strfmon_length_specs"
	.byte	0x1
	.value	0x258
	.long	0x7c56
	.byte	0x5
	.byte	0x3
	.long	strfmon_length_specs
	.uleb128 0xa
	.long	0x7c23
	.uleb128 0x10
	.long	0x7c6b
	.long	0x6aa6
	.uleb128 0x11
	.long	0x2f3
	.byte	0xa
	.byte	0x0
	.uleb128 0x3a
	.string	"printf_flag_specs"
	.byte	0x1
	.value	0x25f
	.long	0x7c8b
	.byte	0x5
	.byte	0x3
	.long	printf_flag_specs
	.uleb128 0xa
	.long	0x7c5b
	.uleb128 0x10
	.long	0x7ca0
	.long	0x6b17
	.uleb128 0x11
	.long	0x2f3
	.byte	0x3
	.byte	0x0
	.uleb128 0x3a
	.string	"printf_flag_pairs"
	.byte	0x1
	.value	0x26f
	.long	0x7cc0
	.byte	0x5
	.byte	0x3
	.long	printf_flag_pairs
	.uleb128 0xa
	.long	0x7c90
	.uleb128 0x10
	.long	0x7cd5
	.long	0x6aa6
	.uleb128 0x11
	.long	0x2f3
	.byte	0x6
	.byte	0x0
	.uleb128 0x3a
	.string	"scanf_flag_specs"
	.byte	0x1
	.value	0x278
	.long	0x7cf4
	.byte	0x5
	.byte	0x3
	.long	scanf_flag_specs
	.uleb128 0xa
	.long	0x7cc5
	.uleb128 0x10
	.long	0x7d09
	.long	0x6b17
	.uleb128 0x11
	.long	0x2f3
	.byte	0x1
	.byte	0x0
	.uleb128 0x3a
	.string	"scanf_flag_pairs"
	.byte	0x1
	.value	0x284
	.long	0x7d28
	.byte	0x5
	.byte	0x3
	.long	scanf_flag_pairs
	.uleb128 0xa
	.long	0x7cf9
	.uleb128 0x10
	.long	0x7d3d
	.long	0x6aa6
	.uleb128 0x11
	.long	0x2f3
	.byte	0x9
	.byte	0x0
	.uleb128 0x3a
	.string	"strftime_flag_specs"
	.byte	0x1
	.value	0x28b
	.long	0x7d5f
	.byte	0x5
	.byte	0x3
	.long	strftime_flag_specs
	.uleb128 0xa
	.long	0x7d2d
	.uleb128 0x10
	.long	0x7d74
	.long	0x6b17
	.uleb128 0x11
	.long	0x2f3
	.byte	0x5
	.byte	0x0
	.uleb128 0x3a
	.string	"strftime_flag_pairs"
	.byte	0x1
	.value	0x29a
	.long	0x7d96
	.byte	0x5
	.byte	0x3
	.long	strftime_flag_pairs
	.uleb128 0xa
	.long	0x7d64
	.uleb128 0x10
	.long	0x7dab
	.long	0x6aa6
	.uleb128 0x11
	.long	0x2f3
	.byte	0xa
	.byte	0x0
	.uleb128 0x3a
	.string	"strfmon_flag_specs"
	.byte	0x1
	.value	0x2a5
	.long	0x7dcc
	.byte	0x5
	.byte	0x3
	.long	strfmon_flag_specs
	.uleb128 0xa
	.long	0x7d9b
	.uleb128 0x10
	.long	0x7de1
	.long	0x6b17
	.uleb128 0x11
	.long	0x2f3
	.byte	0x1
	.byte	0x0
	.uleb128 0x3a
	.string	"strfmon_flag_pairs"
	.byte	0x1
	.value	0x2b4
	.long	0x7e02
	.byte	0x5
	.byte	0x3
	.long	strfmon_flag_pairs
	.uleb128 0xa
	.long	0x7dd1
	.uleb128 0x10
	.long	0x7e17
	.long	0x6a18
	.uleb128 0x11
	.long	0x2f3
	.byte	0xe
	.byte	0x0
	.uleb128 0x3a
	.string	"print_char_table"
	.byte	0x1
	.value	0x2f1
	.long	0x7e36
	.byte	0x5
	.byte	0x3
	.long	print_char_table
	.uleb128 0xa
	.long	0x7e07
	.uleb128 0x10
	.long	0x7e4b
	.long	0x6a18
	.uleb128 0x11
	.long	0x2f3
	.byte	0xc
	.byte	0x0
	.uleb128 0x3a
	.string	"scan_char_table"
	.byte	0x1
	.value	0x308
	.long	0x7e69
	.byte	0x5
	.byte	0x3
	.long	scan_char_table
	.uleb128 0xa
	.long	0x7e3b
	.uleb128 0x10
	.long	0x7e7e
	.long	0x6a18
	.uleb128 0x11
	.long	0x2f3
	.byte	0x13
	.byte	0x0
	.uleb128 0x3a
	.string	"time_char_table"
	.byte	0x1
	.value	0x31c
	.long	0x7e9c
	.byte	0x5
	.byte	0x3
	.long	time_char_table
	.uleb128 0xa
	.long	0x7e6e
	.uleb128 0x10
	.long	0x7eb1
	.long	0x6a18
	.uleb128 0x11
	.long	0x2f3
	.byte	0x1
	.byte	0x0
	.uleb128 0x3a
	.string	"monetary_char_table"
	.byte	0x1
	.value	0x337
	.long	0x7ed3
	.byte	0x5
	.byte	0x3
	.long	monetary_char_table
	.uleb128 0xa
	.long	0x7ea1
	.uleb128 0x10
	.long	0x7ee8
	.long	0x6cd6
	.uleb128 0x11
	.long	0x2f3
	.byte	0x3
	.byte	0x0
	.uleb128 0x3a
	.string	"format_types"
	.byte	0x1
	.value	0x33f
	.long	0x7f03
	.byte	0x5
	.byte	0x3
	.long	format_types
	.uleb128 0xa
	.long	0x7ed8
	.uleb128 0x3a
	.string	"dollar_arguments_used"
	.byte	0x1
	.value	0x40d
	.long	0x3f4
	.byte	0x5
	.byte	0x3
	.long	dollar_arguments_used
	.uleb128 0x3a
	.string	"dollar_arguments_pointer_p"
	.byte	0x1
	.value	0x40e
	.long	0x3f4
	.byte	0x5
	.byte	0x3
	.long	dollar_arguments_pointer_p
	.uleb128 0x3a
	.string	"dollar_arguments_alloc"
	.byte	0x1
	.value	0x40f
	.long	0x2e5
	.byte	0x5
	.byte	0x3
	.long	dollar_arguments_alloc
	.uleb128 0x3a
	.string	"dollar_arguments_count"
	.byte	0x1
	.value	0x410
	.long	0x2e5
	.byte	0x5
	.byte	0x3
	.long	dollar_arguments_count
	.uleb128 0x3a
	.string	"dollar_first_arg_num"
	.byte	0x1
	.value	0x411
	.long	0x2e5
	.byte	0x5
	.byte	0x3
	.long	dollar_first_arg_num
	.uleb128 0x3a
	.string	"dollar_max_arg_used"
	.byte	0x1
	.value	0x412
	.long	0x2e5
	.byte	0x5
	.byte	0x3
	.long	dollar_max_arg_used
	.uleb128 0x3a
	.string	"dollar_format_warned"
	.byte	0x1
	.value	0x413
	.long	0x2e5
	.byte	0x5
	.byte	0x3
	.long	dollar_format_warned
	.uleb128 0x10
	.long	0x8017
	.long	0x344
	.uleb128 0x11
	.long	0x2f3
	.byte	0xff
	.byte	0x0
	.uleb128 0x41
	.string	"_sch_istable"
	.byte	0xb
	.byte	0x48
	.long	0x802d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x8007
	.uleb128 0x10
	.long	0x803d
	.long	0x2dd
	.uleb128 0x42
	.byte	0x0
	.uleb128 0x41
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0x8055
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x8032
	.uleb128 0x10
	.long	0x806a
	.long	0x1e6
	.uleb128 0x11
	.long	0x2f3
	.byte	0x3f
	.byte	0x0
	.uleb128 0x43
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x805a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8091
	.long	0x1e6
	.uleb128 0x11
	.long	0x2f3
	.byte	0xa
	.byte	0x0
	.uleb128 0x43
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x8081
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"input_filename"
	.byte	0x3
	.value	0xbf6
	.long	0x2d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"lineno"
	.byte	0x3
	.value	0xbf9
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"pedantic"
	.byte	0xc
	.byte	0xe3
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x8115
	.long	0x1e6
	.uleb128 0x11
	.long	0x2f3
	.byte	0x1e
	.byte	0x0
	.uleb128 0x41
	.string	"c_global_trees"
	.byte	0xd
	.byte	0xee
	.long	0x8105
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"c_language"
	.byte	0xd
	.value	0x177
	.long	0x539e
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_missing_format_attribute"
	.byte	0xd
	.value	0x1b6
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_long_long"
	.byte	0xd
	.value	0x1d1
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_format"
	.byte	0xd
	.value	0x1f0
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_format_y2k"
	.byte	0xd
	.value	0x1f4
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_format_extra_args"
	.byte	0xd
	.value	0x1f8
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_format_zero_length"
	.byte	0xd
	.value	0x1fc
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_format_nonliteral"
	.byte	0xd
	.value	0x200
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_format_security"
	.byte	0xd
	.value	0x204
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"flag_isoc94"
	.byte	0xd
	.value	0x216
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"flag_isoc99"
	.byte	0xd
	.value	0x21a
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"warn_nonnull"
	.byte	0xd
	.value	0x257
	.long	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"global_dc"
	.byte	0x9
	.value	0x109
	.long	0x5857
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.long	.LASF27
	.byte	0x13
	.value	0x176
	.long	0x829b
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x5f74
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.long	0x82a1
	.long	0x6481
	.string	"set_Wformat"
	.long	0x656e
	.string	"handle_format_attribute"
	.long	0x6623
	.string	"handle_format_arg_attribute"
	.long	0x6f96
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
.LASF21:
	.string	"name"
.LASF6:
	.string	"lang_flag_0"
.LASF7:
	.string	"lang_flag_1"
.LASF8:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_6"
.LASF42:
	.string	"long_name"
.LASF47:
	.string	"wanted_type_name"
.LASF32:
	.string	"no_add_attrs"
.LASF39:
	.string	"pointer_count"
.LASF3:
	.string	"mem_attrs"
.LASF51:
	.string	"format_tree"
.LASF24:
	.string	"c_language_kind"
.LASF44:
	.string	"bad_flag_pairs"
.LASF43:
	.string	"flag_specs"
.LASF26:
	.string	"diagnostic_context"
.LASF0:
	.string	"common"
.LASF22:
	.string	"lang_specific"
.LASF40:
	.string	"flag_chars"
.LASF49:
	.string	"status"
.LASF9:
	.string	"lang_flag_3"
.LASF23:
	.string	"function"
.LASF1:
	.string	"unsigned int"
.LASF16:
	.string	"abstract_origin"
.LASF19:
	.string	"pointer_depth"
.LASF28:
	.string	"format_type"
.LASF45:
	.string	"format_wanted_type"
.LASF20:
	.string	"user_align"
.LASF53:
	.string	"cur_param"
.LASF27:
	.string	"lang_hooks"
.LASF48:
	.string	"params"
.LASF17:
	.string	"size_unit"
.LASF50:
	.string	"format_ctx"
.LASF33:
	.string	"info"
.LASF34:
	.string	"argument"
.LASF30:
	.string	"format_num"
.LASF46:
	.string	"wanted_type"
.LASF25:
	.string	"output_buffer"
.LASF35:
	.string	"arg_num"
.LASF38:
	.string	"format_chars"
.LASF10:
	.string	"lang_flag_4"
.LASF11:
	.string	"lang_flag_5"
.LASF13:
	.string	"lang_flag_7"
.LASF15:
	.string	"abstract_flag"
.LASF31:
	.string	"first_arg_num"
.LASF14:
	.string	"ht_identifier"
.LASF36:
	.string	"format_num_expr"
.LASF4:
	.string	"offset"
.LASF41:
	.string	"predicate"
.LASF5:
	.string	"built_in_class"
.LASF37:
	.string	"__FUNCTION__"
.LASF52:
	.string	"format_length"
.LASF2:
	.string	"_IO_FILE"
.LASF18:
	.string	"attributes"
.LASF29:
	.string	"function_format_info"
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
