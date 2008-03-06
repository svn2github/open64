	.file	"cppmacro.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"macro \"%s\" is not used"
	.text
.globl _cpp_warn_if_unused_macro
	.type	_cpp_warn_if_unused_macro, @function
_cpp_warn_if_unused_macro:
.LFB21:
	.file 1 "../../../kgccfe/gnu/cppmacro.c"
	.loc 1 84 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$52, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 85 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L2
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L2
.LBB2:
	.loc 1 87 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 89 0
	movl	-8(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	176(%eax), %eax
	cmpl	%eax, %edx
	jb	.L2
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	addl	$24, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_line@PLT
	movl	12(%eax), %eax
	testl	%eax, %eax
	jns	.L2
	.loc 1 93 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	8(%eax), %ecx
	movl	%edx, 20(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
.L2:
.LBE2:
	.loc 1 97 0
	movl	$1, %eax
	.loc 1 98 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	_cpp_warn_if_unused_macro, .-_cpp_warn_if_unused_macro
	.type	new_string_token, @function
new_string_token:
.LFB22:
	.loc 1 107 0
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
	.loc 1 108 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_temp_token@PLT
	movl	%eax, -8(%ebp)
	.loc 1 110 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 111 0
	movl	-8(%ebp), %eax
	movb	$62, 6(%eax)
	.loc 1 112 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 113 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 114 0
	movl	-8(%ebp), %eax
	movb	$0, 7(%eax)
	.loc 1 115 0
	movl	-8(%ebp), %eax
	.loc 1 116 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	new_string_token, .-new_string_token
	.section	.rodata
.LC1:
	.string	"Jan"
.LC2:
	.string	"Feb"
.LC3:
	.string	"Mar"
.LC4:
	.string	"Apr"
.LC5:
	.string	"May"
.LC6:
	.string	"Jun"
.LC7:
	.string	"Jul"
.LC8:
	.string	"Aug"
.LC9:
	.string	"Sep"
.LC10:
	.string	"Oct"
.LC11:
	.string	"Nov"
.LC12:
	.string	"Dec"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	monthnames, @object
	.size	monthnames, 48
monthnames:
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.section	.rodata
.LC13:
	.string	"invalid built-in macro \"%s\""
.LC14:
	.string	"\"%s %2d %4d\""
.LC15:
	.string	"\"%02d:%02d:%02d\""
	.align 4
.LC16:
	.string	"could not determine date and time"
.LC17:
	.string	"\"??? ?? ????\""
.LC18:
	.string	"\"??:??:??\""
.LC19:
	.string	"%u"
	.text
.globl _cpp_builtin_macro_text
	.type	_cpp_builtin_macro_text, @function
_cpp_builtin_macro_text:
.LFB23:
	.loc 1 132 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%edi
.LCFI10:
	pushl	%esi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$60, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 133 0
	movl	$0, -40(%ebp)
	.loc 1 134 0
	movl	$1, -36(%ebp)
	.loc 1 136 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	cmpl	$6, -48(%ebp)
	ja	.L12
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L18@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L18:
	.long	.L13@GOTOFF
	.long	.L14@GOTOFF
	.long	.L15@GOTOFF
	.long	.L15@GOTOFF
	.long	.L16@GOTOFF
	.long	.L14@GOTOFF
	.long	.L17@GOTOFF
	.text
.L12:
	.loc 1 139 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 141 0
	jmp	.L19
.L15:
.LBB3:
	.loc 1 149 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 151 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$3, %eax
	jne	.L20
	.loc 1 152 0
	jmp	.L22
.L23:
	.loc 1 153 0
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -20(%ebp)
.L22:
	.loc 1 152 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jns	.L23
.L20:
	.loc 1 155 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 156 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -52(%ebp)
	movl	$0, %eax
	cld
	movl	-52(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 157 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	$3, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_unaligned_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 158 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 159 0
	movl	-24(%ebp), %eax
	movb	$34, (%eax)
	.loc 1 160 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %ecx
	addl	$1, %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	cpp_quote_string@PLT
	movl	%eax, -24(%ebp)
	.loc 1 161 0
	movl	-24(%ebp), %eax
	movb	$34, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 162 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 164 0
	jmp	.L19
.L16:
.LBE3:
	.loc 1 170 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 171 0
	jmp	.L19
.L13:
	.loc 1 177 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L24
	.loc 1 178 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L26
.L24:
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L26:
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	addl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -36(%ebp)
	.loc 1 182 0
	jmp	.L19
.L17:
	.loc 1 191 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L27
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	.L27
	movl	8(%ebp), %eax
	movzbl	462(%eax), %eax
	testb	%al, %al
	je	.L27
	movl	8(%ebp), %eax
	movzbl	424(%eax), %eax
	testb	%al, %al
	jne	.L27
	.loc 1 194 0
	movl	$0, -36(%ebp)
	.loc 1 191 0
	jmp	.L19
.L27:
	.loc 1 196 0
	movl	$1, -36(%ebp)
	.loc 1 198 0
	jmp	.L19
.L14:
	.loc 1 202 0
	movl	8(%ebp), %eax
	movl	180(%eax), %eax
	testl	%eax, %eax
	jne	.L33
.LBB4:
	.loc 1 209 0
	movl	$0, -16(%ebp)
	.loc 1 214 0
	call	__errno_location@PLT
	movl	$0, (%eax)
	.loc 1 215 0
	movl	$0, (%esp)
	call	time@PLT
	movl	%eax, -44(%ebp)
	.loc 1 216 0
	movl	-44(%ebp), %eax
	cmpl	$-1, %eax
	jne	.L35
	call	__errno_location@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L37
.L35:
	.loc 1 217 0
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	localtime@PLT
	movl	%eax, -16(%ebp)
.L37:
	.loc 1 219 0
	cmpl	$0, -16(%ebp)
	je	.L38
	.loc 1 221 0
	movl	$14, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_unaligned_alloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 180(%eax)
	.loc 1 223 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	leal	1900(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	monthnames@GOTOFF(%ebx,%eax,4), %esi
	movl	8(%ebp), %eax
	movl	180(%eax), %eax
	movl	%eax, %edi
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	sprintf@PLT
	.loc 1 226 0
	movl	$11, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_unaligned_alloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 184(%eax)
	.loc 1 228 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	8(%eax), %esi
	movl	8(%ebp), %eax
	movl	184(%eax), %eax
	movl	%eax, %edi
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	sprintf@PLT
	jmp	.L33
.L38:
	.loc 1 233 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_errno@PLT
	.loc 1 236 0
	leal	.LC17@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 180(%eax)
	.loc 1 237 0
	leal	.LC18@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 184(%eax)
.L33:
.LBE4:
	.loc 1 241 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$1, %eax
	jne	.L40
	.loc 1 242 0
	movl	8(%ebp), %eax
	movl	180(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L19
.L40:
	.loc 1 244 0
	movl	8(%ebp), %eax
	movl	184(%eax), %eax
	movl	%eax, -40(%ebp)
.L19:
	.loc 1 248 0
	cmpl	$0, -40(%ebp)
	jne	.L42
	.loc 1 251 0
	movl	$21, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_unaligned_alloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 252 0
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sprintf@PLT
.L42:
	.loc 1 255 0
	movl	-40(%ebp), %eax
	.loc 1 256 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	_cpp_builtin_macro_text, .-_cpp_builtin_macro_text
	.type	builtin_macro, @function
builtin_macro:
.LFB24:
	.loc 1 266 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$52, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 269 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$7, %eax
	jne	.L46
	.loc 1 273 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L48
	.loc 1 274 0
	movl	$0, -24(%ebp)
	jmp	.L50
.L48:
	.loc 1 276 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do__Pragma@PLT
	.loc 1 277 0
	movl	$1, -24(%ebp)
	jmp	.L50
.L46:
	.loc 1 280 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_builtin_macro_text@PLT
	movl	%eax, -8(%ebp)
	.loc 1 282 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ustrlen
	movl	$1, 16(%esp)
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_push_buffer@PLT
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	subl	$1, %eax
	movl	%eax, 32(%edx)
	.loc 1 288 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movb	$0, 36(%eax)
	.loc 1 291 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_temp_token@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 292 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_direct@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_token_context
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L51
	.loc 1 294 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L51:
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_buffer@PLT
	.loc 1 298 0
	movl	$1, -24(%ebp)
.L50:
	movl	-24(%ebp), %eax
	.loc 1 299 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	builtin_macro, .-builtin_macro
	.type	ustrlen, @function
ustrlen:
.LFB17:
	.file 2 "../../../kgccfe/gnu/cpphash.h"
	.loc 2 605 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	subl	$4, %esp
.LCFI21:
	.loc 2 606 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -8(%ebp)
	movl	$0, %eax
	cld
	movl	-8(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	.loc 2 607 0
	addl	$4, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	ustrlen, .-ustrlen
	.section	.rodata
.LC20:
	.string	"\\%03o"
	.text
.globl cpp_quote_string
	.type	cpp_quote_string, @function
cpp_quote_string:
.LFB25:
	.loc 1 310 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$36, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB5:
	.loc 1 311 0
	jmp	.L66
.L58:
	.loc 1 313 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	addl	$1, 12(%ebp)
	.loc 1 315 0
	cmpb	$92, -5(%ebp)
	je	.L59
	cmpb	$34, -5(%ebp)
	jne	.L61
.L59:
	.loc 1 317 0
	movl	8(%ebp), %eax
	movb	$92, (%eax)
	addl	$1, 8(%ebp)
	.loc 1 318 0
	movl	8(%ebp), %edx
	movzbl	-5(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, 8(%ebp)
	.loc 1 315 0
	jmp	.L57
.L61:
	.loc 1 322 0
	movzbl	-5(%ebp), %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L62
	.loc 1 323 0
	movl	8(%ebp), %edx
	movzbl	-5(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, 8(%ebp)
	jmp	.L57
.L62:
	.loc 1 326 0
	movzbl	-5(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sprintf@PLT
	.loc 1 327 0
	addl	$4, 8(%ebp)
.L57:
.L66:
.LBE5:
	.loc 1 311 0
	subl	$1, 16(%ebp)
	cmpl	$-1, 16(%ebp)
	jne	.L58
	.loc 1 332 0
	movl	8(%ebp), %eax
	.loc 1 333 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	cpp_quote_string, .-cpp_quote_string
	.section	.rodata
	.align 4
.LC21:
	.string	"invalid string literal, ignoring final '\\'"
	.text
	.type	stringify_arg, @function
stringify_arg:
.LFB26:
	.loc 1 341 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$68, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 342 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 343 0
	movl	$0, -36(%ebp)
	.loc 1 344 0
	movl	$0, -32(%ebp)
	.loc 1 348 0
	movl	$0, -44(%ebp)
	jmp	.L68
.L69:
.LBB6:
	.loc 1 350 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 352 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$67, %al
	jne	.L70
	.loc 1 354 0
	cmpl	$0, -32(%ebp)
	jne	.L74
	.loc 1 355 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 356 0
	jmp	.L74
.L70:
	.loc 1 359 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$62, %al
	je	.L75
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$63, %al
	je	.L75
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$59, %al
	je	.L75
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$60, %al
	jne	.L79
.L75:
	movl	$1, -56(%ebp)
	jmp	.L80
.L79:
	movl	$0, -56(%ebp)
.L80:
	movl	-56(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 364 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_len@PLT
	movl	%eax, -28(%ebp)
	.loc 1 365 0
	cmpl	$0, -40(%ebp)
	je	.L81
	.loc 1 366 0
	sall	$2, -28(%ebp)
.L81:
	.loc 1 367 0
	addl	$2, -28(%ebp)
	.loc 1 369 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-28(%ebp), %eax
	jae	.L83
.LBB7:
	.loc 1 371 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 372 0
	movl	8(%ebp), %edx
	addl	$64, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_extend_buff@PLT
	.loc 1 373 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
.L83:
.LBE7:
	.loc 1 377 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L85
	.loc 1 379 0
	cmpl	$0, -32(%ebp)
	jne	.L87
	.loc 1 380 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L87:
	.loc 1 381 0
	movl	-32(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L85
	.loc 1 382 0
	movl	-48(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -48(%ebp)
.L85:
	.loc 1 384 0
	movl	$0, -32(%ebp)
	.loc 1 386 0
	cmpl	$0, -40(%ebp)
	je	.L90
.LBB8:
	.loc 1 388 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_get_buff@PLT
	movl	%eax, -16(%ebp)
	.loc 1 389 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 390 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_spell_token@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%ebp)
	.loc 1 391 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_quote_string@PLT
	movl	%eax, -48(%ebp)
	.loc 1 392 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_release_buff@PLT
	jmp	.L92
.L90:
.LBE8:
	.loc 1 395 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_spell_token@PLT
	movl	%eax, -48(%ebp)
.L92:
	.loc 1 397 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$61, %al
	jne	.L93
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L93
	.loc 1 398 0
	addl	$1, -36(%ebp)
	.loc 1 397 0
	jmp	.L74
.L93:
	.loc 1 400 0
	movl	$0, -36(%ebp)
.L74:
.LBE6:
	.loc 1 348 0
	addl	$1, -44(%ebp)
.L68:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-44(%ebp), %eax
	ja	.L69
	.loc 1 404 0
	movl	-36(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L97
	.loc 1 406 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 408 0
	subl	$1, -48(%ebp)
.L97:
	.loc 1 412 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L99
.LBB9:
	.loc 1 414 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 415 0
	movl	8(%ebp), %eax
	addl	$64, %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_extend_buff@PLT
	.loc 1 416 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
.L99:
.LBE9:
	.loc 1 418 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%ebp)
	.loc 1 419 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-48(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 8(%edx)
	.loc 1 420 0
	movl	-28(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	new_string_token
	.loc 1 421 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	stringify_arg, .-stringify_arg
	.type	paste_tokens, @function
paste_tokens:
.LFB27:
	.loc 1 430 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%esi
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$80, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 430 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 436 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 437 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_len@PLT
	movl	%eax, %esi
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_len@PLT
	leal	(%esi,%eax), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 438 0
	movl	-20(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %edx
	movl	%edx, -56(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %ecx
	movl	%ecx, -32(%ebp)
	.loc 1 439 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_spell_token@PLT
	movl	%eax, -28(%ebp)
	.loc 1 445 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$7, %al
	jne	.L103
	movl	-52(%ebp), %eax
	movzbl	6(%eax), %eax
	testb	%al, %al
	je	.L103
	.loc 1 446 0
	movl	-28(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -28(%ebp)
.L103:
	.loc 1 447 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_spell_token@PLT
	movl	%eax, -28(%ebp)
	.loc 1 448 0
	movl	-28(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 450 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	$1, 16(%esp)
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_push_buffer@PLT
	.loc 1 453 0
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	subl	$1, %eax
	movl	%eax, 32(%edx)
	.loc 1 456 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movb	$0, 36(%eax)
	.loc 1 459 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_temp_token@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 460 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_direct@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 461 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movb	%al, -13(%ebp)
	.loc 1 462 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_buffer@PLT
	.loc 1 464 0
	movzbl	-13(%ebp), %eax
	.loc 1 465 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L107
	call	__stack_chk_fail_local
.L107:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	paste_tokens, .-paste_tokens
	.section	.rodata
	.align 4
.LC22:
	.string	"pasting \"%s\" and \"%s\" does not give a valid preprocessing token"
	.text
	.type	paste_all_tokens, @function
paste_all_tokens:
.LFB28:
	.loc 1 478 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%esi
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$48, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 480 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -12(%ebp)
.L109:
	.loc 1 489 0
	movl	-12(%ebp), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L110
	.loc 1 490 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	leal	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L112
.L110:
	.loc 1 492 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	(%edx), %eax
	movl	%eax, -16(%ebp)
	addl	$4, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
.L112:
	.loc 1 494 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$67, %al
	jne	.L113
	.loc 1 495 0
	call	abort@PLT
.L113:
	.loc 1 497 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	paste_tokens
	xorl	$1, %eax
	testb	%al, %al
	je	.L115
	.loc 1 499 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
	.loc 1 502 0
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	cmpl	$7, %eax
	je	.L119
	.loc 1 503 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 507 0
	jmp	.L119
.L115:
	.loc 1 510 0
	movl	-16(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L109
.L119:
	.loc 1 513 0
	movl	12(%ebp), %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_token_context
	.loc 1 514 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	paste_all_tokens, .-paste_all_tokens
	.section	.rodata
	.align 4
.LC23:
	.string	"ISO C99 requires rest arguments to be used"
	.align 4
.LC24:
	.string	"macro \"%s\" requires %u arguments, but only %u given"
	.align 4
.LC25:
	.string	"macro \"%s\" passed %u arguments, but takes just %u"
	.text
.globl _cpp_arguments_ok
	.type	_cpp_arguments_ok, @function
_cpp_arguments_ok:
.LFB29:
	.loc 1 528 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$36, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 529 0
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	20(%ebp), %eax
	jne	.L122
	.loc 1 530 0
	movl	$1, -8(%ebp)
	jmp	.L124
.L122:
	.loc 1 532 0
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	20(%ebp), %eax
	jbe	.L125
	.loc 1 542 0
	movl	20(%ebp), %edx
	addl	$1, %edx
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jne	.L127
	movl	12(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L127
	.loc 1 544 0
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L130
	movl	12(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L130
	.loc 1 545 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L130:
	.loc 1 547 0
	movl	$1, -8(%ebp)
	jmp	.L124
.L127:
	.loc 1 550 0
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L133
.L125:
	.loc 1 555 0
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L133:
	.loc 1 559 0
	movl	$0, -8(%ebp)
.L124:
	movl	-8(%ebp), %eax
	.loc 1 560 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	_cpp_arguments_ok, .-_cpp_arguments_ok
	.section	.rodata
	.align 4
.LC26:
	.string	"unterminated argument list invoking macro \"%s\""
	.text
	.type	collect_args, @function
collect_args:
.LFB30:
	.loc 1 571 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%edi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$80, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 578 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 579 0
	movl	-36(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	je	.L136
	.loc 1 580 0
	movl	-36(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	jmp	.L138
.L136:
	.loc 1 582 0
	movl	$1, -20(%ebp)
.L138:
	.loc 1 583 0
	movl	-20(%ebp), %eax
	imull	$220, %eax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_get_buff@PLT
	movl	%eax, -44(%ebp)
	.loc 1 585 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 586 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 587 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 588 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 589 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -20(%ebp)
.L139:
.LBB10:
	.loc 1 596 0
	movl	$0, -16(%ebp)
	.loc 1 597 0
	movl	$0, -12(%ebp)
	.loc 1 599 0
	addl	$1, -20(%ebp)
	.loc 1 600 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L189
.L140:
.L189:
	.loc 1 605 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	addl	$8, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L141
	.loc 1 607 0
	movl	$4000, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_append_extend_buff@PLT
	movl	%eax, -44(%ebp)
	.loc 1 609 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
.L141:
	.loc 1 612 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -24(%ebp)
	.loc 1 614 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$67, %al
	jne	.L143
	.loc 1 617 0
	cmpl	$0, -12(%ebp)
	je	.L140
	.loc 1 618 0
	jmp	.L147
.L143:
	.loc 1 620 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$22, %al
	jne	.L148
	.loc 1 621 0
	addl	$1, -16(%ebp)
	jmp	.L147
.L148:
	.loc 1 622 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$23, %al
	jne	.L150
	.loc 1 624 0
	subl	$1, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	je	.L161
	.loc 1 625 0
	jmp	.L147
.L150:
	.loc 1 627 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$21, %al
	jne	.L154
	.loc 1 631 0
	cmpl	$0, -16(%ebp)
	jne	.L147
	movl	-36(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L161
	movl	-36(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-20(%ebp), %eax
	jne	.L161
	jmp	.L147
.L154:
	.loc 1 635 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L161
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$41, %al
	jne	.L147
	movl	-24(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L161
.L147:
	.loc 1 639 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -12(%ebp)
	.loc 1 640 0
	jmp	.L140
.L162:
	.loc 1 644 0
	subl	$1, -12(%ebp)
.L161:
	.loc 1 643 0
	cmpl	$0, -12(%ebp)
	je	.L163
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movzbl	6(%eax), %eax
	cmpb	$67, %al
	je	.L162
.L163:
	.loc 1 646 0
	movl	-28(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 647 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	addl	$204, %eax
	movl	%eax, (%edx)
	.loc 1 651 0
	movl	-36(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-20(%ebp), %eax
	jb	.L165
	.loc 1 653 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 654 0
	movl	-36(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-20(%ebp), %eax
	je	.L165
	.loc 1 655 0
	addl	$20, -28(%ebp)
.L165:
.LBE10:
	.loc 1 658 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$23, %al
	je	.L168
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L139
.L168:
	.loc 1 660 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L170
	.loc 1 666 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L172
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L174
.L172:
	.loc 1 667 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
.L174:
	.loc 1 668 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L175
.L170:
	.loc 1 675 0
	cmpl	$1, -20(%ebp)
	jne	.L176
	movl	-36(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	jne	.L176
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L176
	.loc 1 676 0
	movl	$0, -20(%ebp)
.L176:
	.loc 1 677 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_arguments_ok@PLT
	testb	%al, %al
	je	.L175
	.loc 1 686 0
	movl	-36(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L181
	movl	-36(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-20(%ebp), %eax
	ja	.L183
	cmpl	$1, -20(%ebp)
	jne	.L181
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L181
	movl	8(%ebp), %eax
	movzbl	424(%eax), %eax
	testb	%al, %al
	jne	.L181
.L183:
	.loc 1 689 0
	movl	-36(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	subl	$20, %eax
	movl	$0, (%eax)
.L181:
	.loc 1 690 0
	movl	-40(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L187
.L175:
	.loc 1 695 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_release_buff@PLT
	.loc 1 696 0
	movl	$0, -60(%ebp)
.L187:
	movl	-60(%ebp), %eax
	.loc 1 697 0
	addl	$80, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	collect_args, .-collect_args
	.type	funlike_invocation_p, @function
funlike_invocation_p:
.LFB31:
	.loc 1 707 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$36, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 708 0
	movl	$0, -8(%ebp)
	jmp	.L206
.L191:
.L206:
	.loc 1 712 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 713 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$67, %al
	jne	.L192
	.loc 1 715 0
	cmpl	$0, -8(%ebp)
	je	.L194
	movl	-8(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L191
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L191
.L194:
	.loc 1 717 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 718 0
	jmp	.L191
.L192:
	.loc 1 720 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$22, %al
	jne	.L198
	.loc 1 722 0
	movl	8(%ebp), %eax
	movb	$2, 18(%eax)
	.loc 1 723 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	collect_args
	movl	%eax, -24(%ebp)
	jmp	.L200
.L198:
	.loc 1 728 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L201
	movl	8(%ebp), %eax
	addl	$204, %eax
	cmpl	-12(%ebp), %eax
	jne	.L203
.L201:
	.loc 1 733 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
	.loc 1 734 0
	cmpl	$0, -8(%ebp)
	je	.L203
	.loc 1 735 0
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_token_context
.L203:
	.loc 1 738 0
	movl	$0, -24(%ebp)
.L200:
	movl	-24(%ebp), %eax
	.loc 1 739 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	funlike_invocation_p, .-funlike_invocation_p
	.section	.rodata
	.align 4
.LC27:
	.string	"function-like macro \"%s\" must be used with arguments in traditional C"
	.text
	.type	enter_macro_context, @function
enter_macro_context:
.LFB32:
	.loc 1 749 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$36, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 751 0
	movl	8(%ebp), %eax
	movb	$0, 120(%eax)
	.loc 1 753 0
	movl	8(%ebp), %eax
	movb	$0, 11(%eax)
	.loc 1 756 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L208
.LBB11:
	.loc 1 758 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 760 0
	movl	-12(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L210
.LBB12:
	.loc 1 764 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 765 0
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 152(%eax)
	.loc 1 766 0
	movl	8(%ebp), %eax
	movb	$1, 18(%eax)
	.loc 1 767 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	funlike_invocation_p
	movl	%eax, -8(%ebp)
	.loc 1 768 0
	movl	8(%ebp), %eax
	movb	$0, 18(%eax)
	.loc 1 769 0
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 152(%eax)
	.loc 1 770 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 772 0
	cmpl	$0, -8(%ebp)
	jne	.L212
	.loc 1 774 0
	movl	8(%ebp), %eax
	movzbl	411(%eax), %eax
	testb	%al, %al
	je	.L214
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	18(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L214
	.loc 1 775 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L214:
	.loc 1 779 0
	movl	$0, -24(%ebp)
	jmp	.L217
.L212:
	.loc 1 782 0
	movl	-12(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	je	.L218
	.loc 1 783 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_args
.L218:
	.loc 1 784 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_release_buff@PLT
.L210:
.LBE12:
	.loc 1 788 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movl	%eax, %edx
	orl	$32, %edx
	movl	12(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 790 0
	movl	-12(%ebp), %edx
	movzbl	18(%edx), %eax
	orl	$8, %eax
	movb	%al, 18(%edx)
	.loc 1 792 0
	movl	-12(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	jne	.L220
	.loc 1 793 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_token_context
.L220:
	.loc 1 795 0
	movl	$1, -24(%ebp)
	jmp	.L217
.L208:
.LBE11:
	.loc 1 799 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	builtin_macro
	movl	%eax, -24(%ebp)
.L217:
	movl	-24(%ebp), %eax
	.loc 1 800 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	enter_macro_context, .-enter_macro_context
	.type	replace_args, @function
replace_args:
.LFB33:
	.loc 1 812 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%edi
.LCFI59:
	pushl	%esi
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$76, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 823 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 824 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 826 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L224
.L225:
	.loc 1 827 0
	movl	-52(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$66, %al
	jne	.L226
	.loc 1 830 0
	addl	$2, -56(%ebp)
	.loc 1 834 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	subl	$20, %eax
	movl	%eax, -36(%ebp)
	.loc 1 836 0
	movl	-52(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L228
	.loc 1 838 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L226
	.loc 1 839 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stringify_arg
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L226
.L228:
	.loc 1 841 0
	movl	-52(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L232
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-52(%ebp), %eax
	jae	.L234
	movl	-52(%ebp), %eax
	subl	$16, %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L234
.L232:
	.loc 1 843 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	addl	-56(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -56(%ebp)
	.loc 1 841 0
	jmp	.L226
.L234:
	.loc 1 846 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L236
	.loc 1 847 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_arg
.L236:
	.loc 1 848 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	addl	-56(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -56(%ebp)
.L226:
	.loc 1 826 0
	addl	$16, -52(%ebp)
.L224:
	movl	-52(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jb	.L225
	.loc 1 854 0
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_get_buff@PLT
	movl	%eax, -32(%ebp)
	.loc 1 855 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 856 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 858 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L239
.L240:
.LBB13:
	.loc 1 863 0
	movl	-52(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$66, %al
	je	.L241
	.loc 1 865 0
	movl	-44(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	addl	$4, -44(%ebp)
	.loc 1 866 0
	jmp	.L243
.L241:
	.loc 1 869 0
	movl	$0, -20(%ebp)
	.loc 1 870 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	subl	$20, %eax
	movl	%eax, -36(%ebp)
	.loc 1 871 0
	movl	-52(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L244
	.loc 1 872 0
	movl	$1, -28(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -24(%ebp)
	jmp	.L246
.L244:
	.loc 1 873 0
	movl	-52(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L247
	.loc 1 874 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L246
.L247:
	.loc 1 875 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-52(%ebp), %eax
	je	.L249
	movl	-52(%ebp), %eax
	subl	$16, %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L249
	.loc 1 877 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 878 0
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L246
	.loc 1 880 0
	movl	-44(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movzbl	6(%eax), %eax
	cmpb	$21, %al
	jne	.L254
	movl	16(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L254
	movl	-52(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jne	.L254
	.loc 1 886 0
	cmpl	$0, -24(%ebp)
	jne	.L258
	.loc 1 887 0
	subl	$4, -44(%ebp)
	jmp	.L246
.L258:
	.loc 1 889 0
	movl	-44(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 880 0
	jmp	.L246
.L254:
	.loc 1 892 0
	cmpl	$0, -28(%ebp)
	jne	.L246
	.loc 1 893 0
	movl	-44(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 875 0
	jmp	.L246
.L249:
	.loc 1 897 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L246:
	.loc 1 900 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L262
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	testb	%al, %al
	je	.L264
.L262:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-52(%ebp), %eax
	je	.L264
	movl	-52(%ebp), %eax
	subl	$16, %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L264
	.loc 1 902 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	padding_token
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -44(%ebp)
.L264:
	.loc 1 904 0
	cmpl	$0, -28(%ebp)
	je	.L267
	.loc 1 906 0
	movl	-28(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-44(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 907 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	%eax, -44(%ebp)
	.loc 1 911 0
	movl	-52(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L267
	.loc 1 912 0
	movl	-44(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -20(%ebp)
.L267:
	.loc 1 916 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L270
	movl	-52(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L270
	.loc 1 917 0
	movl	8(%ebp), %edx
	addl	$188, %edx
	movl	-44(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -44(%ebp)
.L270:
	.loc 1 920 0
	cmpl	$0, -20(%ebp)
	je	.L243
.LBB14:
	.loc 1 922 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_temp_token@PLT
	movl	%eax, -16(%ebp)
	.loc 1 923 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzbl	6(%eax), %edx
	movl	-16(%ebp), %eax
	movb	%dl, 6(%eax)
	.loc 1 924 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 925 0
	movl	-52(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L274
	.loc 1 926 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzbl	7(%eax), %eax
	movl	%eax, %edx
	orl	$8, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 7(%eax)
	jmp	.L276
.L274:
	.loc 1 928 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movzbl	7(%eax), %eax
	movl	%eax, %edx
	andl	$-9, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 7(%eax)
.L276:
	.loc 1 929 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L243:
.LBE14:
.LBE13:
	.loc 1 858 0
	addl	$16, -52(%ebp)
.L239:
	movl	-52(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jb	.L240
	.loc 1 934 0
	movl	$0, -60(%ebp)
	jmp	.L278
.L279:
	.loc 1 935 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L280
	.loc 1 936 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L280:
	.loc 1 934 0
	addl	$1, -60(%ebp)
.L278:
	movl	16(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-60(%ebp), %eax
	ja	.L279
	.loc 1 938 0
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_ptoken_context
	.loc 1 939 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	replace_args, .-replace_args
	.type	padding_token, @function
padding_token:
.LFB34:
	.loc 1 946 0
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
	.loc 1 947 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_temp_token@PLT
	movl	%eax, -8(%ebp)
	.loc 1 949 0
	movl	-8(%ebp), %eax
	movb	$67, 6(%eax)
	.loc 1 950 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 951 0
	movl	-8(%ebp), %eax
	movb	$0, 7(%eax)
	.loc 1 952 0
	movl	-8(%ebp), %eax
	.loc 1 953 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	padding_token, .-padding_token
	.type	next_context, @function
next_context:
.LFB35:
	.loc 1 960 0
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
	.loc 1 961 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 963 0
	cmpl	$0, -8(%ebp)
	jne	.L287
	.loc 1 965 0
	movl	$28, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 966 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 967 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 968 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L287:
	.loc 1 971 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 100(%edx)
	.loc 1 972 0
	movl	-8(%ebp), %eax
	.loc 1 973 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	next_context, .-next_context
	.type	push_ptoken_context, @function
push_ptoken_context:
.LFB36:
	.loc 1 983 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	subl	$24, %esp
.LCFI73:
	.loc 1 984 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_context
	movl	%eax, -4(%ebp)
	.loc 1 986 0
	movl	-4(%ebp), %eax
	movb	$0, 24(%eax)
	.loc 1 987 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 988 0
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 989 0
	movl	-4(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 990 0
	movl	24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	20(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 991 0
	leave
	ret
.LFE36:
	.size	push_ptoken_context, .-push_ptoken_context
	.type	push_token_context, @function
push_token_context:
.LFB37:
	.loc 1 1000 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	subl	$24, %esp
.LCFI76:
	.loc 1 1001 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_context
	movl	%eax, -4(%ebp)
	.loc 1 1003 0
	movl	-4(%ebp), %eax
	movb	$1, 24(%eax)
	.loc 1 1004 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1005 0
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1006 0
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1007 0
	movl	20(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	addl	16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1008 0
	leave
	ret
.LFE37:
	.size	push_token_context, .-push_token_context
.globl _cpp_push_text_context
	.type	_cpp_push_text_context, @function
_cpp_push_text_context:
.LFB38:
	.loc 1 1017 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	subl	$24, %esp
.LCFI79:
	.loc 1 1018 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_context
	movl	%eax, -4(%ebp)
	.loc 1 1020 0
	movl	-4(%ebp), %eax
	movb	$1, 24(%eax)
	.loc 1 1021 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1022 0
	movl	-4(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1023 0
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1024 0
	movl	20(%ebp), %eax
	movl	%eax, %edx
	addl	16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1025 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movl	%eax, %edx
	orl	$32, %edx
	movl	12(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1026 0
	leave
	ret
.LFE38:
	.size	_cpp_push_text_context, .-_cpp_push_text_context
	.type	expand_arg, @function
expand_arg:
.LFB39:
	.loc 1 1038 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$36, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1042 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L304
	.loc 1 1046 0
	movl	8(%ebp), %eax
	movzbl	411(%eax), %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 1047 0
	movl	8(%ebp), %eax
	movb	$0, 411(%eax)
	.loc 1 1050 0
	movl	$256, -16(%ebp)
	.loc 1 1051 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1054 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_ptoken_context
.L299:
.LBB15:
	.loc 1 1059 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	cmpl	-16(%ebp), %eax
	jb	.L300
	.loc 1 1061 0
	sall	-16(%ebp)
	.loc 1 1062 0
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
.L300:
	.loc 1 1066 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1068 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L302
	.loc 1 1071 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1072 0
	jmp	.L299
.L302:
.LBE15:
	.loc 1 1074 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_context@PLT
	.loc 1 1076 0
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	movb	%dl, 411(%eax)
.L304:
	.loc 1 1077 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	expand_arg, .-expand_arg
.globl _cpp_pop_context
	.type	_cpp_pop_context, @function
_cpp_pop_context:
.LFB40:
	.loc 1 1085 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$36, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1086 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1088 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L306
	.loc 1 1089 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	17(%eax), %eax
	andl	$-33, %eax
	movb	%al, 17(%edx)
.L306:
	.loc 1 1091 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L308
	.loc 1 1092 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_release_buff@PLT
.L308:
	.loc 1 1094 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	.loc 1 1095 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	_cpp_pop_context, .-_cpp_pop_context
.globl cpp_get_token
	.type	cpp_get_token, @function
cpp_get_token:
.LFB41:
	.loc 1 1111 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$36, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	jmp	.L341
.L312:
.L341:
.LBB16:
	.loc 1 1117 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1120 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L313
	.loc 1 1121 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movl	%eax, -20(%ebp)
	jmp	.L315
.L313:
	.loc 1 1122 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L316
	.loc 1 1124 0
	movl	-12(%ebp), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L318
	.loc 1 1125 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	leal	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L320
.L318:
	.loc 1 1127 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	(%edx), %eax
	movl	%eax, -20(%ebp)
	addl	$4, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
.L320:
	.loc 1 1129 0
	movl	-20(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L315
	.loc 1 1131 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	paste_all_tokens
	.loc 1 1132 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L312
	.loc 1 1134 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	padding_token
	movl	%eax, -24(%ebp)
	jmp	.L325
.L316:
	.loc 1 1139 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_context@PLT
	.loc 1 1140 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L312
	.loc 1 1142 0
	movl	8(%ebp), %eax
	addl	$188, %eax
	movl	%eax, -24(%ebp)
	jmp	.L325
.L315:
	.loc 1 1145 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L327
	movl	-20(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$65, %al
	je	.L312
.L327:
	.loc 1 1148 0
	movl	-20(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	jne	.L329
	.loc 1 1151 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1153 0
	movl	-16(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L329
	movl	-20(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L329
	.loc 1 1156 0
	movl	-16(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L333
	.loc 1 1158 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	jne	.L329
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	enter_macro_context
	testl	%eax, %eax
	je	.L329
	.loc 1 1161 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L312
	.loc 1 1163 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	padding_token
	movl	%eax, -24(%ebp)
	jmp	.L325
.L333:
.LBB17:
	.loc 1 1170 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_temp_token@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1171 0
	movl	-20(%ebp), %eax
	movzbl	6(%eax), %edx
	movl	-8(%ebp), %eax
	movb	%dl, 6(%eax)
	.loc 1 1172 0
	movl	-20(%ebp), %eax
	movzbl	7(%eax), %eax
	movl	%eax, %edx
	orl	$32, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 7(%eax)
	.loc 1 1173 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 1174 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L329:
.LBE17:
.LBE16:
	.loc 1 1180 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L325:
	movl	-24(%ebp), %eax
	.loc 1 1181 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	cpp_get_token, .-cpp_get_token
.globl cpp_sys_macro_p
	.type	cpp_sys_macro_p, @function
cpp_sys_macro_p:
.LFB42:
	.loc 1 1189 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	subl	$20, %esp
.LCFI94:
	.loc 1 1190 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1192 0
	cmpl	$0, -4(%ebp)
	je	.L343
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L343
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	18(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L343
	movl	$1, -20(%ebp)
	jmp	.L347
.L343:
	movl	$0, -20(%ebp)
.L347:
	movl	-20(%ebp), %eax
	.loc 1 1193 0
	leave
	ret
.LFE42:
	.size	cpp_sys_macro_p, .-cpp_sys_macro_p
.globl cpp_scan_nooutput
	.type	cpp_scan_nooutput, @function
cpp_scan_nooutput:
.LFB43:
	.loc 1 1200 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$4, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1203 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movb	$1, 47(%eax)
	.loc 1 1205 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L350
.L351:
	.loc 1 1206 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_read_logical_line_trad@PLT
	testb	%al, %al
	jne	.L351
	jmp	.L354
.L350:
	.loc 1 1209 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L350
.L354:
	.loc 1 1211 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	cpp_scan_nooutput, .-cpp_scan_nooutput
.globl _cpp_backup_tokens
	.type	_cpp_backup_tokens, @function
_cpp_backup_tokens:
.LFB44:
	.loc 1 1219 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$4, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1220 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L356
	.loc 1 1222 0
	movl	8(%ebp), %eax
	movl	148(%eax), %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 148(%eax)
	.loc 1 1223 0
	jmp	.L369
.L359:
	.loc 1 1225 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	leal	-16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 1226 0
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L358
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L358
	.loc 1 1230 0
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 144(%eax)
	.loc 1 1231 0
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 124(%eax)
.L358:
.L369:
	.loc 1 1223 0
	subl	$1, 12(%ebp)
	cmpl	$-1, 12(%ebp)
	jne	.L359
	jmp	.L368
.L356:
	.loc 1 1237 0
	cmpl	$1, 12(%ebp)
	je	.L364
	.loc 1 1238 0
	call	abort@PLT
.L364:
	.loc 1 1239 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movzbl	24(%eax), %eax
	testb	%al, %al
	je	.L366
	.loc 1 1240 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%edx), %eax
	subl	$16, %eax
	movl	%eax, 8(%edx)
	jmp	.L368
.L366:
	.loc 1 1242 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%edx), %eax
	subl	$4, %eax
	movl	%eax, 8(%edx)
.L368:
	.loc 1 1244 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	_cpp_backup_tokens, .-_cpp_backup_tokens
	.type	warn_of_redefinition, @function
warn_of_redefinition:
.LFB45:
	.loc 1 1254 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$36, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1259 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L371
	.loc 1 1260 0
	movl	$1, -24(%ebp)
	jmp	.L373
.L371:
	.loc 1 1264 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1268 0
	movl	-12(%ebp), %eax
	movzwl	16(%eax), %edx
	movl	16(%ebp), %eax
	movzwl	16(%eax), %eax
	cmpw	%ax, %dx
	jne	.L374
	movl	-12(%ebp), %eax
	movzbl	18(%eax), %edx
	andl	$1, %edx
	movl	16(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L374
	movl	-12(%ebp), %eax
	movzbl	18(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	andl	$1, %edx
	movl	16(%ebp), %eax
	movzbl	18(%eax), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L377
.L374:
	.loc 1 1271 0
	movl	$1, -24(%ebp)
	jmp	.L373
.L377:
	.loc 1 1274 0
	movl	$0, -8(%ebp)
	jmp	.L378
.L379:
	.loc 1 1275 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L380
	.loc 1 1276 0
	movl	$1, -24(%ebp)
	jmp	.L373
.L380:
	.loc 1 1274 0
	addl	$1, -8(%ebp)
.L378:
	movl	-12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-8(%ebp), %eax
	ja	.L379
	.loc 1 1279 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L383
	.loc 1 1280 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_expansions_different_trad@PLT
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	jmp	.L373
.L383:
	.loc 1 1282 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L385
	.loc 1 1283 0
	movl	$1, -24(%ebp)
	jmp	.L373
.L385:
	.loc 1 1285 0
	movl	$0, -8(%ebp)
	jmp	.L387
.L388:
	.loc 1 1286 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_cpp_equiv_tokens@PLT
	testl	%eax, %eax
	jne	.L389
	.loc 1 1287 0
	movl	$1, -24(%ebp)
	jmp	.L373
.L389:
	.loc 1 1285 0
	addl	$1, -8(%ebp)
.L387:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L388
	.loc 1 1289 0
	movl	$0, -24(%ebp)
.L373:
	movl	-24(%ebp), %eax
	.loc 1 1290 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	warn_of_redefinition, .-warn_of_redefinition
.globl _cpp_free_definition
	.type	_cpp_free_definition, @function
_cpp_free_definition:
.LFB46:
	.loc 1 1296 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	.loc 1 1298 0
	movl	8(%ebp), %eax
	movb	$0, 16(%eax)
	.loc 1 1300 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	movl	%eax, %edx
	andl	$-37, %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1301 0
	popl	%ebp
	ret
.LFE46:
	.size	_cpp_free_definition, .-_cpp_free_definition
	.section	.rodata
	.align 4
.LC28:
	.string	"duplicate macro parameter \"%s\""
	.text
.globl _cpp_save_parameter
	.type	_cpp_save_parameter, @function
_cpp_save_parameter:
.LFB47:
	.loc 1 1310 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$20, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1312 0
	movl	16(%ebp), %eax
	movzwl	12(%eax), %eax
	testw	%ax, %ax
	je	.L396
	.loc 1 1314 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1316 0
	movl	$1, -8(%ebp)
	jmp	.L398
.L396:
	.loc 1 1319 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	addl	$4, %eax
	cmpl	%eax, %edx
	jae	.L399
	.loc 1 1321 0
	movl	8(%ebp), %eax
	addl	$60, %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_extend_buff@PLT
.L399:
	.loc 1 1323 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzwl	16(%eax), %ecx
	movzwl	%cx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	12(%ebp), %eax
	movw	%dx, 16(%eax)
	.loc 1 1324 0
	movl	12(%ebp), %eax
	movzwl	16(%eax), %edx
	movl	16(%ebp), %eax
	movw	%dx, 12(%eax)
	.loc 1 1325 0
	movl	$0, -8(%ebp)
.L398:
	movl	-8(%ebp), %eax
	.loc 1 1326 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	_cpp_save_parameter, .-_cpp_save_parameter
	.section	.rodata
	.align 4
.LC29:
	.string	"\"%s\" may not appear in macro parameter list"
	.align 4
.LC30:
	.string	"macro parameters must be comma-separated"
.LC31:
	.string	"parameter name missing"
	.align 4
.LC32:
	.string	"anonymous variadic macros were introduced in C99"
	.align 4
.LC33:
	.string	"ISO C does not permit named variadic macros"
	.align 4
.LC34:
	.string	"missing ')' in macro parameter list"
	.text
	.type	parse_params, @function
parse_params:
.LFB48:
	.loc 1 1334 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%ebx
.LCFI115:
	subl	$52, %esp
.LCFI116:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1335 0
	movl	$0, -12(%ebp)
	jmp	.L432
.L403:
.L432:
.LBB18:
	.loc 1 1339 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1341 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	movzbl	%al, %eax
	subl	$21, %eax
	movl	%eax, -28(%ebp)
	cmpl	$36, -28(%ebp)
	ja	.L404
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L410@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L410:
	.long	.L405@GOTOFF
	.long	.L404@GOTOFF
	.long	.L406@GOTOFF
	.long	.L407@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L408@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L409@GOTOFF
	.text
.L404:
	.loc 1 1346 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$65, %al
	jne	.L411
	movl	8(%ebp), %eax
	movzbl	397(%eax), %eax
	testb	%al, %al
	je	.L403
.L411:
	.loc 1 1350 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1353 0
	movl	$0, -24(%ebp)
	jmp	.L414
.L409:
	.loc 1 1356 0
	cmpl	$0, -12(%ebp)
	je	.L415
	.loc 1 1358 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1360 0
	movl	$0, -24(%ebp)
	jmp	.L414
.L415:
	.loc 1 1362 0
	movl	$1, -12(%ebp)
	.loc 1 1364 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_save_parameter@PLT
	testb	%al, %al
	je	.L403
	.loc 1 1365 0
	movl	$0, -24(%ebp)
	jmp	.L414
.L406:
	.loc 1 1369 0
	cmpl	$0, -12(%ebp)
	jne	.L419
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	jne	.L405
.L419:
	.loc 1 1370 0
	movl	$1, -24(%ebp)
	jmp	.L414
.L405:
	.loc 1 1374 0
	cmpl	$0, -12(%ebp)
	jne	.L421
	.loc 1 1376 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1377 0
	movl	$0, -24(%ebp)
	jmp	.L414
.L421:
	.loc 1 1379 0
	movl	$0, -12(%ebp)
	.loc 1 1380 0
	jmp	.L403
.L408:
	.loc 1 1383 0
	movl	12(%ebp), %eax
	movzbl	18(%eax), %edx
	orl	$2, %edx
	movb	%dl, 18(%eax)
	.loc 1 1384 0
	cmpl	$0, -12(%ebp)
	jne	.L423
	.loc 1 1386 0
	movl	8(%ebp), %eax
	movl	476(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_save_parameter@PLT
	.loc 1 1388 0
	movl	8(%ebp), %eax
	movb	$1, 15(%eax)
	.loc 1 1389 0
	movl	8(%ebp), %eax
	movzbl	423(%eax), %eax
	testb	%al, %al
	jne	.L428
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L428
	.loc 1 1390 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L428
.L423:
	.loc 1 1393 0
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L428
	.loc 1 1394 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L428:
	.loc 1 1398 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1399 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$23, %al
	jne	.L407
	.loc 1 1400 0
	movl	$1, -24(%ebp)
	jmp	.L414
.L407:
	.loc 1 1404 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1405 0
	movl	$0, -24(%ebp)
.L414:
	.loc 1 1407 0
	movl	-24(%ebp), %eax
.LBE18:
	.loc 1 1408 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	parse_params, .-parse_params
	.type	alloc_expansion_token, @function
alloc_expansion_token:
.LFB49:
	.loc 1 1415 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$20, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1416 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	sall	$4, %eax
	addl	$16, %eax
	cmpl	%eax, %edx
	jae	.L434
	.loc 1 1417 0
	movl	8(%ebp), %eax
	addl	$60, %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_extend_buff@PLT
.L434:
	.loc 1 1419 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	%edx, %eax
	sall	$4, %eax
	addl	%eax, %ecx
	addl	$1, %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	%ecx, %eax
	.loc 1 1420 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	alloc_expansion_token, .-alloc_expansion_token
	.type	lex_expansion_token, @function
lex_expansion_token:
.LFB50:
	.loc 1 1428 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%ebx
.LCFI123:
	subl	$36, %esp
.LCFI124:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1431 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_expansion_token
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 1432 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_direct@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1435 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	jne	.L438
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	12(%eax), %eax
	testw	%ax, %ax
	je	.L438
	.loc 1 1437 0
	movl	-8(%ebp), %eax
	movb	$66, 6(%eax)
	.loc 1 1438 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	12(%eax), %eax
	movzwl	%ax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1435 0
	jmp	.L441
.L438:
	.loc 1 1440 0
	movl	8(%ebp), %eax
	movzbl	411(%eax), %eax
	testb	%al, %al
	je	.L441
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	je	.L441
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$62, %al
	je	.L444
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$59, %al
	jne	.L441
.L444:
	.loc 1 1442 0
	movl	-8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_trad_stringification
.L441:
	.loc 1 1444 0
	movl	-8(%ebp), %eax
	.loc 1 1445 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	lex_expansion_token, .-lex_expansion_token
	.section	.rodata
	.align 4
.LC35:
	.string	"ISO C requires whitespace after the macro name"
	.align 4
.LC36:
	.string	"'#' is not followed by a macro parameter"
	.align 4
.LC37:
	.string	"'##' cannot appear at either end of a macro expansion"
	.text
	.type	create_iso_definition, @function
create_iso_definition:
.LFB51:
	.loc 1 1451 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$36, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1457 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_token@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1459 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$22, %al
	jne	.L448
	movl	-12(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L448
.LBB19:
	.loc 1 1461 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_params
	movb	%al, -5(%ebp)
	.loc 1 1462 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1463 0
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L451
	.loc 1 1464 0
	movl	$0, -24(%ebp)
	jmp	.L453
.L451:
	.loc 1 1467 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 1468 0
	movl	12(%ebp), %edx
	movzbl	18(%edx), %eax
	orl	$1, %eax
	movb	%al, 18(%edx)
	.loc 1 1459 0
	jmp	.L454
.L448:
.LBE19:
	.loc 1 1470 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L454
	movl	-12(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L454
	.loc 1 1471 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L454:
	.loc 1 1474 0
	movl	12(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L457
	.loc 1 1475 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_expansion_token
	movl	%eax, -16(%ebp)
	jmp	.L459
.L457:
	.loc 1 1478 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_expansion_token
	movl	%eax, -16(%ebp)
	.loc 1 1479 0
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
.L459:
	.loc 1 1486 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jbe	.L460
	movl	-16(%ebp), %eax
	subl	$16, %eax
	movzbl	6(%eax), %eax
	cmpb	$41, %al
	jne	.L460
	movl	12(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L460
	.loc 1 1488 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$66, %al
	jne	.L464
	.loc 1 1490 0
	movl	-16(%ebp), %eax
	movzbl	7(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 7(%eax)
	.loc 1 1491 0
	movl	-16(%ebp), %eax
	movzbl	7(%eax), %eax
	movl	%eax, %edx
	orl	$4, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 7(%eax)
	.loc 1 1492 0
	movl	-16(%ebp), %eax
	movzbl	7(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	subl	$16, %eax
	movzbl	7(%eax), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, 7(%eax)
	.loc 1 1493 0
	movl	-16(%ebp), %ecx
	subl	$16, %ecx
	movl	-16(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	.loc 1 1494 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L460
.L464:
	.loc 1 1497 0
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	cmpl	$7, %eax
	je	.L460
	.loc 1 1499 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1501 0
	movl	$0, -24(%ebp)
	jmp	.L453
.L460:
	.loc 1 1505 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	je	.L467
	.loc 1 1509 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$42, %al
	jne	.L469
	.loc 1 1513 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L471
	.loc 1 1514 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_expansion_token
	movl	%eax, -16(%ebp)
.L471:
	.loc 1 1516 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L473
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$24, %al
	jne	.L475
.L473:
	.loc 1 1518 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1520 0
	movl	$0, -24(%ebp)
	jmp	.L453
.L475:
	.loc 1 1523 0
	movl	-16(%ebp), %edx
	subl	$16, %edx
	movl	-16(%ebp), %eax
	subl	$16, %eax
	movzbl	7(%eax), %eax
	orl	$8, %eax
	movb	%al, 7(%edx)
.L469:
	.loc 1 1526 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_expansion_token
	movl	%eax, -16(%ebp)
	.loc 1 1527 0
	jmp	.L459
.L467:
	.loc 1 1529 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1532 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1535 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L476
	.loc 1 1536 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-2, %eax
	movb	%al, 7(%edx)
.L476:
	.loc 1 1539 0
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 8(%ecx)
	.loc 1 1541 0
	movl	$1, -24(%ebp)
.L453:
	movl	-24(%ebp), %eax
	.loc 1 1542 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	create_iso_definition, .-create_iso_definition
	.section	.rodata
.LC38:
	.string	"\"%s\" redefined"
	.align 4
.LC39:
	.string	"this is the location of the previous definition"
.LC40:
	.string	"__STDC_"
	.text
.globl _cpp_create_definition
	.type	_cpp_create_definition, @function
_cpp_create_definition:
.LFB52:
	.loc 1 1549 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%ebx
.LCFI131:
	subl	$52, %esp
.LCFI132:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1554 0
	movl	$20, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_aligned_alloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1555 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1556 0
	movl	-20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1557 0
	movl	-20(%ebp), %eax
	movw	$0, 16(%eax)
	.loc 1 1558 0
	movl	-20(%ebp), %edx
	movzbl	18(%edx), %eax
	andl	$-3, %eax
	movb	%al, 18(%edx)
	.loc 1 1559 0
	movl	-20(%ebp), %edx
	movzbl	18(%edx), %eax
	andl	$-9, %eax
	movb	%al, 18(%edx)
	.loc 1 1560 0
	movl	-20(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 1561 0
	movl	-20(%ebp), %edx
	movzbl	18(%edx), %eax
	andl	$-2, %eax
	movb	%al, 18(%edx)
	.loc 1 1563 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	setne	%al
	movl	-20(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	18(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 18(%ecx)
	.loc 1 1565 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L480
	.loc 1 1566 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_create_trad_definition@PLT
	movb	%al, -5(%ebp)
	jmp	.L482
.L480:
.LBB20:
	.loc 1 1569 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1571 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	create_iso_definition
	movb	%al, -5(%ebp)
	.loc 1 1579 0
	movl	-12(%ebp), %edx
	subl	$16, %edx
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	subl	$16, %eax
	movzbl	6(%eax), %eax
	movb	%al, 6(%edx)
	.loc 1 1580 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 124(%edx)
	.loc 1 1583 0
	movl	8(%ebp), %eax
	movb	$0, 15(%eax)
.L482:
.LBE20:
	.loc 1 1587 0
	movl	-20(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	jmp	.L483
.L484:
	.loc 1 1588 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movw	$0, 12(%eax)
.L483:
	.loc 1 1587 0
	subl	$1, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	.L484
	.loc 1 1590 0
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L486
	.loc 1 1591 0
	movzbl	-5(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L488
.L486:
	.loc 1 1593 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L489
	.loc 1 1595 0
	movl	8(%ebp), %eax
	movzbl	422(%eax), %eax
	testb	%al, %al
	je	.L491
	.loc 1 1596 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_warn_if_unused_macro@PLT
.L491:
	.loc 1 1598 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_of_redefinition
	testb	%al, %al
	je	.L489
	.loc 1 1600 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %ecx
	movl	%edx, 20(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
	.loc 1 1603 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L489
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L489
	.loc 1 1604 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	8(%eax), %edx
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
.L489:
	.loc 1 1610 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	testb	%al, %al
	je	.L496
	.loc 1 1611 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_free_definition@PLT
.L496:
	.loc 1 1614 0
	movl	12(%ebp), %eax
	movb	$1, 16(%eax)
	.loc 1 1615 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1616 0
	leal	.LC40@GOTOFF(%ebx), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$7, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	ustrncmp
	testl	%eax, %eax
	jne	.L498
	.loc 1 1617 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movl	%eax, %edx
	orl	$16, %edx
	movl	12(%ebp), %eax
	movb	%dl, 17(%eax)
.L498:
	.loc 1 1619 0
	movzbl	-5(%ebp), %eax
	movl	%eax, -24(%ebp)
.L488:
	movl	-24(%ebp), %eax
	.loc 1 1620 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	_cpp_create_definition, .-_cpp_create_definition
	.type	ustrncmp, @function
ustrncmp:
.LFB16:
	.loc 2 598 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$20, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 599 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	strncmp@PLT
	.loc 2 600 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	ustrncmp, .-ustrncmp
	.section	.rodata
	.align 4
.LC41:
	.string	"macro argument \"%s\" would be stringified in traditional C"
	.text
	.type	check_trad_stringification, @function
check_trad_stringification:
.LFB53:
	.loc 1 1629 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%edi
.LCFI139:
	pushl	%esi
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$60, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1631 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1634 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L504
.L507:
	.loc 1 1638 0
	addl	$1, -28(%ebp)
.L506:
	.loc 1 1637 0
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jae	.L508
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L508
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L507
	movl	8(%ebp), %eax
	movzbl	420(%eax), %eax
	testb	%al, %al
	je	.L507
.L508:
	.loc 1 1641 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1642 0
	jmp	.L512
.L513:
	.loc 1 1643 0
	addl	$1, -24(%ebp)
.L512:
	.loc 1 1642 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jae	.L514
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$516, %eax
	testl	%eax, %eax
	jne	.L513
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L514
	movl	8(%ebp), %eax
	movzbl	420(%eax), %eax
	testb	%al, %al
	jne	.L513
.L514:
	.loc 1 1645 0
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	%edx, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1649 0
	movl	$0, -36(%ebp)
	jmp	.L518
.L519:
.LBB21:
	.loc 1 1651 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1653 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L520
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -52(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -56(%ebp)
	cld
	movl	-56(%ebp), %ecx
	cmpl	%ecx, -56(%ebp)
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
	jne	.L520
	.loc 1 1656 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1659 0
	jmp	.L523
.L520:
.LBE21:
	.loc 1 1649 0
	addl	$1, -36(%ebp)
.L518:
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-36(%ebp), %eax
	ja	.L519
.L523:
	.loc 1 1634 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L504:
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L506
	.loc 1 1663 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE53:
	.size	check_trad_stringification, .-check_trad_stringification
	.section	.rodata
	.align 4
.LC42:
	.string	"invalid hash type %d in cpp_macro_definition"
	.text
.globl cpp_macro_definition
	.type	cpp_macro_definition, @function
cpp_macro_definition:
.LFB54:
	.loc 1 1674 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%edi
.LCFI145:
	pushl	%esi
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$60, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1676 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1679 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L527
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L529
.L527:
	.loc 1 1681 0
	movl	12(%ebp), %eax
	movzbl	16(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1683 0
	movl	$0, -48(%ebp)
	jmp	.L530
.L529:
	.loc 1 1687 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	addl	$2, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1688 0
	movl	-32(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L531
	.loc 1 1690 0
	addl	$4, -36(%ebp)
	.loc 1 1692 0
	movl	$0, -40(%ebp)
	jmp	.L533
.L534:
	.loc 1 1693 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	addl	-36(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1692 0
	addl	$1, -40(%ebp)
.L533:
	movl	-32(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-40(%ebp), %eax
	ja	.L534
.L531:
	.loc 1 1696 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L535
	.loc 1 1697 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_replacement_text_len@PLT
	addl	%eax, -36(%ebp)
	jmp	.L537
.L535:
	.loc 1 1700 0
	movl	$0, -40(%ebp)
	jmp	.L538
.L539:
.LBB22:
	.loc 1 1702 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1704 0
	movl	-24(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$66, %al
	jne	.L540
	.loc 1 1705 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	addl	%eax, -36(%ebp)
	jmp	.L542
.L540:
	.loc 1 1707 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_len@PLT
	addl	%eax, -36(%ebp)
.L542:
	.loc 1 1708 0
	movl	-24(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L543
	.loc 1 1709 0
	addl	$1, -36(%ebp)
.L543:
	.loc 1 1710 0
	movl	-24(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L545
	.loc 1 1711 0
	addl	$3, -36(%ebp)
.L545:
.LBE22:
	.loc 1 1700 0
	addl	$1, -40(%ebp)
.L538:
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-40(%ebp), %eax
	ja	.L539
.L537:
	.loc 1 1715 0
	movl	8(%ebp), %eax
	movl	164(%eax), %eax
	cmpl	-36(%ebp), %eax
	jae	.L547
	.loc 1 1717 0
	movl	8(%ebp), %eax
	movl	160(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 160(%eax)
	.loc 1 1718 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 164(%edx)
.L547:
	.loc 1 1722 0
	movl	8(%ebp), %eax
	movl	160(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1723 0
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1724 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, -28(%ebp)
	.loc 1 1727 0
	movl	-32(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L549
	.loc 1 1729 0
	movl	-28(%ebp), %eax
	movb	$40, (%eax)
	addl	$1, -28(%ebp)
	.loc 1 1730 0
	movl	$0, -40(%ebp)
	jmp	.L551
.L552:
.LBB23:
	.loc 1 1732 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1734 0
	movl	8(%ebp), %eax
	movl	476(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L553
	.loc 1 1736 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1737 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, -28(%ebp)
.L553:
	.loc 1 1740 0
	movl	-40(%ebp), %edx
	addl	$1, %edx
	movl	-32(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jae	.L555
	.loc 1 1744 0
	movl	-28(%ebp), %eax
	movb	$44, (%eax)
	addl	$1, -28(%ebp)
	jmp	.L557
.L555:
	.loc 1 1745 0
	movl	-32(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L557
	.loc 1 1746 0
	movl	-28(%ebp), %eax
	movb	$46, (%eax)
	addl	$1, -28(%ebp)
	movl	-28(%ebp), %eax
	movb	$46, (%eax)
	addl	$1, -28(%ebp)
	movl	-28(%ebp), %eax
	movb	$46, (%eax)
	addl	$1, -28(%ebp)
.L557:
.LBE23:
	.loc 1 1730 0
	addl	$1, -40(%ebp)
.L551:
	movl	-32(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	-40(%ebp), %eax
	ja	.L552
	.loc 1 1748 0
	movl	-28(%ebp), %eax
	movb	$41, (%eax)
	addl	$1, -28(%ebp)
.L549:
	.loc 1 1753 0
	movl	-28(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -28(%ebp)
	.loc 1 1755 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L560
	.loc 1 1756 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_copy_replacement_text@PLT
	movl	%eax, -28(%ebp)
	jmp	.L562
.L560:
	.loc 1 1757 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L562
	.loc 1 1760 0
	movl	$0, -40(%ebp)
	jmp	.L564
.L565:
.LBB24:
	.loc 1 1762 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1764 0
	movl	-16(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L566
	.loc 1 1765 0
	movl	-28(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -28(%ebp)
.L566:
	.loc 1 1766 0
	movl	-16(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L568
	.loc 1 1767 0
	movl	-28(%ebp), %eax
	movb	$35, (%eax)
	addl	$1, -28(%ebp)
.L568:
	.loc 1 1769 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$66, %al
	jne	.L570
	.loc 1 1771 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1772 0
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1774 0
	movl	-36(%ebp), %eax
	addl	%eax, -28(%ebp)
	jmp	.L572
.L570:
	.loc 1 1777 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_spell_token@PLT
	movl	%eax, -28(%ebp)
.L572:
	.loc 1 1779 0
	movl	-16(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L573
	.loc 1 1781 0
	movl	-28(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -28(%ebp)
	.loc 1 1782 0
	movl	-28(%ebp), %eax
	movb	$35, (%eax)
	addl	$1, -28(%ebp)
	.loc 1 1783 0
	movl	-28(%ebp), %eax
	movb	$35, (%eax)
	addl	$1, -28(%ebp)
.L573:
.LBE24:
	.loc 1 1760 0
	addl	$1, -40(%ebp)
.L564:
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-40(%ebp), %eax
	ja	.L565
.L562:
	.loc 1 1789 0
	movl	-28(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1790 0
	movl	8(%ebp), %eax
	movl	160(%eax), %eax
	movl	%eax, -48(%ebp)
.L530:
	movl	-48(%ebp), %eax
	.loc 1 1791 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE54:
	.size	cpp_macro_definition, .-cpp_macro_definition
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
	.long	.LCFI13-.LCFI9
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI14-.LFB24
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI18-.LFB17
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
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI22-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI23
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
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
	.long	.LCFI29-.LCFI27
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI30-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI31
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI35-.LFB28
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI40-.LFB29
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
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI44-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI45
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
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI49-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI50
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI53-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI54
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI57-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI58
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
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI63-.LFB34
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
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI67-.LFB35
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI71-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI74-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI77-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI80-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI81
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI84-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI85
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI88-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI89
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI92-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
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
	.long	.LCFI102-.LCFI100
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI103-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI106-.LCFI104
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI107-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI109-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI110
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI113-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI114
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI117-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI120-.LCFI118
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI121-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI124-.LCFI122
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI125-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI126
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI129-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI132-.LCFI130
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI133-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI134
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI137-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI142-.LCFI138
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI143-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI144
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE70:
	.file 3 "../../../kgccfe/gnu/cpplib.h"
	.file 4 "../../../kgccfe/gnu/hashtable.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "../../../kgccfe/gnu/line-map.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "../../../include/gnu/obstack.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/time.h"
	.file 13 "../../../include/gnu/safe-ctype.h"
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
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
.LLST7:
	.long	.LFB27-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI30-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI31-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB31-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI49-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI50-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB33-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI57-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI58-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB37-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI74-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI75-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB38-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB39-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI80-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI81-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB40-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB41-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI88-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI89-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
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
.LLST24:
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
.LLST25:
	.long	.LFB45-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI103-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI104-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB46-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI107-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI108-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB48-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI113-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI114-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB49-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI117-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI118-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB50-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI122-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB51-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI125-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI126-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB52-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI129-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI130-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB16-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI133-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI134-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB53-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI137-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI138-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB54-.Ltext0
	.long	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI143-.Ltext0
	.long	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI144-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x374d
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cppmacro.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa3
	.uleb128 0x3
	.long	0xa8
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
	.long	0xb7
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
	.long	0x12b
	.uleb128 0x6
	.string	"__u_quad_t"
	.byte	0x6
	.byte	0x3c
	.long	0x13c
	.uleb128 0x6
	.string	"__dev_t"
	.byte	0x6
	.byte	0x89
	.long	0x166
	.uleb128 0x6
	.string	"__ino_t"
	.byte	0x6
	.byte	0x8c
	.long	0xfa
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x1a5
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x156
	.uleb128 0x6
	.string	"__time_t"
	.byte	0x6
	.byte	0x98
	.long	0x1a5
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa8
	.uleb128 0x6
	.string	"FILE"
	.byte	0x8
	.byte	0x2e
	.long	0x1e6
	.uleb128 0x8
	.long	0x461
	.long	.LASF1
	.byte	0x94
	.byte	0x8
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x4d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x4d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x4df
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x4ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x4f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.long	0x471
	.long	0xa8
	.uleb128 0xb
	.long	0xbe
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x477
	.uleb128 0x3
	.long	0xd3
	.uleb128 0x2
	.byte	0x4
	.long	0xd3
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0xd
	.long	0x4d3
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x4d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x4d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x490
	.uleb128 0x2
	.byte	0x4
	.long	0x1e6
	.uleb128 0xa
	.long	0x4ef
	.long	0xa8
	.uleb128 0xb
	.long	0xbe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x482
	.uleb128 0xa
	.long	0x505
	.long	0xa8
	.uleb128 0xb
	.long	0xbe
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.string	"ino_t"
	.byte	0x5
	.byte	0x32
	.long	0x187
	.uleb128 0x6
	.string	"dev_t"
	.byte	0x5
	.byte	0x3e
	.long	0x178
	.uleb128 0x6
	.string	"time_t"
	.byte	0xc
	.byte	0x4d
	.long	0x1c2
	.uleb128 0xd
	.long	0x5ff
	.string	"tm"
	.byte	0x2c
	.byte	0xc
	.byte	0x87
	.uleb128 0xe
	.string	"tm_sec"
	.byte	0xc
	.byte	0x88
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tm_min"
	.byte	0xc
	.byte	0x89
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"tm_hour"
	.byte	0xc
	.byte	0x8a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"tm_mday"
	.byte	0xc
	.byte	0x8b
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"tm_mon"
	.byte	0xc
	.byte	0x8c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"tm_year"
	.byte	0xc
	.byte	0x8d
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"tm_wday"
	.byte	0xc
	.byte	0x8e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"tm_yday"
	.byte	0xc
	.byte	0x8f
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"tm_isdst"
	.byte	0xc
	.byte	0x90
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"tm_gmtoff"
	.byte	0xc
	.byte	0x93
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"tm_zone"
	.byte	0xc
	.byte	0x94
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xd
	.long	0x647
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x9
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF2
	.byte	0x9
	.byte	0xa3
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x9
	.byte	0xa4
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"contents"
	.byte	0x9
	.byte	0xa5
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x5ff
	.uleb128 0x10
	.long	0x77a
	.string	"obstack"
	.byte	0x2c
	.byte	0x8
	.value	0x31b
	.uleb128 0xe
	.string	"chunk_size"
	.byte	0x9
	.byte	0xaa
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"chunk"
	.byte	0x9
	.byte	0xab
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"object_base"
	.byte	0x9
	.byte	0xac
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"next_free"
	.byte	0x9
	.byte	0xad
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"chunk_limit"
	.byte	0x9
	.byte	0xae
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"temp"
	.byte	0x9
	.byte	0xaf
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"alignment_mask"
	.byte	0x9
	.byte	0xb0
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"chunkfun"
	.byte	0x9
	.byte	0xb5
	.long	0x78f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"freefun"
	.byte	0x9
	.byte	0xb6
	.long	0x7a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"extra_arg"
	.byte	0x9
	.byte	0xb7
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"use_extra_arg"
	.byte	0x9
	.byte	0xbd
	.long	0xb7
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
	.long	0xb7
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
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x12
	.long	0x78f
	.byte	0x1
	.long	0x647
	.uleb128 0x13
	.long	0x1d2
	.uleb128 0x13
	.long	0x1a5
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x77a
	.uleb128 0x14
	.long	0x7a6
	.byte	0x1
	.uleb128 0x13
	.long	0x1d2
	.uleb128 0x13
	.long	0x647
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x795
	.uleb128 0x8
	.long	0x7ea
	.long	.LASF3
	.byte	0xc
	.byte	0x4
	.byte	0x19
	.uleb128 0xe
	.string	"str"
	.byte	0x4
	.byte	0x1c
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"len"
	.byte	0x4
	.byte	0x1d
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"hash_value"
	.byte	0x4
	.byte	0x1e
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x4
	.byte	0x29
	.long	0x7f5
	.uleb128 0xd
	.long	0x893
	.string	"ht"
	.byte	0x48
	.byte	0x4
	.byte	0x29
	.uleb128 0xe
	.string	"stack"
	.byte	0x4
	.byte	0x32
	.long	0x64d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"entries"
	.byte	0x4
	.byte	0x34
	.long	0x8a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"alloc_node"
	.byte	0x4
	.byte	0x36
	.long	0x8c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"nslots"
	.byte	0x4
	.byte	0x38
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"nelements"
	.byte	0x4
	.byte	0x39
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF5
	.byte	0x4
	.byte	0x3c
	.long	0xc92
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"searches"
	.byte	0x4
	.byte	0x3f
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"collisions"
	.byte	0x4
	.byte	0x40
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x6
	.string	"hashnode"
	.byte	0x4
	.byte	0x2a
	.long	0x8a3
	.uleb128 0x2
	.byte	0x4
	.long	0x7ac
	.uleb128 0x2
	.byte	0x4
	.long	0x893
	.uleb128 0x12
	.long	0x8bf
	.byte	0x1
	.long	0x893
	.uleb128 0x13
	.long	0x8bf
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x7ea
	.uleb128 0x2
	.byte	0x4
	.long	0x8af
	.uleb128 0x16
	.long	0xc92
	.long	.LASF6
	.value	0x210
	.byte	0x4
	.byte	0x28
	.uleb128 0x9
	.string	"buffer"
	.byte	0x2
	.value	0x151
	.long	0x242b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"overlaid_buffer"
	.byte	0x2
	.value	0x154
	.long	0x242b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"state"
	.byte	0x2
	.value	0x157
	.long	0x21a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF7
	.byte	0x2
	.value	0x15a
	.long	0xd52
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"map"
	.byte	0x2
	.value	0x15b
	.long	0x1dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"line"
	.byte	0x2
	.value	0x15c
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"directive_line"
	.byte	0x2
	.value	0x15f
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"a_buff"
	.byte	0x2
	.value	0x162
	.long	0x219e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"u_buff"
	.byte	0x2
	.value	0x163
	.long	0x219e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"free_buffs"
	.byte	0x2
	.value	0x164
	.long	0x219e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"base_context"
	.byte	0x2
	.value	0x167
	.long	0x20c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.long	.LASF8
	.byte	0x2
	.value	0x168
	.long	0x2431
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.long	.LASF9
	.byte	0x2
	.value	0x16b
	.long	0x243d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"next_include_file"
	.byte	0x2
	.value	0x170
	.long	0x2459
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.string	"mi_cmacro"
	.byte	0x2
	.value	0x173
	.long	0x2465
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.string	"mi_ind_cmacro"
	.byte	0x2
	.value	0x174
	.long	0x2465
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.string	"mi_valid"
	.byte	0x2
	.value	0x175
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.string	"cur_token"
	.byte	0x2
	.value	0x178
	.long	0x1faf
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.string	"base_run"
	.byte	0x2
	.value	0x179
	.long	0x2063
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.string	"cur_run"
	.byte	0x2
	.value	0x179
	.long	0x20b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.string	"lookaheads"
	.byte	0x2
	.value	0x17a
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.string	"keep_tokens"
	.byte	0x2
	.value	0x17d
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.string	"errors"
	.byte	0x2
	.value	0x180
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.string	"macro_buffer"
	.byte	0x2
	.value	0x183
	.long	0x47c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.string	"macro_buffer_len"
	.byte	0x2
	.value	0x184
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.string	"all_include_files"
	.byte	0x2
	.value	0x187
	.long	0x247f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.string	"max_include_len"
	.byte	0x2
	.value	0x18b
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.string	"first_unused_line"
	.byte	0x2
	.value	0x18e
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.string	"date"
	.byte	0x2
	.value	0x191
	.long	0x1fb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.string	"time"
	.byte	0x2
	.value	0x192
	.long	0x1fb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.string	"avoid_paste"
	.byte	0x2
	.value	0x195
	.long	0x1533
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.string	"eof"
	.byte	0x2
	.value	0x196
	.long	0x1533
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.string	"deps"
	.byte	0x2
	.value	0x199
	.long	0x248c
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.string	"hash_ob"
	.byte	0x2
	.value	0x19d
	.long	0x64d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.string	"buffer_ob"
	.byte	0x2
	.value	0x1a1
	.long	0x64d
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.string	"pragmas"
	.byte	0x2
	.value	0x1a5
	.long	0x24a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.string	"cb"
	.byte	0x2
	.value	0x1a8
	.long	0x1726
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x17
	.long	.LASF4
	.byte	0x2
	.value	0x1ab
	.long	0x24a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.string	"op_stack"
	.byte	0x2
	.value	0x1ae
	.long	0x24b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.string	"op_limit"
	.byte	0x2
	.value	0x1ae
	.long	0x24b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.string	"opts"
	.byte	0x2
	.value	0x1b1
	.long	0xf79
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x17
	.long	.LASF10
	.byte	0x2
	.value	0x1b5
	.long	0x22d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x9
	.string	"print"
	.byte	0x2
	.value	0x1b8
	.long	0x2337
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.string	"our_hashtable"
	.byte	0x2
	.value	0x1bb
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.string	"out"
	.byte	0x2
	.value	0x1c4
	.long	0x23d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.string	"saved_line"
	.byte	0x2
	.value	0x1c8
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x8cb
	.uleb128 0x18
	.long	0xccd
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
	.long	0xd52
	.string	"line_map"
	.byte	0x14
	.byte	0x7
	.byte	0x2a
	.uleb128 0xe
	.string	"to_file"
	.byte	0x7
	.byte	0x2b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to_line"
	.byte	0x7
	.byte	0x2c
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"from_line"
	.byte	0x7
	.byte	0x2d
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"included_from"
	.byte	0x7
	.byte	0x2e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"reason"
	.byte	0x7
	.byte	0x2f
	.long	0xc98
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
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0x8
	.long	0xdd0
	.long	.LASF7
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.uleb128 0xe
	.string	"maps"
	.byte	0x7
	.byte	0x36
	.long	0xdd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"allocated"
	.byte	0x7
	.byte	0x37
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"used"
	.byte	0x7
	.byte	0x38
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"last_listed"
	.byte	0x7
	.byte	0x3d
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"depth"
	.byte	0x7
	.byte	0x40
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"trace_includes"
	.byte	0x7
	.byte	0x43
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xccd
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	.LASF6
	.byte	0x3
	.byte	0x28
	.long	0x8cb
	.uleb128 0x15
	.long	.LASF11
	.byte	0x3
	.byte	0x2a
	.long	0xdf5
	.uleb128 0x8
	.long	0xf79
	.long	.LASF11
	.byte	0x58
	.byte	0x3
	.byte	0x2a
	.uleb128 0x9
	.string	"cur"
	.byte	0x2
	.value	0x114
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"backup_to"
	.byte	0x2
	.value	0x115
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF12
	.byte	0x2
	.value	0x116
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"line_base"
	.byte	0x2
	.value	0x117
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"prev"
	.byte	0x2
	.value	0x119
	.long	0x23b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"buf"
	.byte	0x2
	.value	0x11b
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"inc"
	.byte	0x2
	.value	0x11f
	.long	0x23c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.long	.LASF13
	.byte	0x2
	.value	0x123
	.long	0x23d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"col_adjust"
	.byte	0x2
	.value	0x126
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"saved_flags"
	.byte	0x2
	.value	0x129
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"last_Wtrigraphs"
	.byte	0x2
	.value	0x12d
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"warned_cplusplus_comments"
	.byte	0x2
	.value	0x133
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"from_stage3"
	.byte	0x2
	.value	0x138
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"search_cached"
	.byte	0x2
	.value	0x13c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"return_at_eof"
	.byte	0x2
	.value	0x141
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"dir"
	.byte	0x2
	.value	0x145
	.long	0x1cf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"saved_cur"
	.byte	0x2
	.value	0x148
	.long	0x1fb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.string	"saved_rlimit"
	.byte	0x2
	.value	0x148
	.long	0x1fb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x8
	.long	0x1533
	.long	.LASF14
	.byte	0x68
	.byte	0x3
	.byte	0x2b
	.uleb128 0xe
	.string	"tabstop"
	.byte	0x3
	.byte	0xe5
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"pending"
	.byte	0x3
	.byte	0xe8
	.long	0x1cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"quote_include"
	.byte	0x3
	.byte	0xeb
	.long	0x1d74
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"bracket_include"
	.byte	0x3
	.byte	0xec
	.long	0x1d74
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"map_list"
	.byte	0x3
	.byte	0xf0
	.long	0x1d8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"include_prefix"
	.byte	0x3
	.byte	0xf4
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"include_prefix_len"
	.byte	0x3
	.byte	0xf5
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"lang"
	.byte	0x3
	.byte	0xf8
	.long	0x1b82
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"verbose"
	.byte	0x3
	.byte	0xfb
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"cplusplus"
	.byte	0x3
	.byte	0xfe
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.string	"cplusplus_comments"
	.byte	0x3
	.value	0x101
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x9
	.string	"objc"
	.byte	0x3
	.value	0x105
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0x9
	.string	"discard_comments"
	.byte	0x3
	.value	0x108
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"discard_comments_in_macro_exp"
	.byte	0x3
	.value	0x10c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x9
	.string	"trigraphs"
	.byte	0x3
	.value	0x10f
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x9
	.string	"digraphs"
	.byte	0x3
	.value	0x112
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x9
	.string	"extended_numbers"
	.byte	0x3
	.value	0x115
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"print_include_names"
	.byte	0x3
	.value	0x118
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x9
	.string	"pedantic_errors"
	.byte	0x3
	.value	0x11b
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x9
	.string	"inhibit_warnings"
	.byte	0x3
	.value	0x11e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x9
	.string	"warn_deprecated"
	.byte	0x3
	.value	0x121
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"warn_system_headers"
	.byte	0x3
	.value	0x124
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"inhibit_errors"
	.byte	0x3
	.value	0x128
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"warn_comments"
	.byte	0x3
	.value	0x12b
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"warn_trigraphs"
	.byte	0x3
	.value	0x12e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"warn_import"
	.byte	0x3
	.value	0x131
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x9
	.string	"warn_multichar"
	.byte	0x3
	.value	0x134
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x9
	.string	"warn_traditional"
	.byte	0x3
	.value	0x138
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x9
	.string	"warn_long_long"
	.byte	0x3
	.value	0x13b
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"warn_endif_labels"
	.byte	0x3
	.value	0x13e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x9
	.string	"warn_num_sign_change"
	.byte	0x3
	.value	0x142
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x9
	.string	"warnings_are_errors"
	.byte	0x3
	.value	0x145
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x9
	.string	"no_output"
	.byte	0x3
	.value	0x149
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"remap"
	.byte	0x3
	.value	0x14d
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x9
	.string	"no_line_commands"
	.byte	0x3
	.value	0x150
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.string	"ignore_srcdir"
	.byte	0x3
	.value	0x154
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3b
	.uleb128 0x9
	.string	"dollars_in_ident"
	.byte	0x3
	.value	0x157
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"warn_undef"
	.byte	0x3
	.value	0x15a
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x9
	.string	"warn_unused_macros"
	.byte	0x3
	.value	0x15d
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x9
	.string	"c99"
	.byte	0x3
	.value	0x160
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x9
	.string	"std"
	.byte	0x3
	.value	0x163
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"pedantic"
	.byte	0x3
	.value	0x166
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.string	"preprocessed"
	.byte	0x3
	.value	0x16a
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x9
	.string	"no_standard_includes"
	.byte	0x3
	.value	0x16d
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x9
	.string	"no_standard_cplusplus_includes"
	.byte	0x3
	.value	0x170
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"dump_macros"
	.byte	0x3
	.value	0x173
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x9
	.string	"dump_includes"
	.byte	0x3
	.value	0x176
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"show_column"
	.byte	0x3
	.value	0x179
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"operator_names"
	.byte	0x3
	.value	0x17c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"traditional"
	.byte	0x3
	.value	0x17f
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x9
	.string	"deps"
	.byte	0x3
	.value	0x190
	.long	0x1c78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"precision"
	.byte	0x3
	.value	0x196
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"char_precision"
	.byte	0x3
	.value	0x196
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"int_precision"
	.byte	0x3
	.value	0x196
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"wchar_precision"
	.byte	0x3
	.value	0x196
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"unsigned_char"
	.byte	0x3
	.value	0x199
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"unsigned_wchar"
	.byte	0x3
	.value	0x199
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0x9
	.string	"stdc_0_in_system_headers"
	.byte	0x3
	.value	0x19c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.byte	0x0
	.uleb128 0x15
	.long	.LASF15
	.byte	0x3
	.byte	0x2c
	.long	0x153e
	.uleb128 0x8
	.long	0x1598
	.long	.LASF15
	.byte	0x10
	.byte	0x3
	.byte	0x2c
	.uleb128 0xe
	.string	"line"
	.byte	0x3
	.byte	0xb6
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"col"
	.byte	0x3
	.byte	0xb7
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"type"
	.byte	0x3
	.byte	0xb8
	.long	0x17db
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"flags"
	.byte	0x3
	.byte	0xb9
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"val"
	.byte	0x3
	.byte	0xc2
	.long	0x1bf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF16
	.byte	0x3
	.byte	0x2d
	.long	0x15a3
	.uleb128 0x8
	.long	0x15cd
	.long	.LASF16
	.byte	0x8
	.byte	0x3
	.byte	0x2d
	.uleb128 0xe
	.string	"len"
	.byte	0x3
	.byte	0xa5
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"text"
	.byte	0x3
	.byte	0xa6
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	.LASF17
	.byte	0x3
	.byte	0x2e
	.long	0x15d8
	.uleb128 0x8
	.long	0x166f
	.long	.LASF17
	.byte	0x18
	.byte	0x3
	.byte	0x2e
	.uleb128 0x9
	.string	"ident"
	.byte	0x3
	.value	0x1e6
	.long	0x7ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"arg_index"
	.byte	0x3
	.value	0x1e7
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"directive_index"
	.byte	0x3
	.value	0x1e8
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"rid_code"
	.byte	0x3
	.value	0x1e9
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"type"
	.byte	0x3
	.value	0x1ea
	.long	0x1e66
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"flags"
	.byte	0x3
	.value	0x1eb
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x9
	.string	"value"
	.byte	0x3
	.value	0x1f7
	.long	0x1f19
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF18
	.byte	0x3
	.byte	0x2f
	.long	0x167a
	.uleb128 0x8
	.long	0x1726
	.long	.LASF18
	.byte	0x14
	.byte	0x3
	.byte	0x2f
	.uleb128 0xe
	.string	"params"
	.byte	0x2
	.byte	0x49
	.long	0x1fc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x2
	.byte	0x52
	.long	0x1f8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"line"
	.byte	0x2
	.byte	0x55
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF19
	.byte	0x2
	.byte	0x58
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"paramc"
	.byte	0x2
	.byte	0x5b
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"fun_like"
	.byte	0x2
	.byte	0x5e
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"variadic"
	.byte	0x2
	.byte	0x61
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"syshdr"
	.byte	0x2
	.byte	0x64
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"used"
	.byte	0x2
	.byte	0x67
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x17db
	.long	.LASF20
	.byte	0x20
	.byte	0x3
	.byte	0x30
	.uleb128 0x9
	.string	"line_change"
	.byte	0x3
	.value	0x1a3
	.long	0x1db1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"file_change"
	.byte	0x3
	.value	0x1a4
	.long	0x1dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"include"
	.byte	0x3
	.value	0x1a5
	.long	0x1df4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"define"
	.byte	0x3
	.value	0x1a7
	.long	0x1e10
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"undef"
	.byte	0x3
	.value	0x1a8
	.long	0x1e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ident"
	.byte	0x3
	.value	0x1a9
	.long	0x1e37
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"def_pragma"
	.byte	0x3
	.value	0x1aa
	.long	0x1e4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"register_builtins"
	.byte	0x3
	.value	0x1ad
	.long	0x1e60
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x1b82
	.string	"cpp_ttype"
	.byte	0x4
	.byte	0x3
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
	.long	0x1bf6
	.string	"c_lang"
	.byte	0x4
	.byte	0x3
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
	.long	0x1c37
	.byte	0x8
	.byte	0x3
	.byte	0xbc
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x3
	.byte	0xbd
	.long	0x1c37
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x3
	.byte	0xbe
	.long	0x1c3d
	.uleb128 0x1d
	.string	"str"
	.byte	0x3
	.byte	0xbf
	.long	0x15a3
	.uleb128 0x1d
	.string	"arg_no"
	.byte	0x3
	.byte	0xc0
	.long	0xb7
	.uleb128 0x1d
	.string	"c"
	.byte	0x3
	.byte	0xc1
	.long	0xd3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x15cd
	.uleb128 0x2
	.byte	0x4
	.long	0x1c43
	.uleb128 0x3
	.long	0x1533
	.uleb128 0x1e
	.long	0x1c78
	.byte	0x4
	.byte	0x3
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
	.uleb128 0x1f
	.long	0x1ce1
	.byte	0x8
	.byte	0x3
	.value	0x183
	.uleb128 0x9
	.string	"style"
	.byte	0x3
	.value	0x185
	.long	0x1c48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"missing_files"
	.byte	0x3
	.value	0x188
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"phony_targets"
	.byte	0x3
	.value	0x18c
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"ignore_main_file"
	.byte	0x3
	.value	0x18f
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x20
	.string	"cpp_pending"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1ce1
	.uleb128 0xd
	.long	0x1d74
	.string	"search_path"
	.byte	0x20
	.byte	0x3
	.byte	0xeb
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0x86
	.long	0x1d74
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"name"
	.byte	0x2
	.byte	0x8a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0x8b
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"ino"
	.byte	0x2
	.byte	0x8e
	.long	0x505
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dev"
	.byte	0x2
	.byte	0x8f
	.long	0x512
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x2
	.byte	0x91
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"name_map"
	.byte	0x2
	.byte	0x94
	.long	0x202e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1cf5
	.uleb128 0x20
	.string	"file_name_map_list"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1d7a
	.uleb128 0x14
	.long	0x1dab
	.byte	0x1
	.uleb128 0x13
	.long	0x1dab
	.uleb128 0x13
	.long	0x1c3d
	.uleb128 0x13
	.long	0xb0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xddf
	.uleb128 0x2
	.byte	0x4
	.long	0x1d95
	.uleb128 0x14
	.long	0x1dc8
	.byte	0x1
	.uleb128 0x13
	.long	0x1dab
	.uleb128 0x13
	.long	0x1dc8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1dce
	.uleb128 0x3
	.long	0xccd
	.uleb128 0x2
	.byte	0x4
	.long	0x1db7
	.uleb128 0x14
	.long	0x1df4
	.byte	0x1
	.uleb128 0x13
	.long	0x1dab
	.uleb128 0x13
	.long	0xb7
	.uleb128 0x13
	.long	0x471
	.uleb128 0x13
	.long	0x1c3d
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1dd9
	.uleb128 0x14
	.long	0x1e10
	.byte	0x1
	.uleb128 0x13
	.long	0x1dab
	.uleb128 0x13
	.long	0xb7
	.uleb128 0x13
	.long	0x1c37
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1dfa
	.uleb128 0x14
	.long	0x1e2c
	.byte	0x1
	.uleb128 0x13
	.long	0x1dab
	.uleb128 0x13
	.long	0xb7
	.uleb128 0x13
	.long	0x1e2c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1e32
	.uleb128 0x3
	.long	0x1598
	.uleb128 0x2
	.byte	0x4
	.long	0x1e16
	.uleb128 0x14
	.long	0x1e4e
	.byte	0x1
	.uleb128 0x13
	.long	0x1dab
	.uleb128 0x13
	.long	0xb7
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1e3d
	.uleb128 0x14
	.long	0x1e60
	.byte	0x1
	.uleb128 0x13
	.long	0x1dab
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1e54
	.uleb128 0x21
	.long	0x1e9e
	.string	"node_type"
	.byte	0x4
	.byte	0x3
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
	.uleb128 0x21
	.long	0x1f19
	.string	"builtin_type"
	.byte	0x4
	.byte	0x3
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
	.uleb128 0x22
	.long	0x1f60
	.byte	0x4
	.byte	0x3
	.value	0x1ee
	.uleb128 0x23
	.long	.LASF23
	.byte	0x3
	.value	0x1ef
	.long	0x1f60
	.uleb128 0x24
	.string	"answers"
	.byte	0x3
	.value	0x1f0
	.long	0x1f6f
	.uleb128 0x24
	.string	"operator"
	.byte	0x3
	.value	0x1f4
	.long	0x17db
	.uleb128 0x24
	.string	"builtin"
	.byte	0x3
	.value	0x1f6
	.long	0x1e9e
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x166f
	.uleb128 0x20
	.string	"answer"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1f66
	.uleb128 0x6
	.string	"uchar"
	.byte	0x2
	.byte	0x20
	.long	0xd3
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x1b
	.long	0x1faf
	.byte	0x4
	.byte	0x2
	.byte	0x4f
	.uleb128 0x1d
	.string	"tokens"
	.byte	0x2
	.byte	0x50
	.long	0x1faf
	.uleb128 0x1d
	.string	"text"
	.byte	0x2
	.byte	0x51
	.long	0x1fb5
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1533
	.uleb128 0x2
	.byte	0x4
	.long	0x1fbb
	.uleb128 0x3
	.long	0x1f75
	.uleb128 0x2
	.byte	0x4
	.long	0x1c37
	.uleb128 0x15
	.long	.LASF24
	.byte	0x2
	.byte	0x6f
	.long	0x1fd1
	.uleb128 0x8
	.long	0x2018
	.long	.LASF24
	.byte	0x10
	.byte	0x2
	.byte	0x6f
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0x72
	.long	0x2018
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"base"
	.byte	0x2
	.byte	0x73
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cur"
	.byte	0x2
	.byte	0x73
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x2
	.byte	0x73
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1fd1
	.uleb128 0x20
	.string	"file_name_map"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x201e
	.uleb128 0x25
	.long	0x205d
	.string	"utoken"
	.byte	0x4
	.byte	0x2
	.byte	0x9b
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x2
	.byte	0x9c
	.long	0x1c3d
	.uleb128 0x1d
	.string	"ptoken"
	.byte	0x2
	.byte	0x9d
	.long	0x205d
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1c3d
	.uleb128 0x15
	.long	.LASF26
	.byte	0x2
	.byte	0xa1
	.long	0x206e
	.uleb128 0x8
	.long	0x20b6
	.long	.LASF26
	.byte	0x10
	.byte	0x2
	.byte	0xa1
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0xa4
	.long	0x20b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x2
	.byte	0xa4
	.long	0x20b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x2
	.byte	0xa5
	.long	0x1faf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x2
	.byte	0xa5
	.long	0x1faf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2063
	.uleb128 0x15
	.long	.LASF27
	.byte	0x2
	.byte	0xae
	.long	0x20c7
	.uleb128 0x8
	.long	0x212d
	.long	.LASF27
	.byte	0x1c
	.byte	0x2
	.byte	0xae
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0xb2
	.long	0x2198
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x2
	.byte	0xb2
	.long	0x2198
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0x2
	.byte	0xc5
	.long	0x2178
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF28
	.byte	0x2
	.byte	0xc9
	.long	0x219e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF23
	.byte	0x2
	.byte	0xcc
	.long	0x1c37
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"direct_p"
	.byte	0x2
	.byte	0xcf
	.long	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x26
	.long	0x2153
	.byte	0x8
	.byte	0x2
	.byte	0xba
	.uleb128 0xf
	.long	.LASF29
	.byte	0x2
	.byte	0xbb
	.long	0x2034
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"last"
	.byte	0x2
	.byte	0xbc
	.long	0x2034
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x26
	.long	0x2178
	.byte	0x8
	.byte	0x2
	.byte	0xc1
	.uleb128 0xe
	.string	"cur"
	.byte	0x2
	.byte	0xc2
	.long	0x1fb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF12
	.byte	0x2
	.byte	0xc3
	.long	0x1fb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1b
	.long	0x2198
	.byte	0x8
	.byte	0x2
	.byte	0xb5
	.uleb128 0x1d
	.string	"iso"
	.byte	0x2
	.byte	0xbd
	.long	0x212d
	.uleb128 0x1d
	.string	"trad"
	.byte	0x2
	.byte	0xc4
	.long	0x2153
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x20bc
	.uleb128 0x2
	.byte	0x4
	.long	0x1fc6
	.uleb128 0xd
	.long	0x22d9
	.string	"lexer_state"
	.byte	0x10
	.byte	0x2
	.byte	0xd3
	.uleb128 0xe
	.string	"in_directive"
	.byte	0x2
	.byte	0xd5
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"directive_wants_padding"
	.byte	0x2
	.byte	0xda
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"skipping"
	.byte	0x2
	.byte	0xdd
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"angled_headers"
	.byte	0x2
	.byte	0xe0
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.string	"in_expression"
	.byte	0x2
	.byte	0xe3
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"save_comments"
	.byte	0x2
	.byte	0xe7
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"lexing_comment"
	.byte	0x2
	.byte	0xea
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"va_args_ok"
	.byte	0x2
	.byte	0xed
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"poisoned_ok"
	.byte	0x2
	.byte	0xf0
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"prevent_expansion"
	.byte	0x2
	.byte	0xf3
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.string	"parsing_args"
	.byte	0x2
	.byte	0xf6
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"skip_eval"
	.byte	0x2
	.byte	0xf9
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x2337
	.long	.LASF10
	.byte	0x10
	.byte	0x2
	.byte	0xfe
	.uleb128 0xe
	.string	"n_defined"
	.byte	0x2
	.byte	0xff
	.long	0x1c37
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"n_true"
	.byte	0x2
	.value	0x100
	.long	0x1c37
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"n_false"
	.byte	0x2
	.value	0x101
	.long	0x1c37
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"n__VA_ARGS__"
	.byte	0x2
	.value	0x102
	.long	0x1c37
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x23aa
	.string	"printer"
	.byte	0x18
	.byte	0x2
	.value	0x108
	.uleb128 0x9
	.string	"outf"
	.byte	0x2
	.value	0x109
	.long	0x23aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map"
	.byte	0x2
	.value	0x10a
	.long	0x1dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"prev"
	.byte	0x2
	.value	0x10b
	.long	0x1c3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF22
	.byte	0x2
	.value	0x10c
	.long	0x1c3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"line"
	.byte	0x2
	.value	0x10d
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"printed"
	.byte	0x2
	.value	0x10e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1da
	.uleb128 0x2
	.byte	0x4
	.long	0xdf5
	.uleb128 0x20
	.string	"include_file"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23b6
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23cb
	.uleb128 0x1f
	.long	0x2425
	.byte	0x10
	.byte	0x2
	.value	0x1bf
	.uleb128 0x9
	.string	"base"
	.byte	0x2
	.value	0x1c0
	.long	0x2425
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x2
	.value	0x1c1
	.long	0x2425
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cur"
	.byte	0x2
	.value	0x1c2
	.long	0x2425
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"first_line"
	.byte	0x2
	.value	0x1c3
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f75
	.uleb128 0x2
	.byte	0x4
	.long	0xdea
	.uleb128 0x2
	.byte	0x4
	.long	0x20c7
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2443
	.uleb128 0x3
	.long	0x2437
	.uleb128 0x20
	.string	"pending_option"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x245f
	.uleb128 0x2
	.byte	0x4
	.long	0x2448
	.uleb128 0x2
	.byte	0x4
	.long	0x246b
	.uleb128 0x3
	.long	0x15cd
	.uleb128 0x20
	.string	"splay_tree_s"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2470
	.uleb128 0x20
	.string	"deps"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2485
	.uleb128 0x20
	.string	"pragma_entry"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2492
	.uleb128 0x2
	.byte	0x4
	.long	0x7f5
	.uleb128 0x20
	.string	"op"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x24ad
	.uleb128 0x15
	.long	.LASF30
	.byte	0x1
	.byte	0x1f
	.long	0x24c3
	.uleb128 0x8
	.long	0x252e
	.long	.LASF30
	.byte	0x14
	.byte	0x1
	.byte	0x1f
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x22
	.long	0x205d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"expanded"
	.byte	0x1
	.byte	0x23
	.long	0x205d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"stringified"
	.byte	0x1
	.byte	0x24
	.long	0x1c3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF19
	.byte	0x1
	.byte	0x25
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"expanded_count"
	.byte	0x1
	.byte	0x26
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x28
	.long	0x25a2
	.byte	0x1
	.string	"_cpp_warn_if_unused_macro"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.long	0xb0
	.long	.LFB21
	.long	.LFE21
	.long	.LLST0
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0x51
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF21
	.byte	0x1
	.byte	0x52
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"v"
	.byte	0x1
	.byte	0x53
	.long	0x1d2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.byte	0x57
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x2605
	.string	"new_string_token"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x1c3d
	.long	.LFB22
	.long	.LFE22
	.long	.LLST1
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0x68
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"text"
	.byte	0x1
	.byte	0x69
	.long	0x47c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.byte	0x6a
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.byte	0x6c
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x28
	.long	0x26dd
	.byte	0x1
	.string	"_cpp_builtin_macro_text"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	0x1fb5
	.long	.LFB23
	.long	.LFE23
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0x82
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF21
	.byte	0x1
	.byte	0x83
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.byte	0x85
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"number"
	.byte	0x1
	.byte	0x86
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	0x26b8
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.byte	0x92
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"name"
	.byte	0x1
	.byte	0x93
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.byte	0x94
	.long	0x2425
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"map"
	.byte	0x1
	.byte	0x95
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2e
	.string	"tt"
	.byte	0x1
	.byte	0xd0
	.long	0x51f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"tb"
	.byte	0x1
	.byte	0xd1
	.long	0x26dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x52d
	.uleb128 0x30
	.long	0x2738
	.string	"builtin_macro"
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.long	0xb0
	.long	.LFB24
	.long	.LFE24
	.long	.LLST3
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x108
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x109
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x10b
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x2768
	.string	"ustrlen"
	.byte	0x2
	.value	0x25d
	.byte	0x1
	.long	0xc5
	.long	.LFB17
	.long	.LFE17
	.long	.LLST4
	.uleb128 0x33
	.string	"s1"
	.byte	0x2
	.value	0x25c
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x27d9
	.byte	0x1
	.string	"cpp_quote_string"
	.byte	0x1
	.value	0x136
	.byte	0x1
	.long	0x47c
	.long	.LFB25
	.long	.LFE25
	.long	.LLST5
	.uleb128 0x33
	.string	"dest"
	.byte	0x1
	.value	0x133
	.long	0x2425
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.value	0x134
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x135
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.value	0x139
	.long	0x1f75
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x2905
	.string	"stringify_arg"
	.byte	0x1
	.value	0x155
	.byte	0x1
	.long	0x1c3d
	.long	.LFB26
	.long	.LFE26
	.long	.LLST6
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x153
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x154
	.long	0x2905
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"dest"
	.byte	0x1
	.value	0x156
	.long	0x47c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x157
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"escape_it"
	.byte	0x1
	.value	0x157
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"backslash_count"
	.byte	0x1
	.value	0x157
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF22
	.byte	0x1
	.value	0x158
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x159
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	0x28eb
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x15e
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	0x28c2
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x173
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x184
	.long	0x219e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x185
	.long	0x47c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x19e
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x24b8
	.uleb128 0x30
	.long	0x29ad
	.string	"paste_tokens"
	.byte	0x1
	.value	0x1ae
	.byte	0x1
	.long	0xdd6
	.long	.LFB27
	.long	.LFE27
	.long	.LLST7
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x1ac
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"plhs"
	.byte	0x1
	.value	0x1ad
	.long	0x205d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"rhs"
	.byte	0x1
	.value	0x1ad
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x1af
	.long	0x47c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"end"
	.byte	0x1
	.value	0x1af
	.long	0x47c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"lhs"
	.byte	0x1
	.value	0x1b0
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x1b1
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"valid"
	.byte	0x1
	.value	0x1b2
	.long	0xdd6
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.byte	0x0
	.uleb128 0x36
	.long	0x2a10
	.string	"paste_all_tokens"
	.byte	0x1
	.value	0x1de
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST8
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x1dc
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"lhs"
	.byte	0x1
	.value	0x1dd
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"rhs"
	.byte	0x1
	.value	0x1df
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF8
	.byte	0x1
	.value	0x1e0
	.long	0x2198
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	0x2a7a
	.byte	0x1
	.string	"_cpp_arguments_ok"
	.byte	0x1
	.value	0x210
	.byte	0x1
	.long	0xdd6
	.long	.LFB29
	.long	.LFE29
	.long	.LLST9
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x20c
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x20d
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x20e
	.long	0x2465
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"argc"
	.byte	0x1
	.value	0x20f
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x30
	.long	0x2b64
	.string	"collect_args"
	.byte	0x1
	.value	0x23b
	.byte	0x1
	.long	0x219e
	.long	.LFB30
	.long	.LFE30
	.long	.LLST10
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x239
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x23a
	.long	0x2465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x23c
	.long	0x219e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"base_buff"
	.byte	0x1
	.value	0x23c
	.long	0x219e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x23d
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"args"
	.byte	0x1
	.value	0x23e
	.long	0x2905
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x23e
	.long	0x2905
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x23f
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"argc"
	.byte	0x1
	.value	0x240
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x32
	.string	"paren_depth"
	.byte	0x1
	.value	0x254
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"ntokens"
	.byte	0x1
	.value	0x255
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x2bd3
	.string	"funlike_invocation_p"
	.byte	0x1
	.value	0x2c3
	.byte	0x1
	.long	0x219e
	.long	.LFB31
	.long	.LFE31
	.long	.LLST11
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x2c1
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x2c2
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x2c4
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"padding"
	.byte	0x1
	.value	0x2c4
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x2c51
	.string	"enter_macro_context"
	.byte	0x1
	.value	0x2ed
	.byte	0x1
	.long	0xb0
	.long	.LFB32
	.long	.LFE32
	.long	.LLST12
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x2eb
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x2ec
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x2f6
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x2fa
	.long	0x219e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x2d83
	.string	"replace_args"
	.byte	0x1
	.value	0x32c
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST13
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x328
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x329
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x32a
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"args"
	.byte	0x1
	.value	0x32b
	.long	0x2905
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x32d
	.long	0xb7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"total"
	.byte	0x1
	.value	0x32d
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"src"
	.byte	0x1
	.value	0x32e
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x32e
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"dest"
	.byte	0x1
	.value	0x32f
	.long	0x205d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x32f
	.long	0x205d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x330
	.long	0x2905
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x331
	.long	0x219e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x35c
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"from"
	.byte	0x1
	.value	0x35d
	.long	0x205d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"paste_flag"
	.byte	0x1
	.value	0x35d
	.long	0x205d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x39a
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x2dd8
	.string	"padding_token"
	.byte	0x1
	.value	0x3b2
	.byte	0x1
	.long	0x1c3d
	.long	.LFB34
	.long	.LFE34
	.long	.LLST14
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x3b0
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF22
	.byte	0x1
	.value	0x3b1
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x3b3
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x2e1d
	.string	"next_context"
	.byte	0x1
	.value	0x3c0
	.byte	0x1
	.long	0x2198
	.long	.LFB35
	.long	.LFE35
	.long	.LLST15
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x3bf
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x3c1
	.long	0x2198
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x2ea1
	.string	"push_ptoken_context"
	.byte	0x1
	.value	0x3d7
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST16
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x3d2
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x3d3
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF28
	.byte	0x1
	.value	0x3d4
	.long	0x219e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF29
	.byte	0x1
	.value	0x3d5
	.long	0x205d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x3d6
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF8
	.byte	0x1
	.value	0x3d8
	.long	0x2198
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x36
	.long	0x2f15
	.string	"push_token_context"
	.byte	0x1
	.value	0x3e8
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST17
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x3e4
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x3e5
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF29
	.byte	0x1
	.value	0x3e6
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x3e7
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF8
	.byte	0x1
	.value	0x3e9
	.long	0x2198
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x37
	.long	0x2f90
	.byte	0x1
	.string	"_cpp_push_text_context"
	.byte	0x1
	.value	0x3f9
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST18
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x3f5
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x3f6
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"start"
	.byte	0x1
	.value	0x3f7
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x3f8
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF8
	.byte	0x1
	.value	0x3fa
	.long	0x2198
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x36
	.long	0x3017
	.string	"expand_arg"
	.byte	0x1
	.value	0x40e
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST19
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x40c
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x40d
	.long	0x2905
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"capacity"
	.byte	0x1
	.value	0x40f
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"saved_warn_trad"
	.byte	0x1
	.value	0x410
	.long	0xdd6
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x421
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x305d
	.byte	0x1
	.string	"_cpp_pop_context"
	.byte	0x1
	.value	0x43d
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST20
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x43c
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF8
	.byte	0x1
	.value	0x43e
	.long	0x2198
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x30e3
	.byte	0x1
	.string	"cpp_get_token"
	.byte	0x1
	.value	0x457
	.byte	0x1
	.long	0x1c3d
	.long	.LFB41
	.long	.LFE41
	.long	.LLST21
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x456
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x458
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x35
	.long	.LASF21
	.byte	0x1
	.value	0x45c
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF8
	.byte	0x1
	.value	0x45d
	.long	0x2198
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x492
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x312c
	.byte	0x1
	.string	"cpp_sys_macro_p"
	.byte	0x1
	.value	0x4a5
	.byte	0x1
	.long	0xb0
	.long	.LFB42
	.long	.LFE42
	.long	.LLST22
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x4a4
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF21
	.byte	0x1
	.value	0x4a6
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x37
	.long	0x3164
	.byte	0x1
	.string	"cpp_scan_nooutput"
	.byte	0x1
	.value	0x4b0
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST23
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x4af
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x31ac
	.byte	0x1
	.string	"_cpp_backup_tokens"
	.byte	0x1
	.value	0x4c3
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST24
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x4c1
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x4c2
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x322a
	.string	"warn_of_redefinition"
	.byte	0x1
	.value	0x4e6
	.byte	0x1
	.long	0xdd6
	.long	.LFB45
	.long	.LFE45
	.long	.LLST25
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x4e3
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x4e4
	.long	0x2465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"macro2"
	.byte	0x1
	.value	0x4e5
	.long	0x322a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"macro1"
	.byte	0x1
	.value	0x4e7
	.long	0x322a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x4e8
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x3230
	.uleb128 0x3
	.long	0x166f
	.uleb128 0x37
	.long	0x326e
	.byte	0x1
	.string	"_cpp_free_definition"
	.byte	0x1
	.value	0x510
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST26
	.uleb128 0x33
	.string	"h"
	.byte	0x1
	.value	0x50f
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x32ca
	.byte	0x1
	.string	"_cpp_save_parameter"
	.byte	0x1
	.value	0x51e
	.byte	0x1
	.long	0xdd6
	.long	.LFB47
	.long	.LFE47
	.long	.LLST27
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x51b
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x51c
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x51d
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x30
	.long	0x333e
	.string	"parse_params"
	.byte	0x1
	.value	0x536
	.byte	0x1
	.long	0xdd6
	.long	.LFB48
	.long	.LFE48
	.long	.LLST28
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x534
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x535
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"prev_ident"
	.byte	0x1
	.value	0x537
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x53b
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x338c
	.string	"alloc_expansion_token"
	.byte	0x1
	.value	0x587
	.byte	0x1
	.long	0x1faf
	.long	.LFB49
	.long	.LFE49
	.long	.LLST29
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x585
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x586
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x33e7
	.string	"lex_expansion_token"
	.byte	0x1
	.value	0x594
	.byte	0x1
	.long	0x1faf
	.long	.LFB50
	.long	.LFE50
	.long	.LLST30
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x592
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x593
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x595
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x346e
	.string	"create_iso_definition"
	.byte	0x1
	.value	0x5ab
	.byte	0x1
	.long	0xdd6
	.long	.LFB51
	.long	.LFE51
	.long	.LLST31
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x5a9
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x5aa
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x5ac
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"ctoken"
	.byte	0x1
	.value	0x5ad
	.long	0x1c3d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x32
	.string	"ok"
	.byte	0x1
	.value	0x5b5
	.long	0xdd6
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x350d
	.byte	0x1
	.string	"_cpp_create_definition"
	.byte	0x1
	.value	0x60d
	.byte	0x1
	.long	0xdd6
	.long	.LFB52
	.long	.LFE52
	.long	.LLST32
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x60b
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x60c
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x60e
	.long	0x1f60
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x60f
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"ok"
	.byte	0x1
	.value	0x610
	.long	0xdd6
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x32
	.string	"saved_cur_token"
	.byte	0x1
	.value	0x621
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x3559
	.string	"ustrncmp"
	.byte	0x2
	.value	0x256
	.byte	0x1
	.long	0xb0
	.long	.LFB16
	.long	.LFE16
	.long	.LLST33
	.uleb128 0x33
	.string	"s1"
	.byte	0x2
	.value	0x254
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"s2"
	.byte	0x2
	.value	0x254
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"n"
	.byte	0x2
	.value	0x255
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x36
	.long	0x3618
	.string	"check_trad_stringification"
	.byte	0x1
	.value	0x65d
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST34
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x65a
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x65b
	.long	0x322a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"string"
	.byte	0x1
	.value	0x65c
	.long	0x1e2c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x65e
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x65e
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x65f
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"q"
	.byte	0x1
	.value	0x65f
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x65f
	.long	0x1fb5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x35
	.long	.LASF21
	.byte	0x1
	.value	0x673
	.long	0x2465
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x36f8
	.byte	0x1
	.string	"cpp_macro_definition"
	.byte	0x1
	.value	0x68a
	.byte	0x1
	.long	0x471
	.long	.LFB54
	.long	.LFE54
	.long	.LLST35
	.uleb128 0x31
	.long	.LASF5
	.byte	0x1
	.value	0x688
	.long	0x1dab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x689
	.long	0x2465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x68b
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x68b
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x68c
	.long	0x322a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"buffer"
	.byte	0x1
	.value	0x68d
	.long	0x47c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	0x36bf
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x6a6
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2f
	.long	0x36de
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x32
	.string	"param"
	.byte	0x1
	.value	0x6c4
	.long	0x1c37
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x6e2
	.long	0x1faf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x3708
	.long	0x9d
	.uleb128 0xb
	.long	0xbe
	.byte	0xb
	.byte	0x0
	.uleb128 0x2e
	.string	"monthnames"
	.byte	0x1
	.byte	0x76
	.long	0x3720
	.byte	0x5
	.byte	0x3
	.long	monthnames
	.uleb128 0x3
	.long	0x36f8
	.uleb128 0xa
	.long	0x3735
	.long	0xe4
	.uleb128 0xb
	.long	0xbe
	.byte	0xff
	.byte	0x0
	.uleb128 0x38
	.string	"_sch_istable"
	.byte	0xd
	.byte	0x48
	.long	0x374b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x3725
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.long	0x15b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3751
	.long	0x252e
	.string	"_cpp_warn_if_unused_macro"
	.long	0x2605
	.string	"_cpp_builtin_macro_text"
	.long	0x2768
	.string	"cpp_quote_string"
	.long	0x2a10
	.string	"_cpp_arguments_ok"
	.long	0x2f15
	.string	"_cpp_push_text_context"
	.long	0x3017
	.string	"_cpp_pop_context"
	.long	0x305d
	.string	"cpp_get_token"
	.long	0x30e3
	.string	"cpp_sys_macro_p"
	.long	0x312c
	.string	"cpp_scan_nooutput"
	.long	0x3164
	.string	"_cpp_backup_tokens"
	.long	0x3235
	.string	"_cpp_free_definition"
	.long	0x326e
	.string	"_cpp_save_parameter"
	.long	0x346e
	.string	"_cpp_create_definition"
	.long	0x3618
	.string	"cpp_macro_definition"
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
.LASF22:
	.string	"source"
.LASF18:
	.string	"cpp_macro"
.LASF32:
	.string	"len_so_far"
.LASF27:
	.string	"cpp_context"
.LASF28:
	.string	"buff"
.LASF10:
	.string	"spec_nodes"
.LASF25:
	.string	"token"
.LASF19:
	.string	"count"
.LASF11:
	.string	"cpp_buffer"
.LASF24:
	.string	"_cpp_buff"
.LASF4:
	.string	"hash_table"
.LASF26:
	.string	"tokenrun"
.LASF5:
	.string	"pfile"
.LASF7:
	.string	"line_maps"
.LASF14:
	.string	"cpp_options"
.LASF1:
	.string	"_IO_FILE"
.LASF13:
	.string	"if_stack"
.LASF31:
	.string	"result"
.LASF12:
	.string	"rlimit"
.LASF6:
	.string	"cpp_reader"
.LASF16:
	.string	"cpp_string"
.LASF2:
	.string	"limit"
.LASF21:
	.string	"node"
.LASF30:
	.string	"macro_arg"
.LASF20:
	.string	"cpp_callbacks"
.LASF23:
	.string	"macro"
.LASF17:
	.string	"cpp_hashnode"
.LASF15:
	.string	"cpp_token"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"context"
.LASF9:
	.string	"directive"
.LASF29:
	.string	"first"
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
