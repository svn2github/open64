	.file	"cppexp.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	interpret_float_suffix, @function
interpret_float_suffix:
.LFB21:
	.file 1 "../../../kgccfe/gnu/cppexp.c"
	.loc 1 98 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$36, %esp
.LCFI2:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 99 0
	movl	$0, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	$0, -4(%ebp)
	.loc 1 101 0
	jmp	.L24
.L3:
	.loc 1 102 0
	movl	12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$70, %eax
	movl	%eax, -36(%ebp)
	cmpl	$38, -36(%ebp)
	ja	.L4
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L8@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L5@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L6@GOTOFF
	.long	.L6@GOTOFF
	.long	.L4@GOTOFF
	.long	.L7@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L5@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L6@GOTOFF
	.long	.L6@GOTOFF
	.long	.L4@GOTOFF
	.long	.L7@GOTOFF
	.text
.L5:
	.loc 1 104 0
	addl	$1, -12(%ebp)
	jmp	.L2
.L7:
	.loc 1 105 0
	addl	$1, -8(%ebp)
	jmp	.L2
.L6:
	.loc 1 107 0
	addl	$1, -4(%ebp)
	jmp	.L2
.L4:
	.loc 1 109 0
	movl	$0, -32(%ebp)
	jmp	.L9
.L2:
.L24:
	.loc 1 101 0
	subl	$1, 12(%ebp)
	cmpl	$-1, 12(%ebp)
	jne	.L3
	.loc 1 112 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	cmpl	$1, %eax
	ja	.L11
	cmpl	$1, -4(%ebp)
	jbe	.L13
.L11:
	.loc 1 113 0
	movl	$0, -32(%ebp)
	jmp	.L9
.L13:
	.loc 1 115 0
	cmpl	$0, -4(%ebp)
	je	.L14
	movl	$8192, -28(%ebp)
	jmp	.L16
.L14:
	movl	$0, -28(%ebp)
.L16:
	cmpl	$0, -12(%ebp)
	jne	.L17
	cmpl	$0, -8(%ebp)
	je	.L19
	movl	$64, -20(%ebp)
	jmp	.L21
.L19:
	movl	$32, -20(%ebp)
.L21:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L22
.L17:
	movl	$16, -24(%ebp)
.L22:
	movl	-28(%ebp), %eax
	orl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L9:
	movl	-32(%ebp), %eax
	.loc 1 118 0
	leave
	ret
.LFE21:
	.size	interpret_float_suffix, .-interpret_float_suffix
	.type	interpret_int_suffix, @function
interpret_int_suffix:
.LFB22:
	.loc 1 127 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$44, %esp
.LCFI5:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 130 0
	movl	$0, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 132 0
	jmp	.L55
.L27:
	.loc 1 133 0
	movl	12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$73, %eax
	movl	%eax, -44(%ebp)
	cmpl	$44, -44(%ebp)
	ja	.L28
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L32@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L32:
	.long	.L29@GOTOFF
	.long	.L29@GOTOFF
	.long	.L28@GOTOFF
	.long	.L30@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L31@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L29@GOTOFF
	.long	.L29@GOTOFF
	.long	.L28@GOTOFF
	.long	.L30@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L28@GOTOFF
	.long	.L31@GOTOFF
	.text
.L31:
	.loc 1 135 0
	addl	$1, -12(%ebp)
	jmp	.L26
.L29:
	.loc 1 137 0
	addl	$1, -4(%ebp)
	jmp	.L26
.L30:
	.loc 1 138 0
	addl	$1, -8(%ebp)
	.loc 1 140 0
	cmpl	$2, -8(%ebp)
	jne	.L26
	movl	12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %edx
	movl	12(%ebp), %eax
	addl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	je	.L26
	.loc 1 141 0
	movl	$0, -40(%ebp)
	jmp	.L36
.L28:
	.loc 1 144 0
	movl	$0, -40(%ebp)
	jmp	.L36
.L26:
.L55:
	.loc 1 132 0
	subl	$1, 12(%ebp)
	cmpl	$-1, 12(%ebp)
	jne	.L27
	.loc 1 147 0
	cmpl	$2, -8(%ebp)
	ja	.L38
	cmpl	$1, -12(%ebp)
	ja	.L38
	cmpl	$1, -4(%ebp)
	jbe	.L41
.L38:
	.loc 1 148 0
	movl	$0, -40(%ebp)
	jmp	.L36
.L41:
	.loc 1 150 0
	cmpl	$0, -4(%ebp)
	je	.L42
	movl	$8192, -36(%ebp)
	jmp	.L44
.L42:
	movl	$0, -36(%ebp)
.L44:
	cmpl	$0, -12(%ebp)
	je	.L45
	movl	$4096, -32(%ebp)
	jmp	.L47
.L45:
	movl	$0, -32(%ebp)
.L47:
	movl	-36(%ebp), %eax
	orl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L48
	cmpl	$1, -8(%ebp)
	jne	.L50
	movl	$32, -20(%ebp)
	jmp	.L52
.L50:
	movl	$64, -20(%ebp)
.L52:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L53
.L48:
	movl	$16, -24(%ebp)
.L53:
	movl	-28(%ebp), %eax
	orl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L36:
	movl	-40(%ebp), %eax
	.loc 1 154 0
	leave
	ret
.LFE22:
	.size	interpret_int_suffix, .-interpret_int_suffix
	.section	.rodata
	.align 4
.LC0:
	.string	"too many decimal points in number"
	.align 4
.LC1:
	.string	"invalid digit \"%c\" in octal constant"
	.align 4
.LC2:
	.string	"use of C99 hexadecimal floating constant"
.LC3:
	.string	"exponent has no digits"
	.align 4
.LC4:
	.string	"hexadecimal floating constants require an exponent"
	.align 4
.LC5:
	.string	"invalid suffix \"%.*s\" on floating constant"
	.align 4
.LC6:
	.string	"traditional C rejects the \"%.*s\" suffix"
	.align 4
.LC7:
	.string	"invalid suffix \"%.*s\" on integer constant"
	.align 4
.LC8:
	.string	"use of C99 long long integer constant"
	.align 4
.LC9:
	.string	"imaginary constants are a GCC extension"
	.text
.globl cpp_classify_number
	.type	cpp_classify_number, @function
cpp_classify_number:
.LFB23:
	.loc 1 163 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$84, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 164 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 171 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	.L57
	.loc 1 172 0
	movl	$273, -56(%ebp)
	jmp	.L59
.L57:
	.loc 1 174 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	addl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 175 0
	movl	$0, -20(%ebp)
	.loc 1 176 0
	movl	$0, -32(%ebp)
	.loc 1 177 0
	movl	$10, -24(%ebp)
	.loc 1 180 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	jne	.L134
	.loc 1 182 0
	movl	$8, -24(%ebp)
	.loc 1 183 0
	addl	$1, -40(%ebp)
	.loc 1 186 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	je	.L62
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$88, %al
	jne	.L134
.L62:
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L134
	.loc 1 188 0
	movl	$16, -24(%ebp)
	.loc 1 189 0
	addl	$1, -40(%ebp)
	jmp	.L134
