	.file	"cpptrad.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	check_output_buffer, @function
check_output_buffer:
.LFB21:
	.file 1 "../../../kg++fe/gnu/cpptrad.c"
	.loc 1 109 0
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
	.loc 1 112 0
	addl	$3, 12(%ebp)
	.loc 1 114 0
	movl	8(%ebp), %eax
	movl	512(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	12(%ebp), %eax
	jae	.L4
.LBB2:
	.loc 1 116 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 117 0
	movl	12(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shrl	%eax
	movl	%eax, -8(%ebp)
	.loc 1 119 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 508(%eax)
	.loc 1 121 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 512(%eax)
	.loc 1 122 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 516(%eax)
.L4:
.LBE2:
	.loc 1 124 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	check_output_buffer, .-check_output_buffer
	.type	handle_newline, @function
handle_newline:
.LFB22:
	.loc 1 135 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	.loc 1 136 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 137 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	cmpl	$23, %eax
	jne	.L6
	.loc 1 138 0
	addl	$1, 12(%ebp)
.L6:
	.loc 1 139 0
	movl	12(%ebp), %eax
	addl	$1, %eax
	.loc 1 140 0
	popl	%ebp
	ret
.LFE22:
	.size	handle_newline, .-handle_newline
	.section	.rodata
	.align 4
.LC0:
	.string	"backslash-newline at end of file"
	.text
	.type	skip_escaped_newlines, @function
skip_escaped_newlines:
.LFB23:
	.loc 1 151 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$36, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 152 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 154 0
	jmp	.L10
.L11:
	.loc 1 155 0
	movl	12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_newline
	movl	%eax, 12(%ebp)
.L10:
	.loc 1 154 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	jne	.L12
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L11
.L12:
	.loc 1 157 0
	movl	12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L14
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L14
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L14
	.loc 1 158 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L14:
	.loc 1 160 0
	movl	12(%ebp), %eax
	.loc 1 161 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	skip_escaped_newlines, .-skip_escaped_newlines
	.section	.rodata
.LC1:
	.string	"\"/*\" within comment"
.LC2:
	.string	"unterminated comment"
	.text
	.type	copy_comment, @function
copy_comment:
.LFB24:
	.loc 1 180 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$36, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 182 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 183 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -12(%ebp)
.L20:
.LBB3:
	.loc 1 187 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	addl	$1, 12(%ebp)
	.loc 1 188 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -12(%ebp)
	.loc 1 190 0
	cmpl	$47, -8(%ebp)
	jne	.L21
	.loc 1 193 0
	movl	-12(%ebp), %eax
	subl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L23
	movl	-12(%ebp), %eax
	subl	$2, %eax
	movl	8(%ebp), %edx
	movl	516(%edx), %edx
	cmpl	%edx, %eax
	ja	.L25
.L23:
	.loc 1 196 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L30
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L30
	movl	8(%ebp), %eax
	movzbl	407(%eax), %eax
	testb	%al, %al
	je	.L30
	.loc 1 198 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
	jmp	.L30
.L21:
	.loc 1 201 0
	movzbl	-8(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L30
	.loc 1 203 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_newline
	movl	%eax, 12(%ebp)
	.loc 1 205 0
	movl	-12(%ebp), %eax
	subl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	jne	.L32
	.loc 1 206 0
	subl	$2, -12(%ebp)
	jmp	.L30
.L32:
	.loc 1 208 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movb	$10, (%eax)
.L30:
.LBE3:
	.loc 1 211 0
	movl	12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L20
	.loc 1 213 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
	.loc 1 214 0
	movl	-12(%ebp), %eax
	movb	$42, (%eax)
	addl	$1, -12(%ebp)
	.loc 1 215 0
	movl	-12(%ebp), %eax
	movb	$47, (%eax)
	addl	$1, -12(%ebp)
.L25:
	.loc 1 221 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L35
	.loc 1 223 0
	cmpl	$0, 16(%ebp)
	je	.L37
	.loc 1 225 0
	movl	8(%ebp), %eax
	movzbl	397(%eax), %eax
	testb	%al, %al
	je	.L39
	.loc 1 226 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 516(%eax)
	jmp	.L43
.L39:
	.loc 1 228 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 516(%edx)
	jmp	.L43
.L37:
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	subl	$1, %eax
	movb	$32, (%eax)
	jmp	.L43
.L35:
	.loc 1 233 0
	movl	8(%ebp), %eax
	movzbl	396(%eax), %eax
	testb	%al, %al
	je	.L44
	.loc 1 234 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 516(%eax)
	jmp	.L43
.L44:
	.loc 1 236 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 516(%edx)
.L43:
	.loc 1 238 0
	movl	12(%ebp), %eax
	.loc 1 239 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	copy_comment, .-copy_comment
	.type	skip_whitespace, @function
skip_whitespace:
.LFB25:
	.loc 1 258 0
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
	.loc 1 259 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L62
.L48:
.L62:
.LBB4:
	.loc 1 263 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	addl	$1, 12(%ebp)
	.loc 1 264 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -16(%ebp)
	.loc 1 266 0
	movzbl	-12(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L49
	cmpl	$0, -12(%ebp)
	jne	.L48
.L49:
	.loc 1 269 0
	cmpl	$0, -12(%ebp)
	jne	.L52
	movl	12(%ebp), %edx
	subl	$1, %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L48
.L52:
	.loc 1 272 0
	cmpl	$47, -12(%ebp)
	jne	.L54
	cmpl	$0, 16(%ebp)
	je	.L54
.LBB5:
	.loc 1 274 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_escaped_newlines
	movl	%eax, -8(%ebp)
	.loc 1 275 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L54
	.loc 1 277 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 278 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_comment
	movl	%eax, 12(%ebp)
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 280 0
	jmp	.L48
.L54:
.LBE5:
	.loc 1 284 0
	subl	$1, -16(%ebp)
	.loc 1 285 0
	cmpl	$92, -12(%ebp)
	jne	.L58
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L58
	.loc 1 287 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_escaped_newlines
	movl	%eax, 12(%ebp)
	.loc 1 288 0
	jmp	.L48
.L58:
.LBE4:
	.loc 1 294 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 295 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	.loc 1 296 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	skip_whitespace, .-skip_whitespace
	.type	lex_identifier, @function
lex_identifier:
.LFB26:
	.loc 1 305 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$36, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 307 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L68
.L64:
.L68:
	.loc 1 313 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -12(%ebp)
	addl	$1, 12(%ebp)
	.loc 1 314 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$516, %eax
	testl	%eax, %eax
	jne	.L64
	.loc 1 315 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_escaped_newlines
	movl	%eax, 12(%ebp)
	.loc 1 317 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$516, %eax
	testl	%eax, %eax
	jne	.L64
	.loc 1 319 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 320 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	516(%eax), %ecx
	movl	8(%ebp), %eax
	movl	348(%eax), %edx
	movl	$1, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	ht_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 323 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 324 0
	movl	-8(%ebp), %eax
	.loc 1 325 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	lex_identifier, .-lex_identifier
.globl _cpp_overlay_buffer
	.type	_cpp_overlay_buffer, @function
_cpp_overlay_buffer:
.LFB27:
	.loc 1 335 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	subl	$16, %esp
.LCFI24:
	.loc 1 336 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 338 0
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 339 0
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 80(%eax)
	.loc 1 340 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 84(%eax)
	.loc 1 342 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 343 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 524(%eax)
	.loc 1 346 0
	leave
	ret
.LFE27:
	.size	_cpp_overlay_buffer, .-_cpp_overlay_buffer
.globl _cpp_remove_overlay
	.type	_cpp_remove_overlay, @function
_cpp_remove_overlay:
.LFB28:
	.loc 1 352 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	subl	$16, %esp
.LCFI27:
	.loc 1 353 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 355 0
	movl	-4(%ebp), %eax
	movl	80(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 356 0
	movl	-4(%ebp), %eax
	movl	84(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 358 0
	movl	8(%ebp), %eax
	movl	524(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 359 0
	leave
	ret
.LFE28:
	.size	_cpp_remove_overlay, .-_cpp_remove_overlay
.globl _cpp_read_logical_line_trad
	.type	_cpp_read_logical_line_trad, @function
_cpp_read_logical_line_trad:
.LFB29:
	.loc 1 366 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$36, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L74:
	.loc 1 369 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L75
.LBB6:
	.loc 1 371 0
	movb	$1, -5(%ebp)
	.loc 1 374 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L77
	.loc 1 376 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	47(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 377 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_buffer@PLT
.L77:
	.loc 1 380 0
	cmpb	$0, -5(%ebp)
	je	.L75
	.loc 1 381 0
	movl	$0, -24(%ebp)
	jmp	.L80
.L75:
.LBE6:
	.loc 1 384 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_out_logical_line
	.loc 1 386 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L74
	.loc 1 388 0
	movl	$1, -24(%ebp)
.L80:
	movl	-24(%ebp), %eax
	.loc 1 389 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	_cpp_read_logical_line_trad, .-_cpp_read_logical_line_trad
	.type	maybe_start_funlike, @function
maybe_start_funlike:
.LFB30:
	.loc 1 399 0
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
	.loc 1 400 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	.loc 1 402 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L84
	.loc 1 403 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_release_buff@PLT
.L84:
	.loc 1 404 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_get_buff@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 405 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 406 0
	movl	20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 407 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 408 0
	movl	20(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 409 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	maybe_start_funlike, .-maybe_start_funlike
	.type	save_argument, @function
save_argument:
.LFB31:
	.loc 1 416 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	.loc 1 417 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 418 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	ja	.L90
	.loc 1 419 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.L90:
	.loc 1 420 0
	popl	%ebp
	ret
.LFE31:
	.size	save_argument, .-save_argument
	.section	.rodata
.LC3:
	.string	"no newline at end of file"
	.align 4
.LC4:
	.string	"unterminated argument list invoking macro \"%s\""
	.text
	.type	scan_out_logical_line, @function
scan_out_logical_line:
.LFB32:
	.loc 1 433 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$116, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 438 0
	movl	$0, -32(%ebp)
	.loc 1 439 0
	movl	$0, -24(%ebp)
	.loc 1 442 0
	movl	$0, -72(%ebp)
.L92:
	.loc 1 445 0
	movl	$0, -28(%ebp)
	.loc 1 446 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	testb	%al, %al
	setne	%al
	movb	%al, -6(%ebp)
	.loc 1 447 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 448 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%edx)
	.loc 1 449 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 516(%eax)
	.loc 1 450 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 520(%eax)
	jmp	.L217
.L93:
.L217:
	.loc 1 452 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 453 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 454 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_output_buffer
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L218
.L94:
.L218:
	.loc 1 459 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	addl	$1, -44(%ebp)
	.loc 1 460 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -40(%ebp)
	.loc 1 464 0
	cmpl	$122, -36(%ebp)
	ja	.L95
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L109@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L109:
	.long	.L96@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L94@GOTOFF
	.long	.L98@GOTOFF
	.long	.L94@GOTOFF
	.long	.L94@GOTOFF
	.long	.L98@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L94@GOTOFF
	.long	.L95@GOTOFF
	.long	.L99@GOTOFF
	.long	.L100@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L99@GOTOFF
	.long	.L101@GOTOFF
	.long	.L102@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L103@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L104@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L105@GOTOFF
	.long	.L95@GOTOFF
	.long	.L106@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L95@GOTOFF
	.long	.L108@GOTOFF
	.long	.L95@GOTOFF
	.long	.L95@GOTOFF
	.long	.L107@GOTOFF
	.long	.L95@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.long	.L107@GOTOFF
	.text
.L96:
	.loc 1 473 0
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	-48(%ebp), %edx
	movl	12(%edx), %edx
	cmpl	%edx, %eax
	jne	.L94
	.loc 1 477 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L112
	.loc 1 479 0
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, 516(%edx)
	.loc 1 480 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_context@PLT
	.loc 1 481 0
	jmp	.L93
.L112:
	.loc 1 485 0
	subl	$1, -44(%ebp)
	.loc 1 486 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	45(%eax), %eax
	testb	%al, %al
	jne	.L114
	.loc 1 487 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L114:
	.loc 1 488 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 489 0
	jmp	.L116
.L98:
	.loc 1 492 0
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_newline
	movl	%eax, -44(%ebp)
	.loc 1 493 0
	cmpl	$1, -24(%ebp)
	je	.L117
	cmpl	$2, -24(%ebp)
	jne	.L116
.L117:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L116
	.loc 1 498 0
	cmpl	$2, -24(%ebp)
	jne	.L94
	.loc 1 499 0
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movb	$32, (%eax)
	.loc 1 500 0
	jmp	.L94
.L105:
	.loc 1 505 0
	cmpb	$0, -6(%ebp)
	je	.L95
	.loc 1 506 0
	movl	$62, -28(%ebp)
	.loc 1 507 0
	jmp	.L95
.L106:
	.loc 1 509 0
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L95
	.loc 1 510 0
	movl	$0, -28(%ebp)
	.loc 1 511 0
	jmp	.L95
.L99:
	.loc 1 515 0
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L127
	.loc 1 516 0
	movl	$0, -28(%ebp)
	jmp	.L95
.L127:
	.loc 1 517 0
	cmpl	$0, -28(%ebp)
	jne	.L95
	.loc 1 518 0
	movl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 519 0
	jmp	.L95
.L108:
	.loc 1 522 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L131
	.loc 1 524 0
	subl	$1, -40(%ebp)
	.loc 1 525 0
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_escaped_newlines
	movl	%eax, -44(%ebp)
	.loc 1 526 0
	jmp	.L94
.L131:
	.loc 1 532 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_escaped_newlines
	movl	%eax, -44(%ebp)
	.loc 1 533 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	je	.L133
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$34, %al
	je	.L133
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$39, %al
	jne	.L95
.L133:
	.loc 1 534 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-40(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -40(%ebp)
	addl	$1, -44(%ebp)
	.loc 1 536 0
	jmp	.L95
.L104:
	.loc 1 541 0
	cmpl	$0, -28(%ebp)
	jne	.L95
	.loc 1 543 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_escaped_newlines
	movl	%eax, -44(%ebp)
	.loc 1 544 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L95
	.loc 1 546 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 547 0
	cmpl	$0, 12(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_comment
	movl	%eax, -44(%ebp)
	.loc 1 548 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 549 0
	jmp	.L94
.L107:
	.loc 1 565 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	testb	%al, %al
	jne	.L95
	cmpl	$0, -28(%ebp)
	je	.L142
	cmpl	$0, 12(%ebp)
	je	.L95
.L142:
.LBB7:
	.loc 1 568 0
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 570 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 571 0
	movl	-44(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_identifier
	movl	%eax, -20(%ebp)
	.loc 1 572 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 573 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 575 0
	movl	-20(%ebp), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L144
	cmpl	$0, -24(%ebp)
	je	.L146
	cmpl	$1, -24(%ebp)
	jne	.L144
.L146:
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	jne	.L144
	.loc 1 581 0
	movl	8(%ebp), %eax
	movb	$0, 120(%eax)
	.loc 1 582 0
	movl	-20(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L149
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L149
	.loc 1 585 0
	leal	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_start_funlike
	.loc 1 586 0
	movl	$1, -24(%ebp)
	.loc 1 587 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 588 0
	jmp	.L94
.L149:
	.loc 1 590 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recursive_macro
	xorl	$1, %eax
	testb	%al, %al
	je	.L95
	.loc 1 594 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 595 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_replacement_text
	.loc 1 596 0
	movl	$0, -24(%ebp)
	.loc 1 597 0
	jmp	.L93
.L144:
	.loc 1 600 0
	cmpl	$0, 12(%ebp)
	je	.L154
	movl	-20(%ebp), %eax
	movzwl	12(%eax), %eax
	testw	%ax, %ax
	je	.L154
	.loc 1 604 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 605 0
	movl	-20(%ebp), %eax
	movzwl	12(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_replacement_text
	.loc 1 606 0
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 600 0
	jmp	.L95
.L154:
	.loc 1 608 0
	cmpl	$5, -24(%ebp)
	jne	.L157
	.loc 1 610 0
	movl	$6, -24(%ebp)
	.loc 1 611 0
	jmp	.L94
.L157:
	.loc 1 613 0
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	je	.L95
	movl	8(%ebp), %eax
	movl	464(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L95
	.loc 1 616 0
	movl	$3, -24(%ebp)
	.loc 1 617 0
	jmp	.L94
.L101:
.LBE7:
	.loc 1 623 0
	cmpl	$0, -28(%ebp)
	jne	.L95
	.loc 1 625 0
	addl	$1, -32(%ebp)
	.loc 1 626 0
	cmpl	$1, -24(%ebp)
	jne	.L163
	.loc 1 628 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recursive_macro
	testb	%al, %al
	je	.L165
	.loc 1 629 0
	movl	$0, -24(%ebp)
	jmp	.L95
.L165:
	.loc 1 632 0
	movl	$2, -24(%ebp)
	.loc 1 633 0
	movl	$1, -32(%ebp)
	.loc 1 634 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-60(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 635 0
	movl	-68(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L95
.L163:
	.loc 1 638 0
	cmpl	$6, -24(%ebp)
	jne	.L168
	.loc 1 639 0
	movl	$7, -24(%ebp)
	jmp	.L95
.L168:
	.loc 1 640 0
	cmpl	$3, -24(%ebp)
	jne	.L95
	.loc 1 641 0
	movl	$4, -24(%ebp)
	.loc 1 643 0
	jmp	.L95
.L103:
	.loc 1 646 0
	cmpl	$0, -28(%ebp)
	jne	.L95
	cmpl	$2, -24(%ebp)
	jne	.L95
	cmpl	$1, -32(%ebp)
	jne	.L95
	.loc 1 647 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	save_argument
	.loc 1 648 0
	jmp	.L95
.L102:
	.loc 1 651 0
	cmpl	$0, -28(%ebp)
	jne	.L95
	.loc 1 653 0
	subl	$1, -32(%ebp)
	.loc 1 654 0
	cmpl	$2, -24(%ebp)
	jne	.L177
	cmpl	$0, -32(%ebp)
	jne	.L177
.LBB8:
	.loc 1 656 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 658 0
	movl	-12(%ebp), %edx
	movzbl	18(%edx), %eax
	orl	$8, %eax
	movb	%al, 18(%edx)
	.loc 1 659 0
	movl	$0, -24(%ebp)
	.loc 1 660 0
	movl	-40(%ebp), %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	save_argument
	.loc 1 663 0
	movl	-52(%ebp), %eax
	cmpl	$1, %eax
	jne	.L180
	movl	-12(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	jne	.L180
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-60(%ebp), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	cmpl	-40(%ebp), %eax
	jne	.L180
	.loc 1 666 0
	movl	$0, -52(%ebp)
.L180:
	.loc 1 668 0
	movl	-52(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_arguments_ok@PLT
	testb	%al, %al
	je	.L95
	.loc 1 672 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 516(%eax)
	.loc 1 674 0
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 675 0
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_args_and_push
	.loc 1 676 0
	jmp	.L93
.L177:
.LBE8:
	.loc 1 679 0
	cmpl	$7, -24(%ebp)
	je	.L186
	cmpl	$4, -24(%ebp)
	jne	.L95
.L186:
	.loc 1 680 0
	movl	$0, -24(%ebp)
	.loc 1 682 0
	jmp	.L95
.L100:
	.loc 1 685 0
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movl	8(%ebp), %edx
	movl	508(%edx), %edx
	cmpl	%edx, %eax
	jne	.L188
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L188
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L188
	.loc 1 696 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 697 0
	movl	$1, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_whitespace
	movl	%eax, -44(%ebp)
	.loc 1 698 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 700 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L192
	.loc 1 704 0
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 705 0
	jmp	.L94
.L192:
.LBB9:
	.loc 1 709 0
	movb	$0, -5(%ebp)
	.loc 1 711 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L194
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	cmpl	$7, %eax
	je	.L194
	.loc 1 713 0
	movb	$1, -5(%ebp)
	.loc 1 711 0
	jmp	.L197
.L194:
	.loc 1 714 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L198
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L197
	movl	8(%ebp), %eax
	movzbl	420(%eax), %eax
	testb	%al, %al
	je	.L197
.L198:
	.loc 1 717 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_identifier
	movzbl	14(%eax), %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
.L197:
	.loc 1 719 0
	cmpb	$0, -5(%ebp)
	jne	.L201
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	cmpl	$7, %eax
	je	.L188
.L201:
	.loc 1 723 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 724 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_handle_directive@PLT
	.loc 1 727 0
	jmp	.L92
.L188:
.LBE9:
	.loc 1 732 0
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	je	.L95
	.loc 1 734 0
	movl	$5, -24(%ebp)
	.loc 1 735 0
	jmp	.L94
.L95:
	.loc 1 745 0
	movb	$0, -6(%ebp)
	.loc 1 746 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	jne	.L204
	.loc 1 747 0
	movl	8(%ebp), %eax
	movb	$0, 120(%eax)
.L204:
	.loc 1 749 0
	cmpl	$0, -24(%ebp)
	je	.L94
	.loc 1 754 0
	cmpl	$1, -24(%ebp)
	jne	.L207
	.loc 1 756 0
	movl	$0, -24(%ebp)
	jmp	.L94
.L207:
	.loc 1 757 0
	cmpl	$5, -24(%ebp)
	je	.L209
	cmpl	$6, -24(%ebp)
	je	.L209
	cmpl	$3, -24(%ebp)
	jne	.L94
.L209:
	.loc 1 760 0
	movl	$0, -24(%ebp)
	.loc 1 763 0
	jmp	.L94
.L116:
	.loc 1 766 0
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movb	$0, (%eax)
	.loc 1 767 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 768 0
	movl	-40(%ebp), %edx
	subl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 516(%eax)
	.loc 1 769 0
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	.L212
	.loc 1 770 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_release_buff@PLT
.L212:
	.loc 1 772 0
	cmpl	$2, -24(%ebp)
	jne	.L216
	.loc 1 773 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	-56(%ebp), %edx
	movl	%eax, 20(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
.L216:
	.loc 1 776 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	scan_out_logical_line, .-scan_out_logical_line
	.type	push_replacement_text, @function
push_replacement_text:
.LFB33:
	.loc 1 785 0
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
	.loc 1 789 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L220
	.loc 1 791 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_builtin_macro_text@PLT
	movl	%eax, -12(%ebp)
	.loc 1 792 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ustrlen
	movl	%eax, -16(%ebp)
	jmp	.L222
.L220:
.LBB10:
	.loc 1 796 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 797 0
	movl	-8(%ebp), %edx
	movzbl	18(%edx), %eax
	orl	$8, %eax
	movb	%al, 18(%edx)
	.loc 1 798 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 799 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L222:
.LBE10:
	.loc 1 802 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_push_text_context@PLT
	.loc 1 803 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	push_replacement_text, .-push_replacement_text
	.type	ustrlen, @function
ustrlen:
.LFB17:
	.file 2 "../../../kg++fe/gnu/cpphash.h"
	.loc 2 605 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%edi
.LCFI48:
	subl	$4, %esp
.LCFI49:
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
	.align 4
.LC5:
	.string	"detected recursion whilst expanding macro \"%s\""
	.text
	.type	recursive_macro, @function
recursive_macro:
.LFB34:
	.loc 1 810 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$36, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 811 0
	movl	12(%ebp), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 823 0
	cmpb	$0, -5(%ebp)
	je	.L227
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L227
.LBB11:
	.loc 1 825 0
	movl	$0, -16(%ebp)
	.loc 1 826 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -12(%ebp)
.L230:
	.loc 1 830 0
	addl	$1, -16(%ebp)
	.loc 1 831 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L231
	cmpl	$20, -16(%ebp)
	ja	.L233
.L231:
	.loc 1 833 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 835 0
	cmpl	$0, -12(%ebp)
	jne	.L230
.L233:
	.loc 1 836 0
	cmpl	$0, -12(%ebp)
	setne	%al
	movb	%al, -5(%ebp)
.L227:
.LBE11:
	.loc 1 839 0
	cmpb	$0, -5(%ebp)
	je	.L234
	.loc 1 840 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L234:
	.loc 1 844 0
	movzbl	-5(%ebp), %eax
	.loc 1 845 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	recursive_macro, .-recursive_macro
.globl _cpp_replacement_text_len
	.type	_cpp_replacement_text_len, @function
_cpp_replacement_text_len:
.LFB35:
	.loc 1 852 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	subl	$16, %esp
.LCFI56:
	.loc 1 855 0
	movl	8(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L238
	movl	8(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	je	.L238
.LBB12:
	.loc 1 859 0
	movl	$0, -12(%ebp)
	.loc 1 860 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L241:
.LBB13:
	.loc 1 862 0
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 864 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, -12(%ebp)
	.loc 1 865 0
	movl	-4(%ebp), %eax
	movzwl	4(%eax), %eax
	testw	%ax, %ax
	je	.L244
	.loc 1 867 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	addl	%eax, -12(%ebp)
	.loc 1 868 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	andl	$-4, %eax
	addl	%eax, -8(%ebp)
	.loc 1 869 0
	jmp	.L241
.L238:
.LBE13:
.LBE12:
	.loc 1 872 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L244:
	.loc 1 874 0
	movl	-12(%ebp), %eax
	.loc 1 875 0
	leave
	ret
.LFE35:
	.size	_cpp_replacement_text_len, .-_cpp_replacement_text_len
.globl _cpp_copy_replacement_text
	.type	_cpp_copy_replacement_text, @function
_cpp_copy_replacement_text:
.LFB36:
	.loc 1 884 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%edi
.LCFI59:
	pushl	%esi
.LCFI60:
	subl	$16, %esp
.LCFI61:
	.loc 1 885 0
	movl	8(%ebp), %eax
	movzbl	18(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L247
	movl	8(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	je	.L247
.LBB14:
	.loc 1 889 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L250:
.LBB15:
	.loc 1 891 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 894 0
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %edx
	addl	$6, %edx
	movl	12(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 895 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, 12(%ebp)
	.loc 1 896 0
	movl	-16(%ebp), %eax
	movzwl	4(%eax), %eax
	testw	%ax, %ax
	je	.L253
	.loc 1 898 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 899 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 900 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, 12(%ebp)
	.loc 1 901 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	andl	$-4, %eax
	addl	%eax, -20(%ebp)
	.loc 1 902 0
	jmp	.L250
.L247:
.LBE15:
.LBE14:
	.loc 1 906 0
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 907 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	addl	%eax, 12(%ebp)
.L253:
	.loc 1 910 0
	movl	12(%ebp), %eax
	.loc 1 911 0
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	_cpp_copy_replacement_text, .-_cpp_copy_replacement_text
	.type	replace_args_and_push, @function
replace_args_and_push:
.LFB37:
	.loc 1 920 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%edi
.LCFI64:
	pushl	%esi
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$60, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 921 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 923 0
	movl	-44(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	jne	.L256
	.loc 1 924 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_replacement_text
	jmp	.L265
.L256:
.LBB16:
	.loc 1 930 0
	movl	$0, -28(%ebp)
	.loc 1 933 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L259:
.LBB17:
	.loc 1 935 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 937 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, -28(%ebp)
	.loc 1 938 0
	movl	-24(%ebp), %eax
	movzwl	4(%eax), %eax
	testw	%ax, %ax
	je	.L260
	.loc 1 940 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 942 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	andl	$-4, %eax
	addl	%eax, -40(%ebp)
	.loc 1 943 0
	jmp	.L259
.L260:
.LBE17:
	.loc 1 946 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_get_buff@PLT
	movl	%eax, -32(%ebp)
	.loc 1 949 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 950 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L262:
.LBB18:
	.loc 1 952 0
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 955 0
	movl	-20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %edx
	addl	$6, %edx
	movl	-36(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 956 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, -36(%ebp)
	.loc 1 957 0
	movl	-20(%ebp), %eax
	movzwl	4(%eax), %eax
	testw	%ax, %ax
	je	.L263
	.loc 1 959 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 961 0
	movl	8(%ebp), %eax
	movl	508(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	leal	(%ecx,%eax), %edx
	movl	-36(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 963 0
	movl	-16(%ebp), %eax
	addl	%eax, -36(%ebp)
	.loc 1 964 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	andl	$-4, %eax
	addl	%eax, -40(%ebp)
	.loc 1 965 0
	jmp	.L262
.L263:
.LBE18:
	.loc 1 968 0
	movl	-36(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 969 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_push_text_context@PLT
	.loc 1 972 0
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%edx)
.L265:
.LBE16:
	.loc 1 974 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	replace_args_and_push, .-replace_args_and_push
	.type	scan_parameters, @function
scan_parameters:
.LFB38:
	.loc 1 986 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$52, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 987 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	8(%eax), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
.L267:
	.loc 1 992 0
	movl	$1, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_whitespace
	movl	%eax, -12(%ebp)
	.loc 1 994 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L268
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L270
	movl	8(%ebp), %eax
	movzbl	420(%eax), %eax
	testb	%al, %al
	je	.L270
.L268:
	.loc 1 996 0
	movb	$0, -5(%ebp)
	.loc 1 997 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lex_identifier
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_save_parameter@PLT
	testb	%al, %al
	jne	.L272
	.loc 1 999 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	8(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_whitespace
	movl	%eax, -12(%ebp)
	.loc 1 1001 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L274
	.loc 1 1003 0
	addl	$1, -12(%ebp)
	.loc 1 1012 0
	jmp	.L267
.L274:
	.loc 1 1006 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$41, %al
	sete	%al
	movb	%al, -5(%ebp)
	.loc 1 1007 0
	jmp	.L272
.L270:
	.loc 1 1010 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$41, %al
	jne	.L276
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	jne	.L276
	movl	$1, -32(%ebp)
	jmp	.L279
.L276:
	movl	$0, -32(%ebp)
.L279:
	movzbl	-32(%ebp), %eax
	movb	%al, -5(%ebp)
.L272:
	.loc 1 1014 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$41, %al
	jne	.L280
	movl	$1, -24(%ebp)
	jmp	.L282
.L280:
	movl	$0, -24(%ebp)
.L282:
	movl	-24(%ebp), %eax
	addl	-12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%edx)
	.loc 1 1016 0
	movzbl	-5(%ebp), %eax
	.loc 1 1017 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	scan_parameters, .-scan_parameters
	.type	save_replacement_text, @function
save_replacement_text:
.LFB39:
	.loc 1 1028 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%edi
.LCFI74:
	pushl	%esi
.LCFI75:
	pushl	%ebx
.LCFI76:
	subl	$28, %esp
.LCFI77:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1029 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1032 0
	movl	12(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	jne	.L285
	.loc 1 1036 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_unaligned_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1037 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1038 0
	movl	-28(%ebp), %eax
	addl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1039 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1040 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L291
.L285:
.LBB19:
	.loc 1 1046 0
	movl	-28(%ebp), %eax
	addl	$9, %eax
	andl	$-4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1049 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jbe	.L288
	.loc 1 1050 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	addl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$60, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_extend_buff@PLT
.L288:
	.loc 1 1052 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1053 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	addl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1054 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1057 0
	movl	-16(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1058 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movw	%dx, 4(%eax)
	.loc 1 1059 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	-16(%ebp), %eax
	addl	$6, %eax
	movl	-28(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1062 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 516(%eax)
	.loc 1 1064 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1067 0
	cmpl	$0, 16(%ebp)
	jne	.L291
	.loc 1 1068 0
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 8(%ecx)
.L291:
.LBE19:
	.loc 1 1070 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	save_replacement_text, .-save_replacement_text
.globl _cpp_create_trad_definition
	.type	_cpp_create_trad_definition, @function
_cpp_create_trad_definition:
.LFB40:
	.loc 1 1078 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	pushl	%esi
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$32, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1081 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1085 0
	movl	8(%ebp), %eax
	movl	508(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 516(%eax)
	.loc 1 1086 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1087 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1088 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_output_buffer
	.loc 1 1091 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$40, %al
	jne	.L293
	.loc 1 1095 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_parameters
	xorl	$1, %eax
	testb	%al, %al
	je	.L295
	.loc 1 1096 0
	movl	$0, 12(%ebp)
	jmp	.L293
.L295:
	.loc 1 1100 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1101 0
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
	.loc 1 1102 0
	movl	12(%ebp), %edx
	movzbl	18(%edx), %eax
	orl	$1, %eax
	movb	%al, 18(%edx)
.L293:
	.loc 1 1107 0
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movzbl	397(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_whitespace
	movl	%eax, (%esi)
	.loc 1 1111 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1112 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_out_logical_line
	.loc 1 1113 0
	movl	8(%ebp), %eax
	movzbl	17(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 1115 0
	cmpl	$0, 12(%ebp)
	jne	.L297
	.loc 1 1116 0
	movl	$0, -28(%ebp)
	jmp	.L299
.L297:
	.loc 1 1119 0
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1120 0
	movl	8(%ebp), %eax
	movl	516(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1121 0
	jmp	.L300
.L301:
	.loc 1 1122 0
	subl	$1, -16(%ebp)
.L300:
	.loc 1 1121 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jbe	.L302
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$3072, %eax
	testl	%eax, %eax
	jne	.L301
.L302:
	.loc 1 1123 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 516(%edx)
	.loc 1 1124 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_replacement_text
	.loc 1 1126 0
	movl	$1, -28(%ebp)
.L299:
	movl	-28(%ebp), %eax
	.loc 1 1127 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	_cpp_create_trad_definition, .-_cpp_create_trad_definition
	.type	canonicalize_text, @function
canonicalize_text:
.LFB41:
	.loc 1 1139 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$16, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1140 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1141 0
	movl	20(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 1143 0
	jmp	.L321
.L307:
	.loc 1 1145 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$3072, %eax
	testl	%eax, %eax
	je	.L308
	cmpb	$0, -5(%ebp)
	jne	.L308
.L310:
	.loc 1 1148 0
	addl	$1, 12(%ebp)
	subl	$1, 16(%ebp)
	.loc 1 1149 0
	cmpl	$0, 16(%ebp)
	je	.L311
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$3072, %eax
	testl	%eax, %eax
	jne	.L310
.L311:
	.loc 1 1150 0
	movl	8(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, 8(%ebp)
	.loc 1 1145 0
	jmp	.L306
.L308:
	.loc 1 1154 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$39, %al
	je	.L313
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$34, %al
	jne	.L315
.L313:
	.loc 1 1156 0
	cmpb	$0, -5(%ebp)
	jne	.L316
	.loc 1 1157 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	jmp	.L315
.L316:
	.loc 1 1158 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	-5(%ebp), %al
	jne	.L315
	.loc 1 1159 0
	movb	$0, -5(%ebp)
.L315:
	.loc 1 1161 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, 8(%ebp)
	addl	$1, 12(%ebp)
	subl	$1, 16(%ebp)
.L306:
.L321:
	.loc 1 1143 0
	cmpl	$0, 16(%ebp)
	jne	.L307
	.loc 1 1165 0
	movl	20(%ebp), %edx
	movzbl	-5(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 1166 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	.loc 1 1167 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	canonicalize_text, .-canonicalize_text
.globl _cpp_expansions_different_trad
	.type	_cpp_expansions_different_trad, @function
_cpp_expansions_different_trad:
.LFB42:
	.loc 1 1174 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%edi
.LCFI89:
	pushl	%esi
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$92, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1175 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1176 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	addl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1177 0
	movb	$0, -14(%ebp)
	movb	$0, -15(%ebp)
	.loc 1 1181 0
	movl	8(%ebp), %eax
	movzwl	16(%eax), %eax
	testw	%ax, %ax
	je	.L323
.LBB20:
	.loc 1 1183 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1185 0
	movb	$1, -13(%ebp)
.L325:
.LBB21:
	.loc 1 1188 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1189 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1191 0
	movl	-24(%ebp), %eax
	movzwl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movzwl	4(%eax), %eax
	cmpw	%ax, %dx
	jne	.L332
	.loc 1 1194 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %ecx
	addl	$6, %ecx
	leal	-14(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_text
	movl	%eax, -40(%ebp)
	.loc 1 1195 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %ecx
	addl	$6, %ecx
	leal	-15(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_text
	movl	%eax, -36(%ebp)
	.loc 1 1196 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L332
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -68(%ebp)
	movl	%edx, -72(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -76(%ebp)
	cld
	movl	-76(%ebp), %ecx
	cmpl	%ecx, -76(%ebp)
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %edi
	movl	-76(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L332
	.loc 1 1198 0
	movl	-24(%ebp), %eax
	movzwl	4(%eax), %eax
	testw	%ax, %ax
	jne	.L330
	.loc 1 1200 0
	movb	$0, -13(%ebp)
	.loc 1 1201 0
	jmp	.L332
.L330:
	.loc 1 1203 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	andl	$-4, %eax
	addl	%eax, -32(%ebp)
	.loc 1 1204 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	addl	$9, %eax
	andl	$-4, %eax
	addl	%eax, -28(%ebp)
	.loc 1 1205 0
	jmp	.L325
.L323:
.LBE21:
.LBE20:
	.loc 1 1209 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	leal	-14(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_text
	movl	%eax, -40(%ebp)
	.loc 1 1210 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	leal	-15(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	canonicalize_text
	movl	%eax, -36(%ebp)
	.loc 1 1211 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L333
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -84(%ebp)
	movl	-40(%ebp), %esi
	movl	%esi, -88(%ebp)
	cld
	movl	-88(%ebp), %edi
	cmpl	%edi, -88(%ebp)
	movl	-80(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-88(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L335
.L333:
	movl	$1, -64(%ebp)
	jmp	.L336
.L335:
	movl	$0, -64(%ebp)
.L336:
	movzbl	-64(%ebp), %eax
	movb	%al, -13(%ebp)
.L332:
	.loc 1 1214 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1215 0
	movzbl	-13(%ebp), %eax
	.loc 1 1216 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	_cpp_expansions_different_trad, .-_cpp_expansions_different_trad
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
	.long	.LCFI13-.LCFI11
	.byte	0x83
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
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI25-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
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
	.long	.LCFI28-.LFB29
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI32-.LFB30
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI36-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI38-.LFB32
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI42-.LFB33
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI46-.LFB17
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
	.long	.LCFI50-.LFB34
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI54-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI57-.LFB36
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI62-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI63
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI68-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI71-.LCFI69
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI72-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI77-.LCFI73
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
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI78-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI79
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI83-.LFB41
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI87-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI88
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE44:
	.file 3 "../../../kg++fe/gnu/cpplib.h"
	.file 4 "../../../kg++fe/gnu/hashtable.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "../../../kg++fe/gnu/line-map.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "../../../include/gnu/obstack.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "../../../include/gnu/safe-ctype.h"
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB38-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI68-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI69-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB40-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI78-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI79-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x31da
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cpptrad.c"
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
	.long	0x4c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x4ce
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
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x4e4
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
	.long	0x4ea
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
	.uleb128 0x2
	.byte	0x4
	.long	0xc4
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0xd
	.long	0x4c8
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x4c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x4ce
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
	.long	0x485
	.uleb128 0x2
	.byte	0x4
	.long	0x1d5
	.uleb128 0xa
	.long	0x4e4
	.long	0xa7
	.uleb128 0xb
	.long	0xbd
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x477
	.uleb128 0xa
	.long	0x4fa
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
	.long	0x55c
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
	.long	0x55c
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
	.long	0x514
	.uleb128 0x10
	.long	0x68f
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
	.long	0x55c
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
	.long	0x6a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"freefun"
	.byte	0x9
	.byte	0xb6
	.long	0x6bb
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
	.long	0x6a4
	.byte	0x1
	.long	0x55c
	.uleb128 0x13
	.long	0x1c1
	.uleb128 0x13
	.long	0x1a4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x68f
	.uleb128 0x14
	.long	0x6bb
	.byte	0x1
	.uleb128 0x13
	.long	0x1c1
	.uleb128 0x13
	.long	0x55c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6aa
	.uleb128 0x8
	.long	0x6ff
	.long	.LASF3
	.byte	0xc
	.byte	0x4
	.byte	0x19
	.uleb128 0xe
	.string	"str"
	.byte	0x4
	.byte	0x1c
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"len"
	.byte	0x4
	.byte	0x1d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"hash_value"
	.byte	0x4
	.byte	0x1e
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x4
	.byte	0x29
	.long	0x70a
	.uleb128 0xd
	.long	0x7a8
	.string	"ht"
	.byte	0x48
	.byte	0x4
	.byte	0x29
	.uleb128 0xe
	.string	"stack"
	.byte	0x4
	.byte	0x32
	.long	0x562
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"entries"
	.byte	0x4
	.byte	0x34
	.long	0x7be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"alloc_node"
	.byte	0x4
	.byte	0x36
	.long	0x7da
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"nslots"
	.byte	0x4
	.byte	0x38
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"nelements"
	.byte	0x4
	.byte	0x39
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF5
	.byte	0x4
	.byte	0x3c
	.long	0xba4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"searches"
	.byte	0x4
	.byte	0x3f
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"collisions"
	.byte	0x4
	.byte	0x40
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x6
	.string	"hashnode"
	.byte	0x4
	.byte	0x2a
	.long	0x7b8
	.uleb128 0x2
	.byte	0x4
	.long	0x6c1
	.uleb128 0x2
	.byte	0x4
	.long	0x7a8
	.uleb128 0x12
	.long	0x7d4
	.byte	0x1
	.long	0x7a8
	.uleb128 0x13
	.long	0x7d4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6ff
	.uleb128 0x2
	.byte	0x4
	.long	0x7c4
	.uleb128 0x16
	.long	0xba4
	.long	.LASF6
	.value	0x210
	.byte	0x4
	.byte	0x28
	.uleb128 0x17
	.long	.LASF7
	.byte	0x2
	.value	0x151
	.long	0x2343
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"overlaid_buffer"
	.byte	0x2
	.value	0x154
	.long	0x2343
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"state"
	.byte	0x2
	.value	0x157
	.long	0x20b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF8
	.byte	0x2
	.value	0x15a
	.long	0xc5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"map"
	.byte	0x2
	.value	0x15b
	.long	0x1cd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"line"
	.byte	0x2
	.value	0x15c
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"directive_line"
	.byte	0x2
	.value	0x15f
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"a_buff"
	.byte	0x2
	.value	0x162
	.long	0x20b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"u_buff"
	.byte	0x2
	.value	0x163
	.long	0x20b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"free_buffs"
	.byte	0x2
	.value	0x164
	.long	0x20b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"base_context"
	.byte	0x2
	.value	0x167
	.long	0x1fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.long	.LASF9
	.byte	0x2
	.value	0x168
	.long	0x2349
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.long	.LASF10
	.byte	0x2
	.value	0x16b
	.long	0x2355
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"next_include_file"
	.byte	0x2
	.value	0x170
	.long	0x2371
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.string	"mi_cmacro"
	.byte	0x2
	.value	0x173
	.long	0x237d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.string	"mi_ind_cmacro"
	.byte	0x2
	.value	0x174
	.long	0x237d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.string	"mi_valid"
	.byte	0x2
	.value	0x175
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.string	"cur_token"
	.byte	0x2
	.value	0x178
	.long	0x1ebf
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.string	"base_run"
	.byte	0x2
	.value	0x179
	.long	0x1f75
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.string	"cur_run"
	.byte	0x2
	.value	0x179
	.long	0x1fc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.string	"lookaheads"
	.byte	0x2
	.value	0x17a
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.string	"keep_tokens"
	.byte	0x2
	.value	0x17d
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.string	"errors"
	.byte	0x2
	.value	0x180
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.string	"macro_buffer"
	.byte	0x2
	.value	0x183
	.long	0x46b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.string	"macro_buffer_len"
	.byte	0x2
	.value	0x184
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.string	"all_include_files"
	.byte	0x2
	.value	0x187
	.long	0x2397
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.string	"max_include_len"
	.byte	0x2
	.value	0x18b
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.string	"first_unused_line"
	.byte	0x2
	.value	0x18e
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.string	"date"
	.byte	0x2
	.value	0x191
	.long	0x1ec5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.string	"time"
	.byte	0x2
	.value	0x192
	.long	0x1ec5
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
	.long	0x23a4
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.string	"hash_ob"
	.byte	0x2
	.value	0x19d
	.long	0x562
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.string	"buffer_ob"
	.byte	0x2
	.value	0x1a1
	.long	0x562
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.string	"pragmas"
	.byte	0x2
	.value	0x1a5
	.long	0x23b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.string	"cb"
	.byte	0x2
	.value	0x1a8
	.long	0x162e
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x17
	.long	.LASF4
	.byte	0x2
	.value	0x1ab
	.long	0x23bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.string	"op_stack"
	.byte	0x2
	.value	0x1ae
	.long	0x23ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.string	"op_limit"
	.byte	0x2
	.value	0x1ae
	.long	0x23ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.string	"opts"
	.byte	0x2
	.value	0x1b1
	.long	0xe85
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x17
	.long	.LASF11
	.byte	0x2
	.value	0x1b5
	.long	0x21ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x9
	.string	"print"
	.byte	0x2
	.value	0x1b8
	.long	0x224c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.string	"our_hashtable"
	.byte	0x2
	.value	0x1bb
	.long	0xd2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.string	"out"
	.byte	0x2
	.value	0x1c4
	.long	0x22ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.string	"saved_line"
	.byte	0x2
	.value	0x1c8
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x7e0
	.uleb128 0x18
	.long	0xbdf
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
	.long	0xc5e
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
	.uleb128 0xf
	.long	.LASF12
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
	.long	0xbaa
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
	.long	0xcdc
	.long	.LASF8
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.uleb128 0xe
	.string	"maps"
	.byte	0x7
	.byte	0x36
	.long	0xcdc
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
	.long	0xce2
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
	.byte	0x3
	.byte	0x28
	.long	0x7e0
	.uleb128 0x15
	.long	.LASF13
	.byte	0x3
	.byte	0x2a
	.long	0xd01
	.uleb128 0x8
	.long	0xe85
	.long	.LASF13
	.byte	0x58
	.byte	0x3
	.byte	0x2a
	.uleb128 0x9
	.string	"cur"
	.byte	0x2
	.value	0x114
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"backup_to"
	.byte	0x2
	.value	0x115
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF14
	.byte	0x2
	.value	0x116
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"line_base"
	.byte	0x2
	.value	0x117
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"prev"
	.byte	0x2
	.value	0x119
	.long	0x22c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"buf"
	.byte	0x2
	.value	0x11b
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"inc"
	.byte	0x2
	.value	0x11f
	.long	0x22dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.long	.LASF15
	.byte	0x2
	.value	0x123
	.long	0x22e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"col_adjust"
	.byte	0x2
	.value	0x126
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"saved_flags"
	.byte	0x2
	.value	0x129
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"last_Wtrigraphs"
	.byte	0x2
	.value	0x12d
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"warned_cplusplus_comments"
	.byte	0x2
	.value	0x133
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"from_stage3"
	.byte	0x2
	.value	0x138
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"search_cached"
	.byte	0x2
	.value	0x13c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"return_at_eof"
	.byte	0x2
	.value	0x141
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"dir"
	.byte	0x2
	.value	0x145
	.long	0x1c00
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"saved_cur"
	.byte	0x2
	.value	0x148
	.long	0x1ec5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.string	"saved_rlimit"
	.byte	0x2
	.value	0x148
	.long	0x1ec5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x8
	.long	0x143f
	.long	.LASF16
	.byte	0x68
	.byte	0x3
	.byte	0x2b
	.uleb128 0xe
	.string	"tabstop"
	.byte	0x3
	.byte	0xe5
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"pending"
	.byte	0x3
	.byte	0xe8
	.long	0x1bfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"quote_include"
	.byte	0x3
	.byte	0xeb
	.long	0x1c7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"bracket_include"
	.byte	0x3
	.byte	0xec
	.long	0x1c7f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"map_list"
	.byte	0x3
	.byte	0xf0
	.long	0x1c9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"include_prefix"
	.byte	0x3
	.byte	0xf4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"include_prefix_len"
	.byte	0x3
	.byte	0xf5
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"lang"
	.byte	0x3
	.byte	0xf8
	.long	0x1a8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"verbose"
	.byte	0x3
	.byte	0xfb
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"cplusplus"
	.byte	0x3
	.byte	0xfe
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.string	"cplusplus_comments"
	.byte	0x3
	.value	0x101
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x9
	.string	"objc"
	.byte	0x3
	.value	0x105
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0x9
	.string	"discard_comments"
	.byte	0x3
	.value	0x108
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"discard_comments_in_macro_exp"
	.byte	0x3
	.value	0x10c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x9
	.string	"trigraphs"
	.byte	0x3
	.value	0x10f
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x9
	.string	"digraphs"
	.byte	0x3
	.value	0x112
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x9
	.string	"extended_numbers"
	.byte	0x3
	.value	0x115
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"print_include_names"
	.byte	0x3
	.value	0x118
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x9
	.string	"pedantic_errors"
	.byte	0x3
	.value	0x11b
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x9
	.string	"inhibit_warnings"
	.byte	0x3
	.value	0x11e
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x9
	.string	"warn_deprecated"
	.byte	0x3
	.value	0x121
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"warn_system_headers"
	.byte	0x3
	.value	0x124
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"inhibit_errors"
	.byte	0x3
	.value	0x128
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"warn_comments"
	.byte	0x3
	.value	0x12b
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"warn_trigraphs"
	.byte	0x3
	.value	0x12e
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"warn_import"
	.byte	0x3
	.value	0x131
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x9
	.string	"warn_multichar"
	.byte	0x3
	.value	0x134
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x9
	.string	"warn_traditional"
	.byte	0x3
	.value	0x138
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x9
	.string	"warn_long_long"
	.byte	0x3
	.value	0x13b
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"warn_endif_labels"
	.byte	0x3
	.value	0x13e
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x9
	.string	"warn_num_sign_change"
	.byte	0x3
	.value	0x142
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x9
	.string	"warnings_are_errors"
	.byte	0x3
	.value	0x145
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x9
	.string	"no_output"
	.byte	0x3
	.value	0x149
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"remap"
	.byte	0x3
	.value	0x14d
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x9
	.string	"no_line_commands"
	.byte	0x3
	.value	0x150
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.string	"ignore_srcdir"
	.byte	0x3
	.value	0x154
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3b
	.uleb128 0x9
	.string	"dollars_in_ident"
	.byte	0x3
	.value	0x157
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"warn_undef"
	.byte	0x3
	.value	0x15a
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x9
	.string	"warn_unused_macros"
	.byte	0x3
	.value	0x15d
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x9
	.string	"c99"
	.byte	0x3
	.value	0x160
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x9
	.string	"std"
	.byte	0x3
	.value	0x163
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"pedantic"
	.byte	0x3
	.value	0x166
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.string	"preprocessed"
	.byte	0x3
	.value	0x16a
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x9
	.string	"no_standard_includes"
	.byte	0x3
	.value	0x16d
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x9
	.string	"no_standard_cplusplus_includes"
	.byte	0x3
	.value	0x170
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"dump_macros"
	.byte	0x3
	.value	0x173
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x9
	.string	"dump_includes"
	.byte	0x3
	.value	0x176
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"show_column"
	.byte	0x3
	.value	0x179
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"operator_names"
	.byte	0x3
	.value	0x17c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"traditional"
	.byte	0x3
	.value	0x17f
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x9
	.string	"deps"
	.byte	0x3
	.value	0x190
	.long	0x1b83
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"precision"
	.byte	0x3
	.value	0x196
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"char_precision"
	.byte	0x3
	.value	0x196
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"int_precision"
	.byte	0x3
	.value	0x196
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"wchar_precision"
	.byte	0x3
	.value	0x196
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"unsigned_char"
	.byte	0x3
	.value	0x199
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"unsigned_wchar"
	.byte	0x3
	.value	0x199
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0x9
	.string	"stdc_0_in_system_headers"
	.byte	0x3
	.value	0x19c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.byte	0x0
	.uleb128 0x15
	.long	.LASF17
	.byte	0x3
	.byte	0x2c
	.long	0x144a
	.uleb128 0x8
	.long	0x14a4
	.long	.LASF17
	.byte	0x10
	.byte	0x3
	.byte	0x2c
	.uleb128 0xe
	.string	"line"
	.byte	0x3
	.byte	0xb6
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"col"
	.byte	0x3
	.byte	0xb7
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"type"
	.byte	0x3
	.byte	0xb8
	.long	0x16e3
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
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"val"
	.byte	0x3
	.byte	0xc2
	.long	0x1afe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF18
	.byte	0x3
	.byte	0x2d
	.long	0x14af
	.uleb128 0x8
	.long	0x14d9
	.long	.LASF18
	.byte	0x8
	.byte	0x3
	.byte	0x2d
	.uleb128 0xe
	.string	"len"
	.byte	0x3
	.byte	0xa5
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"text"
	.byte	0x3
	.byte	0xa6
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	.LASF19
	.byte	0x3
	.byte	0x2e
	.long	0x14e4
	.uleb128 0x8
	.long	0x1575
	.long	.LASF19
	.byte	0x18
	.byte	0x3
	.byte	0x2e
	.uleb128 0x9
	.string	"ident"
	.byte	0x3
	.value	0x1e6
	.long	0x6c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF20
	.byte	0x3
	.value	0x1e7
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"directive_index"
	.byte	0x3
	.value	0x1e8
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"rid_code"
	.byte	0x3
	.value	0x1e9
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"type"
	.byte	0x3
	.value	0x1ea
	.long	0x1d71
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
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x9
	.string	"value"
	.byte	0x3
	.value	0x1f7
	.long	0x1e24
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF21
	.byte	0x3
	.byte	0x2f
	.long	0x1580
	.uleb128 0x8
	.long	0x162e
	.long	.LASF21
	.byte	0x14
	.byte	0x3
	.byte	0x2f
	.uleb128 0xe
	.string	"params"
	.byte	0x2
	.byte	0x49
	.long	0x1ed0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x2
	.byte	0x52
	.long	0x1e9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"line"
	.byte	0x2
	.byte	0x55
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"count"
	.byte	0x2
	.byte	0x58
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"paramc"
	.byte	0x2
	.byte	0x5b
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"fun_like"
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x2
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
	.long	0x16e3
	.long	.LASF22
	.byte	0x20
	.byte	0x3
	.byte	0x30
	.uleb128 0x9
	.string	"line_change"
	.byte	0x3
	.value	0x1a3
	.long	0x1cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"file_change"
	.byte	0x3
	.value	0x1a4
	.long	0x1cde
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"include"
	.byte	0x3
	.value	0x1a5
	.long	0x1cff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"define"
	.byte	0x3
	.value	0x1a7
	.long	0x1d1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"undef"
	.byte	0x3
	.value	0x1a8
	.long	0x1d1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ident"
	.byte	0x3
	.value	0x1a9
	.long	0x1d42
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"def_pragma"
	.byte	0x3
	.value	0x1aa
	.long	0x1d59
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"register_builtins"
	.byte	0x3
	.value	0x1ad
	.long	0x1d6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x1a8a
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
	.long	0x1afe
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
	.long	0x1b42
	.byte	0x8
	.byte	0x3
	.byte	0xbc
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x3
	.byte	0xbd
	.long	0x1b42
	.uleb128 0x1d
	.string	"source"
	.byte	0x3
	.byte	0xbe
	.long	0x1b48
	.uleb128 0x1d
	.string	"str"
	.byte	0x3
	.byte	0xbf
	.long	0x14af
	.uleb128 0x1d
	.string	"arg_no"
	.byte	0x3
	.byte	0xc0
	.long	0xb6
	.uleb128 0x1d
	.string	"c"
	.byte	0x3
	.byte	0xc1
	.long	0xd2
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x14d9
	.uleb128 0x2
	.byte	0x4
	.long	0x1b4e
	.uleb128 0x3
	.long	0x143f
	.uleb128 0x1e
	.long	0x1b83
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
	.long	0x1bec
	.byte	0x8
	.byte	0x3
	.value	0x183
	.uleb128 0x9
	.string	"style"
	.byte	0x3
	.value	0x185
	.long	0x1b53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"missing_files"
	.byte	0x3
	.value	0x188
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"phony_targets"
	.byte	0x3
	.value	0x18c
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"ignore_main_file"
	.byte	0x3
	.value	0x18f
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x20
	.string	"cpp_pending"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1bec
	.uleb128 0xd
	.long	0x1c7f
	.string	"search_path"
	.byte	0x20
	.byte	0x3
	.byte	0xeb
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0x86
	.long	0x1c7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"name"
	.byte	0x2
	.byte	0x8a
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0x8b
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"ino"
	.byte	0x2
	.byte	0x8e
	.long	0x4fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dev"
	.byte	0x2
	.byte	0x8f
	.long	0x507
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x2
	.byte	0x91
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"name_map"
	.byte	0x2
	.byte	0x94
	.long	0x1f3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1c00
	.uleb128 0x20
	.string	"file_name_map_list"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1c85
	.uleb128 0x14
	.long	0x1cb6
	.byte	0x1
	.uleb128 0x13
	.long	0x1cb6
	.uleb128 0x13
	.long	0x1b48
	.uleb128 0x13
	.long	0xaf
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xceb
	.uleb128 0x2
	.byte	0x4
	.long	0x1ca0
	.uleb128 0x14
	.long	0x1cd3
	.byte	0x1
	.uleb128 0x13
	.long	0x1cb6
	.uleb128 0x13
	.long	0x1cd3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1cd9
	.uleb128 0x3
	.long	0xbdf
	.uleb128 0x2
	.byte	0x4
	.long	0x1cc2
	.uleb128 0x14
	.long	0x1cff
	.byte	0x1
	.uleb128 0x13
	.long	0x1cb6
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x460
	.uleb128 0x13
	.long	0x1b48
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1ce4
	.uleb128 0x14
	.long	0x1d1b
	.byte	0x1
	.uleb128 0x13
	.long	0x1cb6
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x1b42
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d05
	.uleb128 0x14
	.long	0x1d37
	.byte	0x1
	.uleb128 0x13
	.long	0x1cb6
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x1d37
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d3d
	.uleb128 0x3
	.long	0x14a4
	.uleb128 0x2
	.byte	0x4
	.long	0x1d21
	.uleb128 0x14
	.long	0x1d59
	.byte	0x1
	.uleb128 0x13
	.long	0x1cb6
	.uleb128 0x13
	.long	0xb6
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d48
	.uleb128 0x14
	.long	0x1d6b
	.byte	0x1
	.uleb128 0x13
	.long	0x1cb6
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d5f
	.uleb128 0x21
	.long	0x1da9
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
	.long	0x1e24
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
	.long	0x1e70
	.byte	0x4
	.byte	0x3
	.value	0x1ee
	.uleb128 0x23
	.long	.LASF24
	.byte	0x3
	.value	0x1ef
	.long	0x1e70
	.uleb128 0x24
	.string	"answers"
	.byte	0x3
	.value	0x1f0
	.long	0x1e7f
	.uleb128 0x24
	.string	"operator_code"
	.byte	0x3
	.value	0x1f2
	.long	0x16e3
	.uleb128 0x24
	.string	"builtin"
	.byte	0x3
	.value	0x1f6
	.long	0x1da9
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1575
	.uleb128 0x20
	.string	"answer"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1e76
	.uleb128 0x6
	.string	"uchar"
	.byte	0x2
	.byte	0x20
	.long	0xd2
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x1b
	.long	0x1ebf
	.byte	0x4
	.byte	0x2
	.byte	0x4f
	.uleb128 0x1d
	.string	"tokens"
	.byte	0x2
	.byte	0x50
	.long	0x1ebf
	.uleb128 0x1d
	.string	"text"
	.byte	0x2
	.byte	0x51
	.long	0x1ec5
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x143f
	.uleb128 0x2
	.byte	0x4
	.long	0x1ecb
	.uleb128 0x3
	.long	0x1e85
	.uleb128 0x2
	.byte	0x4
	.long	0x1b42
	.uleb128 0x15
	.long	.LASF25
	.byte	0x2
	.byte	0x6f
	.long	0x1ee1
	.uleb128 0x8
	.long	0x1f28
	.long	.LASF25
	.byte	0x10
	.byte	0x2
	.byte	0x6f
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0x72
	.long	0x1f28
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"base"
	.byte	0x2
	.byte	0x73
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cur"
	.byte	0x2
	.byte	0x73
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x2
	.byte	0x73
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1ee1
	.uleb128 0x20
	.string	"file_name_map"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1f2e
	.uleb128 0x25
	.long	0x1f6f
	.string	"utoken"
	.byte	0x4
	.byte	0x2
	.byte	0x9b
	.uleb128 0x1d
	.string	"token"
	.byte	0x2
	.byte	0x9c
	.long	0x1b48
	.uleb128 0x1d
	.string	"ptoken"
	.byte	0x2
	.byte	0x9d
	.long	0x1f6f
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1b48
	.uleb128 0x15
	.long	.LASF26
	.byte	0x2
	.byte	0xa1
	.long	0x1f80
	.uleb128 0x8
	.long	0x1fc8
	.long	.LASF26
	.byte	0x10
	.byte	0x2
	.byte	0xa1
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0xa4
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x2
	.byte	0xa4
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x2
	.byte	0xa5
	.long	0x1ebf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x2
	.byte	0xa5
	.long	0x1ebf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f75
	.uleb128 0x15
	.long	.LASF27
	.byte	0x2
	.byte	0xae
	.long	0x1fd9
	.uleb128 0x8
	.long	0x2040
	.long	.LASF27
	.byte	0x1c
	.byte	0x2
	.byte	0xae
	.uleb128 0xe
	.string	"next"
	.byte	0x2
	.byte	0xb2
	.long	0x20ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x2
	.byte	0xb2
	.long	0x20ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0x2
	.byte	0xc5
	.long	0x208d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"buff"
	.byte	0x2
	.byte	0xc9
	.long	0x20b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF24
	.byte	0x2
	.byte	0xcc
	.long	0x1b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"direct_p"
	.byte	0x2
	.byte	0xcf
	.long	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x26
	.long	0x2068
	.byte	0x8
	.byte	0x2
	.byte	0xba
	.uleb128 0xe
	.string	"first"
	.byte	0x2
	.byte	0xbb
	.long	0x1f44
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"last"
	.byte	0x2
	.byte	0xbc
	.long	0x1f44
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x26
	.long	0x208d
	.byte	0x8
	.byte	0x2
	.byte	0xc1
	.uleb128 0xe
	.string	"cur"
	.byte	0x2
	.byte	0xc2
	.long	0x1ec5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF14
	.byte	0x2
	.byte	0xc3
	.long	0x1ec5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1b
	.long	0x20ad
	.byte	0x8
	.byte	0x2
	.byte	0xb5
	.uleb128 0x1d
	.string	"iso"
	.byte	0x2
	.byte	0xbd
	.long	0x2040
	.uleb128 0x1d
	.string	"trad"
	.byte	0x2
	.byte	0xc4
	.long	0x2068
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1fce
	.uleb128 0x2
	.byte	0x4
	.long	0x1ed6
	.uleb128 0xd
	.long	0x21ee
	.string	"lexer_state"
	.byte	0x10
	.byte	0x2
	.byte	0xd3
	.uleb128 0xe
	.string	"in_directive"
	.byte	0x2
	.byte	0xd5
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"directive_wants_padding"
	.byte	0x2
	.byte	0xda
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"skipping"
	.byte	0x2
	.byte	0xdd
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"angled_headers"
	.byte	0x2
	.byte	0xe0
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.string	"in_expression"
	.byte	0x2
	.byte	0xe3
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"save_comments"
	.byte	0x2
	.byte	0xe7
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"lexing_comment"
	.byte	0x2
	.byte	0xea
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"va_args_ok"
	.byte	0x2
	.byte	0xed
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"poisoned_ok"
	.byte	0x2
	.byte	0xf0
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"prevent_expansion"
	.byte	0x2
	.byte	0xf3
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.string	"parsing_args"
	.byte	0x2
	.byte	0xf6
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"skip_eval"
	.byte	0x2
	.byte	0xf9
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x224c
	.long	.LASF11
	.byte	0x10
	.byte	0x2
	.byte	0xfe
	.uleb128 0xe
	.string	"n_defined"
	.byte	0x2
	.byte	0xff
	.long	0x1b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"n_true"
	.byte	0x2
	.value	0x100
	.long	0x1b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"n_false"
	.byte	0x2
	.value	0x101
	.long	0x1b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"n__VA_ARGS__"
	.byte	0x2
	.value	0x102
	.long	0x1b42
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x22c2
	.string	"printer"
	.byte	0x18
	.byte	0x2
	.value	0x108
	.uleb128 0x9
	.string	"outf"
	.byte	0x2
	.value	0x109
	.long	0x22c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map"
	.byte	0x2
	.value	0x10a
	.long	0x1cd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"prev"
	.byte	0x2
	.value	0x10b
	.long	0x1b48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"source"
	.byte	0x2
	.value	0x10c
	.long	0x1b48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"line"
	.byte	0x2
	.value	0x10d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"printed"
	.byte	0x2
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
	.long	0xd01
	.uleb128 0x20
	.string	"include_file"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x22ce
	.uleb128 0x27
	.long	.LASF15
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x22e3
	.uleb128 0x1f
	.long	0x233d
	.byte	0x10
	.byte	0x2
	.value	0x1bf
	.uleb128 0x9
	.string	"base"
	.byte	0x2
	.value	0x1c0
	.long	0x233d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x2
	.value	0x1c1
	.long	0x233d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cur"
	.byte	0x2
	.value	0x1c2
	.long	0x233d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"first_line"
	.byte	0x2
	.value	0x1c3
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1e85
	.uleb128 0x2
	.byte	0x4
	.long	0xcf6
	.uleb128 0x2
	.byte	0x4
	.long	0x1fd9
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x235b
	.uleb128 0x3
	.long	0x234f
	.uleb128 0x20
	.string	"pending_option"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2377
	.uleb128 0x2
	.byte	0x4
	.long	0x2360
	.uleb128 0x2
	.byte	0x4
	.long	0x2383
	.uleb128 0x3
	.long	0x14d9
	.uleb128 0x20
	.string	"splay_tree_s"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2388
	.uleb128 0x20
	.string	"deps"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x239d
	.uleb128 0x20
	.string	"pragma_entry"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23aa
	.uleb128 0x2
	.byte	0x4
	.long	0x70a
	.uleb128 0x20
	.string	"op"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x23c5
	.uleb128 0xd
	.long	0x240f
	.string	"block"
	.byte	0x8
	.byte	0x1
	.byte	0x22
	.uleb128 0xe
	.string	"text_len"
	.byte	0x1
	.byte	0x23
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF20
	.byte	0x1
	.byte	0x24
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"text"
	.byte	0x1
	.byte	0x25
	.long	0x240f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0xa
	.long	0x241f
	.long	0x1e85
	.uleb128 0xb
	.long	0xbd
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x248d
	.string	"fun_macro"
	.byte	0x18
	.byte	0x1
	.byte	0x2e
	.uleb128 0xe
	.string	"buff"
	.byte	0x1
	.byte	0x30
	.long	0x20b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"args"
	.byte	0x1
	.byte	0x36
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF23
	.byte	0x1
	.byte	0x39
	.long	0x1b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"offset"
	.byte	0x1
	.byte	0x3c
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"line"
	.byte	0x1
	.byte	0x3f
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"argc"
	.byte	0x1
	.byte	0x42
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	0x2505
	.string	"ls"
	.byte	0x4
	.byte	0x1
	.byte	0x46
	.uleb128 0x19
	.string	"ls_none"
	.sleb128 0
	.uleb128 0x19
	.string	"ls_fun_open"
	.sleb128 1
	.uleb128 0x19
	.string	"ls_fun_close"
	.sleb128 2
	.uleb128 0x19
	.string	"ls_defined"
	.sleb128 3
	.uleb128 0x19
	.string	"ls_defined_close"
	.sleb128 4
	.uleb128 0x19
	.string	"ls_hash"
	.sleb128 5
	.uleb128 0x19
	.string	"ls_predicate"
	.sleb128 6
	.uleb128 0x19
	.string	"ls_answer"
	.sleb128 7
	.byte	0x0
	.uleb128 0x28
	.long	0x2574
	.string	"check_output_buffer"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST0
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0x6b
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x6c
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2c
	.string	"size"
	.byte	0x1
	.byte	0x74
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"new_size"
	.byte	0x1
	.byte	0x75
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x25b8
	.string	"handle_newline"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0x1ec5
	.long	.LFB22
	.long	.LFE22
	.long	.LLST1
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0x85
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"cur"
	.byte	0x1
	.byte	0x86
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x2616
	.string	"skip_escaped_newlines"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.long	0x1ec5
	.long	.LFB23
	.long	.LFE23
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0x95
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"cur"
	.byte	0x1
	.byte	0x96
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"orig_cur"
	.byte	0x1
	.byte	0x98
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x26b8
	.string	"copy_comment"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.long	0x1ec5
	.long	.LFB24
	.long	.LFE24
	.long	.LLST3
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0xb1
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"cur"
	.byte	0x1
	.byte	0xb2
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"in_define"
	.byte	0x1
	.byte	0xb3
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF12
	.byte	0x1
	.byte	0xb5
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF2
	.byte	0x1
	.byte	0xb6
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"out"
	.byte	0x1
	.byte	0xb7
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"done"
	.byte	0x1
	.byte	0xd9
	.long	.L25
	.uleb128 0x2b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.byte	0xbb
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x2757
	.string	"skip_whitespace"
	.byte	0x1
	.value	0x102
	.byte	0x1
	.long	0x1ec5
	.long	.LFB25
	.long	.LFE25
	.long	.LLST4
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0xff
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"cur"
	.byte	0x1
	.value	0x100
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"skip_comments"
	.byte	0x1
	.value	0x101
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"out"
	.byte	0x1
	.value	0x103
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.value	0x107
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x32
	.string	"tmp"
	.byte	0x1
	.value	0x112
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x27ce
	.string	"lex_identifier"
	.byte	0x1
	.value	0x131
	.byte	0x1
	.long	0x1b42
	.long	.LFB26
	.long	.LFE26
	.long	.LLST5
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x12f
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"cur"
	.byte	0x1
	.value	0x130
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x132
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"out"
	.byte	0x1
	.value	0x133
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"result"
	.byte	0x1
	.value	0x134
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x2837
	.byte	0x1
	.string	"_cpp_overlay_buffer"
	.byte	0x1
	.value	0x14f
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST6
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x14c
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"start"
	.byte	0x1
	.value	0x14d
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x14e
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF7
	.byte	0x1
	.value	0x150
	.long	0x2343
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x34
	.long	0x2880
	.byte	0x1
	.string	"_cpp_remove_overlay"
	.byte	0x1
	.value	0x160
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST7
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x15f
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF7
	.byte	0x1
	.value	0x161
	.long	0x2343
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x36
	.long	0x28e0
	.byte	0x1
	.string	"_cpp_read_logical_line_trad"
	.byte	0x1
	.value	0x16e
	.byte	0x1
	.long	0xce2
	.long	.LFB29
	.long	.LFE29
	.long	.LLST8
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x16d
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x32
	.string	"stop"
	.byte	0x1
	.value	0x173
	.long	0xce2
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x2955
	.string	"maybe_start_funlike"
	.byte	0x1
	.value	0x18f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST9
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x18b
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x18c
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"start"
	.byte	0x1
	.value	0x18d
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0x18e
	.long	0x2955
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.value	0x190
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x241f
	.uleb128 0x37
	.long	0x29a0
	.string	"save_argument"
	.byte	0x1
	.value	0x1a0
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST10
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0x19e
	.long	0x2955
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"offset"
	.byte	0x1
	.value	0x19f
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x2b2d
	.string	"scan_out_logical_line"
	.byte	0x1
	.value	0x1b1
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST11
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x1af
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0x1b0
	.long	0x1e70
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF9
	.byte	0x1
	.value	0x1b2
	.long	0x20ad
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"cur"
	.byte	0x1
	.value	0x1b3
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"out"
	.byte	0x1
	.value	0x1b4
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"fmacro"
	.byte	0x1
	.value	0x1b5
	.long	0x241f
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.value	0x1b6
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"paren_depth"
	.byte	0x1
	.value	0x1b6
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"quote"
	.byte	0x1
	.value	0x1b6
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"lex_state"
	.byte	0x1
	.value	0x1b7
	.long	0x248d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"header_ok"
	.byte	0x1
	.value	0x1b8
	.long	0xce2
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x38
	.string	"start_logical_line"
	.byte	0x1
	.value	0x2d7
	.long	.L92
	.uleb128 0x38
	.string	"new_context"
	.byte	0x1
	.value	0x1e1
	.long	.L93
	.uleb128 0x38
	.string	"done"
	.byte	0x1
	.value	0x2fd
	.long	.L116
	.uleb128 0x39
	.long	0x2af6
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x237
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"out_start"
	.byte	0x1
	.value	0x238
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x39
	.long	0x2b11
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x32
	.string	"m"
	.byte	0x1
	.value	0x290
	.long	0x1e70
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x32
	.string	"do_it"
	.byte	0x1
	.value	0x2c5
	.long	0xce2
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x2baf
	.string	"push_replacement_text"
	.byte	0x1
	.value	0x311
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST12
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x30f
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x310
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x312
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"text"
	.byte	0x1
	.value	0x313
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x31c
	.long	0x1e70
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x2bdf
	.string	"ustrlen"
	.byte	0x2
	.value	0x25d
	.byte	0x1
	.long	0xc4
	.long	.LFB17
	.long	.LFE17
	.long	.LLST13
	.uleb128 0x31
	.string	"s1"
	.byte	0x2
	.value	0x25c
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x2c66
	.string	"recursive_macro"
	.byte	0x1
	.value	0x32a
	.byte	0x1
	.long	0xce2
	.long	.LFB34
	.long	.LFE34
	.long	.LLST14
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x328
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x329
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"recursing"
	.byte	0x1
	.value	0x32b
	.long	0xce2
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x32
	.string	"depth"
	.byte	0x1
	.value	0x339
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF9
	.byte	0x1
	.value	0x33a
	.long	0x20ad
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x2ce9
	.byte	0x1
	.string	"_cpp_replacement_text_len"
	.byte	0x1
	.value	0x354
	.byte	0x1
	.long	0xc4
	.long	.LFB35
	.long	.LFE35
	.long	.LLST15
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0x353
	.long	0x2ce9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x355
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x359
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x35e
	.long	0x2cf4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2cef
	.uleb128 0x3
	.long	0x1575
	.uleb128 0x2
	.byte	0x4
	.long	0x23d0
	.uleb128 0x36
	.long	0x2d90
	.byte	0x1
	.string	"_cpp_copy_replacement_text"
	.byte	0x1
	.value	0x374
	.byte	0x1
	.long	0x233d
	.long	.LFB36
	.long	.LFE36
	.long	.LLST16
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0x372
	.long	0x2ce9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"dest"
	.byte	0x1
	.value	0x373
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x377
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x37b
	.long	0x2cf4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"param"
	.byte	0x1
	.value	0x37c
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x2e75
	.string	"replace_args_and_push"
	.byte	0x1
	.value	0x398
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST17
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x396
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"fmacro"
	.byte	0x1
	.value	0x397
	.long	0x2955
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x399
	.long	0x1e70
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x39f
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x3a0
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"buff"
	.byte	0x1
	.value	0x3a1
	.long	0x20b3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x3a2
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	0x2e4a
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x3a7
	.long	0x2cf4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x3b8
	.long	0x2cf4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"arglen"
	.byte	0x1
	.value	0x3b9
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x2eda
	.string	"scan_parameters"
	.byte	0x1
	.value	0x3da
	.byte	0x1
	.long	0xce2
	.long	.LFB38
	.long	.LFE38
	.long	.LLST18
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x3d8
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0x3d9
	.long	0x1e70
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"cur"
	.byte	0x1
	.value	0x3db
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"ok"
	.byte	0x1
	.value	0x3dc
	.long	0xce2
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x37
	.long	0x2f7c
	.string	"save_replacement_text"
	.byte	0x1
	.value	0x404
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST19
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x401
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0x402
	.long	0x1e70
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF20
	.byte	0x1
	.value	0x403
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x405
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x406
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x32
	.string	"blen"
	.byte	0x1
	.value	0x416
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"block"
	.byte	0x1
	.value	0x417
	.long	0x2cf4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x2ffe
	.byte	0x1
	.string	"_cpp_create_trad_definition"
	.byte	0x1
	.value	0x436
	.byte	0x1
	.long	0xce2
	.long	.LFB40
	.long	.LFE40
	.long	.LLST20
	.uleb128 0x33
	.long	.LASF5
	.byte	0x1
	.value	0x434
	.long	0x1cb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0x435
	.long	0x1e70
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"cur"
	.byte	0x1
	.value	0x437
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x438
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF9
	.byte	0x1
	.value	0x439
	.long	0x20ad
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	0x3090
	.string	"canonicalize_text"
	.byte	0x1
	.value	0x473
	.byte	0x1
	.long	0xc4
	.long	.LFB41
	.long	.LFE41
	.long	.LLST21
	.uleb128 0x31
	.string	"dest"
	.byte	0x1
	.value	0x46f
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"src"
	.byte	0x1
	.value	0x470
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x471
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"pquote"
	.byte	0x1
	.value	0x472
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"orig_dest"
	.byte	0x1
	.value	0x474
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"quote"
	.byte	0x1
	.value	0x475
	.long	0x1e85
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x36
	.long	0x31b2
	.byte	0x1
	.string	"_cpp_expansions_different_trad"
	.byte	0x1
	.value	0x496
	.byte	0x1
	.long	0xce2
	.long	.LFB42
	.long	.LFE42
	.long	.LLST22
	.uleb128 0x31
	.string	"macro1"
	.byte	0x1
	.value	0x495
	.long	0x2ce9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"macro2"
	.byte	0x1
	.value	0x495
	.long	0x2ce9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"p1"
	.byte	0x1
	.value	0x497
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"p2"
	.byte	0x1
	.value	0x498
	.long	0x233d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"quote1"
	.byte	0x1
	.value	0x499
	.long	0x1e85
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x32
	.string	"quote2"
	.byte	0x1
	.value	0x499
	.long	0x1e85
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x32
	.string	"mismatch"
	.byte	0x1
	.value	0x49a
	.long	0xce2
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x32
	.string	"len1"
	.byte	0x1
	.value	0x49b
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"len2"
	.byte	0x1
	.value	0x49b
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x32
	.string	"exp1"
	.byte	0x1
	.value	0x49f
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"exp2"
	.byte	0x1
	.value	0x49f
	.long	0x1ec5
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x32
	.string	"b1"
	.byte	0x1
	.value	0x4a4
	.long	0x2cf4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"b2"
	.byte	0x1
	.value	0x4a5
	.long	0x2cf4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x31c2
	.long	0xe3
	.uleb128 0xb
	.long	0xbd
	.byte	0xff
	.byte	0x0
	.uleb128 0x3a
	.string	"_sch_istable"
	.byte	0xc
	.byte	0x48
	.long	0x31d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x31b2
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
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xde
	.value	0x2
	.long	.Ldebug_info0
	.long	0x31de
	.long	0x27ce
	.string	"_cpp_overlay_buffer"
	.long	0x2837
	.string	"_cpp_remove_overlay"
	.long	0x2880
	.string	"_cpp_read_logical_line_trad"
	.long	0x2c66
	.string	"_cpp_replacement_text_len"
	.long	0x2cfa
	.string	"_cpp_copy_replacement_text"
	.long	0x2f7c
	.string	"_cpp_create_trad_definition"
	.long	0x3090
	.string	"_cpp_expansions_different_trad"
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
	.string	"cpp_macro"
.LASF27:
	.string	"cpp_context"
.LASF11:
	.string	"spec_nodes"
.LASF13:
	.string	"cpp_buffer"
.LASF25:
	.string	"_cpp_buff"
.LASF4:
	.string	"hash_table"
.LASF26:
	.string	"tokenrun"
.LASF5:
	.string	"pfile"
.LASF8:
	.string	"line_maps"
.LASF16:
	.string	"cpp_options"
.LASF1:
	.string	"_IO_FILE"
.LASF15:
	.string	"if_stack"
.LASF14:
	.string	"rlimit"
.LASF6:
	.string	"cpp_reader"
.LASF18:
	.string	"cpp_string"
.LASF2:
	.string	"limit"
.LASF7:
	.string	"buffer"
.LASF23:
	.string	"node"
.LASF22:
	.string	"cpp_callbacks"
.LASF24:
	.string	"macro"
.LASF19:
	.string	"cpp_hashnode"
.LASF17:
	.string	"cpp_token"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"context"
.LASF10:
	.string	"directive"
.LASF12:
	.string	"from_line"
.LASF20:
	.string	"arg_index"
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