.L60:
.L134:
.LBB2:
	.loc 1 196 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	addl	$1, -40(%ebp)
	.loc 1 198 0
	movzbl	-16(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L65
	movzbl	-16(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L67
	cmpl	$16, -24(%ebp)
	jne	.L67
.L65:
	.loc 1 200 0
	movl	-16(%ebp), %eax
	movzbl	%al, %edx
	movl	_hex_value@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 201 0
	movl	-16(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jbe	.L60
	.loc 1 202 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 198 0
	jmp	.L60
.L67:
	.loc 1 204 0
	cmpl	$46, -16(%ebp)
	jne	.L72
	.loc 1 206 0
	cmpl	$0, -20(%ebp)
	jne	.L74
	.loc 1 207 0
	movl	$1, -20(%ebp)
	jmp	.L60
.L74:
	.loc 1 209 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L76
.L72:
	.loc 1 211 0
	cmpl	$10, -24(%ebp)
	ja	.L77
	cmpl	$101, -16(%ebp)
	je	.L79
	cmpl	$69, -16(%ebp)
	je	.L79
.L77:
	cmpl	$16, -24(%ebp)
	jne	.L81
	cmpl	$112, -16(%ebp)
	je	.L79
	cmpl	$80, -16(%ebp)
	jne	.L81
.L79:
	.loc 1 214 0
	movl	$2, -20(%ebp)
	.loc 1 215 0
	jmp	.L84
.L81:
	.loc 1 220 0
	subl	$1, -40(%ebp)
.L84:
.LBE2:
	.loc 1 225 0
	cmpl	$0, -20(%ebp)
	je	.L85
	cmpl	$8, -24(%ebp)
	jne	.L85
	.loc 1 226 0
	movl	$10, -24(%ebp)
.L85:
	.loc 1 228 0
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L88
	.loc 1 229 0
	movl	-32(%ebp), %eax
	addl	$48, %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L76
.L88:
	.loc 1 231 0
	cmpl	$0, -20(%ebp)
	je	.L90
	.loc 1 233 0
	cmpl	$16, -24(%ebp)
	jne	.L92
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L92
	movl	8(%ebp), %eax
	movzbl	423(%eax), %eax
	testb	%al, %al
	jne	.L92
	.loc 1 234 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L92:
	.loc 1 237 0
	cmpl	$2, -20(%ebp)
	jne	.L96
	.loc 1 239 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	je	.L98
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L100
.L98:
	.loc 1 240 0
	addl	$1, -40(%ebp)
.L100:
	.loc 1 243 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L101
	.loc 1 244 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L76
.L101:
	.loc 1 247 0
	addl	$1, -40(%ebp)
	.loc 1 248 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L101
	jmp	.L104
.L96:
	.loc 1 250 0
	cmpl	$16, -24(%ebp)
	jne	.L104
	.loc 1 251 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L76
.L104:
	.loc 1 253 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	interpret_float_suffix
	movl	%eax, -28(%ebp)
	.loc 1 254 0
	cmpl	$0, -28(%ebp)
	jne	.L106
	.loc 1 256 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	subl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 259 0
	movl	$0, -56(%ebp)
	jmp	.L59
.L106:
	.loc 1 263 0
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L108
	movl	8(%ebp), %eax
	movzbl	411(%eax), %eax
	testb	%al, %al
	je	.L108
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_sys_macro_p@PLT
	testl	%eax, %eax
	jne	.L108
	.loc 1 266 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	subl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L108:
	.loc 1 270 0
	orl	$2, -28(%ebp)
	jmp	.L112
.L90:
	.loc 1 274 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	interpret_int_suffix
	movl	%eax, -28(%ebp)
	.loc 1 275 0
	cmpl	$0, -28(%ebp)
	jne	.L113
	.loc 1 277 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	subl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 280 0
	movl	$0, -56(%ebp)
	jmp	.L59
.L113:
	.loc 1 285 0
	movl	8(%ebp), %eax
	movzbl	411(%eax), %eax
	testb	%al, %al
	je	.L115
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_sys_macro_p@PLT
	testl	%eax, %eax
	jne	.L115
.LBB3:
	.loc 1 287 0
	movl	-28(%ebp), %eax
	andl	$12288, %eax
	movl	%eax, -12(%ebp)
	.loc 1 288 0
	movl	-28(%ebp), %eax
	andl	$240, %eax
	cmpl	$64, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 290 0
	cmpl	$0, -12(%ebp)
	jne	.L118
	cmpl	$0, -8(%ebp)
	je	.L115
	movl	8(%ebp), %eax
	movzbl	412(%eax), %eax
	testb	%al, %al
	je	.L115
.L118:
	.loc 1 291 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	subl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L115:
.LBE3:
	.loc 1 296 0
	movl	-28(%ebp), %eax
	andl	$240, %eax
	cmpl	$64, %eax
	jne	.L121
	movl	8(%ebp), %eax
	movzbl	423(%eax), %eax
	testb	%al, %al
	jne	.L121
	movl	8(%ebp), %eax
	movzbl	412(%eax), %eax
	testb	%al, %al
	je	.L121
	.loc 1 299 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L121:
	.loc 1 301 0
	orl	$1, -28(%ebp)
.L112:
	.loc 1 304 0
	movl	-28(%ebp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L125
	movl	8(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L125
	.loc 1 305 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L125:
	.loc 1 307 0
	cmpl	$10, -24(%ebp)
	jne	.L128
	.loc 1 308 0
	orl	$256, -28(%ebp)
	jmp	.L130
.L128:
	.loc 1 309 0
	cmpl	$16, -24(%ebp)
	jne	.L131
	.loc 1 310 0
	orl	$512, -28(%ebp)
	jmp	.L130
.L131:
	.loc 1 312 0
	orl	$1024, -28(%ebp)
.L130:
	.loc 1 314 0
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L59
.L76:
	.loc 1 317 0
	movl	$0, -56(%ebp)
.L59:
	movl	-56(%ebp), %eax
	.loc 1 318 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	cpp_classify_number, .-cpp_classify_number
.globl __udivdi3
	.section	.rodata
	.align 4
.LC10:
	.string	"integer constant is too large for its type"
	.align 4
.LC11:
	.string	"integer constant is so large that it is unsigned"
	.text
.globl cpp_interpret_integer
	.type	cpp_interpret_integer, @function
cpp_interpret_integer:
.LFB24:
	.loc 1 331 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%edi
.LCFI12:
	pushl	%esi
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$140, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 335 0
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	.loc 1 336 0
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	.loc 1 337 0
	movl	20(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -52(%ebp)
	.loc 1 338 0
	movb	$0, -51(%ebp)
	.loc 1 340 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 341 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	addl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 344 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$1, %eax
	jne	.L136
	.loc 1 345 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -60(%ebp)
	movl	%edx, -56(%ebp)
	jmp	.L138
.L136:
.LBB4:
	.loc 1 349 0
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 350 0
	movl	$10, -28(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 351 0
	movb	$0, -17(%ebp)
	.loc 1 353 0
	movl	20(%ebp), %eax
	andl	$3840, %eax
	cmpl	$1024, %eax
	jne	.L139
	.loc 1 355 0
	movl	$8, -28(%ebp)
	.loc 1 356 0
	addl	$1, -40(%ebp)
	jmp	.L141
.L139:
	.loc 1 358 0
	movl	20(%ebp), %eax
	andl	$3840, %eax
	cmpl	$512, %eax
	jne	.L141
	.loc 1 360 0
	movl	$16, -28(%ebp)
	.loc 1 361 0
	addl	$2, -40(%ebp)
.L141:
	.loc 1 366 0
	movl	$-1, -48(%ebp)
	movl	$-1, -44(%ebp)
	.loc 1 367 0
	cmpl	$63, -32(%ebp)
	ja	.L143
	.loc 1 368 0
	movl	$64, %eax
	subl	-32(%ebp), %eax
	movl	%eax, %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L164
	movl	%edx, %eax
	xorl	%edx, %edx
.L164:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.L143:
	.loc 1 369 0
	movl	-28(%ebp), %esi
	movl	$0, %edi
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$1, %esi
	adcl	$0, %edi
	movl	-28(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 371 0
	jmp	.L145
.L146:
	.loc 1 373 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 375 0
	movzbl	-24(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L147
	cmpl	$16, -28(%ebp)
	jne	.L149
	movzbl	-24(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L149
.L147:
	.loc 1 376 0
	movl	-24(%ebp), %eax
	movzbl	%al, %edx
	movl	_hex_value@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 381 0
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-84(%ebp), %edx
	cmpl	-44(%ebp), %edx
	ja	.L151
	movl	-84(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	.L153
	movl	-88(%ebp), %edx
	cmpl	-48(%ebp), %edx
	jae	.L151
.L153:
	.loc 1 382 0
	movl	-60(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	-28(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %ecx
	imull	%edi, %ecx
	movl	-100(%ebp), %edx
	imull	%esi, %edx
	movl	%edx, -92(%ebp)
	addl	-92(%ebp), %ecx
	movl	-104(%ebp), %eax
	mull	%esi
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	addl	-100(%ebp), %ecx
	movl	%ecx, -100(%ebp)
	movl	-24(%ebp), %esi
	movl	$0, %edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -60(%ebp)
	movl	%edx, -56(%ebp)
	jmp	.L154
.L151:
	.loc 1 385 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %ecx
	leal	-68(%ebp), %esi
	movl	-32(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%edx, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%esi, (%esp)
	call	append_digit
	subl	$4, %esp
	.loc 1 386 0
	movzbl	-17(%ebp), %edx
	movzbl	-51(%ebp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -17(%ebp)
	.loc 1 387 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
.L154:
	.loc 1 371 0
	addl	$1, -40(%ebp)
.L145:
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L146
.L149:
	.loc 1 391 0
	cmpb	$0, -17(%ebp)
	je	.L155
	.loc 1 392 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L138
.L155:
	.loc 1 398 0
	movzbl	-52(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L138
	movl	12(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L158
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L138
.L158:
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	xorl	$1, %eax
	testb	%al, %al
	je	.L138
	.loc 1 403 0
	cmpl	$10, -28(%ebp)
	jne	.L161
	.loc 1 404 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L161:
	.loc 1 406 0
	movb	$1, -52(%ebp)
.L138:
.LBE4:
	.loc 1 410 0
	movl	-68(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-64(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-60(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 411 0
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE24:
	.size	cpp_interpret_integer, .-cpp_interpret_integer
	.type	append_digit, @function
append_digit:
.LFB25:
	.loc 1 420 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%esi
.LCFI19:
	subl	$144, %esp
.LCFI20:
	.loc 1 422 0
	cmpl	$16, 36(%ebp)
	jne	.L166
	movl	$4, -108(%ebp)
	jmp	.L168
.L166:
	movl	$3, -108(%ebp)
.L168:
	movl	-108(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 428 0
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	$64, %eax
	subl	-16(%ebp), %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L185
	movl	%edx, %eax
	xorl	%edx, %edx
.L185:
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
	.loc 1 429 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	-16(%ebp), %ecx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L186
	movl	%eax, %edx
	xorl	%eax, %eax
.L186:
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
	.loc 1 430 0
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	-16(%ebp), %ecx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L187
	movl	%eax, %edx
	xorl	%eax, %eax
.L187:
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 431 0
	movl	-52(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	20(%ebp), %esi
	movl	24(%ebp), %edi
	movl	$64, %eax
	subl	-16(%ebp), %eax
	movl	%eax, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L188
	movl	%edi, %esi
	xorl	%edi, %edi
.L188:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
	.loc 1 433 0
	cmpl	$10, 36(%ebp)
	jne	.L169
	.loc 1 435 0
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 436 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$1, %esi, %edi
	addl	%esi, %esi
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L171
.L169:
	.loc 1 439 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L171:
	.loc 1 441 0
	movl	32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-24(%ebp), %esi
	adcl	-20(%ebp), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-92(%ebp), %edi
	cmpl	-20(%ebp), %edi
	ja	.L172
	movl	-92(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L174
	movl	-96(%ebp), %edx
	cmpl	-24(%ebp), %edx
	jae	.L172
.L174:
	.loc 1 442 0
	addl	$1, -32(%ebp)
	adcl	$0, -28(%ebp)
.L172:
	.loc 1 443 0
	movl	32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%eax, -24(%ebp)
	adcl	%edx, -20(%ebp)
	.loc 1 445 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-24(%ebp), %esi
	adcl	-20(%ebp), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-76(%ebp), %edx
	cmpl	%edx, -84(%ebp)
	ja	.L175
	movl	-76(%ebp), %esi
	cmpl	%esi, -84(%ebp)
	jb	.L177
	movl	-80(%ebp), %edi
	cmpl	%edi, -88(%ebp)
	jae	.L175
.L177:
	.loc 1 446 0
	addl	$1, -32(%ebp)
	adcl	$0, -28(%ebp)
.L175:
	.loc 1 447 0
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-32(%ebp), %esi
	adcl	-28(%ebp), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	ja	.L178
	movl	-60(%ebp), %esi
	cmpl	%esi, -68(%ebp)
	jb	.L180
	movl	-64(%ebp), %edi
	cmpl	%edi, -72(%ebp)
	jae	.L178
.L180:
	.loc 1 448 0
	movb	$1, -9(%ebp)
.L178:
	.loc 1 450 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	addl	-24(%ebp), %eax
	adcl	-20(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 451 0
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	-32(%ebp), %eax
	adcl	-28(%ebp), %edx
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
	.loc 1 455 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
	.loc 1 456 0
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	.loc 1 457 0
	leal	-52(%ebp), %edx
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_trim
	subl	$4, %esp
	.loc 1 458 0
	movl	-44(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L181
	movl	-52(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L183
.L181:
	.loc 1 459 0
	movb	$1, -9(%ebp)
.L183:
	.loc 1 461 0
	movzbl	28(%ebp), %eax
	movb	%al, -36(%ebp)
	.loc 1 462 0
	movzbl	-9(%ebp), %eax
	movb	%al, -35(%ebp)
	.loc 1 463 0
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-48(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 4(%esi)
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, 8(%edi)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-36(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 16(%esi)
	.loc 1 464 0
	movl	8(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE25:
	.size	append_digit, .-append_digit
	.section	.rodata
.LC12:
	.string	"missing ')' after \"defined\""
	.align 4
.LC13:
	.string	"operator \"defined\" requires an identifier"
	.align 4
.LC14:
	.string	"(\"%s\" is an alternative token for \"%s\" in C++)"
	.align 4
.LC15:
	.string	"this use of \"defined\" may not be portable"
	.text
	.type	parse_defined, @function
parse_defined:
.LFB26:
	.loc 1 470 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$112, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 472 0
	movl	$0, -24(%ebp)
	.loc 1 473 0
	movl	$0, -20(%ebp)
	.loc 1 475 0
	movl	12(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 478 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 480 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -16(%ebp)
	.loc 1 481 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$22, %al
	jne	.L190
	.loc 1 483 0
	movl	$1, -24(%ebp)
	.loc 1 484 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -16(%ebp)
.L190:
	.loc 1 487 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$57, %al
	jne	.L192
	.loc 1 489 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 490 0
	cmpl	$0, -24(%ebp)
	je	.L197
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movzbl	6(%eax), %eax
	cmpb	$23, %al
	je	.L197
	.loc 1 492 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 493 0
	movl	$0, -20(%ebp)
	jmp	.L197
.L192:
	.loc 1 498 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 500 0
	movl	-16(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L197
.LBB5:
	.loc 1 504 0
	movb	$0, -33(%ebp)
	.loc 1 505 0
	movl	-16(%ebp), %eax
	movzbl	6(%eax), %eax
	movb	%al, -34(%ebp)
	.loc 1 506 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L197:
.LBE5:
	.loc 1 513 0
	cmpl	$0, -20(%ebp)
	je	.L199
	.loc 1 515 0
	movl	12(%ebp), %eax
	movl	100(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L201
	movl	12(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L201
	.loc 1 516 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L201:
	.loc 1 519 0
	movl	-20(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L204
	movl	-20(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L204
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movzbl	18(%edx), %eax
	orl	$8, %eax
	movb	%al, 18(%edx)
.L204:
	.loc 1 523 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 116(%edx)
.L199:
	.loc 1 526 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 528 0
	movb	$0, -44(%ebp)
	.loc 1 529 0
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	.loc 1 530 0
	movb	$0, -43(%ebp)
	.loc 1 531 0
	cmpl	$0, -20(%ebp)
	je	.L207
	movl	-20(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L207
	movl	$1, -76(%ebp)
	jmp	.L210
.L207:
	movl	$0, -76(%ebp)
.L210:
	movl	-76(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
	.loc 1 532 0
	movl	-60(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-48(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 533 0
	movl	8(%ebp), %eax
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret	$4
.LFE26:
	.size	parse_defined, .-parse_defined
	.section	.rodata
	.align 4
.LC16:
	.string	"floating constant in preprocessor expression"
	.align 4
.LC17:
	.string	"imaginary number in preprocessor expression"
.LC18:
	.string	"__bool_true_false_are_defined"
	.align 4
.LC19:
	.string	"ISO C++ does not permit \"%s\" in #if"
.LC20:
	.string	"\"%s\" is not defined"
	.text
	.type	eval_token, @function
eval_token:
.LFB27:
	.loc 1 542 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%edi
.LCFI28:
	pushl	%esi
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$76, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 545 0
	movl	$0, -24(%ebp)
	.loc 1 547 0
	movl	16(%ebp), %eax
	movzbl	6(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	cmpl	$58, -52(%ebp)
	je	.L215
	cmpl	$58, -52(%ebp)
	jg	.L217
	cmpl	$57, -52(%ebp)
	je	.L214
	jmp	.L213
.L217:
	cmpl	$60, -52(%ebp)
	jg	.L213
	jmp	.L216
.L215:
	.loc 1 550 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_classify_number@PLT
	movl	%eax, -20(%ebp)
	.loc 1 551 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	andl	$15, %edx
	movl	%edx, -48(%ebp)
	cmpl	$1, -48(%ebp)
	je	.L219
	cmpl	$2, -48(%ebp)
	je	.L220
	jmp	.L218
.L220:
	.loc 1 554 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 556 0
	jmp	.L218
.L219:
	.loc 1 558 0
	movl	-20(%ebp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L221
	.loc 1 559 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_interpret_integer@PLT
	subl	$4, %esp
	jmp	.L212
.L221:
	.loc 1 560 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L218:
	.loc 1 568 0
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 569 0
	jmp	.L224
.L216:
.LBB6:
	.loc 1 575 0
	leal	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_interpret_charconst@PLT
	movl	%eax, -16(%ebp)
	.loc 1 577 0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	.loc 1 578 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 580 0
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	jne	.L224
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jns	.L224
	.loc 1 583 0
	movl	-36(%ebp), %esi
	movl	-32(%ebp), %edi
	movl	%esi, %eax
	orb	$0, %ah
	movl	%edi, %edx
	orl	$-1, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 585 0
	movl	$-1, -44(%ebp)
	movl	$-1, -40(%ebp)
	.loc 1 586 0
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	leal	-44(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_trim
	subl	$4, %esp
	.loc 1 589 0
	jmp	.L224
.L214:
.LBE6:
	.loc 1 592 0
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	464(%eax), %eax
	cmpl	%eax, %edx
	jne	.L228
	.loc 1 593 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	parse_defined
	subl	$4, %esp
	jmp	.L212
.L228:
	.loc 1 594 0
	movl	12(%ebp), %eax
	movzbl	393(%eax), %eax
	testb	%al, %al
	je	.L230
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	468(%eax), %eax
	cmpl	%eax, %edx
	je	.L232
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	472(%eax), %eax
	cmpl	%eax, %edx
	jne	.L230
.L232:
	.loc 1 598 0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	.loc 1 599 0
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	468(%eax), %eax
	cmpl	%eax, %edx
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 603 0
	movl	12(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L224
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	$29, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_defined@PLT
	testl	%eax, %eax
	jne	.L224
	.loc 1 605 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 594 0
	jmp	.L224
.L230:
	.loc 1 611 0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	.loc 1 612 0
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	.loc 1 613 0
	movl	12(%ebp), %eax
	movzbl	421(%eax), %eax
	testb	%al, %al
	je	.L224
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L224
	.loc 1 614 0
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 617 0
	jmp	.L224
.L213:
	.loc 1 620 0
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_test_assertion@PLT
	.loc 1 621 0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	.loc 1 622 0
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
.L224:
	.loc 1 625 0
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -28(%ebp)
	.loc 1 626 0
	movb	$0, -27(%ebp)
	.loc 1 627 0
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
.L212:
	.loc 1 628 0
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE27:
	.size	eval_token, .-eval_token
	.section	.rodata
	.align 32
	.type	optab, @object
	.size	optab, 62
optab:
	.byte	0
	.byte	0
	.byte	16
	.byte	1
	.byte	12
	.byte	6
	.byte	12
	.byte	6
	.byte	14
	.byte	6
	.byte	14
	.byte	6
	.byte	15
	.byte	6
	.byte	15
	.byte	6
	.byte	15
	.byte	6
	.byte	9
	.byte	6
	.byte	7
	.byte	6
	.byte	8
	.byte	6
	.byte	13
	.byte	2
	.byte	13
	.byte	2
	.byte	10
	.byte	6
	.byte	10
	.byte	6
	.byte	16
	.byte	1
	.byte	6
	.byte	2
	.byte	5
	.byte	2
	.byte	3
	.byte	0
	.byte	4
	.byte	6
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	2
	.byte	11
	.byte	2
	.byte	12
	.byte	6
	.byte	12
	.byte	6
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.align 4
.LC21:
	.string	"missing binary operator before token \"%s\""
.LC22:
	.string	"invalid character '%c' in #if"
	.align 4
.LC23:
	.string	"invalid character '\\%03o' in #if"
	.align 4
.LC24:
	.string	"token \"%s\" is not valid in preprocessor expressions"
	.align 4
.LC25:
	.string	"void expression between '(' and ')'"
.LC26:
	.string	"#if with no expression"
	.align 4
.LC27:
	.string	"operator '%s' has no right operand"
.LC28:
	.string	" ':' without preceding '?'"
.LC29:
	.string	"unbalanced stack in #if"
	.text
.globl _cpp_parse_expr
	.type	_cpp_parse_expr, @function
_cpp_parse_expr:
.LFB28:
	.loc 1 715 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%edi
.LCFI34:
	pushl	%esi
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$156, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 716 0
	movl	8(%ebp), %eax
	movl	352(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 718 0
	movb	$1, -25(%ebp)
	.loc 1 720 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 723 0
	movl	8(%ebp), %eax
	movl	$0, 116(%eax)
	.loc 1 724 0
	movb	$0, -26(%ebp)
	.loc 1 725 0
	movl	$0, -32(%ebp)
	.loc 1 728 0
	movl	-36(%ebp), %eax
	movl	$24, 24(%eax)
	jmp	.L304
.L242:
.L304:
.LBB7:
	.loc 1 734 0
	addl	$1, -32(%ebp)
	.loc 1 735 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_get_token@PLT
	movl	%eax, -64(%ebp)
	.loc 1 736 0
	movl	-64(%ebp), %eax
	movzbl	6(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 738 0
	movl	-40(%ebp), %eax
	movl	%eax, -148(%ebp)
	cmpl	$61, -148(%ebp)
	ja	.L243
	movl	-148(%ebp), %eax
	sall	$2, %eax
	movl	.L249@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L249:
	.long	.L243@GOTOFF
	.long	.L244@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L245@GOTOFF
	.long	.L246@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L247@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L243@GOTOFF
	.long	.L247@GOTOFF
	.long	.L247@GOTOFF
	.long	.L247@GOTOFF
	.long	.L247@GOTOFF
	.long	.L248@GOTOFF
	.text
.L247:
	.loc 1 746 0
	movzbl	-25(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L250
	.loc 1 747 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L250:
	.loc 1 749 0
	movb	$0, -25(%ebp)
	.loc 1 750 0
	movl	-64(%ebp), %eax
	movl	-36(%ebp), %esi
	leal	-104(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_token
	subl	$4, %esp
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-96(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-92(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-88(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 751 0
	jmp	.L242
.L244:
	.loc 1 754 0
	cmpl	$1, -32(%ebp)
	sete	%al
	movb	%al, -26(%ebp)
	.loc 1 755 0
	jmp	.L254
.L245:
	.loc 1 757 0
	cmpb	$0, -25(%ebp)
	je	.L254
	.loc 1 758 0
	movl	$29, -40(%ebp)
	.loc 1 759 0
	jmp	.L254
.L246:
	.loc 1 761 0
	cmpb	$0, -25(%ebp)
	je	.L254
	.loc 1 762 0
	movl	$30, -40(%ebp)
	.loc 1 763 0
	jmp	.L254
.L248:
	.loc 1 765 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$172, %eax
	testl	%eax, %eax
	je	.L259
	.loc 1 766 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L259:
	.loc 1 768 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L243:
	.loc 1 772 0
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jle	.L261
	movl	-40(%ebp), %eax
	cmpl	$28, %eax
	jle	.L254
.L261:
	.loc 1 773 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L254:
	.loc 1 779 0
	movl	-40(%ebp), %eax
	movzbl	1+optab@GOTOFF(%ebx,%eax,2), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L263
	.loc 1 781 0
	movzbl	-25(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L267
	.loc 1 782 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L263:
	.loc 1 785 0
	cmpb	$0, -25(%ebp)
	je	.L267
	.loc 1 789 0
	movl	-40(%ebp), %eax
	cmpl	$23, %eax
	jne	.L269
	.loc 1 791 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	$22, %eax
	jne	.L273
	.loc 1 792 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L269:
	.loc 1 794 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	$24, %eax
	jne	.L273
	.loc 1 795 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L273:
	.loc 1 796 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	$24, %eax
	je	.L267
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	$22, %eax
	je	.L267
	.loc 1 797 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L267:
	.loc 1 801 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reduce
	movl	%eax, -36(%ebp)
	.loc 1 802 0
	cmpl	$0, -36(%ebp)
	je	.L252
	.loc 1 805 0
	movl	-40(%ebp), %eax
	cmpl	$24, %eax
	je	.L278
	.loc 1 808 0
	movl	-40(%ebp), %eax
	subl	$17, %eax
	movl	%eax, -152(%ebp)
	cmpl	$6, -152(%ebp)
	ja	.L280
	movl	-152(%ebp), %eax
	sall	$2, %eax
	movl	.L285@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L285:
	.long	.L281@GOTOFF
	.long	.L282@GOTOFF
	.long	.L281@GOTOFF
	.long	.L283@GOTOFF
	.long	.L280@GOTOFF
	.long	.L280@GOTOFF
	.long	.L242@GOTOFF
	.text
.L282:
	.loc 1 813 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-144(%ebp), %eax
	orl	%esi, %eax
	movl	-140(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L280
	.loc 1 814 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 815 0
	jmp	.L280
.L281:
	.loc 1 818 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L280
	.loc 1 819 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 820 0
	jmp	.L280
.L283:
	.loc 1 822 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	$19, %eax
	je	.L290
	.loc 1 823 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L252
.L290:
	.loc 1 824 0
	movl	-36(%ebp), %eax
	subl	$28, %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-36(%ebp), %eax
	subl	$28, %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L292
	.loc 1 825 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L280
.L292:
	.loc 1 827 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L280:
	.loc 1 832 0
	movb	$1, -25(%ebp)
	.loc 1 835 0
	addl	$28, -36(%ebp)
	movl	8(%ebp), %eax
	movl	356(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L294
	.loc 1 836 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_expand_op_stack@PLT
	movl	%eax, -36(%ebp)
.L294:
	.loc 1 838 0
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 839 0
	movl	-64(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 840 0
	jmp	.L242
.L278:
.LBE7:
	.loc 1 845 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	.L296
	movzbl	-26(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L298
	cmpl	$3, -32(%ebp)
	je	.L296
.L298:
	.loc 1 846 0
	movl	8(%ebp), %eax
	movl	$0, 116(%eax)
.L296:
	.loc 1 848 0
	movl	8(%ebp), %eax
	movl	352(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L300
	.loc 1 850 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L252:
	.loc 1 852 0
	movl	$0, -116(%ebp)
	jmp	.L302
.L300:
	.loc 1 855 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-112(%ebp), %eax
	orl	%esi, %eax
	movl	-108(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -116(%ebp)
.L302:
	movl	-116(%ebp), %eax
	.loc 1 856 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	_cpp_parse_expr, .-_cpp_parse_expr
	.section	.rodata
.LC30:
	.string	"impossible operator '%u'"
.LC31:
	.string	"missing ')' in expression"
.LC32:
	.string	"'?' without following ':'"
	.align 4
.LC33:
	.string	"integer overflow in preprocessor expression"
.LC34:
	.string	"missing '(' in expression"
	.text
	.type	reduce, @function
reduce:
.LFB29:
	.loc 1 866 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%edi
.LCFI40:
	pushl	%esi
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$236, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 869 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L306
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	$30, %eax
	jbe	.L308
.L306:
	.loc 1 872 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 873 0
	movl	$0, -160(%ebp)
	jmp	.L309
.L308:
	.loc 1 876 0
	cmpl	$22, 16(%ebp)
	jne	.L310
	.loc 1 877 0
	movl	12(%ebp), %eax
	movl	%eax, -160(%ebp)
	jmp	.L309
.L310:
	.loc 1 881 0
	movl	16(%ebp), %eax
	movzbl	optab@GOTOFF(%ebx,%eax,2), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movzbl	1+optab@GOTOFF(%ebx,%eax,2), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%ebp)
	.loc 1 882 0
	jmp	.L359
.L313:
	.loc 1 884 0
	movl	8(%ebp), %eax
	movzbl	414(%eax), %eax
	testb	%al, %al
	je	.L314
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	1+optab@GOTOFF(%ebx,%eax,2), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L314
	.loc 1 886 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_promotion
.L314:
	.loc 1 888 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -156(%ebp)
	cmpl	$30, -156(%ebp)
	ja	.L306
	movl	-156(%ebp), %eax
	sall	$2, %eax
	movl	.L330@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L330:
	.long	.L306@GOTOFF
	.long	.L318@GOTOFF
	.long	.L319@GOTOFF
	.long	.L319@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L321@GOTOFF
	.long	.L322@GOTOFF
	.long	.L322@GOTOFF
	.long	.L323@GOTOFF
	.long	.L323@GOTOFF
	.long	.L323@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L320@GOTOFF
	.long	.L318@GOTOFF
	.long	.L324@GOTOFF
	.long	.L325@GOTOFF
	.long	.L326@GOTOFF
	.long	.L327@GOTOFF
	.long	.L320@GOTOFF
	.long	.L328@GOTOFF
	.long	.L306@GOTOFF
	.long	.L306@GOTOFF
	.long	.L329@GOTOFF
	.long	.L329@GOTOFF
	.long	.L319@GOTOFF
	.long	.L319@GOTOFF
	.long	.L318@GOTOFF
	.long	.L318@GOTOFF
	.text
.L318:
	.loc 1 894 0
	movl	12(%ebp), %esi
	subl	$28, %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	leal	-72(%ebp), %ecx
	movl	%eax, 28(%esp)
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 8(%esp)
	movl	8(%edx), %eax
	movl	%eax, 12(%esp)
	movl	12(%edx), %eax
	movl	%eax, 16(%esp)
	movl	16(%edx), %eax
	movl	%eax, 20(%esp)
	movl	20(%edx), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	num_unary_op
	subl	$4, %esp
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 895 0
	jmp	.L331
.L320:
	.loc 1 904 0
	movl	12(%ebp), %esi
	subl	$28, %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %ecx
	subl	$28, %ecx
	leal	-72(%ebp), %edi
	movl	%eax, 48(%esp)
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 28(%esp)
	movl	8(%edx), %eax
	movl	%eax, 32(%esp)
	movl	12(%edx), %eax
	movl	%eax, 36(%esp)
	movl	16(%edx), %eax
	movl	%eax, 40(%esp)
	movl	20(%edx), %eax
	movl	%eax, 44(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	16(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	20(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	num_binary_op
	subl	$4, %esp
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 906 0
	jmp	.L331
.L319:
	.loc 1 912 0
	movl	12(%ebp), %esi
	subl	$28, %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %ecx
	subl	$28, %ecx
	leal	-72(%ebp), %edi
	movl	%eax, 48(%esp)
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 28(%esp)
	movl	8(%edx), %eax
	movl	%eax, 32(%esp)
	movl	12(%edx), %eax
	movl	%eax, 36(%esp)
	movl	16(%edx), %eax
	movl	%eax, 40(%esp)
	movl	20(%edx), %eax
	movl	%eax, 44(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	16(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	20(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	num_inequality_op
	subl	$4, %esp
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 914 0
	jmp	.L331
.L329:
	.loc 1 918 0
	movl	12(%ebp), %esi
	subl	$28, %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %ecx
	subl	$28, %ecx
	leal	-72(%ebp), %edi
	movl	%eax, 48(%esp)
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 28(%esp)
	movl	8(%edx), %eax
	movl	%eax, 32(%esp)
	movl	12(%edx), %eax
	movl	%eax, 36(%esp)
	movl	16(%edx), %eax
	movl	%eax, 40(%esp)
	movl	20(%edx), %eax
	movl	%eax, 44(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	16(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	20(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	num_equality_op
	subl	$4, %esp
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 920 0
	jmp	.L331
.L323:
	.loc 1 925 0
	movl	12(%ebp), %esi
	subl	$28, %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %ecx
	subl	$28, %ecx
	leal	-72(%ebp), %edi
	movl	%eax, 48(%esp)
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 28(%esp)
	movl	8(%edx), %eax
	movl	%eax, 32(%esp)
	movl	12(%edx), %eax
	movl	%eax, 36(%esp)
	movl	16(%edx), %eax
	movl	%eax, 40(%esp)
	movl	20(%edx), %eax
	movl	%eax, 44(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	16(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	20(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	num_bitwise_op
	subl	$4, %esp
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 927 0
	jmp	.L331
.L321:
	.loc 1 930 0
	movl	12(%ebp), %esi
	subl	$28, %esi
	movl	12(%ebp), %ecx
	subl	$28, %ecx
	leal	-72(%ebp), %edi
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 28(%esp)
	movl	8(%edx), %eax
	movl	%eax, 32(%esp)
	movl	12(%edx), %eax
	movl	%eax, 36(%esp)
	movl	16(%edx), %eax
	movl	%eax, 40(%esp)
	movl	20(%edx), %eax
	movl	%eax, 44(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	16(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	20(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	num_mul
	subl	$4, %esp
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 931 0
	jmp	.L331
.L322:
	.loc 1 935 0
	movl	12(%ebp), %esi
	subl	$28, %esi
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	12(%ebp), %ecx
	subl	$28, %ecx
	leal	-72(%ebp), %edi
	movl	%eax, 48(%esp)
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 28(%esp)
	movl	8(%edx), %eax
	movl	%eax, 32(%esp)
	movl	12(%edx), %eax
	movl	%eax, 36(%esp)
	movl	16(%edx), %eax
	movl	%eax, 40(%esp)
	movl	20(%edx), %eax
	movl	%eax, 44(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ecx), %eax
	movl	%eax, 16(%esp)
	movl	16(%ecx), %eax
	movl	%eax, 20(%esp)
	movl	20(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	num_div_op
	subl	$4, %esp
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-60(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 937 0
	jmp	.L331
.L325:
	.loc 1 940 0
	subl	$28, 12(%ebp)
	.loc 1 941 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-152(%ebp), %eax
	orl	%esi, %eax
	movl	-148(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L332
	.loc 1 942 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L332:
	.loc 1 943 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L334
	movl	12(%ebp), %eax
	addl	$28, %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	12(%ebp), %eax
	addl	$28, %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L336
.L334:
	movl	$1, -140(%ebp)
	jmp	.L337
.L336:
	movl	$0, -140(%ebp)
.L337:
	movl	-140(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	12(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 945 0
	movl	12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	.loc 1 946 0
	movl	12(%ebp), %eax
	movb	$0, 20(%eax)
	.loc 1 947 0
	movl	12(%ebp), %eax
	movb	$0, 21(%eax)
	.loc 1 948 0
	jmp	.L312
.L324:
	.loc 1 951 0
	subl	$28, 12(%ebp)
	.loc 1 952 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L338
	.loc 1 953 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L338:
	.loc 1 954 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L340
	movl	12(%ebp), %eax
	addl	$28, %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	12(%ebp), %eax
	addl	$28, %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L340
	movl	$1, -108(%ebp)
	jmp	.L343
.L340:
	movl	$0, -108(%ebp)
.L343:
	movl	-108(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	12(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 956 0
	movl	12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	.loc 1 957 0
	movl	12(%ebp), %eax
	movb	$0, 20(%eax)
	.loc 1 958 0
	movl	12(%ebp), %eax
	movb	$0, 21(%eax)
	.loc 1 959 0
	jmp	.L312
.L328:
	.loc 1 962 0
	cmpl	$23, 16(%ebp)
	je	.L344
	.loc 1 964 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 965 0
	movl	$0, -160(%ebp)
	jmp	.L309
.L344:
	.loc 1 967 0
	subl	$28, 12(%ebp)
	.loc 1 968 0
	movl	12(%ebp), %edx
	addl	$28, %edx
	movl	12(%ebp), %ecx
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	.loc 1 969 0
	movl	12(%ebp), %edx
	movl	%edx, -160(%ebp)
	jmp	.L309
.L327:
	.loc 1 972 0
	subl	$56, 12(%ebp)
	.loc 1 973 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L346
	.loc 1 975 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 976 0
	movl	12(%ebp), %edx
	addl	$28, %edx
	movl	12(%ebp), %ecx
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	jmp	.L348
.L346:
	.loc 1 979 0
	movl	12(%ebp), %edx
	addl	$56, %edx
	movl	12(%ebp), %ecx
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
.L348:
	.loc 1 980 0
	movl	12(%ebp), %eax
	addl	$28, %eax
	movzbl	20(%eax), %eax
	testb	%al, %al
	jne	.L349
	movl	12(%ebp), %eax
	addl	$56, %eax
	movzbl	20(%eax), %eax
	testb	%al, %al
	je	.L351
.L349:
	movl	$1, -76(%ebp)
	jmp	.L352
.L351:
	movl	$0, -76(%ebp)
.L352:
	movzbl	-76(%ebp), %edx
	movl	12(%ebp), %eax
	movb	%dl, 20(%eax)
	.loc 1 982 0
	jmp	.L312
.L326:
	.loc 1 985 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 986 0
	movl	$0, -160(%ebp)
	jmp	.L309
.L331:
	.loc 1 992 0
	subl	$28, 12(%ebp)
	.loc 1 993 0
	movl	12(%ebp), %eax
	movzbl	21(%eax), %eax
	testb	%al, %al
	je	.L312
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L312
	.loc 1 994 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L312:
.L359:
	.loc 1 882 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	optab@GOTOFF(%ebx,%eax,2), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	ja	.L313
	.loc 1 998 0
	cmpl	$23, 16(%ebp)
	jne	.L356
	.loc 1 1000 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1001 0
	movl	$0, -160(%ebp)
	jmp	.L309
.L356:
	.loc 1 1004 0
	movl	12(%ebp), %ecx
	movl	%ecx, -160(%ebp)
.L309:
	movl	-160(%ebp), %eax
	.loc 1 1005 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	reduce, .-reduce
.globl _cpp_expand_op_stack
	.type	_cpp_expand_op_stack, @function
_cpp_expand_op_stack:
.LFB30:
	.loc 1 1011 0
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
	.loc 1 1012 0
	movl	8(%ebp), %eax
	movl	356(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	352(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	imull	$-1227133513, %eax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1013 0
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	addl	$20, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1015 0
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	8(%ebp), %eax
	movl	352(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 352(%eax)
	.loc 1 1017 0
	movl	8(%ebp), %eax
	movl	352(%eax), %ecx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 356(%eax)
	.loc 1 1019 0
	movl	8(%ebp), %eax
	movl	352(%eax), %ecx
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %eax
	.loc 1 1020 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	_cpp_expand_op_stack, .-_cpp_expand_op_stack
	.section	.rodata
	.align 4
.LC35:
	.string	"the left operand of \"%s\" changes sign when promoted"
	.align 4
.LC36:
	.string	"the right operand of \"%s\" changes sign when promoted"
	.text
	.type	check_promotion, @function
check_promotion:
.LFB31:
	.loc 1 1028 0
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
	.loc 1 1029 0
	movl	12(%ebp), %eax
	movzbl	20(%eax), %edx
	movl	12(%ebp), %eax
	subl	$28, %eax
	movzbl	20(%eax), %eax
	cmpb	%al, %dl
	je	.L370
	.loc 1 1032 0
	movl	12(%ebp), %eax
	movzbl	20(%eax), %eax
	testb	%al, %al
	je	.L365
	.loc 1 1034 0
	movl	8(%ebp), %eax
	movl	444(%eax), %eax
	movl	12(%ebp), %edx
	subl	$28, %edx
	movl	%eax, 20(%esp)
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	movl	8(%edx), %eax
	movl	%eax, 4(%esp)
	movl	12(%edx), %eax
	movl	%eax, 8(%esp)
	movl	16(%edx), %eax
	movl	%eax, 12(%esp)
	movl	20(%edx), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	xorl	$1, %eax
	testb	%al, %al
	je	.L370
	.loc 1 1035 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	jmp	.L370
.L365:
	.loc 1 1039 0
	movl	8(%ebp), %eax
	movl	444(%eax), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	movl	8(%edx), %eax
	movl	%eax, 4(%esp)
	movl	12(%edx), %eax
	movl	%eax, 8(%esp)
	movl	16(%edx), %eax
	movl	%eax, 12(%esp)
	movl	20(%edx), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	xorl	$1, %eax
	testb	%al, %al
	je	.L370
	.loc 1 1040 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_token_as_text@PLT
	movl	%eax, 12(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L370:
	.loc 1 1043 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	check_promotion, .-check_promotion
	.type	num_trim, @function
num_trim:
.LFB32:
	.loc 1 1050 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%edi
.LCFI54:
	pushl	%esi
.LCFI55:
	subl	$16, %esp
.LCFI56:
	.loc 1 1051 0
	cmpl	$64, 32(%ebp)
	jbe	.L372
	.loc 1 1053 0
	subl	$64, 32(%ebp)
	.loc 1 1054 0
	cmpl	$63, 32(%ebp)
	ja	.L376
	.loc 1 1055 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	32(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L381
	movl	%eax, %edx
	xorl	%eax, %eax
.L381:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-24(%ebp), %eax
	andl	%esi, %eax
	movl	-20(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	jmp	.L376
.L372:
	.loc 1 1059 0
	cmpl	$63, 32(%ebp)
	ja	.L377
	.loc 1 1060 0
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	32(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L380
	movl	%eax, %edx
	xorl	%eax, %eax
.L380:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-16(%ebp), %eax
	andl	%esi, %eax
	movl	-12(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
.L377:
	.loc 1 1061 0
	movl	$0, 12(%ebp)
	movl	$0, 16(%ebp)
.L376:
	.loc 1 1064 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1065 0
	movl	8(%ebp), %eax
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE32:
	.size	num_trim, .-num_trim
	.type	num_positive, @function
num_positive:
.LFB33:
	.loc 1 1072 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%edi
.LCFI59:
	pushl	%esi
.LCFI60:
	subl	$4, %esp
.LCFI61:
	.loc 1 1073 0
	cmpl	$64, 28(%ebp)
	jbe	.L383
	.loc 1 1075 0
	subl	$64, 28(%ebp)
	.loc 1 1076 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L388
	movl	%edi, %esi
	xorl	%edi, %edi
.L388:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	jmp	.L385
.L383:
	.loc 1 1079 0
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L387
	movl	%edi, %esi
	xorl	%edi, %edi
.L387:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L385:
	movl	-12(%ebp), %eax
	.loc 1 1080 0
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	num_positive, .-num_positive
.globl cpp_num_sign_extend
	.type	cpp_num_sign_extend, @function
cpp_num_sign_extend:
.LFB34:
	.loc 1 1088 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%edi
.LCFI64:
	pushl	%esi
.LCFI65:
	subl	$16, %esp
.LCFI66:
	.loc 1 1089 0
	movzbl	28(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L390
	.loc 1 1091 0
	cmpl	$64, 32(%ebp)
	jbe	.L392
	.loc 1 1093 0
	subl	$64, 32(%ebp)
	.loc 1 1094 0
	cmpl	$63, 32(%ebp)
	ja	.L390
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L404
	movl	%edx, %eax
	xorl	%edx, %edx
.L404:
	andl	$1, %eax
	testb	%al, %al
	je	.L390
	.loc 1 1096 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	$64, %eax
	subl	32(%ebp), %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L403
	movl	%edx, %eax
	xorl	%edx, %edx
.L403:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-24(%ebp), %eax
	orl	%esi, %eax
	movl	-20(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	jmp	.L390
.L392:
	.loc 1 1098 0
	movl	20(%ebp), %esi
	movl	24(%ebp), %edi
	movl	32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L402
	movl	%edx, %eax
	xorl	%edx, %edx
.L402:
	andl	$1, %eax
	testb	%al, %al
	je	.L390
	.loc 1 1100 0
	cmpl	$63, 32(%ebp)
	ja	.L398
	.loc 1 1101 0
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	$64, %eax
	subl	32(%ebp), %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L401
	movl	%edx, %eax
	xorl	%edx, %edx
.L401:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-16(%ebp), %eax
	orl	%esi, %eax
	movl	-12(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
.L398:
	.loc 1 1102 0
	movl	$-1, 12(%ebp)
	movl	$-1, 16(%ebp)
.L390:
	.loc 1 1106 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1107 0
	movl	8(%ebp), %eax
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE34:
	.size	cpp_num_sign_extend, .-cpp_num_sign_extend
	.type	num_negate, @function
num_negate:
.LFB35:
	.loc 1 1114 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%edi
.LCFI69:
	pushl	%esi
.LCFI70:
	subl	$80, %esp
.LCFI71:
	.loc 1 1117 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1118 0
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	.loc 1 1119 0
	movl	20(%ebp), %esi
	movl	24(%ebp), %edi
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
	.loc 1 1120 0
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L406
	.loc 1 1121 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
.L406:
	.loc 1 1122 0
	leal	12(%ebp), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_trim
	subl	$4, %esp
	.loc 1 1123 0
	movzbl	28(%ebp), %eax
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L408
	movl	20(%ebp), %esi
	movl	24(%ebp), %edi
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L408
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L408
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L408
	movl	$1, -52(%ebp)
	jmp	.L413
.L408:
	movl	$0, -52(%ebp)
.L413:
	movzbl	-52(%ebp), %eax
	movb	%al, 29(%ebp)
	.loc 1 1125 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1126 0
	movl	8(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE35:
	.size	num_negate, .-num_negate
	.type	num_greater_eq, @function
num_greater_eq:
.LFB36:
	.loc 1 1133 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%edi
.LCFI74:
	pushl	%esi
.LCFI75:
	subl	$88, %esp
.LCFI76:
	.loc 1 1136 0
	movzbl	24(%ebp), %eax
	testb	%al, %al
	jne	.L416
	movzbl	44(%ebp), %eax
	testb	%al, %al
	je	.L418
.L416:
	movl	$1, -68(%ebp)
	jmp	.L419
.L418:
	movl	$0, -68(%ebp)
.L419:
	movzbl	-68(%ebp), %eax
	movb	%al, -9(%ebp)
	.loc 1 1138 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L420
	.loc 1 1142 0
	movl	48(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	movb	%al, -9(%ebp)
	.loc 1 1144 0
	movl	48(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	movl	32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	cmpb	-9(%ebp), %al
	je	.L420
	.loc 1 1145 0
	movzbl	-9(%ebp), %edx
	movl	%edx, -64(%ebp)
	jmp	.L423
.L420:
	.loc 1 1150 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	28(%ebp), %eax
	movl	32(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-44(%ebp), %edx
	cmpl	%edx, -52(%ebp)
	ja	.L424
	movl	-44(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jb	.L426
	movl	-48(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	ja	.L424
.L426:
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	28(%ebp), %eax
	movl	32(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L427
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-28(%ebp), %edx
	cmpl	%edx, -36(%ebp)
	jb	.L427
	movl	-28(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	ja	.L424
	movl	-32(%ebp), %edx
	cmpl	%edx, -40(%ebp)
	jb	.L427
.L424:
	movl	$1, -60(%ebp)
	jmp	.L430
.L427:
	movl	$0, -60(%ebp)
.L430:
	movzbl	-60(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
.L423:
	movl	-64(%ebp), %eax
	.loc 1 1151 0
	addl	$88, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	num_greater_eq, .-num_greater_eq
	.type	num_bitwise_op, @function
num_bitwise_op:
.LFB37:
	.loc 1 1159 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%edi
.LCFI79:
	pushl	%esi
.LCFI80:
	subl	$56, %esp
.LCFI81:
	.loc 1 1160 0
	movb	$0, 33(%ebp)
	.loc 1 1161 0
	movzbl	32(%ebp), %eax
	testb	%al, %al
	jne	.L433
	movzbl	52(%ebp), %eax
	testb	%al, %al
	je	.L435
.L433:
	movl	$1, -60(%ebp)
	jmp	.L436
.L435:
	movl	$0, -60(%ebp)
.L436:
	movzbl	-60(%ebp), %eax
	movb	%al, 32(%ebp)
	.loc 1 1165 0
	cmpl	$9, 56(%ebp)
	jne	.L437
	.loc 1 1167 0
	movl	24(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	44(%ebp), %esi
	movl	48(%ebp), %edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	.loc 1 1168 0
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	36(%ebp), %esi
	movl	40(%ebp), %edi
	movl	-48(%ebp), %eax
	andl	%esi, %eax
	movl	-44(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, 16(%ebp)
	movl	%edx, 20(%ebp)
	jmp	.L439
.L437:
	.loc 1 1170 0
	cmpl	$10, 56(%ebp)
	jne	.L440
	.loc 1 1172 0
	movl	24(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	44(%ebp), %esi
	movl	48(%ebp), %edi
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	.loc 1 1173 0
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	36(%ebp), %esi
	movl	40(%ebp), %edi
	movl	-32(%ebp), %eax
	orl	%esi, %eax
	movl	-28(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 16(%ebp)
	movl	%edx, 20(%ebp)
	jmp	.L439
.L440:
	.loc 1 1177 0
	movl	24(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	44(%ebp), %esi
	movl	48(%ebp), %edi
	movl	-24(%ebp), %eax
	xorl	%esi, %eax
	movl	-20(%ebp), %edx
	xorl	%edi, %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	.loc 1 1178 0
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	36(%ebp), %esi
	movl	40(%ebp), %edi
	movl	-16(%ebp), %eax
	xorl	%esi, %eax
	movl	-12(%ebp), %edx
	xorl	%edi, %edx
	movl	%eax, 16(%ebp)
	movl	%edx, 20(%ebp)
.L439:
	.loc 1 1181 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1182 0
	movl	8(%ebp), %eax
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE37:
	.size	num_bitwise_op, .-num_bitwise_op
	.type	num_inequality_op, @function
num_inequality_op:
.LFB38:
	.loc 1 1190 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%edi
.LCFI84:
	pushl	%esi
.LCFI85:
	subl	$80, %esp
.LCFI86:
	.loc 1 1191 0
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	movl	%eax, 40(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_greater_eq
	movb	%al, -9(%ebp)
	.loc 1 1193 0
	cmpl	$27, 56(%ebp)
	jne	.L444
	.loc 1 1194 0
	movzbl	-9(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	jmp	.L446
.L444:
	.loc 1 1195 0
	cmpl	$3, 56(%ebp)
	jne	.L447
	.loc 1 1196 0
	movzbl	-9(%ebp), %ecx
	xorl	$1, %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	jmp	.L446
.L447:
	.loc 1 1197 0
	cmpl	$2, 56(%ebp)
	jne	.L449
	.loc 1 1198 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L451
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L453
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L451
.L453:
	movl	$1, -32(%ebp)
	jmp	.L455
.L451:
	movl	$0, -32(%ebp)
.L455:
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	jmp	.L446
.L449:
	.loc 1 1200 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L456
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L458
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L458
.L456:
	movl	$1, -28(%ebp)
	jmp	.L460
.L458:
	movl	$0, -28(%ebp)
.L460:
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
.L446:
	.loc 1 1202 0
	movl	$0, 16(%ebp)
	movl	$0, 20(%ebp)
	.loc 1 1203 0
	movb	$0, 33(%ebp)
	.loc 1 1204 0
	movb	$0, 32(%ebp)
	.loc 1 1205 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1206 0
	movl	8(%ebp), %eax
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE38:
	.size	num_inequality_op, .-num_inequality_op
	.type	num_equality_op, @function
num_equality_op:
.LFB39:
	.loc 1 1214 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%edi
.LCFI89:
	pushl	%esi
.LCFI90:
	subl	$20, %esp
.LCFI91:
	.loc 1 1216 0
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L463
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L463
	movl	$1, -28(%ebp)
	jmp	.L466
.L463:
	movl	$0, -28(%ebp)
.L466:
	movzbl	-28(%ebp), %eax
	movb	%al, -9(%ebp)
	.loc 1 1217 0
	cmpl	$26, 56(%ebp)
	jne	.L467
	.loc 1 1218 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	movb	%al, -9(%ebp)
.L467:
	.loc 1 1219 0
	movzbl	-9(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	.loc 1 1220 0
	movl	$0, 16(%ebp)
	movl	$0, 20(%ebp)
	.loc 1 1221 0
	movb	$0, 33(%ebp)
	.loc 1 1222 0
	movb	$0, 32(%ebp)
	.loc 1 1223 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1224 0
	movl	8(%ebp), %eax
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE39:
	.size	num_equality_op, .-num_equality_op
	.type	num_rshift, @function
num_rshift:
.LFB40:
	.loc 1 1231 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%edi
.LCFI94:
	pushl	%esi
.LCFI95:
	subl	$80, %esp
.LCFI96:
	.loc 1 1234 0
	movzbl	28(%ebp), %eax
	testb	%al, %al
	jne	.L471
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	testb	%al, %al
	je	.L473
.L471:
	.loc 1 1235 0
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 1234 0
	jmp	.L474
.L473:
	.loc 1 1237 0
	movl	$-1, -16(%ebp)
	movl	$-1, -12(%ebp)
.L474:
	.loc 1 1239 0
	movl	36(%ebp), %eax
	cmpl	32(%ebp), %eax
	jb	.L475
	.loc 1 1240 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	jmp	.L477
.L475:
	.loc 1 1244 0
	cmpl	$63, 32(%ebp)
	ja	.L478
	.loc 1 1245 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	32(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L491
	movl	%esi, %edi
	xorl	%esi, %esi
.L491:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
	jmp	.L480
.L478:
	.loc 1 1246 0
	cmpl	$127, 32(%ebp)
	ja	.L480
	.loc 1 1247 0
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	32(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L490
	movl	%esi, %edi
	xorl	%esi, %esi
.L490:
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
.L480:
	.loc 1 1249 0
	cmpl	$63, 36(%ebp)
	jbe	.L482
	.loc 1 1251 0
	subl	$64, 36(%ebp)
	.loc 1 1252 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
	.loc 1 1253 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
.L482:
	.loc 1 1256 0
	cmpl	$0, 36(%ebp)
	je	.L477
	.loc 1 1258 0
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L486
	movl	%edi, %esi
	xorl	%edi, %edi
.L486:
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	$64, %eax
	subl	36(%ebp), %eax
	movl	%eax, %ecx
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L487
	movl	%esi, %edi
	xorl	%esi, %esi
.L487:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
	.loc 1 1259 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L488
	movl	%edi, %esi
	xorl	%edi, %edi
.L488:
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	movl	$64, %eax
	subl	36(%ebp), %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L489
	movl	%esi, %edi
	xorl	%esi, %esi
.L489:
	movl	-32(%ebp), %eax
	orl	%esi, %eax
	movl	-28(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
.L477:
	.loc 1 1263 0
	leal	12(%ebp), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_trim
	subl	$4, %esp
	.loc 1 1264 0
	movb	$0, 29(%ebp)
	.loc 1 1265 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, (%edi)
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 8(%esi)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, 12(%edi)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1266 0
	movl	8(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE40:
	.size	num_rshift, .-num_rshift
	.type	num_lshift, @function
num_lshift:
.LFB41:
	.loc 1 1273 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%edi
.LCFI99:
	pushl	%esi
.LCFI100:
	subl	$112, %esp
.LCFI101:
	.loc 1 1274 0
	movl	36(%ebp), %eax
	cmpl	32(%ebp), %eax
	jb	.L493
	.loc 1 1276 0
	movzbl	28(%ebp), %eax
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L495
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L495
	movl	$1, -84(%ebp)
	jmp	.L498
.L495:
	movl	$0, -84(%ebp)
.L498:
	movzbl	-84(%ebp), %eax
	movb	%al, 29(%ebp)
	.loc 1 1277 0
	movl	$0, 20(%ebp)
	movl	$0, 24(%ebp)
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	jmp	.L499
.L493:
.LBB8:
	.loc 1 1282 0
	movl	36(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1284 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1285 0
	cmpl	$63, -12(%ebp)
	jbe	.L500
	.loc 1 1287 0
	subl	$64, -12(%ebp)
	.loc 1 1288 0
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	.loc 1 1289 0
	movl	$0, 20(%ebp)
	movl	$0, 24(%ebp)
.L500:
	.loc 1 1291 0
	cmpl	$0, -12(%ebp)
	je	.L502
	.loc 1 1293 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L511
	movl	%esi, %edi
	xorl	%esi, %esi
.L511:
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	20(%ebp), %esi
	movl	24(%ebp), %edi
	movl	$64, %eax
	subl	-12(%ebp), %eax
	movl	%eax, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L512
	movl	%edi, %esi
	xorl	%edi, %edi
.L512:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, 12(%ebp)
	movl	%edx, 16(%ebp)
	.loc 1 1294 0
	movl	20(%ebp), %eax
	movl	24(%ebp), %edx
	movl	-12(%ebp), %ecx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L513
	movl	%eax, %edx
	xorl	%eax, %eax
.L513:
	movl	%eax, 20(%ebp)
	movl	%edx, 24(%ebp)
.L502:
	.loc 1 1296 0
	leal	12(%ebp), %edx
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_trim
	subl	$4, %esp
	.loc 1 1298 0
	movzbl	28(%ebp), %eax
	testb	%al, %al
	je	.L504
	.loc 1 1299 0
	movb	$0, 29(%ebp)
	jmp	.L499
.L504:
	.loc 1 1302 0
	leal	-52(%ebp), %edx
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_rshift
	subl	$4, %esp
	.loc 1 1303 0
	movl	-24(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L506
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L508
.L506:
	movl	$1, -60(%ebp)
	jmp	.L509
.L508:
	movl	$0, -60(%ebp)
.L509:
	movzbl	-60(%ebp), %eax
	movb	%al, 29(%ebp)
.L499:
.LBE8:
	.loc 1 1307 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, (%edi)
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 8(%esi)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, 12(%edi)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1308 0
	movl	8(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE41:
	.size	num_lshift, .-num_lshift
	.section	.rodata
	.align 4
.LC37:
	.string	"traditional C rejects the unary plus operator"
	.text
	.type	num_unary_op, @function
num_unary_op:
.LFB42:
	.loc 1 1316 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	pushl	%edi
.LCFI104:
	pushl	%esi
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$92, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1317 0
	movl	36(%ebp), %eax
	movl	%eax, -68(%ebp)
	cmpl	$29, -68(%ebp)
	je	.L517
	cmpl	$30, -68(%ebp)
	je	.L518
	cmpl	$16, -68(%ebp)
	je	.L516
	jmp	.L515
.L517:
	.loc 1 1320 0
	movl	12(%ebp), %eax
	movzbl	411(%eax), %eax
	testb	%al, %al
	je	.L519
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L519
	.loc 1 1321 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L519:
	.loc 1 1323 0
	movb	$0, 33(%ebp)
	.loc 1 1324 0
	jmp	.L522
.L518:
	.loc 1 1327 0
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	leal	16(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
	.loc 1 1328 0
	jmp	.L522
.L516:
	.loc 1 1331 0
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	%eax, 16(%ebp)
	movl	%edx, 20(%ebp)
	.loc 1 1332 0
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	.loc 1 1333 0
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	leal	-56(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_trim
	subl	$4, %esp
	movl	-56(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, 28(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, 32(%ebp)
	.loc 1 1334 0
	movb	$0, 33(%ebp)
	.loc 1 1335 0
	jmp	.L522
.L515:
	.loc 1 1338 0
	movl	24(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, 24(%ebp)
	movl	%edx, 28(%ebp)
	.loc 1 1339 0
	movl	$0, 16(%ebp)
	movl	$0, 20(%ebp)
	.loc 1 1340 0
	movb	$0, 33(%ebp)
	.loc 1 1341 0
	movb	$0, 32(%ebp)
.L522:
	.loc 1 1345 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1346 0
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE42:
	.size	num_unary_op, .-num_unary_op
	.section	.rodata
	.align 4
.LC38:
	.string	"comma operator in operand of #if"
	.text
	.type	num_binary_op, @function
num_binary_op:
.LFB43:
	.loc 1 1354 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	pushl	%edi
.LCFI110:
	pushl	%esi
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$188, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1356 0
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1360 0
	movl	56(%ebp), %eax
	subl	$4, %eax
	movl	%eax, -152(%ebp)
	cmpl	$11, -152(%ebp)
	ja	.L525
	movl	-152(%ebp), %eax
	sall	$2, %eax
	movl	.L530@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L530:
	.long	.L526@GOTOFF
	.long	.L527@GOTOFF
	.long	.L525@GOTOFF
	.long	.L525@GOTOFF
	.long	.L525@GOTOFF
	.long	.L525@GOTOFF
	.long	.L525@GOTOFF
	.long	.L525@GOTOFF
	.long	.L528@GOTOFF
	.long	.L528@GOTOFF
	.long	.L529@GOTOFF
	.long	.L529@GOTOFF
	.text
.L528:
	.loc 1 1365 0
	movzbl	52(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L531
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	movl	40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	xorl	$1, %eax
	testb	%al, %al
	je	.L531
	.loc 1 1368 0
	cmpl	$13, 56(%ebp)
	jne	.L534
	.loc 1 1369 0
	movl	$12, 56(%ebp)
	jmp	.L536
.L534:
	.loc 1 1371 0
	movl	$13, 56(%ebp)
.L536:
	.loc 1 1372 0
	leal	36(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
.L531:
	.loc 1 1374 0
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L537
	.loc 1 1375 0
	movl	$-1, -32(%ebp)
	jmp	.L539
.L537:
	.loc 1 1377 0
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	movl	%eax, -32(%ebp)
.L539:
	.loc 1 1378 0
	cmpl	$13, 56(%ebp)
	jne	.L540
	.loc 1 1379 0
	leal	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_lshift
	subl	$4, %esp
	jmp	.L543
.L540:
	.loc 1 1381 0
	leal	-88(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_rshift
	subl	$4, %esp
	movl	-88(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, 28(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, 32(%ebp)
	.loc 1 1382 0
	jmp	.L543
.L529:
.LBB9:
	.loc 1 1388 0
	movzbl	32(%ebp), %eax
	testb	%al, %al
	jne	.L544
	movzbl	52(%ebp), %eax
	testb	%al, %al
	je	.L546
.L544:
	movl	$1, -148(%ebp)
	jmp	.L547
.L546:
	movl	$0, -148(%ebp)
.L547:
	movzbl	-148(%ebp), %edx
	movb	%dl, -26(%ebp)
	.loc 1 1390 0
	movl	-36(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_greater_eq
	movb	%al, -27(%ebp)
	.loc 1 1391 0
	cmpl	$14, 56(%ebp)
	jne	.L548
	.loc 1 1392 0
	movzbl	-27(%ebp), %eax
	xorl	$1, %eax
	movb	%al, -27(%ebp)
.L548:
	.loc 1 1393 0
	movzbl	-27(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L550
	.loc 1 1394 0
	movl	36(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, 28(%ebp)
	movl	52(%ebp), %eax
	movl	%eax, 32(%ebp)
.L550:
	.loc 1 1395 0
	movzbl	-26(%ebp), %eax
	movb	%al, 32(%ebp)
	.loc 1 1397 0
	jmp	.L543
.L527:
.LBE9:
	.loc 1 1401 0
	leal	-120(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
	movl	-120(%ebp), %eax
	movl	%eax, 36(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, 40(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, 44(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, 48(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, 52(%ebp)
.L526:
	.loc 1 1403 0
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 1404 0
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 1405 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	24(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-132(%ebp), %edx
	cmpl	%edx, -140(%ebp)
	ja	.L552
	movl	-132(%ebp), %eax
	cmpl	%eax, -140(%ebp)
	jb	.L554
	movl	-136(%ebp), %edx
	cmpl	%edx, -144(%ebp)
	jae	.L552
.L554:
	.loc 1 1406 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L552:
	.loc 1 1408 0
	leal	-56(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_trim
	subl	$4, %esp
	.loc 1 1409 0
	movzbl	32(%ebp), %eax
	testb	%al, %al
	jne	.L555
	movzbl	52(%ebp), %eax
	testb	%al, %al
	je	.L557
.L555:
	movl	$1, -128(%ebp)
	jmp	.L558
.L557:
	movl	$0, -128(%ebp)
.L558:
	movzbl	-128(%ebp), %eax
	movb	%al, -40(%ebp)
	.loc 1 1410 0
	movzbl	-40(%ebp), %eax
	testb	%al, %al
	je	.L559
	.loc 1 1411 0
	movb	$0, -39(%ebp)
	jmp	.L561
.L559:
.LBB10:
	.loc 1 1414 0
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	movb	%al, -25(%ebp)
	.loc 1 1415 0
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	movl	40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	cmpb	-25(%ebp), %al
	jne	.L562
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	cmpb	-25(%ebp), %al
	je	.L562
	movl	$1, -124(%ebp)
	jmp	.L565
.L562:
	movl	$0, -124(%ebp)
.L565:
	movzbl	-124(%ebp), %eax
	movb	%al, -39(%ebp)
.L561:
.LBE10:
	.loc 1 1418 0
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-48(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	jmp	.L524
.L525:
	.loc 1 1422 0
	movl	12(%ebp), %eax
	movzbl	425(%eax), %eax
	testb	%al, %al
	je	.L567
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L567
	.loc 1 1423 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L567:
	.loc 1 1425 0
	movl	36(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, 28(%ebp)
	movl	52(%ebp), %eax
	movl	%eax, 32(%ebp)
.L543:
	.loc 1 1429 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
.L524:
	.loc 1 1430 0
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE43:
	.size	num_binary_op, .-num_binary_op
	.type	num_part_mul, @function
num_part_mul:
.LFB44:
	.loc 1 1437 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%edi
.LCFI116:
	pushl	%esi
.LCFI117:
	subl	$136, %esp
.LCFI118:
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1441 0
	movl	-64(%ebp), %esi
	andl	$-1, %esi
	movl	-60(%ebp), %edi
	andl	$0, %edi
	movl	-72(%ebp), %eax
	andb	$255, %ah
	movl	-68(%ebp), %edx
	andl	$0, %edx
	movl	%edi, %ecx
	imull	%eax, %ecx
	movl	%ecx, -140(%ebp)
	movl	%edx, %ecx
	imull	%esi, %ecx
	movl	%ecx, -108(%ebp)
	movl	-108(%ebp), %ecx
	addl	%ecx, -140(%ebp)
	mull	%esi
	addl	%edx, -140(%ebp)
	movl	-140(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 1442 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%edi, %esi
	xorl	%edi, %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-136(%ebp), %ecx
	imull	%edi, %ecx
	movl	-132(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -112(%ebp)
	addl	-112(%ebp), %ecx
	movl	-136(%ebp), %eax
	mull	%esi
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	addl	-132(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%edx, -52(%ebp)
	movl	%ecx, -48(%ebp)
	.loc 1 1444 0
	movl	-64(%ebp), %eax
	andb	$255, %ah
	movl	-60(%ebp), %edx
	andl	$0, %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	%edi, %esi
	xorl	%edi, %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-128(%ebp), %ecx
	imull	%edx, %ecx
	movl	-124(%ebp), %edi
	imull	%eax, %edi
	movl	%edi, -116(%ebp)
	addl	-116(%ebp), %ecx
	mull	-128(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 1445 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%edi, %esi
	xorl	%edi, %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-72(%ebp), %eax
	andb	$255, %ah
	movl	-68(%ebp), %edx
	andl	$0, %edx
	movl	-124(%ebp), %ecx
	imull	%eax, %ecx
	movl	-128(%ebp), %edi
	imull	%edx, %edi
	movl	%edi, -120(%ebp)
	addl	-120(%ebp), %ecx
	mull	-128(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1447 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 1448 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, %edx
	movl	$0, %eax
	addl	-104(%ebp), %eax
	adcl	-100(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 1449 0
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-92(%ebp), %ecx
	cmpl	-12(%ebp), %ecx
	ja	.L572
	movl	-92(%ebp), %esi
	cmpl	-12(%ebp), %esi
	jb	.L574
	movl	-96(%ebp), %edi
	cmpl	-16(%ebp), %edi
	jae	.L572
.L574:
	.loc 1 1450 0
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
.L572:
	.loc 1 1452 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 1453 0
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-24(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, %edx
	movl	$0, %eax
	addl	-88(%ebp), %eax
	adcl	-84(%ebp), %edx
	movl	%eax, -44(%ebp)
	movl	%edx, -40(%ebp)
	.loc 1 1454 0
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %ecx
	cmpl	-12(%ebp), %ecx
	ja	.L575
	movl	-76(%ebp), %esi
	cmpl	-12(%ebp), %esi
	jb	.L577
	movl	-80(%ebp), %edi
	cmpl	-16(%ebp), %edi
	jae	.L575
.L577:
	.loc 1 1455 0
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
.L575:
	.loc 1 1457 0
	movl	-52(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
	.loc 1 1458 0
	movl	-52(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -52(%ebp)
	movl	%edx, -48(%ebp)
	.loc 1 1459 0
	movb	$1, -36(%ebp)
	.loc 1 1461 0
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-48(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	-44(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 8(%esi)
	movl	-40(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, 12(%edi)
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1462 0
	movl	8(%ebp), %eax
	addl	$136, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE44:
	.size	num_part_mul, .-num_part_mul
	.type	num_mul, @function
num_mul:
.LFB45:
	.loc 1 1469 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%edi
.LCFI121:
	pushl	%esi
.LCFI122:
	subl	$208, %esp
.LCFI123:
	.loc 1 1471 0
	movzbl	32(%ebp), %eax
	testb	%al, %al
	jne	.L580
	movzbl	52(%ebp), %eax
	testb	%al, %al
	je	.L582
.L580:
	movl	$1, -172(%ebp)
	jmp	.L583
.L582:
	movl	$0, -172(%ebp)
.L583:
	movzbl	-172(%ebp), %eax
	movb	%al, -11(%ebp)
	.loc 1 1472 0
	movb	$0, -9(%ebp)
	.loc 1 1473 0
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1476 0
	movzbl	-11(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L584
	.loc 1 1478 0
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	xorl	$1, %eax
	testb	%al, %al
	je	.L586
	.loc 1 1479 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	movb	%al, -9(%ebp)
	leal	16(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
.L586:
	.loc 1 1480 0
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	movl	40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	xorl	$1, %eax
	testb	%al, %al
	je	.L584
	.loc 1 1481 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	movb	%al, -9(%ebp)
	leal	36(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
.L584:
	.loc 1 1484 0
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L589
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L589
	movl	$1, -168(%ebp)
	jmp	.L592
.L589:
	movl	$0, -168(%ebp)
.L592:
	movzbl	-168(%ebp), %edx
	movb	%dl, -10(%ebp)
	.loc 1 1485 0
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	leal	-36(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, (%esp)
	call	num_part_mul
	subl	$4, %esp
	.loc 1 1487 0
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	movl	16(%ebp), %esi
	movl	20(%ebp), %edi
	leal	-56(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, (%esp)
	call	num_part_mul
	subl	$4, %esp
	.loc 1 1488 0
	movl	-36(%ebp), %esi
	movl	-32(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 1489 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L593
	.loc 1 1490 0
	movb	$1, -10(%ebp)
.L593:
	.loc 1 1492 0
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	leal	-88(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, (%esp)
	call	num_part_mul
	subl	$4, %esp
	movl	-88(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1493 0
	movl	-36(%ebp), %esi
	movl	-32(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 1494 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L595
	.loc 1 1495 0
	movb	$1, -10(%ebp)
.L595:
	.loc 1 1497 0
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 1498 0
	leal	-120(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_trim
	subl	$4, %esp
	movl	-120(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1499 0
	movl	-28(%ebp), %esi
	movl	-24(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L597
	movl	-36(%ebp), %esi
	movl	-32(%ebp), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L599
.L597:
	.loc 1 1500 0
	movb	$1, -10(%ebp)
.L599:
	.loc 1 1502 0
	cmpb	$0, -9(%ebp)
	je	.L600
	.loc 1 1503 0
	leal	-152(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
	movl	-152(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-148(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-144(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-136(%ebp), %eax
	movl	%eax, -20(%ebp)
.L600:
	.loc 1 1505 0
	cmpb	$0, -11(%ebp)
	je	.L602
	.loc 1 1506 0
	movb	$0, -19(%ebp)
	jmp	.L604
.L602:
	.loc 1 1508 0
	cmpb	$0, -10(%ebp)
	jne	.L605
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	movl	%eax, %edx
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	cmpb	%al, %dl
	je	.L607
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	movl	-36(%ebp), %esi
	movl	-32(%ebp), %edi
	movl	-160(%ebp), %eax
	orl	%esi, %eax
	movl	-156(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L607
.L605:
	movl	$1, -164(%ebp)
	jmp	.L609
.L607:
	movl	$0, -164(%ebp)
.L609:
	movzbl	-164(%ebp), %eax
	movb	%al, -19(%ebp)
.L604:
	.loc 1 1510 0
	movzbl	-11(%ebp), %eax
	movb	%al, -20(%ebp)
	.loc 1 1512 0
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	.loc 1 1513 0
	movl	8(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE45:
	.size	num_mul, .-num_mul
	.section	.rodata
.LC39:
	.string	"division by zero in #if"
	.text
	.type	num_div_op, @function
num_div_op:
.LFB46:
	.loc 1 1522 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	pushl	%edi
.LCFI126:
	pushl	%esi
.LCFI127:
	pushl	%ebx
.LCFI128:
	subl	$236, %esp
.LCFI129:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1525 0
	movzbl	32(%ebp), %eax
	testb	%al, %al
	jne	.L612
	movzbl	52(%ebp), %eax
	testb	%al, %al
	je	.L614
.L612:
	movl	$1, -180(%ebp)
	jmp	.L615
.L614:
	movl	$0, -180(%ebp)
.L615:
	movzbl	-180(%ebp), %eax
	movb	%al, -27(%ebp)
	.loc 1 1526 0
	movb	$0, -26(%ebp)
	movb	$0, -25(%ebp)
	.loc 1 1527 0
	movl	12(%ebp), %eax
	movl	444(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1530 0
	movzbl	-27(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L616
	.loc 1 1532 0
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	xorl	$1, %eax
	testb	%al, %al
	je	.L618
	.loc 1 1533 0
	movzbl	-26(%ebp), %eax
	xorl	$1, %eax
	movb	%al, -26(%ebp)
	movb	$1, -25(%ebp)
	leal	16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
.L618:
	.loc 1 1534 0
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	movl	40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	xorl	$1, %eax
	testb	%al, %al
	je	.L616
	.loc 1 1535 0
	movzbl	-26(%ebp), %eax
	xorl	$1, %eax
	movb	%al, -26(%ebp)
	leal	36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
.L616:
	.loc 1 1539 0
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L621
	.loc 1 1541 0
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1542 0
	movl	-36(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L658
	movl	%eax, %edx
	xorl	%eax, %eax
.L658:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.L623:
	.loc 1 1544 0
	movl	36(%ebp), %eax
	movl	40(%ebp), %edx
	movl	%eax, %esi
	andl	-48(%ebp), %esi
	movl	%edx, %edi
	andl	-44(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.L626
	.loc 1 1543 0
	subl	$1, -36(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 1546 0
	jmp	.L623
.L621:
	.loc 1 1547 0
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L627
	.loc 1 1549 0
	cmpl	$64, -32(%ebp)
	jbe	.L629
	.loc 1 1550 0
	movl	-32(%ebp), %eax
	subl	$65, %eax
	movl	%eax, -36(%ebp)
	jmp	.L631
.L629:
	.loc 1 1552 0
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
.L631:
	.loc 1 1553 0
	movl	-36(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L657
	movl	%eax, %edx
	xorl	%eax, %eax
.L657:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.L632:
	.loc 1 1555 0
	movl	44(%ebp), %eax
	movl	48(%ebp), %edx
	movl	%eax, %esi
	andl	-48(%ebp), %esi
	movl	%edx, %edi
	andl	-44(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.L626
	.loc 1 1554 0
	subl	$1, -36(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 1557 0
	jmp	.L632
.L627:
	.loc 1 1560 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L635
	.loc 1 1561 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L635:
	.loc 1 1562 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	20(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 4(%esi)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, 8(%edi)
	movl	28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	32(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 16(%esi)
	jmp	.L611
.L626:
	.loc 1 1570 0
	movb	$1, 52(%ebp)
	.loc 1 1571 0
	movb	$1, 32(%ebp)
	.loc 1 1572 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1573 0
	leal	-88(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_lshift
	subl	$4, %esp
	.loc 1 1575 0
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%eax, -68(%ebp)
	movl	%edx, -64(%ebp)
.L638:
	.loc 1 1578 0
	movl	-32(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_greater_eq
	testb	%al, %al
	je	.L639
	.loc 1 1580 0
	leal	-120(%ebp), %edx
	movl	$5, 48(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	num_binary_op
	subl	$4, %esp
	movl	-120(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, 28(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, 32(%ebp)
	.loc 1 1581 0
	cmpl	$63, -36(%ebp)
	jbe	.L641
	.loc 1 1582 0
	movl	-68(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	-36(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L656
	movl	%esi, %edi
	xorl	%esi, %esi
.L656:
	movl	-176(%ebp), %eax
	orl	%esi, %eax
	movl	-172(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -68(%ebp)
	movl	%edx, -64(%ebp)
	jmp	.L639
.L641:
	.loc 1 1584 0
	movl	-60(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	%esi, -168(%ebp)
	movl	%edi, -164(%ebp)
	movl	-36(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L655
	movl	%esi, %edi
	xorl	%esi, %esi
.L655:
	movl	-168(%ebp), %eax
	orl	%esi, %eax
	movl	-164(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -60(%ebp)
	movl	%edx, -56(%ebp)
.L639:
	.loc 1 1586 0
	subl	$1, -36(%ebp)
	cmpl	$-1, -36(%ebp)
	je	.L643
	.loc 1 1588 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	$1, %edi, %esi
	shrl	%edi
	movl	%esi, -160(%ebp)
	movl	%edi, -156(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	sall	$31, %edi
	movl	-160(%ebp), %eax
	orl	%esi, %eax
	movl	-156(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 1589 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1590 0
	jmp	.L638
.L643:
	.loc 1 1593 0
	cmpl	$7, 56(%ebp)
	jne	.L645
	.loc 1 1595 0
	movzbl	-27(%ebp), %eax
	movb	%al, -52(%ebp)
	.loc 1 1596 0
	cmpb	$0, -27(%ebp)
	je	.L647
	.loc 1 1597 0
	movb	$0, -51(%ebp)
	jmp	.L649
.L647:
	.loc 1 1600 0
	cmpb	$0, -26(%ebp)
	je	.L650
	.loc 1 1601 0
	leal	-68(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
.L650:
	.loc 1 1602 0
	movl	-32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 16(%esp)
	call	num_positive
	movl	%eax, %edx
	movzbl	-26(%ebp), %eax
	xorl	$1, %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -51(%ebp)
.L649:
	.loc 1 1605 0
	movl	-68(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, (%edi)
	movl	-64(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-60(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 8(%esi)
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, 12(%edi)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	jmp	.L611
.L645:
	.loc 1 1609 0
	movzbl	-27(%ebp), %eax
	movb	%al, 32(%ebp)
	.loc 1 1610 0
	movb	$0, 33(%ebp)
	.loc 1 1611 0
	cmpb	$0, -25(%ebp)
	je	.L652
	.loc 1 1612 0
	leal	-152(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, (%esp)
	call	num_negate
	subl	$4, %esp
	movl	-152(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	-148(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	-144(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, 28(%ebp)
	movl	-136(%ebp), %eax
	movl	%eax, 32(%ebp)
.L652:
	.loc 1 1614 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, (%esi)
	movl	20(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, 4(%edi)
	movl	24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	28(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%eax, 12(%esi)
	movl	32(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%eax, 16(%edi)
.L611:
	.loc 1 1615 0
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret	$4
.LFE46:
	.size	num_div_op, .-num_div_op
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI6-.LFB23
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI10-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI11
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
	.long	.LCFI16-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI17
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
	.long	.LCFI21-.LFB26
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
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI26-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI27
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI32-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI33
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI38-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI39
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI47-.LCFI45
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
	.long	.LCFI48-.LFB31
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI52-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI53
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
	.long	.LCFI61-.LCFI58
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
	.long	.LCFI62-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI66-.LCFI63
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
	.long	.LCFI71-.LCFI68
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI72-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI73
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
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI77-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI81-.LCFI78
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI82-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI83
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI87-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI88
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
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI92-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI93
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
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI97-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI101-.LCFI98
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI102-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI103
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI108-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI109
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI114-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI115
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
	.long	.LCFI119-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI120
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI124-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI129-.LCFI125
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE50:
	.file 2 "../../../kgccfe/gnu/cpphash.h"
	.file 3 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 4 "../../../kgccfe/gnu/cpplib.h"
	.file 5 "../../../kgccfe/gnu/hashtable.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "../../../kgccfe/gnu/line-map.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "../../../include/gnu/obstack.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "../../../include/gnu/safe-ctype.h"
	.file 13 "../../../include/gnu/libiberty.h"
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
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
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
.LLST10:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
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
.LLST13:
	.long	.LFB34-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI62-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI63-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
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
.LLST15:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB38-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI82-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI83-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB41-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI97-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI98-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB42-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI102-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI103-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB43-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI108-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI109-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB44-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI114-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI115-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB45-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI119-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI120-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB46-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI125-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x32e2
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cppexp.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa1
	.uleb128 0x3
	.long	0xa6
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
	.byte	0x3
	.byte	0xd6
	.long	0xb5
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
	.long	0x129
	.uleb128 0x6
	.string	"__u_quad_t"
	.byte	0x7
	.byte	0x3c
	.long	0x13a
	.uleb128 0x6
	.string	"__dev_t"
	.byte	0x7
	.byte	0x89
	.long	0x164
	.uleb128 0x6
	.string	"__ino_t"
	.byte	0x7
	.byte	0x8c
	.long	0xf8
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x1a3
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x154
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa6
	.uleb128 0x6
	.string	"FILE"
	.byte	0x9
	.byte	0x2e
	.long	0x1d4
	.uleb128 0x8
	.long	0x44f
	.long	.LASF1
	.byte	0x94
	.byte	0x9
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.long	0x45f
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x465
	.uleb128 0x3
	.long	0xd1
	.uleb128 0x2
	.byte	0x4
	.long	0xd1
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0xd
	.long	0x4c1
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x47e
	.uleb128 0x2
	.byte	0x4
	.long	0x1d4
	.uleb128 0xa
	.long	0x4dd
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x470
	.uleb128 0xa
	.long	0x4f3
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.string	"ino_t"
	.byte	0x6
	.byte	0x32
	.long	0x185
	.uleb128 0x6
	.string	"dev_t"
	.byte	0x6
	.byte	0x3e
	.long	0x176
	.uleb128 0xd
	.long	0x555
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xa
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF2
	.byte	0xa
	.byte	0xa3
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0xa
	.byte	0xa4
	.long	0x555
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"contents"
	.byte	0xa
	.byte	0xa5
	.long	0x44f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x50d
	.uleb128 0x10
	.long	0x688
	.string	"obstack"
	.byte	0x2c
	.byte	0x9
	.value	0x31b
	.uleb128 0xe
	.string	"chunk_size"
	.byte	0xa
	.byte	0xaa
	.long	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"chunk"
	.byte	0xa
	.byte	0xab
	.long	0x555
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"object_base"
	.byte	0xa
	.byte	0xac
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"next_free"
	.byte	0xa
	.byte	0xad
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"chunk_limit"
	.byte	0xa
	.byte	0xae
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"temp"
	.byte	0xa
	.byte	0xaf
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"alignment_mask"
	.byte	0xa
	.byte	0xb0
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"chunkfun"
	.byte	0xa
	.byte	0xb5
	.long	0x69d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"freefun"
	.byte	0xa
	.byte	0xb6
	.long	0x6b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"extra_arg"
	.byte	0xa
	.byte	0xb7
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"use_extra_arg"
	.byte	0xa
	.byte	0xbd
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"maybe_empty_object"
	.byte	0xa
	.byte	0xbe
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"alloc_failed"
	.byte	0xa
	.byte	0xc2
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x12
	.long	0x69d
	.byte	0x1
	.long	0x555
	.uleb128 0x13
	.long	0x1c0
	.uleb128 0x13
	.long	0x1a3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x688
	.uleb128 0x14
	.long	0x6b4
	.byte	0x1
	.uleb128 0x13
	.long	0x1c0
	.uleb128 0x13
	.long	0x555
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6a3
	.uleb128 0x8
	.long	0x6f8
	.long	.LASF3
	.byte	0xc
	.byte	0x5
	.byte	0x19
	.uleb128 0xe
	.string	"str"
	.byte	0x5
	.byte	0x1c
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"len"
	.byte	0x5
	.byte	0x1d
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"hash_value"
	.byte	0x5
	.byte	0x1e
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x5
	.byte	0x29
	.long	0x703
	.uleb128 0xd
	.long	0x7a1
	.string	"ht"
	.byte	0x48
	.byte	0x5
	.byte	0x29
	.uleb128 0xe
	.string	"stack"
	.byte	0x5
	.byte	0x32
	.long	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"entries"
	.byte	0x5
	.byte	0x34
	.long	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"alloc_node"
	.byte	0x5
	.byte	0x36
	.long	0x7d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"nslots"
	.byte	0x5
	.byte	0x38
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"nelements"
	.byte	0x5
	.byte	0x39
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF5
	.byte	0x5
	.byte	0x3c
	.long	0xba4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"searches"
	.byte	0x5
	.byte	0x3f
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"collisions"
	.byte	0x5
	.byte	0x40
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x6
	.string	"hashnode"
	.byte	0x5
	.byte	0x2a
	.long	0x7b1
	.uleb128 0x2
	.byte	0x4
	.long	0x6ba
	.uleb128 0x2
	.byte	0x4
	.long	0x7a1
	.uleb128 0x12
	.long	0x7cd
	.byte	0x1
	.long	0x7a1
	.uleb128 0x13
	.long	0x7cd
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6f8
	.uleb128 0x2
	.byte	0x4
	.long	0x7bd
	.uleb128 0x16
	.long	0xba4
	.long	.LASF6
	.value	0x210
	.byte	0x5
	.byte	0x28
	.uleb128 0x9
	.string	"buffer"
	.byte	0x2
	.value	0x151
	.long	0x23c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"overlaid_buffer"
	.byte	0x2
	.value	0x154
	.long	0x23c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"state"
	.byte	0x2
	.value	0x157
	.long	0x213d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF7
	.byte	0x2
	.value	0x15a
	.long	0xc64
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"map"
	.byte	0x2
	.value	0x15b
	.long	0x1ceb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"line"
	.byte	0x2
	.value	0x15c
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"directive_line"
	.byte	0x2
	.value	0x15f
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"a_buff"
	.byte	0x2
	.value	0x162
	.long	0x2137
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"u_buff"
	.byte	0x2
	.value	0x163
	.long	0x2137
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"free_buffs"
	.byte	0x2
	.value	0x164
	.long	0x2137
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"base_context"
	.byte	0x2
	.value	0x167
	.long	0x205b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"context"
	.byte	0x2
	.value	0x168
	.long	0x23cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.long	.LASF8
	.byte	0x2
	.value	0x16b
	.long	0x23d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"next_include_file"
	.byte	0x2
	.value	0x170
	.long	0x23f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.string	"mi_cmacro"
	.byte	0x2
	.value	0x173
	.long	0x2401
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.string	"mi_ind_cmacro"
	.byte	0x2
	.value	0x174
	.long	0x2401
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.string	"mi_valid"
	.byte	0x2
	.value	0x175
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.string	"cur_token"
	.byte	0x2
	.value	0x178
	.long	0x1f43
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.string	"base_run"
	.byte	0x2
	.value	0x179
	.long	0x1ff7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.string	"cur_run"
	.byte	0x2
	.value	0x179
	.long	0x204a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.string	"lookaheads"
	.byte	0x2
	.value	0x17a
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.string	"keep_tokens"
	.byte	0x2
	.value	0x17d
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.string	"errors"
	.byte	0x2
	.value	0x180
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.string	"macro_buffer"
	.byte	0x2
	.value	0x183
	.long	0x46a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.string	"macro_buffer_len"
	.byte	0x2
	.value	0x184
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.string	"all_include_files"
	.byte	0x2
	.value	0x187
	.long	0x241b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.string	"max_include_len"
	.byte	0x2
	.value	0x18b
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.string	"first_unused_line"
	.byte	0x2
	.value	0x18e
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.string	"date"
	.byte	0x2
	.value	0x191
	.long	0x1f49
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.string	"time"
	.byte	0x2
	.value	0x192
	.long	0x1f49
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.string	"avoid_paste"
	.byte	0x2
	.value	0x195
	.long	0x143f
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.string	"eof"
	.byte	0x2
	.value	0x196
	.long	0x143f
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.string	"deps"
	.byte	0x2
	.value	0x199
	.long	0x2428
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.string	"hash_ob"
	.byte	0x2
	.value	0x19d
	.long	0x55b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.string	"buffer_ob"
	.byte	0x2
	.value	0x1a1
	.long	0x55b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.string	"pragmas"
	.byte	0x2
	.value	0x1a5
	.long	0x243d
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.string	"cb"
	.byte	0x2
	.value	0x1a8
	.long	0x1634
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x17
	.long	.LASF4
	.byte	0x2
	.value	0x1ab
	.long	0x2443
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.string	"op_stack"
	.byte	0x2
	.value	0x1ae
	.long	0x2480
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.string	"op_limit"
	.byte	0x2
	.value	0x1ae
	.long	0x2480
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.string	"opts"
	.byte	0x2
	.value	0x1b1
	.long	0xe8b
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x17
	.long	.LASF9
	.byte	0x2
	.value	0x1b5
	.long	0x2272
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x9
	.string	"print"
	.byte	0x2
	.value	0x1b8
	.long	0x22d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.string	"our_hashtable"
	.byte	0x2
	.value	0x1bb
	.long	0xd1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.string	"out"
	.byte	0x2
	.value	0x1c4
	.long	0x2373
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.string	"saved_line"
	.byte	0x2
	.value	0x1c8
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x7d9
	.uleb128 0x18
	.long	0xbdf
	.string	"lc_reason"
	.byte	0x4
	.byte	0x8
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
	.long	0xc64
	.string	"line_map"
	.byte	0x14
	.byte	0x8
	.byte	0x2a
	.uleb128 0xe
	.string	"to_file"
	.byte	0x8
	.byte	0x2b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to_line"
	.byte	0x8
	.byte	0x2c
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"from_line"
	.byte	0x8
	.byte	0x2d
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"included_from"
	.byte	0x8
	.byte	0x2e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"reason"
	.byte	0x8
	.byte	0x2f
	.long	0xbaa
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x8
	.byte	0x30
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0x8
	.long	0xce2
	.long	.LASF7
	.byte	0x18
	.byte	0x8
	.byte	0x35
	.uleb128 0xe
	.string	"maps"
	.byte	0x8
	.byte	0x36
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"allocated"
	.byte	0x8
	.byte	0x37
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"used"
	.byte	0x8
	.byte	0x38
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"last_listed"
	.byte	0x8
	.byte	0x3d
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"depth"
	.byte	0x8
	.byte	0x40
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"trace_includes"
	.byte	0x8
	.byte	0x43
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xbdf
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	.LASF6
	.byte	0x4
	.byte	0x28
	.long	0x7d9
	.uleb128 0x15
	.long	.LASF10
	.byte	0x4
	.byte	0x2a
	.long	0xd07
	.uleb128 0x8
	.long	0xe8b
	.long	.LASF10
	.byte	0x58
	.byte	0x4
	.byte	0x2a
	.uleb128 0x9
	.string	"cur"
	.byte	0x2
	.value	0x114
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"backup_to"
	.byte	0x2
	.value	0x115
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF11
	.byte	0x2
	.value	0x116
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"line_base"
	.byte	0x2
	.value	0x117
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"prev"
	.byte	0x2
	.value	0x119
	.long	0x234c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"buf"
	.byte	0x2
	.value	0x11b
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"inc"
	.byte	0x2
	.value	0x11f
	.long	0x2361
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.long	.LASF12
	.byte	0x2
	.value	0x123
	.long	0x236d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"col_adjust"
	.byte	0x2
	.value	0x126
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"saved_flags"
	.byte	0x2
	.value	0x129
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"last_Wtrigraphs"
	.byte	0x2
	.value	0x12d
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"warned_cplusplus_comments"
	.byte	0x2
	.value	0x133
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"from_stage3"
	.byte	0x2
	.value	0x138
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"search_cached"
	.byte	0x2
	.value	0x13c
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"return_at_eof"
	.byte	0x2
	.value	0x141
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"dir"
	.byte	0x2
	.value	0x145
	.long	0x1c18
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"saved_cur"
	.byte	0x2
	.value	0x148
	.long	0x1f49
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.string	"saved_rlimit"
	.byte	0x2
	.value	0x148
	.long	0x1f49
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x8
	.long	0x143f
	.long	.LASF13
	.byte	0x68
	.byte	0x4
	.byte	0x2b
	.uleb128 0xe
	.string	"tabstop"
	.byte	0x4
	.byte	0xe5
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"pending"
	.byte	0x4
	.byte	0xe8
	.long	0x1c12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"quote_include"
	.byte	0x4
	.byte	0xeb
	.long	0x1c97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"bracket_include"
	.byte	0x4
	.byte	0xec
	.long	0x1c97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"map_list"
	.byte	0x4
	.byte	0xf0
	.long	0x1cb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"include_prefix"
	.byte	0x4
	.byte	0xf4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"include_prefix_len"
	.byte	0x4
	.byte	0xf5
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"lang"
	.byte	0x4
	.byte	0xf8
	.long	0x1a90
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"verbose"
	.byte	0x4
	.byte	0xfb
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"cplusplus"
	.byte	0x4
	.byte	0xfe
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.string	"cplusplus_comments"
	.byte	0x4
	.value	0x101
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x9
	.string	"objc"
	.byte	0x4
	.value	0x105
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0x9
	.string	"discard_comments"
	.byte	0x4
	.value	0x108
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"discard_comments_in_macro_exp"
	.byte	0x4
	.value	0x10c
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x9
	.string	"trigraphs"
	.byte	0x4
	.value	0x10f
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x9
	.string	"digraphs"
	.byte	0x4
	.value	0x112
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x9
	.string	"extended_numbers"
	.byte	0x4
	.value	0x115
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"print_include_names"
	.byte	0x4
	.value	0x118
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x9
	.string	"pedantic_errors"
	.byte	0x4
	.value	0x11b
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x9
	.string	"inhibit_warnings"
	.byte	0x4
	.value	0x11e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x9
	.string	"warn_deprecated"
	.byte	0x4
	.value	0x121
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"warn_system_headers"
	.byte	0x4
	.value	0x124
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"inhibit_errors"
	.byte	0x4
	.value	0x128
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"warn_comments"
	.byte	0x4
	.value	0x12b
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"warn_trigraphs"
	.byte	0x4
	.value	0x12e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"warn_import"
	.byte	0x4
	.value	0x131
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x9
	.string	"warn_multichar"
	.byte	0x4
	.value	0x134
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x9
	.string	"warn_traditional"
	.byte	0x4
	.value	0x138
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x9
	.string	"warn_long_long"
	.byte	0x4
	.value	0x13b
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"warn_endif_labels"
	.byte	0x4
	.value	0x13e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x9
	.string	"warn_num_sign_change"
	.byte	0x4
	.value	0x142
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x9
	.string	"warnings_are_errors"
	.byte	0x4
	.value	0x145
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x9
	.string	"no_output"
	.byte	0x4
	.value	0x149
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"remap"
	.byte	0x4
	.value	0x14d
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x9
	.string	"no_line_commands"
	.byte	0x4
	.value	0x150
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.string	"ignore_srcdir"
	.byte	0x4
	.value	0x154
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3b
	.uleb128 0x9
	.string	"dollars_in_ident"
	.byte	0x4
	.value	0x157
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"warn_undef"
	.byte	0x4
	.value	0x15a
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x9
	.string	"warn_unused_macros"
	.byte	0x4
	.value	0x15d
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x9
	.string	"c99"
	.byte	0x4
	.value	0x160
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x9
	.string	"std"
	.byte	0x4
	.value	0x163
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"pedantic"
	.byte	0x4
	.value	0x166
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.string	"preprocessed"
	.byte	0x4
	.value	0x16a
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x9
	.string	"no_standard_includes"
	.byte	0x4
	.value	0x16d
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x9
	.string	"no_standard_cplusplus_includes"
	.byte	0x4
	.value	0x170
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"dump_macros"
	.byte	0x4
	.value	0x173
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x9
	.string	"dump_includes"
	.byte	0x4
	.value	0x176
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"show_column"
	.byte	0x4
	.value	0x179
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"operator_names"
	.byte	0x4
	.value	0x17c
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"traditional"
	.byte	0x4
	.value	0x17f
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x9
	.string	"deps"
	.byte	0x4
	.value	0x190
	.long	0x1b9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x17
	.long	.LASF14
	.byte	0x4
	.value	0x196
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"char_precision"
	.byte	0x4
	.value	0x196
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"int_precision"
	.byte	0x4
	.value	0x196
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"wchar_precision"
	.byte	0x4
	.value	0x196
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"unsigned_char"
	.byte	0x4
	.value	0x199
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"unsigned_wchar"
	.byte	0x4
	.value	0x199
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0x9
	.string	"stdc_0_in_system_headers"
	.byte	0x4
	.value	0x19c
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.byte	0x0
	.uleb128 0x15
	.long	.LASF15
	.byte	0x4
	.byte	0x2c
	.long	0x144a
	.uleb128 0x8
	.long	0x14a4
	.long	.LASF15
	.byte	0x10
	.byte	0x4
	.byte	0x2c
	.uleb128 0xe
	.string	"line"
	.byte	0x4
	.byte	0xb6
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"col"
	.byte	0x4
	.byte	0xb7
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"type"
	.byte	0x4
	.byte	0xb8
	.long	0x16e9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"flags"
	.byte	0x4
	.byte	0xb9
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"val"
	.byte	0x4
	.byte	0xc2
	.long	0x1b04
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF16
	.byte	0x4
	.byte	0x2d
	.long	0x14af
	.uleb128 0x8
	.long	0x14d9
	.long	.LASF16
	.byte	0x8
	.byte	0x4
	.byte	0x2d
	.uleb128 0xe
	.string	"len"
	.byte	0x4
	.byte	0xa5
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"text"
	.byte	0x4
	.byte	0xa6
	.long	0x45f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	.LASF17
	.byte	0x4
	.byte	0x2e
	.long	0x14e4
	.uleb128 0x8
	.long	0x157b
	.long	.LASF17
	.byte	0x18
	.byte	0x4
	.byte	0x2e
	.uleb128 0x9
	.string	"ident"
	.byte	0x4
	.value	0x1e6
	.long	0x6ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"arg_index"
	.byte	0x4
	.value	0x1e7
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"directive_index"
	.byte	0x4
	.value	0x1e8
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"rid_code"
	.byte	0x4
	.value	0x1e9
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"type"
	.byte	0x4
	.value	0x1ea
	.long	0x1d89
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"flags"
	.byte	0x4
	.value	0x1eb
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x9
	.string	"value"
	.byte	0x4
	.value	0x1f7
	.long	0x1e3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF18
	.byte	0x4
	.byte	0x2f
	.long	0x1586
	.uleb128 0x8
	.long	0x1634
	.long	.LASF18
	.byte	0x14
	.byte	0x4
	.byte	0x2f
	.uleb128 0xe
	.string	"params"
	.byte	0x2
	.byte	0x49
	.long	0x1f54
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x2
	.byte	0x52
	.long	0x1f20
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"line"
	.byte	0x2
	.byte	0x55
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"count"
	.byte	0x2
	.byte	0x58
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"paramc"
	.byte	0x2
	.byte	0x5b
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"fun_like"
	.byte	0x2
	.byte	0x5e
	.long	0xb5
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
	.long	0xb5
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
	.long	0xb5
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
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x16e9
	.long	.LASF19
	.byte	0x20
	.byte	0x4
	.byte	0x30
	.uleb128 0x9
	.string	"line_change"
	.byte	0x4
	.value	0x1a3
	.long	0x1cd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"file_change"
	.byte	0x4
	.value	0x1a4
	.long	0x1cf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"include"
	.byte	0x4
	.value	0x1a5
	.long	0x1d17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"define"
	.byte	0x4
	.value	0x1a7
	.long	0x1d33
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"undef"
	.byte	0x4
	.value	0x1a8
	.long	0x1d33
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ident"
	.byte	0x4
	.value	0x1a9
	.long	0x1d5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"def_pragma"
	.byte	0x4
	.value	0x1aa
	.long	0x1d71
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"register_builtins"
	.byte	0x4
	.value	0x1ad
	.long	0x1d83
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x1a90
	.string	"cpp_ttype"
	.byte	0x4
	.byte	0x4
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
	.long	0x1b04
	.string	"c_lang"
	.byte	0x4
	.byte	0x4
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
	.long	0x1b49
	.byte	0x8
	.byte	0x4
	.byte	0xbc
	.uleb128 0x1c
	.string	"node"
	.byte	0x4
	.byte	0xbd
	.long	0x1b49
	.uleb128 0x1c
	.string	"source"
	.byte	0x4
	.byte	0xbe
	.long	0x1b4f
	.uleb128 0x1c
	.string	"str"
	.byte	0x4
	.byte	0xbf
	.long	0x14af
	.uleb128 0x1c
	.string	"arg_no"
	.byte	0x4
	.byte	0xc0
	.long	0xb5
	.uleb128 0x1c
	.string	"c"
	.byte	0x4
	.byte	0xc1
	.long	0xd1
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x14d9
	.uleb128 0x2
	.byte	0x4
	.long	0x1b55
	.uleb128 0x3
	.long	0x143f
	.uleb128 0x6
	.string	"cppchar_t"
	.byte	0x4
	.byte	0xd4
	.long	0xb5
	.uleb128 0x1d
	.long	0x1b9b
	.byte	0x4
	.byte	0x4
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
	.long	0x1c04
	.byte	0x8
	.byte	0x4
	.value	0x183
	.uleb128 0x9
	.string	"style"
	.byte	0x4
	.value	0x185
	.long	0x1b6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"missing_files"
	.byte	0x4
	.value	0x188
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"phony_targets"
	.byte	0x4
	.value	0x18c
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"ignore_main_file"
	.byte	0x4
	.value	0x18f
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x1f
	.string	"cpp_pending"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1c04
	.uleb128 0xd
	.long	0x1c97
	.string	"search_path"
	.byte	0x20
	.byte	0x4
	.byte	0xeb
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0x86
	.long	0x1c97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"name"
	.byte	0x2
	.byte	0x8a
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0x8b
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"ino"
	.byte	0x2
	.byte	0x8e
	.long	0x4f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dev"
	.byte	0x2
	.byte	0x8f
	.long	0x500
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x2
	.byte	0x91
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"name_map"
	.byte	0x2
	.byte	0x94
	.long	0x1fc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1c18
	.uleb128 0x1f
	.string	"file_name_map_list"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1c9d
	.uleb128 0x14
	.long	0x1cce
	.byte	0x1
	.uleb128 0x13
	.long	0x1cce
	.uleb128 0x13
	.long	0x1b4f
	.uleb128 0x13
	.long	0xae
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xcf1
	.uleb128 0x2
	.byte	0x4
	.long	0x1cb8
	.uleb128 0x14
	.long	0x1ceb
	.byte	0x1
	.uleb128 0x13
	.long	0x1cce
	.uleb128 0x13
	.long	0x1ceb
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1cf1
	.uleb128 0x3
	.long	0xbdf
	.uleb128 0x2
	.byte	0x4
	.long	0x1cda
	.uleb128 0x14
	.long	0x1d17
	.byte	0x1
	.uleb128 0x13
	.long	0x1cce
	.uleb128 0x13
	.long	0xb5
	.uleb128 0x13
	.long	0x45f
	.uleb128 0x13
	.long	0x1b4f
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1cfc
	.uleb128 0x14
	.long	0x1d33
	.byte	0x1
	.uleb128 0x13
	.long	0x1cce
	.uleb128 0x13
	.long	0xb5
	.uleb128 0x13
	.long	0x1b49
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d1d
	.uleb128 0x14
	.long	0x1d4f
	.byte	0x1
	.uleb128 0x13
	.long	0x1cce
	.uleb128 0x13
	.long	0xb5
	.uleb128 0x13
	.long	0x1d4f
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d55
	.uleb128 0x3
	.long	0x14a4
	.uleb128 0x2
	.byte	0x4
	.long	0x1d39
	.uleb128 0x14
	.long	0x1d71
	.byte	0x1
	.uleb128 0x13
	.long	0x1cce
	.uleb128 0x13
	.long	0xb5
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d60
	.uleb128 0x14
	.long	0x1d83
	.byte	0x1
	.uleb128 0x13
	.long	0x1cce
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d77
	.uleb128 0x20
	.long	0x1dc1
	.string	"node_type"
	.byte	0x4
	.byte	0x4
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
	.long	0x1e3c
	.string	"builtin_type"
	.byte	0x4
	.byte	0x4
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
	.long	0x1e80
	.byte	0x4
	.byte	0x4
	.value	0x1ee
	.uleb128 0x22
	.string	"macro"
	.byte	0x4
	.value	0x1ef
	.long	0x1e80
	.uleb128 0x22
	.string	"answers"
	.byte	0x4
	.value	0x1f0
	.long	0x1e8f
	.uleb128 0x23
	.long	.LASF20
	.byte	0x4
	.value	0x1f4
	.long	0x16e9
	.uleb128 0x22
	.string	"builtin"
	.byte	0x4
	.value	0x1f6
	.long	0x1dc1
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x157b
	.uleb128 0x1f
	.string	"answer"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1e86
	.uleb128 0x24
	.string	"cpp_num_part"
	.byte	0x4
	.value	0x261
	.long	0x13a
	.uleb128 0x24
	.string	"cpp_num"
	.byte	0x4
	.value	0x262
	.long	0x1eba
	.uleb128 0x10
	.long	0x1f09
	.string	"cpp_num"
	.byte	0x14
	.byte	0x4
	.value	0x262
	.uleb128 0x9
	.string	"high"
	.byte	0x4
	.value	0x265
	.long	0x1e95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"low"
	.byte	0x4
	.value	0x266
	.long	0x1e95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF21
	.byte	0x4
	.value	0x267
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.long	.LASF22
	.byte	0x4
	.value	0x268
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0x6
	.string	"uchar"
	.byte	0x2
	.byte	0x20
	.long	0xd1
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x1b
	.long	0x1f43
	.byte	0x4
	.byte	0x2
	.byte	0x4f
	.uleb128 0x1c
	.string	"tokens"
	.byte	0x2
	.byte	0x50
	.long	0x1f43
	.uleb128 0x1c
	.string	"text"
	.byte	0x2
	.byte	0x51
	.long	0x1f49
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x143f
	.uleb128 0x2
	.byte	0x4
	.long	0x1f4f
	.uleb128 0x3
	.long	0x1f09
	.uleb128 0x2
	.byte	0x4
	.long	0x1b49
	.uleb128 0x15
	.long	.LASF23
	.byte	0x2
	.byte	0x6f
	.long	0x1f65
	.uleb128 0x8
	.long	0x1fac
	.long	.LASF23
	.byte	0x10
	.byte	0x2
	.byte	0x6f
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0x72
	.long	0x1fac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"base"
	.byte	0x2
	.byte	0x73
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cur"
	.byte	0x2
	.byte	0x73
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x2
	.byte	0x73
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f65
	.uleb128 0x1f
	.string	"file_name_map"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1fb2
	.uleb128 0x25
	.long	0x1ff1
	.string	"utoken"
	.byte	0x4
	.byte	0x2
	.byte	0x9b
	.uleb128 0x26
	.long	.LASF24
	.byte	0x2
	.byte	0x9c
	.long	0x1b4f
	.uleb128 0x1c
	.string	"ptoken"
	.byte	0x2
	.byte	0x9d
	.long	0x1ff1
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1b4f
	.uleb128 0x15
	.long	.LASF25
	.byte	0x2
	.byte	0xa1
	.long	0x2002
	.uleb128 0x8
	.long	0x204a
	.long	.LASF25
	.byte	0x10
	.byte	0x2
	.byte	0xa1
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0xa4
	.long	0x204a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x2
	.byte	0xa4
	.long	0x204a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x2
	.byte	0xa5
	.long	0x1f43
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x2
	.byte	0xa5
	.long	0x1f43
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1ff7
	.uleb128 0x15
	.long	.LASF26
	.byte	0x2
	.byte	0xae
	.long	0x205b
	.uleb128 0x8
	.long	0x20c4
	.long	.LASF26
	.byte	0x1c
	.byte	0x2
	.byte	0xae
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0xb2
	.long	0x2131
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x2
	.byte	0xb2
	.long	0x2131
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0x2
	.byte	0xc5
	.long	0x2111
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"buff"
	.byte	0x2
	.byte	0xc9
	.long	0x2137
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"macro"
	.byte	0x2
	.byte	0xcc
	.long	0x1b49
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"direct_p"
	.byte	0x2
	.byte	0xcf
	.long	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x27
	.long	0x20ec
	.byte	0x8
	.byte	0x2
	.byte	0xba
	.uleb128 0xe
	.string	"first"
	.byte	0x2
	.byte	0xbb
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"last"
	.byte	0x2
	.byte	0xbc
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x27
	.long	0x2111
	.byte	0x8
	.byte	0x2
	.byte	0xc1
	.uleb128 0xe
	.string	"cur"
	.byte	0x2
	.byte	0xc2
	.long	0x1f49
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF11
	.byte	0x2
	.byte	0xc3
	.long	0x1f49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1b
	.long	0x2131
	.byte	0x8
	.byte	0x2
	.byte	0xb5
	.uleb128 0x1c
	.string	"iso"
	.byte	0x2
	.byte	0xbd
	.long	0x20c4
	.uleb128 0x1c
	.string	"trad"
	.byte	0x2
	.byte	0xc4
	.long	0x20ec
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2050
	.uleb128 0x2
	.byte	0x4
	.long	0x1f5a
	.uleb128 0xd
	.long	0x2272
	.string	"lexer_state"
	.byte	0x10
	.byte	0x2
	.byte	0xd3
	.uleb128 0xe
	.string	"in_directive"
	.byte	0x2
	.byte	0xd5
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"directive_wants_padding"
	.byte	0x2
	.byte	0xda
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"skipping"
	.byte	0x2
	.byte	0xdd
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"angled_headers"
	.byte	0x2
	.byte	0xe0
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.string	"in_expression"
	.byte	0x2
	.byte	0xe3
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"save_comments"
	.byte	0x2
	.byte	0xe7
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"lexing_comment"
	.byte	0x2
	.byte	0xea
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"va_args_ok"
	.byte	0x2
	.byte	0xed
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"poisoned_ok"
	.byte	0x2
	.byte	0xf0
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"prevent_expansion"
	.byte	0x2
	.byte	0xf3
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.string	"parsing_args"
	.byte	0x2
	.byte	0xf6
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"skip_eval"
	.byte	0x2
	.byte	0xf9
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x22d0
	.long	.LASF9
	.byte	0x10
	.byte	0x2
	.byte	0xfe
	.uleb128 0xe
	.string	"n_defined"
	.byte	0x2
	.byte	0xff
	.long	0x1b49
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"n_true"
	.byte	0x2
	.value	0x100
	.long	0x1b49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"n_false"
	.byte	0x2
	.value	0x101
	.long	0x1b49
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"n__VA_ARGS__"
	.byte	0x2
	.value	0x102
	.long	0x1b49
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x2346
	.string	"printer"
	.byte	0x18
	.byte	0x2
	.value	0x108
	.uleb128 0x9
	.string	"outf"
	.byte	0x2
	.value	0x109
	.long	0x2346
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map"
	.byte	0x2
	.value	0x10a
	.long	0x1ceb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"prev"
	.byte	0x2
	.value	0x10b
	.long	0x1b4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"source"
	.byte	0x2
	.value	0x10c
	.long	0x1b4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"line"
	.byte	0x2
	.value	0x10d
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"printed"
	.byte	0x2
	.value	0x10e
	.long	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1c8
	.uleb128 0x2
	.byte	0x4
	.long	0xd07
	.uleb128 0x1f
	.string	"include_file"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2352
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2367
	.uleb128 0x1e
	.long	0x23c1
	.byte	0x10
	.byte	0x2
	.value	0x1bf
	.uleb128 0x9
	.string	"base"
	.byte	0x2
	.value	0x1c0
	.long	0x23c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x2
	.value	0x1c1
	.long	0x23c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cur"
	.byte	0x2
	.value	0x1c2
	.long	0x23c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"first_line"
	.byte	0x2
	.value	0x1c3
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f09
	.uleb128 0x2
	.byte	0x4
	.long	0xcfc
	.uleb128 0x2
	.byte	0x4
	.long	0x205b
	.uleb128 0x28
	.long	.LASF8
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23df
	.uleb128 0x3
	.long	0x23d3
	.uleb128 0x1f
	.string	"pending_option"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23fb
	.uleb128 0x2
	.byte	0x4
	.long	0x23e4
	.uleb128 0x2
	.byte	0x4
	.long	0x2407
	.uleb128 0x3
	.long	0x14d9
	.uleb128 0x1f
	.string	"splay_tree_s"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x240c
	.uleb128 0x1f
	.string	"deps"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2421
	.uleb128 0x1f
	.string	"pragma_entry"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x242e
	.uleb128 0x2
	.byte	0x4
	.long	0x703
	.uleb128 0xd
	.long	0x2480
	.string	"op"
	.byte	0x1c
	.byte	0x2
	.byte	0x1e
	.uleb128 0xf
	.long	.LASF24
	.byte	0x1
	.byte	0x2b
	.long	0x1b4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"value"
	.byte	0x1
	.byte	0x2c
	.long	0x1eaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"op"
	.byte	0x1
	.byte	0x2d
	.long	0x16e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2449
	.uleb128 0x29
	.long	0x24f4
	.string	"interpret_float_suffix"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0xb5
	.long	.LFB21
	.long	.LFE21
	.long	.LLST0
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.byte	0x60
	.long	0x1f49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.byte	0x61
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.byte	0x63
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.byte	0x63
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x63
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x29
	.long	0x2560
	.string	"interpret_int_suffix"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	0xb5
	.long	.LFB22
	.long	.LFE22
	.long	.LLST1
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.byte	0x7d
	.long	0x1f49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.byte	0x7e
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"u"
	.byte	0x1
	.byte	0x80
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.byte	0x80
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x80
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2c
	.long	0x2691
	.byte	0x1
	.string	"cpp_classify_number"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.long	0xb5
	.long	.LFB23
	.long	.LFE23
	.long	.LLST2
	.uleb128 0x2d
	.long	.LASF5
	.byte	0x1
	.byte	0xa1
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.byte	0xa2
	.long	0x1b4f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"str"
	.byte	0x1
	.byte	0xa4
	.long	0x1f49
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.byte	0xa5
	.long	0x1f49
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"max_digit"
	.byte	0x1
	.byte	0xa6
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF27
	.byte	0x1
	.byte	0xa6
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"radix"
	.byte	0x1
	.byte	0xa6
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	0x2628
	.byte	0x4
	.byte	0x1
	.byte	0xa7
	.uleb128 0x19
	.string	"NOT_FLOAT"
	.sleb128 0
	.uleb128 0x19
	.string	"AFTER_POINT"
	.sleb128 1
	.uleb128 0x19
	.string	"AFTER_EXPON"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2b
	.string	"float_flag"
	.byte	0x1
	.byte	0xa7
	.long	0x25f7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x13c
	.long	.L76
	.uleb128 0x31
	.long	0x2663
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.byte	0xc4
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x32
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x33
	.string	"u_or_i"
	.byte	0x1
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"large"
	.byte	0x1
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x2770
	.byte	0x1
	.string	"cpp_interpret_integer"
	.byte	0x1
	.value	0x14b
	.byte	0x1
	.long	0x1eaa
	.long	.LFB24
	.long	.LFE24
	.long	.LLST3
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x148
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x149
	.long	0x1b4f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"type"
	.byte	0x1
	.value	0x14a
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x14c
	.long	0x1f49
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.value	0x14c
	.long	0x1f49
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x14d
	.long	0x1eaa
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x33
	.string	"max"
	.byte	0x1
	.value	0x15c
	.long	0x1e95
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LASF14
	.byte	0x1
	.value	0x15d
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"base"
	.byte	0x1
	.value	0x15e
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.value	0x15e
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF22
	.byte	0x1
	.value	0x15f
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x282c
	.string	"append_digit"
	.byte	0x1
	.value	0x1a4
	.byte	0x1
	.long	0x1eaa
	.long	.LFB25
	.long	.LFE25
	.long	.LLST4
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x1a1
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"digit"
	.byte	0x1
	.value	0x1a2
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x36
	.string	"base"
	.byte	0x1
	.value	0x1a2
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x1a3
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x1a5
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"shift"
	.byte	0x1
	.value	0x1a6
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF22
	.byte	0x1
	.value	0x1a7
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x33
	.string	"add_high"
	.byte	0x1
	.value	0x1a8
	.long	0x1e95
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"add_low"
	.byte	0x1
	.value	0x1a8
	.long	0x1e95
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x38
	.long	0x28d6
	.string	"parse_defined"
	.byte	0x1
	.value	0x1d6
	.byte	0x1
	.long	0x1eaa
	.long	.LFB26
	.long	.LFE26
	.long	.LLST5
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x1d5
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x1d7
	.long	0x1eaa
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"paren"
	.byte	0x1
	.value	0x1d8
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"node"
	.byte	0x1
	.value	0x1d9
	.long	0x1b49
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF24
	.byte	0x1
	.value	0x1da
	.long	0x1b4f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"initial_context"
	.byte	0x1
	.value	0x1db
	.long	0x2131
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0x1f6
	.long	0x143f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x295f
	.string	"eval_token"
	.byte	0x1
	.value	0x21e
	.byte	0x1
	.long	0x1eaa
	.long	.LFB27
	.long	.LFE27
	.long	.LLST6
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x21c
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x21d
	.long	0x1b4f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x21f
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"temp"
	.byte	0x1
	.value	0x220
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF21
	.byte	0x1
	.value	0x221
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"cc"
	.byte	0x1
	.value	0x23e
	.long	0x1b5a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x298e
	.long	.LASF20
	.byte	0x2
	.byte	0x1
	.value	0x295
	.uleb128 0x9
	.string	"prio"
	.byte	0x1
	.value	0x296
	.long	0x1f09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"flags"
	.byte	0x1
	.value	0x297
	.long	0x1f09
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x34
	.long	0x2a42
	.byte	0x1
	.string	"_cpp_parse_expr"
	.byte	0x1
	.value	0x2cb
	.byte	0x1
	.long	0xce8
	.long	.LFB28
	.long	.LFE28
	.long	.LLST7
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x2ca
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"top"
	.byte	0x1
	.value	0x2cc
	.long	0x2480
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"lex_count"
	.byte	0x1
	.value	0x2cd
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"saw_leading_not"
	.byte	0x1
	.value	0x2ce
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x33
	.string	"want_value"
	.byte	0x1
	.value	0x2ce
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x30
	.long	.LASF28
	.byte	0x1
	.value	0x353
	.long	.L252
	.uleb128 0x32
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0x2dc
	.long	0x2449
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x2aae
	.string	"reduce"
	.byte	0x1
	.value	0x362
	.byte	0x1
	.long	0x2480
	.long	.LFB29
	.long	.LFE29
	.long	.LLST8
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x35f
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"top"
	.byte	0x1
	.value	0x360
	.long	0x2480
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x361
	.long	0x16e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"prio"
	.byte	0x1
	.value	0x363
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.string	"bad_op"
	.byte	0x1
	.value	0x3dd
	.long	.L306
	.byte	0x0
	.uleb128 0x34
	.long	0x2b15
	.byte	0x1
	.string	"_cpp_expand_op_stack"
	.byte	0x1
	.value	0x3f3
	.byte	0x1
	.long	0x2480
	.long	.LFB30
	.long	.LFE30
	.long	.LLST9
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x3f2
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"old_size"
	.byte	0x1
	.value	0x3f4
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"new_size"
	.byte	0x1
	.value	0x3f5
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x2b58
	.string	"check_promotion"
	.byte	0x1
	.value	0x404
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST10
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x402
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x403
	.long	0x2b58
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2b5e
	.uleb128 0x3
	.long	0x2449
	.uleb128 0x38
	.long	0x2ba4
	.string	"num_trim"
	.byte	0x1
	.value	0x41a
	.byte	0x1
	.long	0x1eaa
	.long	.LFB32
	.long	.LFE32
	.long	.LLST11
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x418
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x419
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x38
	.long	0x2be9
	.string	"num_positive"
	.byte	0x1
	.value	0x430
	.byte	0x1
	.long	0xce8
	.long	.LFB33
	.long	.LFE33
	.long	.LLST12
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x42e
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x42f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.uleb128 0x34
	.long	0x2c36
	.byte	0x1
	.string	"cpp_num_sign_extend"
	.byte	0x1
	.value	0x440
	.byte	0x1
	.long	0x1eaa
	.long	.LFB34
	.long	.LFE34
	.long	.LLST13
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x43e
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x43f
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x38
	.long	0x2c89
	.string	"num_negate"
	.byte	0x1
	.value	0x45a
	.byte	0x1
	.long	0x1eaa
	.long	.LFB35
	.long	.LFE35
	.long	.LLST14
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x458
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x459
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x33
	.string	"copy"
	.byte	0x1
	.value	0x45b
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x38
	.long	0x2cec
	.string	"num_greater_eq"
	.byte	0x1
	.value	0x46d
	.byte	0x1
	.long	0xce8
	.long	.LFB36
	.long	.LFE36
	.long	.LLST15
	.uleb128 0x36
	.string	"pa"
	.byte	0x1
	.value	0x46b
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"pb"
	.byte	0x1
	.value	0x46b
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x46c
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x37
	.long	.LASF21
	.byte	0x1
	.value	0x46e
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x38
	.long	0x2d50
	.string	"num_bitwise_op"
	.byte	0x1
	.value	0x487
	.byte	0x1
	.long	0x1eaa
	.long	.LFB37
	.long	.LFE37
	.long	.LLST16
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x484
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"lhs"
	.byte	0x1
	.value	0x485
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"rhs"
	.byte	0x1
	.value	0x485
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x486
	.long	0x16e9
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.byte	0x0
	.uleb128 0x38
	.long	0x2dc6
	.string	"num_inequality_op"
	.byte	0x1
	.value	0x4a6
	.byte	0x1
	.long	0x1eaa
	.long	.LFB38
	.long	.LFE38
	.long	.LLST17
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x4a3
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"lhs"
	.byte	0x1
	.value	0x4a4
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"rhs"
	.byte	0x1
	.value	0x4a4
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x4a5
	.long	0x16e9
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x33
	.string	"gte"
	.byte	0x1
	.value	0x4a7
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x38
	.long	0x2e39
	.string	"num_equality_op"
	.byte	0x1
	.value	0x4be
	.byte	0x1
	.long	0x1eaa
	.long	.LFB39
	.long	.LFE39
	.long	.LLST18
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x4bb
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"lhs"
	.byte	0x1
	.value	0x4bc
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"rhs"
	.byte	0x1
	.value	0x4bc
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x4bd
	.long	0x16e9
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x33
	.string	"eq"
	.byte	0x1
	.value	0x4c0
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x38
	.long	0x2e9e
	.string	"num_rshift"
	.byte	0x1
	.value	0x4cf
	.byte	0x1
	.long	0x1eaa
	.long	.LFB40
	.long	.LFE40
	.long	.LLST19
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x4cd
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x4ce
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x36
	.string	"n"
	.byte	0x1
	.value	0x4ce
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x33
	.string	"sign_mask"
	.byte	0x1
	.value	0x4d0
	.long	0x1e95
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x38
	.long	0x2f2b
	.string	"num_lshift"
	.byte	0x1
	.value	0x4f9
	.byte	0x1
	.long	0x1eaa
	.long	.LFB41
	.long	.LFE41
	.long	.LLST20
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x4f7
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x4f8
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x36
	.string	"n"
	.byte	0x1
	.value	0x4f8
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"orig"
	.byte	0x1
	.value	0x501
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"maybe_orig"
	.byte	0x1
	.value	0x501
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"m"
	.byte	0x1
	.value	0x502
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x2f7e
	.string	"num_unary_op"
	.byte	0x1
	.value	0x524
	.byte	0x1
	.long	0x1eaa
	.long	.LFB42
	.long	.LFE42
	.long	.LLST21
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x521
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"num"
	.byte	0x1
	.value	0x522
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x523
	.long	0x16e9
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0x0
	.uleb128 0x38
	.long	0x3052
	.string	"num_binary_op"
	.byte	0x1
	.value	0x54a
	.byte	0x1
	.long	0x1eaa
	.long	.LFB43
	.long	.LFE43
	.long	.LLST22
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x547
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"lhs"
	.byte	0x1
	.value	0x548
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"rhs"
	.byte	0x1
	.value	0x548
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x549
	.long	0x16e9
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x54b
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF14
	.byte	0x1
	.value	0x54c
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"gte"
	.byte	0x1
	.value	0x54d
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x54e
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	0x3037
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x37
	.long	.LASF21
	.byte	0x1
	.value	0x56c
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -34
	.byte	0x0
	.uleb128 0x32
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"lhsp"
	.byte	0x1
	.value	0x586
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x30ca
	.string	"num_part_mul"
	.byte	0x1
	.value	0x59d
	.byte	0x1
	.long	0x1eaa
	.long	.LFB44
	.long	.LFE44
	.long	.LLST23
	.uleb128 0x36
	.string	"lhs"
	.byte	0x1
	.value	0x59c
	.long	0x1e95
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.string	"rhs"
	.byte	0x1
	.value	0x59c
	.long	0x1e95
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x59e
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"middle"
	.byte	0x1
	.value	0x59f
	.long	0x30ca
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"temp"
	.byte	0x1
	.value	0x59f
	.long	0x1e95
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xa
	.long	0x30da
	.long	0x1e95
	.uleb128 0xb
	.long	0xbc
	.byte	0x1
	.byte	0x0
	.uleb128 0x38
	.long	0x3187
	.string	"num_mul"
	.byte	0x1
	.value	0x5bd
	.byte	0x1
	.long	0x1eaa
	.long	.LFB45
	.long	.LFE45
	.long	.LLST24
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x5bb
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"lhs"
	.byte	0x1
	.value	0x5bc
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"rhs"
	.byte	0x1
	.value	0x5bc
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x5be
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"temp"
	.byte	0x1
	.value	0x5be
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.long	.LASF21
	.byte	0x1
	.value	0x5bf
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x37
	.long	.LASF22
	.byte	0x1
	.value	0x5c0
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x33
	.string	"negate"
	.byte	0x1
	.value	0x5c0
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x37
	.long	.LASF14
	.byte	0x1
	.value	0x5c1
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x38
	.long	0x3267
	.string	"num_div_op"
	.byte	0x1
	.value	0x5f2
	.byte	0x1
	.long	0x1eaa
	.long	.LFB46
	.long	.LFE46
	.long	.LLST25
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x5ef
	.long	0x1cce
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"lhs"
	.byte	0x1
	.value	0x5f0
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"rhs"
	.byte	0x1
	.value	0x5f0
	.long	0x1eaa
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x36
	.string	"op"
	.byte	0x1
	.value	0x5f1
	.long	0x16e9
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x37
	.long	.LASF27
	.byte	0x1
	.value	0x5f3
	.long	0x1eaa
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"sub"
	.byte	0x1
	.value	0x5f3
	.long	0x1eaa
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"mask"
	.byte	0x1
	.value	0x5f4
	.long	0x1e95
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.long	.LASF21
	.byte	0x1
	.value	0x5f5
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x33
	.string	"negate"
	.byte	0x1
	.value	0x5f6
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x33
	.string	"lhs_neg"
	.byte	0x1
	.value	0x5f6
	.long	0xce8
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x5f7
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF14
	.byte	0x1
	.value	0x5f7
	.long	0xc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0xa
	.long	0x3277
	.long	0x295f
	.uleb128 0xb
	.long	0xbc
	.byte	0x1e
	.byte	0x0
	.uleb128 0x33
	.string	"optab"
	.byte	0x1
	.value	0x298
	.long	0x328b
	.byte	0x5
	.byte	0x3
	.long	optab
	.uleb128 0x3
	.long	0x3267
	.uleb128 0xa
	.long	0x32a0
	.long	0xe2
	.uleb128 0xb
	.long	0xbc
	.byte	0xff
	.byte	0x0
	.uleb128 0x3c
	.string	"_sch_istable"
	.byte	0xc
	.byte	0x48
	.long	0x32b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x3290
	.uleb128 0xa
	.long	0x32cb
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0xff
	.byte	0x0
	.uleb128 0x3d
	.string	"_hex_value"
	.byte	0xd
	.value	0x101
	.long	0x32e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x32bb
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x30
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x37
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x85
	.value	0x2
	.long	.Ldebug_info0
	.long	0x32e6
	.long	0x2560
	.string	"cpp_classify_number"
	.long	0x2691
	.string	"cpp_interpret_integer"
	.long	0x298e
	.string	"_cpp_parse_expr"
	.long	0x2aae
	.string	"_cpp_expand_op_stack"
	.long	0x2be9
	.string	"cpp_num_sign_extend"
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
.LASF18:
	.string	"cpp_macro"
.LASF26:
	.string	"cpp_context"
.LASF9:
	.string	"spec_nodes"
.LASF24:
	.string	"token"
.LASF14:
	.string	"precision"
.LASF10:
	.string	"cpp_buffer"
.LASF23:
	.string	"_cpp_buff"
.LASF4:
	.string	"hash_table"
.LASF25:
	.string	"tokenrun"
.LASF5:
	.string	"pfile"
.LASF7:
	.string	"line_maps"
.LASF13:
	.string	"cpp_options"
.LASF1:
	.string	"_IO_FILE"
.LASF12:
	.string	"if_stack"
.LASF27:
	.string	"result"
.LASF11:
	.string	"rlimit"
.LASF6:
	.string	"cpp_reader"
.LASF28:
	.string	"syntax_error"
.LASF16:
	.string	"cpp_string"
.LASF2:
	.string	"limit"
.LASF21:
	.string	"unsignedp"
.LASF19:
	.string	"cpp_callbacks"
.LASF17:
	.string	"cpp_hashnode"
.LASF22:
	.string	"overflow"
.LASF15:
	.string	"cpp_token"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"directive"
.LASF3:
	.string	"ht_identifier"
.LASF20:
	.string	"operator"
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
