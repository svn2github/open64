	.file	"get_options.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl optargs
	.bss
	.align 4
	.type	optargs, @object
	.size	optargs, 4
optargs:
	.zero	4
.globl optargd
	.align 4
	.type	optargd, @object
	.size	optargd, 4
optargd:
	.zero	4
	.data
	.align 4
	.type	optindex, @object
	.size	optindex, 4
optindex:
	.long	1
	.text
	.type	get_next_char, @function
get_next_char:
.LFB5:
	.file 1 "../../driver/get_options.c"
	.loc 1 83 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 84 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L2
	.loc 1 85 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ecx)
	jmp	.L5
.L2:
	.loc 1 87 0
	movl	optindex@GOTOFF(%ecx), %eax
	addl	$1, %eax
	movl	%eax, optindex@GOTOFF(%ecx)
.L5:
	.loc 1 89 0
	popl	%ebp
	ret
.LFE5:
	.size	get_next_char, .-get_next_char
	.type	end_option, @function
end_option:
.LFB6:
	.loc 1 95 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 96 0
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, optindex@GOTOFF(%ecx)
	.loc 1 97 0
	popl	%ebp
	ret
.LFE6:
	.size	end_option, .-end_option
	.type	get_optarg, @function
get_optarg:
.LFB7:
	.loc 1 104 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 105 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L9
	.loc 1 106 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 107 0
	movl	$0, optindex@GOTOFF(%ecx)
	jmp	.L11
.L9:
	.loc 1 109 0
	movl	optindex@GOTOFF(%ecx), %eax
	addl	$1, %eax
	movl	%eax, optindex@GOTOFF(%ecx)
.L11:
	.loc 1 111 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	.loc 1 112 0
	popl	%ebp
	ret
.LFE7:
	.size	get_optarg, .-get_optarg
	.section	.rodata
.LC0:
	.string	""
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	null_string, @object
	.size	null_string, 4
null_string:
	.long	.LC0
	.text
	.type	next_string, @function
next_string:
.LFB8:
	.loc 1 119 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	subl	$4, %esp
.LCFI8:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 120 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L14
	.loc 1 121 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L16
	.loc 1 122 0
	movl	null_string@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L18
.L16:
	.loc 1 124 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L18
.L14:
	.loc 1 126 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movl	%eax, -4(%ebp)
.L18:
	movl	-4(%ebp), %eax
	.loc 1 128 0
	leave
	ret
.LFE8:
	.size	next_string, .-next_string
	.type	next_string_after, @function
next_string_after:
.LFB9:
	.loc 1 133 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%edi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$24, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 135 0
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
	movl	%eax, -12(%ebp)
	.loc 1 136 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L21
	.loc 1 137 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L23
	.loc 1 138 0
	movl	null_string@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L25
.L23:
	.loc 1 140 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L25
.L21:
	.loc 1 142 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	%edx, -28(%ebp)
.L25:
	movl	-28(%ebp), %eax
	.loc 1 144 0
	addl	$24, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE9:
	.size	next_string_after, .-next_string_after
	.type	is_decimal, @function
is_decimal:
.LFB10:
	.loc 1 148 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$4, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 149 0
	call	__ctype_b_loc@PLT
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L28
	movl	$1, -8(%ebp)
	jmp	.L30
.L28:
	.loc 1 150 0
	movl	$0, -8(%ebp)
.L30:
	movl	-8(%ebp), %eax
	.loc 1 151 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	is_decimal, .-is_decimal
	.section	.rodata
.LC1:
	.string	"no argument given for option"
	.text
.globl add_string_option
	.type	add_string_option, @function
add_string_option:
.LFB11:
	.loc 1 156 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$32, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 161 0
	cmpl	$0, 12(%ebp)
	je	.L33
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L35
	movl	-12(%ebp), %eax
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
	addl	-12(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	je	.L35
.L33:
	.loc 1 162 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	.loc 1 163 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L37
.L35:
	.loc 1 165 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_derived_option@PLT
	movl	%eax, -28(%ebp)
.L37:
	movl	-28(%ebp), %eax
	.loc 1 166 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE11:
	.size	add_string_option, .-add_string_option
.globl add_string_option_or_dash
	.type	add_string_option_or_dash, @function
add_string_option_or_dash:
.LFB12:
	.loc 1 171 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%edi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$32, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 175 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 176 0
	cmpl	$0, 12(%ebp)
	je	.L40
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L42
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L42
	movl	-12(%ebp), %eax
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
	addl	-12(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	je	.L42
.L40:
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L45
.L42:
	.loc 1 183 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_derived_option@PLT
	movl	%eax, -28(%ebp)
.L45:
	movl	-28(%ebp), %eax
	.loc 1 184 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	add_string_option_or_dash, .-add_string_option_or_dash
.globl add_any_string_option
	.type	add_any_string_option, @function
add_any_string_option:
.LFB13:
	.loc 1 191 0
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
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 194 0
	cmpl	$0, 12(%ebp)
	jne	.L48
	.loc 1 195 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	.loc 1 196 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L50
.L48:
	.loc 1 198 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_derived_option@PLT
	movl	%eax, -24(%ebp)
.L50:
	movl	-24(%ebp), %eax
	.loc 1 199 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	add_any_string_option, .-add_any_string_option
	.section	.rodata
.LC2:
	.string	"-woff"
.LC3:
	.string	"options"
.LC4:
	.string	"all"
.LC5:
	.string	"-fullwarn"
.LC6:
	.string	"-v"
.LC7:
	.string	"-fbgen"
.LC8:
	.string	"-fbuse"
.LC9:
	.string	"-E"
.LC10:
	.string	"-ignore_suffix"
.LC11:
	.string	"-i32"
.LC12:
	.string	"-i64"
.LC13:
	.string	"-ia32"
	.text
.globl check_for_driver_controls
	.type	check_for_driver_controls, @function
check_for_driver_controls:
.LFB14:
	.loc 1 205 0
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
	subl	$172, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 208 0
	movl	$1, -20(%ebp)
	jmp	.L53
.L54:
	.loc 1 209 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$5, -40(%ebp)
	cld
	movl	-32(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	-40(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L55
	.loc 1 210 0
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -16(%ebp)
	.loc 1 211 0
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -48(%ebp)
	movl	$8, -52(%ebp)
	cld
	movl	-44(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	-52(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L57
	.loc 1 212 0
	movl	print_warnings@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L61
.L57:
	.loc 1 213 0
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -60(%ebp)
	movl	$4, -64(%ebp)
	cld
	movl	-56(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L61
	.loc 1 214 0
	movl	print_warnings@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L61
.L55:
	.loc 1 217 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	leal	.LC5@GOTOFF(%ebx), %esi
	movl	%esi, -72(%ebp)
	movl	$10, -76(%ebp)
	cld
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
	jne	.L62
	.loc 1 218 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L61
.L62:
	.loc 1 220 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	leal	.LC6@GOTOFF(%ebx), %esi
	movl	%esi, -84(%ebp)
	movl	$3, -88(%ebp)
	cld
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
	jne	.L64
	.loc 1 221 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L61
.L64:
	.loc 1 223 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	leal	.LC7@GOTOFF(%ebx), %esi
	movl	%esi, -96(%ebp)
	movl	$7, -100(%ebp)
	cld
	movl	-92(%ebp), %esi
	movl	-96(%ebp), %edi
	movl	-100(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L66
	.loc 1 224 0
	movl	Gen_feedback@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L61
.L66:
	.loc 1 226 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	leal	.LC8@GOTOFF(%ebx), %esi
	movl	%esi, -108(%ebp)
	movl	$7, -112(%ebp)
	cld
	movl	-104(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L68
	.loc 1 227 0
	movl	Use_feedback@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L61
.L68:
	.loc 1 229 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	leal	.LC9@GOTOFF(%ebx), %esi
	movl	%esi, -120(%ebp)
	movl	$3, -124(%ebp)
	cld
	movl	-116(%ebp), %esi
	movl	-120(%ebp), %edi
	movl	-124(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L70
	.loc 1 230 0
	movl	last_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
	jmp	.L61
.L70:
	.loc 1 232 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	leal	.LC10@GOTOFF(%ebx), %esi
	movl	%esi, -132(%ebp)
	movl	$15, -136(%ebp)
	cld
	movl	-128(%ebp), %esi
	movl	-132(%ebp), %edi
	movl	-136(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L72
	.loc 1 233 0
	movl	ignore_suffix@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L61
.L72:
	.loc 1 235 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -140(%ebp)
	leal	.LC11@GOTOFF(%ebx), %esi
	movl	%esi, -144(%ebp)
	movl	$5, -148(%ebp)
	cld
	movl	-140(%ebp), %esi
	movl	-144(%ebp), %edi
	movl	-148(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L74
	.loc 1 236 0
	movl	abi@GOT(%ebx), %eax
	movl	$3, (%eax)
	jmp	.L61
.L74:
	.loc 1 238 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -152(%ebp)
	leal	.LC12@GOTOFF(%ebx), %esi
	movl	%esi, -156(%ebp)
	movl	$5, -160(%ebp)
	cld
	movl	-152(%ebp), %esi
	movl	-156(%ebp), %edi
	movl	-160(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L76
	.loc 1 239 0
	movl	abi@GOT(%ebx), %eax
	movl	$4, (%eax)
	jmp	.L61
.L76:
	.loc 1 241 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -164(%ebp)
	leal	.LC13@GOTOFF(%ebx), %esi
	movl	%esi, -168(%ebp)
	movl	$6, -172(%ebp)
	cld
	movl	-164(%ebp), %esi
	movl	-168(%ebp), %edi
	movl	-172(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L61
	.loc 1 242 0
	movl	abi@GOT(%ebx), %eax
	movl	$5, (%eax)
.L61:
	.loc 1 208 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
.L53:
	movl	-20(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L54
	.loc 1 245 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE14:
	.size	check_for_driver_controls, .-check_for_driver_controls
	.section	.rodata
.LC14:
	.string	"-u"
	.text
	.type	parse_u_option, @function
parse_u_option:
.LFB15:
	.loc 1 254 0
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
	.loc 1 255 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L82
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L84
.L82:
.LBB2:
	.loc 1 257 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 258 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	add_new_option@PLT
	movl	%eax, -8(%ebp)
	.loc 1 259 0
	movl	$17, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 260 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L85
.L84:
.LBE2:
	.loc 1 262 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 263 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 264 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	add_string_option@PLT
	movl	%eax, -24(%ebp)
.L85:
	movl	-24(%ebp), %eax
	.loc 1 266 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	parse_u_option, .-parse_u_option
	.section	.rodata
.LC15:
	.string	"-U"
	.text
	.type	parse_U_option, @function
parse_U_option:
.LFB16:
	.loc 1 274 0
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
	.loc 1 275 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L88
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L90
.L88:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L90
.LBB3:
	.loc 1 280 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 281 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	add_new_option@PLT
	movl	%eax, -8(%ebp)
	.loc 1 282 0
	movl	$17, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 283 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L92
.L90:
.LBE3:
	.loc 1 286 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 287 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 288 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$684, (%esp)
	call	add_string_option@PLT
	movl	%eax, -24(%ebp)
.L92:
	movl	-24(%ebp), %eax
	.loc 1 290 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	parse_U_option, .-parse_U_option
	.section	.rodata
.LC16:
	.string	"-DEBUG:subscript_check"
.LC17:
	.string	"-C"
	.text
	.type	parse_C_option, @function
parse_C_option:
.LFB17:
	.loc 1 298 0
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
	.loc 1 299 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L95
	.loc 1 300 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L97
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L99
.L97:
.LBB4:
	.loc 1 304 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 305 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	add_new_option@PLT
	movl	%eax, -12(%ebp)
	.loc 1 306 0
	movl	$17, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 307 0
	movl	$19, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 308 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L100
.L99:
.LBE4:
.LBB5:
	.loc 1 312 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 313 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	add_new_option@PLT
	movl	%eax, -8(%ebp)
	.loc 1 314 0
	movl	$12, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 315 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L100
.L95:
.LBE5:
	.loc 1 318 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 319 0
	movl	$0, -24(%ebp)
.L100:
	movl	-24(%ebp), %eax
	.loc 1 321 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	parse_C_option, .-parse_C_option
	.type	parse_R_option, @function
parse_R_option:
.LFB18:
	.loc 1 327 0
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
	.loc 1 328 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L103
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L105
.L103:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L105
.LBB6:
	.loc 1 333 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 334 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 335 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	add_new_option@PLT
	movl	%eax, -8(%ebp)
	.loc 1 336 0
	movl	$3, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 337 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L107
.L105:
.LBE6:
	.loc 1 339 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	.loc 1 340 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 341 0
	movl	$0, -24(%ebp)
.L107:
	movl	-24(%ebp), %eax
	.loc 1 343 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	parse_R_option, .-parse_R_option
	.type	parse_e_option, @function
parse_e_option:
.LFB19:
	.loc 1 348 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$20, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 350 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 351 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 352 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$644, (%esp)
	call	add_string_option@PLT
	.loc 1 353 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	parse_e_option, .-parse_e_option
	.section	.rodata
.LC18:
	.string	"-Xlinker"
.LC19:
	.string	"-Wl,"
	.align 4
.LC20:
	.string	"%s is no longer supported, use %s instead"
	.text
	.type	parse_Xlinker_option, @function
parse_Xlinker_option:
.LFB20:
	.loc 1 359 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%edi
.LCFI60:
	pushl	%esi
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$44, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 360 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$9, -44(%ebp)
	cld
	movl	-36(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	-44(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L112
.LBB7:
	.loc 1 364 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 365 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 367 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L114
	.loc 1 368 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	.loc 1 369 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	add_new_option@PLT
	movl	%eax, -32(%ebp)
	jmp	.L116
.L114:
	.loc 1 371 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$523, (%esp)
	call	add_derived_option@PLT
	movl	%eax, -16(%ebp)
	.loc 1 372 0
	movl	$39, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 373 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 374 0
	movl	-16(%ebp), %esi
	movl	%esi, -32(%ebp)
	jmp	.L116
.L112:
.LBE7:
	.loc 1 376 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 1 377 0
	movl	$0, -32(%ebp)
.L116:
	movl	-32(%ebp), %eax
	.loc 1 379 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	parse_Xlinker_option, .-parse_Xlinker_option
	.local	middle_of_multi_option
	.comm	middle_of_multi_option,4,4
	.type	end_multi_option, @function
end_multi_option:
.LFB21:
	.loc 1 387 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$8, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 388 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L119
	.loc 1 389 0
	movl	$0, middle_of_multi_option@GOTOFF(%ebx)
	.loc 1 390 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	.loc 1 391 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	jmp	.L122
.L119:
	.loc 1 393 0
	movl	$1, middle_of_multi_option@GOTOFF(%ebx)
	.loc 1 394 0
	movl	16(%ebp), %edx
	addl	$1, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L122:
	.loc 1 396 0
	addl	$8, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	end_multi_option, .-end_multi_option
	.section	.rodata
.LC21:
	.string	"bad syntax for option"
	.text
	.type	parse_multi_option, @function
parse_multi_option:
.LFB22:
	.loc 1 400 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$564, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -536(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -540(%ebp)
	.loc 1 400 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 404 0
	movl	middle_of_multi_option@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L124
	.loc 1 405 0
	movl	-540(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-536(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 406 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -528(%ebp)
	jmp	.L126
.L127:
	addl	$1, -528(%ebp)
.L126:
	movl	-528(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L128
	movl	-528(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L127
.L128:
	.loc 1 408 0
	movl	-528(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L130
	.loc 1 409 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	.loc 1 410 0
	movl	-528(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-540(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-536(%ebp), %eax
	movl	%eax, (%esp)
	call	end_multi_option
	.loc 1 411 0
	movl	$0, -544(%ebp)
	jmp	.L132
.L130:
	.loc 1 413 0
	addl	$1, -528(%ebp)
	jmp	.L133
.L124:
	.loc 1 415 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -528(%ebp)
.L133:
	.loc 1 417 0
	movl	-528(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L134
	.loc 1 419 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	.loc 1 420 0
	movl	-528(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-540(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-536(%ebp), %eax
	movl	%eax, (%esp)
	call	end_multi_option
	.loc 1 421 0
	movl	$0, -544(%ebp)
	jmp	.L132
.L134:
	.loc 1 424 0
	leal	-520(%ebp), %eax
	movl	%eax, -524(%ebp)
	.loc 1 425 0
	jmp	.L136
.L137:
	.loc 1 426 0
	movl	-528(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$92, %al
	jne	.L138
	movl	-528(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L138
	.loc 1 427 0
	movl	-524(%ebp), %eax
	movb	$44, (%eax)
	.loc 1 428 0
	addl	$1, -528(%ebp)
	.loc 1 426 0
	jmp	.L141
.L138:
	.loc 1 430 0
	movl	-528(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-524(%ebp), %eax
	movb	%dl, (%eax)
.L141:
	.loc 1 432 0
	addl	$1, -528(%ebp)
	.loc 1 433 0
	addl	$1, -524(%ebp)
.L136:
	.loc 1 425 0
	movl	-528(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L142
	movl	-528(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L137
.L142:
	.loc 1 435 0
	movl	-524(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 436 0
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	add_new_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 437 0
	movl	-528(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-540(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-536(%ebp), %eax
	movl	%eax, (%esp)
	call	end_multi_option
	.loc 1 438 0
	movl	-532(%ebp), %edx
	movl	%edx, -544(%ebp)
.L132:
	movl	-544(%ebp), %eax
	.loc 1 439 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L145
	call	__stack_chk_fail_local
.L145:
	addl	$564, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	parse_multi_option, .-parse_multi_option
	.section	.rodata
.LC22:
	.string	"bad phase for -W option"
	.align 4
.LC23:
	.string	"-WK,<options> is ignored with new -pfa/-pca"
	.text
	.type	parse_W_option, @function
parse_W_option:
.LFB23:
	.loc 1 446 0
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
	.loc 1 449 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, -8(%ebp)
	.loc 1 450 0
	movl	$44, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	je	.L147
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L149
.L147:
	.loc 1 451 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 1 452 0
	movl	$679, -24(%ebp)
	jmp	.L150
.L149:
	.loc 1 454 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_multi_option
	movl	%eax, -16(%ebp)
	.loc 1 456 0
	jmp	.L151
.L152:
	.loc 1 457 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_phase@PLT
	movl	%eax, -12(%ebp)
	.loc 1 458 0
	cmpl	$0, -12(%ebp)
	jne	.L153
	.loc 1 459 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
.L153:
	.loc 1 461 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 456 0
	addl	$1, -8(%ebp)
.L151:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L155
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L152
.L155:
	.loc 1 465 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L157
	cmpl	$16, -12(%ebp)
	jne	.L157
	.loc 1 466 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L157:
	.loc 1 472 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_internal_option@PLT
	.loc 1 474 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L150:
	movl	-24(%ebp), %eax
	.loc 1 475 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	parse_W_option, .-parse_W_option
	.section	.rodata
.LC24:
	.string	"-zerouv"
.LC25:
	.string	"-w66"
.LC26:
	.string	"-w3"
.LC27:
	.string	"-w2"
.LC28:
	.string	"-vms_stdin"
.LC29:
	.string	"-vms_library"
.LC30:
	.string	"-vms_endfile"
.LC31:
	.string	"-vms_cc"
.LC32:
	.string	"-vms"
.LC33:
	.string	"-version"
.LC34:
	.string	"-varargs"
.LC35:
	.string	"-usegfe"
.LC36:
	.string	"-usefpidx"
.LC37:
	.string	"-usef90"
.LC38:
	.string	"-useas"
.LC39:
	.string	"-use_readwrite_const"
.LC40:
	.string	"-use_readonly_const"
.LC41:
	.string	"-undef"
.LC42:
	.string	"-trigraphs"
.LC43:
	.string	"-trapuv"
.LC44:
	.string	"-traditional-cpp"
.LC45:
	.string	"-traditional"
.LC46:
	.string	"-syntax-only"
.LC47:
	.string	"-symbolic"
.LC48:
	.string	"-subverbose"
.LC49:
	.string	"-stdinc"
.LC50:
	.string	"-std=iso9899:199x"
.LC51:
	.string	"-std=iso9899:1999"
.LC52:
	.string	"-std=iso9899:199409"
.LC53:
	.string	"-std=iso9899:1990"
.LC54:
	.string	"-std=gnu9x"
.LC55:
	.string	"-std=gnu99"
.LC56:
	.string	"-std=gnu89"
.LC57:
	.string	"-std=gnu++98"
.LC58:
	.string	"-std=c9x"
.LC59:
	.string	"-std=c99"
.LC60:
	.string	"-std=c89"
.LC61:
	.string	"-std=c++98"
.LC62:
	.string	"-static_threadprivate"
.LC63:
	.string	"-static-threadprivate"
.LC64:
	.string	"-static-libgcc"
.LC65:
	.string	"-static-data"
.LC66:
	.string	"-static"
.LC67:
	.string	"-specs="
.LC68:
	.string	"-soname"
.LC69:
	.string	"-sl2_lut="
.LC70:
	.string	"-showt"
.LC71:
	.string	"-showd"
.LC72:
	.string	"-show1"
.LC73:
	.string	"-show0"
.LC74:
	.string	"-show-defaults"
.LC75:
	.string	"-show"
.LC76:
	.string	"-shared-libgcc"
.LC77:
	.string	"-shared"
.LC78:
	.string	"-save-temps"
.LC79:
	.string	"-rpath"
.LC80:
	.string	"-realO"
.LC81:
	.string	"-rdynamic"
.LC82:
	.string	"-r8const"
.LC83:
	.string	"-r8"
.LC84:
	.string	"-r4"
.LC85:
	.string	"-qwa2"
.LC86:
	.string	"-qwa1"
.LC87:
	.string	"-pthread"
.LC88:
	.string	"-promp"
.LC89:
	.string	"-profile"
.LC90:
	.string	"-print-search-dirs"
.LC91:
	.string	"-print-prog-name="
.LC92:
	.string	"-print-multi-lib"
.LC93:
	.string	"-print-libgcc-file-name"
.LC94:
	.string	"-print-file-name="
.LC95:
	.string	"-prelink"
.LC96:
	.string	"-pipe"
.LC97:
	.string	"-pie"
.LC98:
	.string	"-pic1"
.LC99:
	.string	"-pg"
.LC100:
	.string	"-pfa2"
.LC101:
	.string	"-pfa,"
.LC102:
	.string	"-pfa"
.LC103:
	.string	"list"
.LC104:
	.string	"keep"
.LC105:
	.string	"-pedantic-errors"
.LC106:
	.string	"-pedantic"
.LC107:
	.string	"-pca,"
.LC108:
	.string	"-pca"
.LC109:
	.string	"-pathcc"
.LC110:
	.string	"-pass-exit-codes"
.LC111:
	.string	"-parse"
.LC112:
	.string	"-pad_char_literals"
.LC113:
	.string	"-pad-char-literals"
.LC114:
	.string	"-openmp"
.LC115:
	.string	"-onetrip"
.LC116:
	.string	"-old_rl"
.LC117:
	.string	"-nostdlib"
.LC118:
	.string	"-nostdinc++"
.LC119:
	.string	"-nostdinc"
.LC120:
	.string	"-nostartfiles"
.LC121:
	.string	"-noinline"
.LC122:
	.string	"-noi4"
.LC123:
	.string	"-nof77"
.LC124:
	.string	"-noextend_source"
.LC125:
	.string	"-noextend-source"
.LC126:
	.string	"-noexpopt"
.LC127:
	.string	"-nodefaultlibs"
.LC128:
	.string	"-nocpp"
.LC129:
	.string	"-nobool"
.LC130:
	.string	"-noas"
.LC131:
	.string	"-no_prelink"
.LC132:
	.string	"-no-traditional"
.LC133:
	.string	"-no-prelink"
.LC134:
	.string	"-no-pathcc"
.LC135:
	.string	"-no-intrinsic="
.LC136:
	.string	"-no-gcc"
.LC137:
	.string	"-n32"
.LC138:
	.string	"-mx87-precision="
.LC139:
	.string	"-mvolatile-asm-stop"
.LC140:
	.string	"-mtune="
.LC141:
	.string	"-msse3"
.LC142:
	.string	"-msse2"
.LC143:
	.string	"-msse"
.LC144:
	.string	"-mspace"
.LC145:
	.string	"-msoft-float"
.LC146:
	.string	"-mplist"
.LC147:
	.string	"-mpio"
.LC148:
	.string	"-mp_use_locks"
.LC149:
	.string	"-mp_use_copy"
.LC150:
	.string	"-mp_schedtype="
.LC151:
	.string	"-mp_keep"
.LC152:
	.string	"-mp_chunk="
.LC153:
	.string	"-mp"
.LC154:
	.string	"-module"
.LC155:
	.string	"-mno-sse3"
.LC156:
	.string	"-mno-sse2"
.LC157:
	.string	"-mno-sse"
.LC158:
	.string	"-mno-soft-float"
.LC159:
	.string	"-mno-sdata"
.LC160:
	.string	"-mno-mmx"
.LC161:
	.string	"-mno-ieee-fp"
.LC162:
	.string	"-mno-3dnow"
.LC163:
	.string	"-mmmx"
.LC164:
	.string	"-mips4"
.LC165:
	.string	"-mieee-fp"
.LC166:
	.string	"-mfixed-range="
.LC167:
	.string	"-memsim"
.LC168:
	.string	"-memctr"
.LC169:
	.string	"-mcpu="
.LC170:
	.string	"-mconstant-gp"
.LC171:
	.string	"-mcmodel="
.LC172:
	.string	"-mb-step"
.LC173:
	.string	"-march="
.LC174:
	.string	"-malign-loops="
.LC175:
	.string	"-malign-jumps="
.LC176:
	.string	"-malign-functions="
.LC177:
	.string	"-macro_expand"
.LC178:
	.string	"-macro-expand"
.LC179:
	.string	"-ma-step"
.LC180:
	.string	"-m64"
.LC181:
	.string	"-m3dnow"
.LC182:
	.string	"-m386"
.LC183:
	.string	"-m32"
.LC184:
	.string	"-ldscript"
.LC185:
	.string	"-keepdollar"
.LC186:
	.string	"-keep"
.LC187:
	.string	"-jalr"
.LC188:
	.string	"-iwithprefixbefore"
	.align 4
.LC189:
	.string	"%s does not refer to a valid directory"
.LC190:
	.string	"-iwithprefix"
.LC191:
	.string	"-isystem"
.LC192:
	.string	"-iprefix"
.LC193:
	.string	"-ipa"
.LC194:
	.string	"-intrinsic="
.LC195:
	.string	"-inline"
.LC196:
	.string	"-include"
.LC197:
	.string	"-imacros"
.LC198:
	.string	"-ignore-suffix"
.LC199:
	.string	"-idirafter"
.LC200:
	.string	"-i8"
.LC201:
	.string	"-i4"
.LC202:
	.string	"-i2"
.LC203:
	.string	"-help:"
.LC204:
	.string	"-help"
.LC205:
	.string	"-h264lib"
.LC206:
	.string	"-gstabs3"
.LC207:
	.string	"-gstabs2"
.LC208:
	.string	"-gstabs1"
.LC209:
	.string	"-gstabs0"
.LC210:
	.string	"-gstabs+"
.LC211:
	.string	"-gstabs"
.LC212:
	.string	"-ggdb3"
.LC213:
	.string	"-ggdb"
.LC214:
	.string	"-gdwarf-23"
.LC215:
	.string	"-gdwarf-22"
.LC216:
	.string	"-gdwarf-21"
.LC217:
	.string	"-gdwarf-20"
.LC218:
	.string	"-gdwarf-2"
.LC219:
	.string	"-gdwarf-1+"
.LC220:
	.string	"-gdwarf-1"
.LC221:
	.string	"-gdwarf"
.LC222:
	.string	"-gcc"
.LC223:
	.string	"-g3"
.LC224:
	.string	"-g2"
.LC225:
	.string	"-g1"
.LC226:
	.string	"-g0"
.LC227:
	.string	"-fwritable-strings"
.LC228:
	.string	"-fweak"
.LC229:
	.string	"-fvolatile-static"
.LC230:
	.string	"-fvolatile-global"
.LC231:
	.string	"-fvolatile"
.LC232:
	.string	"-fverify-tree"
.LC233:
	.string	"-fverbose-asm"
.LC234:
	.string	"-fuse-cxa-atexit"
.LC235:
	.string	"-funwind-tables"
.LC236:
	.string	"-funsigned-char"
.LC237:
	.string	"-funsigned-bitfields"
.LC238:
	.string	"-funsafe-math-optimizations"
.LC239:
	.string	"-funroll-loops"
.LC240:
	.string	"-funroll-all-loops"
.LC241:
	.string	"-funderscoring"
.LC242:
	.string	"-ftraditional"
.LC243:
	.string	"-ftpp"
.LC244:
	.string	"-fthread-jumps"
.LC245:
	.string	"-ftest-coverage"
.LC246:
	.string	"-ftemplate-depth-"
.LC247:
	.string	"-fstrict-aliasing"
.LC248:
	.string	"-fstrength-reduce"
.LC249:
	.string	"-fstack-check"
.LC250:
	.string	"-fssa-dce"
.LC251:
	.string	"-fssa-ccp"
.LC252:
	.string	"-fssa"
.LC253:
	.string	"-fsigned-char"
.LC254:
	.string	"-fsigned-bitfields"
.LC255:
	.string	"-fshort-wchar"
.LC256:
	.string	"-fshort-enums"
.LC257:
	.string	"-fshort-double"
.LC258:
	.string	"-fshared-data"
.LC259:
	.string	"-fsecond-underscore"
.LC260:
	.string	"-fschedule-insns2"
.LC261:
	.string	"-fschedule-insns"
.LC262:
	.string	"-frtti"
.LC263:
	.string	"-frerun-loop-opt"
.LC264:
	.string	"-frerun-cse-after-loop"
.LC265:
	.string	"-fregmove"
.LC266:
	.string	"-freg-struct-return"
.LC267:
	.string	"-freeform"
.LC268:
	.string	"-freduce-all-givs"
.LC269:
	.string	"-framepointer"
.LC270:
	.string	"-fprofile-arcs"
.LC271:
	.string	"-fpreprocessed"
.LC272:
	.string	"-fprefix-function-name"
.LC273:
	.string	"-fpie"
.LC274:
	.string	"-fpic"
.LC275:
	.string	"-fpermissive"
.LC276:
	.string	"-fpcc-struct-return"
.LC277:
	.string	"-fpack-struct"
.LC278:
	.string	"-foptimize-sibling-calls"
.LC279:
	.string	"-foptimize-register-moves"
.LC280:
	.string	"-foptimize-register-move"
.LC281:
	.string	"-fonetrip"
.LC282:
	.string	"-fomit-frame-pointer"
.LC283:
	.string	"-fnotraditional"
.LC284:
	.string	"-fno-writable-strings"
.LC285:
	.string	"-fno-weak"
.LC286:
	.string	"-fno-use-cxa-atexit"
.LC287:
	.string	"-fno-unwind-tables"
.LC288:
	.string	"-fno-unsigned-char"
.LC289:
	.string	"-fno-unsigned-bitfields"
	.align 4
.LC290:
	.string	"-fno-unsafe-math-optimizations"
.LC291:
	.string	"-fno-underscoring"
.LC292:
	.string	"-fno-traditional"
.LC293:
	.string	"-fno-strict-aliasing"
.LC294:
	.string	"-fno-strength-reduce"
.LC295:
	.string	"-fno-ssa-dce"
.LC296:
	.string	"-fno-ssa-ccp"
.LC297:
	.string	"-fno-ssa"
.LC298:
	.string	"-fno-signed-char"
.LC299:
	.string	"-fno-signed-bitfields"
.LC300:
	.string	"-fno-second-underscore"
.LC301:
	.string	"-fno-rtti"
.LC302:
	.string	"-fno-preprocessed"
.LC303:
	.string	"-fno-pie"
.LC304:
	.string	"-fno-pic"
.LC305:
	.string	"-fno-permissive"
.LC306:
	.string	"-fno-peephole"
.LC307:
	.string	"-fno-optimize-sibling-calls"
.LC308:
	.string	"-fno-optimize-register-move"
.LC309:
	.string	"-fno-operator-names"
.LC310:
	.string	"-fno-omit-frame-pointer"
.LC311:
	.string	"-fno-math-errno"
.LC312:
	.string	"-fno-inline-functions"
.LC313:
	.string	"-fno-inline"
.LC314:
	.string	"-fno-implicit-templates"
	.align 4
.LC315:
	.string	"-fno-implicit-inline-templates"
.LC316:
	.string	"-fno-ident"
.LC317:
	.string	"-fno-hosted"
.LC318:
	.string	"-fno-handle-exceptions"
.LC319:
	.string	"-fno-gnu-linker"
.LC320:
	.string	"-fno-gnu-keywords"
.LC321:
	.string	"-fno-function-cse"
.LC322:
	.string	"-fno-freestanding"
.LC323:
	.string	"-fno-for-scope"
.LC324:
	.string	"-fno-fast-stdlib"
.LC325:
	.string	"-fno-fast-math"
.LC326:
	.string	"-fno-exceptions"
.LC327:
	.string	"-fno-directives"
.LC328:
	.string	"-fno-defer-pop"
.LC329:
	.string	"-fno-default-inline"
.LC330:
	.string	"-fno-common"
.LC331:
	.string	"-fno-check-new"
.LC332:
	.string	"-fno-builtin"
.LC333:
	.string	"-fno-asm"
.LC334:
	.string	"-fno-PIE"
.LC335:
	.string	"-fno-PIC"
.LC336:
	.string	"-fms-extensions"
.LC337:
	.string	"-fmove-all-movables"
.LC338:
	.string	"-fmessage-length="
.LC339:
	.string	"-fmath-errno"
.LC340:
	.string	"-flist"
.LC341:
	.string	"-fleading-underscore"
.LC342:
	.string	"-flang-isoc9x"
.LC343:
	.string	"-fkeep-inline-functions"
.LC344:
	.string	"-fixedform"
.LC345:
	.string	"-finline-limit="
.LC346:
	.string	"-finline-functions"
.LC347:
	.string	"-finline"
.LC348:
	.string	"-finhibit-size-directive"
.LC349:
	.string	"-fimplicit-templates"
.LC350:
	.string	"-fimplicit-inline-templates"
.LC351:
	.string	"-fhosted"
.LC352:
	.string	"-fhandle-exceptions"
.LC353:
	.string	"-fgnu-keywords"
.LC354:
	.string	"-fgcse"
.LC355:
	.string	"-ffunction-sections"
.LC356:
	.string	"-ffreestanding"
.LC357:
	.string	"-ffortran-bounds-check"
.LC358:
	.string	"-fforce-mem"
.LC359:
	.string	"-fforce-addr"
.LC360:
	.string	"-ffor-scope"
.LC361:
	.string	"-ffloat-store"
.LC362:
	.string	"-ffixed-"
.LC363:
	.string	"-ffast-stdlib"
.LC364:
	.string	"-ffast-math"
.LC365:
	.string	"-ff90"
.LC366:
	.string	"-ff77"
.LC367:
	.string	"-ff2c-abi"
.LC368:
	.string	"-fexpensive-optimizations"
.LC369:
	.string	"-fexceptions"
.LC370:
	.string	"-feedback"
.LC371:
	.string	"-fe"
.LC372:
	.string	"-fdirectives"
	.align 4
.LC373:
	.string	"-fdiagnostics-show-location=once"
	.align 4
.LC374:
	.string	"-fdiagnostics-show-location=every-line"
.LC375:
	.string	"-fdelayed-branch"
.LC376:
	.string	"-fdecorate"
.LC377:
	.string	"-fdata-sections"
.LC378:
	.string	"-fcse-skip-blocks"
.LC379:
	.string	"-fcse-follow-jumps"
.LC380:
	.string	"-fcond-mismatch"
.LC381:
	.string	"-fcoco="
.LC382:
	.string	"-fcoco"
.LC383:
	.string	"-fcheck-new"
.LC384:
	.string	"-fcheck-memory-usage"
.LC385:
	.string	"-fcaller-saves"
.LC386:
	.string	"-fcall-used-"
.LC387:
	.string	"-fcall-saved-"
.LC388:
	.string	"-fbuiltin"
.LC389:
	.string	"-fbranch-probabilities"
.LC390:
	.string	"-fbexe"
.LC391:
	.string	"-fb_xdir"
.LC392:
	.string	"-fb_type="
.LC393:
	.string	"-fb_phase="
.LC394:
	.string	"-fb_opt"
.LC395:
	.string	"-fb_create"
.LC396:
	.string	"-fb_cdir"
.LC397:
	.string	"-fb-type="
.LC398:
	.string	"-fb-phase="
.LC399:
	.string	"-fb-opt"
.LC400:
	.string	"-fb-create"
.LC401:
	.string	"-fb"
.LC402:
	.string	"-fasm"
.LC403:
	.string	"-fargument-noalias-global"
.LC404:
	.string	"-fargument-noalias"
.LC405:
	.string	"-fargument-alias"
.LC406:
	.string	"-fabi-version="
.LC407:
	.string	"-fPIE"
.LC408:
	.string	"-fPIC"
.LC409:
	.string	"-extend_source"
.LC410:
	.string	"-extend-source"
.LC411:
	.string	"-expand_include"
.LC412:
	.string	"-dz"
.LC413:
	.string	"-dx"
.LC414:
	.string	"-dw"
.LC415:
	.string	"-dv"
.LC416:
	.string	"-dumpversion"
.LC417:
	.string	"-dumpspecs"
.LC418:
	.string	"-dumpmachine"
.LC419:
	.string	"-dump_input"
.LC420:
	.string	"-dummy"
.LC421:
	.string	"-dt"
.LC422:
	.string	"-ds"
.LC423:
	.string	"-dr"
.LC424:
	.string	"-dp"
.LC425:
	.string	"-do"
.LC426:
	.string	"-dm"
.LC427:
	.string	"-dl"
.LC428:
	.string	"-dk"
.LC429:
	.string	"-dj"
.LC430:
	.string	"-di"
.LC431:
	.string	"-dh"
.LC432:
	.string	"-dg"
.LC433:
	.string	"-df"
.LC434:
	.string	"-demangle"
.LC435:
	.string	"-default64"
.LC436:
	.string	"-de"
.LC437:
	.string	"-dd"
.LC438:
	.string	"-dc"
.LC439:
	.string	"-db"
.LC440:
	.string	"-da"
.LC441:
	.string	"-d_lines"
.LC442:
	.string	"-dX"
.LC443:
	.string	"-dS"
.LC444:
	.string	"-dR"
.LC445:
	.string	"-dP"
.LC446:
	.string	"-dN"
.LC447:
	.string	"-dM"
.LC448:
	.string	"-dL"
.LC449:
	.string	"-dI"
.LC450:
	.string	"-dG"
.LC451:
	.string	"-dF"
.LC452:
	.string	"-dE"
.LC453:
	.string	"-dD"
.LC454:
	.string	"-dC"
.LC455:
	.string	"-dB"
.LC456:
	.string	"-dA"
.LC457:
	.string	"-d8"
.LC458:
	.string	"-d-lines"
.LC459:
	.string	"-cray_directives"
.LC460:
	.string	"-cpp"
.LC461:
	.string	"-cord"
.LC462:
	.string	"-copyright"
.LC463:
	.string	"-convert"
.LC464:
	.string	"-compat-gcc"
.LC465:
	.string	"-col80"
.LC466:
	.string	"-col72"
.LC467:
	.string	"-col120"
.LC468:
	.string	"-clist"
.LC469:
	.string	"-cif"
.LC470:
	.string	"-chunk="
.LC471:
	.string	"-chararg1"
.LC472:
	.string	"-change_const"
.LC473:
	.string	"-byteswapio"
.LC474:
	.string	"-bytereclen"
.LC475:
	.string	"-bblib"
.LC476:
	.string	"-backslash"
.LC477:
	.string	"-aux-info"
.LC478:
	.string	"-automatic"
.LC479:
	.string	"-auto_use"
.LC480:
	.string	"-auto-use"
.LC481:
	.string	"-ar"
.LC482:
	.string	"-apo"
.LC483:
	.string	"-ansi"
.LC484:
	.string	"-all"
.LC485:
	.string	"-align8"
.LC486:
	.string	"-align64"
.LC487:
	.string	"-align32"
.LC488:
	.string	"-align16"
.LC489:
	.string	"-align128"
.LC490:
	.string	"-Wwrite-strings"
.LC491:
	.string	"-Wunused-variable"
.LC492:
	.string	"-Wunused-value"
.LC493:
	.string	"-Wunused-parameter"
.LC494:
	.string	"-Wunused-macros"
.LC495:
	.string	"-Wunused-label"
.LC496:
	.string	"-Wunused-function"
.LC497:
	.string	"-Wunused"
.LC498:
	.string	"-Wunreachable-code"
.LC499:
	.string	"-Wunknown-pragmas"
.LC500:
	.string	"-Wuninitialized"
.LC501:
	.string	"-Wundef"
.LC502:
	.string	"-Wtrigraphs"
.LC503:
	.string	"-Wtraditional"
.LC504:
	.string	"-Wsystem-headers"
.LC505:
	.string	"-Wsynth"
.LC506:
	.string	"-Wswitch-enum"
.LC507:
	.string	"-Wswitch-default"
.LC508:
	.string	"-Wswitch"
.LC509:
	.string	"-Wstrict-prototypes"
.LC510:
	.string	"-Wstrict-aliasing"
.LC511:
	.string	"-Wsign-promo"
.LC512:
	.string	"-Wsign-compare"
.LC513:
	.string	"-Wshadow"
.LC514:
	.string	"-Wsequence-point"
.LC515:
	.string	"-Wreturn-type"
.LC516:
	.string	"-Wreorder"
.LC517:
	.string	"-Wredundant-decls"
.LC518:
	.string	"-Wpointer-arith"
.LC519:
	.string	"-Wparentheses"
.LC520:
	.string	"-Wpadded"
.LC521:
	.string	"-Wpacked"
.LC522:
	.string	"-Wp,"
.LC523:
	.string	"-Woverloaded-virtual"
.LC524:
	.string	"-Wold-style-cast"
.LC525:
	.string	"-Wnonnull"
.LC526:
	.string	"-Wnon-virtual-dtor"
.LC527:
	.string	"-Wno-write-strings"
.LC528:
	.string	"-Wno-unused-variable"
.LC529:
	.string	"-Wno-unused-value"
.LC530:
	.string	"-Wno-unused-parameter"
.LC531:
	.string	"-Wno-unused-macros"
.LC532:
	.string	"-Wno-unused-label"
.LC533:
	.string	"-Wno-unused-function"
.LC534:
	.string	"-Wno-unused"
.LC535:
	.string	"-Wno-unreachable-code"
.LC536:
	.string	"-Wno-unknown-pragmas"
.LC537:
	.string	"-Wno-uninitialized"
.LC538:
	.string	"-Wno-undef"
.LC539:
	.string	"-Wno-trigraphs"
.LC540:
	.string	"-Wno-traditional"
.LC541:
	.string	"-Wno-system-headers"
.LC542:
	.string	"-Wno-synth"
.LC543:
	.string	"-Wno-switch"
.LC544:
	.string	"-Wno-strict-prototypes"
.LC545:
	.string	"-Wno-strict-aliasing"
.LC546:
	.string	"-Wno-sign-promo"
.LC547:
	.string	"-Wno-sign-compare"
.LC548:
	.string	"-Wno-shadow"
.LC549:
	.string	"-Wno-sequence-point"
.LC550:
	.string	"-Wno-return-type"
.LC551:
	.string	"-Wno-reorder"
.LC552:
	.string	"-Wno-redundant-decls"
.LC553:
	.string	"-Wno-pointer-arith"
.LC554:
	.string	"-Wno-pmf-conversions"
.LC555:
	.string	"-Wno-parentheses"
.LC556:
	.string	"-Wno-padded"
.LC557:
	.string	"-Wno-packed"
.LC558:
	.string	"-Wno-overloaded-virtual"
.LC559:
	.string	"-Wno-old-style-cast"
.LC560:
	.string	"-Wno-non-virtual-dtor"
.LC561:
	.string	"-Wno-non-template-friend"
.LC562:
	.string	"-Wno-nested-externs"
.LC563:
	.string	"-Wno-multichar"
.LC564:
	.string	"-Wno-missing-prototypes"
.LC565:
	.string	"-Wno-missing-noreturn"
.LC566:
	.string	"-Wno-missing-format-attribute"
.LC567:
	.string	"-Wno-missing-declarations"
.LC568:
	.string	"-Wno-missing-braces"
.LC569:
	.string	"-Wno-main"
.LC570:
	.string	"-Wno-long-long"
.LC571:
	.string	"-Wno-larger-than-"
.LC572:
	.string	"-Wno-invalid-pch"
.LC573:
	.string	"-Wno-inline"
.LC574:
	.string	"-Wno-import"
.LC575:
	.string	"-Wno-implicit-int"
	.align 4
.LC576:
	.string	"-Wno-implicit-function-declaration"
.LC577:
	.string	"-Wno-implicit"
.LC578:
	.string	"-Wno-format-y2k"
.LC579:
	.string	"-Wno-format-security"
.LC580:
	.string	"-Wno-format-nonliteral"
.LC581:
	.string	"-Wno-format-extra-args"
.LC582:
	.string	"-Wno-format"
.LC583:
	.string	"-Wno-float-equal"
.LC584:
	.string	"-Wno-error"
.LC585:
	.string	"-Wno-endif-labels"
.LC586:
	.string	"-Wno-effc++"
.LC587:
	.string	"-Wno-div-by-zero"
.LC588:
	.string	"-Wno-disabled-optimization"
.LC589:
	.string	"-Wno-deprecated-declarations"
.LC590:
	.string	"-Wno-deprecated"
.LC591:
	.string	"-Wno-ctor-dtor-privacy"
.LC592:
	.string	"-Wno-conversion"
.LC593:
	.string	"-Wno-comments"
.LC594:
	.string	"-Wno-comment"
.LC595:
	.string	"-Wno-char-subscripts"
.LC596:
	.string	"-Wno-cast-qual"
.LC597:
	.string	"-Wno-cast-align"
.LC598:
	.string	"-Wno-bad-function-cast"
.LC599:
	.string	"-Wno-aggregate-return"
.LC600:
	.string	"-Wnested-externs"
.LC601:
	.string	"-Wmultichar"
.LC602:
	.string	"-Wmissing-prototypes"
.LC603:
	.string	"-Wmissing-noreturn"
.LC604:
	.string	"-Wmissing-format-attribute"
.LC605:
	.string	"-Wmissing-declarations"
.LC606:
	.string	"-Wmissing-braces"
.LC607:
	.string	"-Wmain"
.LC608:
	.string	"-Wlong-long"
.LC609:
	.string	"-Wlarger-than-"
.LC610:
	.string	"-Winvalid-pch"
.LC611:
	.string	"-Winline"
.LC612:
	.string	"-Wimport"
.LC613:
	.string	"-Wimplicit-int"
	.align 4
.LC614:
	.string	"-Wimplicit-function-declaration"
.LC615:
	.string	"-Wimplicit"
.LC616:
	.string	"-Wformat=2"
.LC617:
	.string	"-Wformat-security"
.LC618:
	.string	"-Wformat-nonliteral"
.LC619:
	.string	"-Wformat"
.LC620:
	.string	"-Wfloat-equal"
	.align 4
.LC621:
	.string	"-Werror-implicit-function-declaration"
.LC622:
	.string	"-Werror"
.LC623:
	.string	"-Wendif-labels"
.LC624:
	.string	"-Weffc++"
.LC625:
	.string	"-Wdiv-by-zero"
.LC626:
	.string	"-Wdisabled-optimization"
.LC627:
	.string	"-Wdeprecated"
.LC628:
	.string	"-Wdeclaration-after-statement"
.LC629:
	.string	"-Wctor-dtor-privacy"
.LC630:
	.string	"-Wconversion"
.LC631:
	.string	"-Wcomments"
.LC632:
	.string	"-Wcomment"
.LC633:
	.string	"-Wchar-subscripts"
.LC634:
	.string	"-Wcast-qual"
.LC635:
	.string	"-Wcast-align"
.LC636:
	.string	"-Wbad-function-cast"
.LC637:
	.string	"-Wall"
.LC638:
	.string	"-Waggregate-return"
.LC639:
	.string	"-Wabi"
.LC640:
	.string	"-Wa,"
.LC641:
	.string	"-WOPT:"
.LC642:
	.string	"-WB,"
.LC643:
	.string	"-VHO:"
.LC644:
	.string	"-TENV:"
.LC645:
	.string	"-TARG:"
.LC646:
	.string	"-SWP:"
.LC647:
	.string	"-PURPLE:"
.LC648:
	.string	"-PROMP:next_id="
.LC649:
	.string	"-PROMP:"
.LC650:
	.string	"-PHASE:"
.LC651:
	.string	"-Os"
.LC652:
	.string	"-Olimit"
.LC653:
	.string	"-Ofast"
.LC654:
	.string	"-OPT:"
.LC655:
	.string	"3"
.LC656:
	.string	"2"
.LC657:
	.string	"1"
.LC658:
	.string	"0"
.LC659:
	.string	"-NC"
.LC660:
	.string	"-MT"
.LC661:
	.string	"-MQ"
.LC662:
	.string	"-MP"
.LC663:
	.string	"-MMD"
.LC664:
	.string	"-MM"
.LC665:
	.string	"-MG"
.LC666:
	.string	"-MF"
.LC667:
	.string	"-MDupdate"
.LC668:
	.string	"-MDtarget"
.LC669:
	.string	"-MDignore"
.LC670:
	.string	"-MD"
.LC671:
	.string	"-LNO:"
.LC672:
	.string	"-LMSG:"
.LC673:
	.string	"-LIST:"
.LC674:
	.string	"-LD_"
.LC675:
	.string	"-LANG:std"
.LC676:
	.string	"-LANG:"
.LC677:
	.string	"-IPA:"
.LC678:
	.string	"-IPA"
.LC679:
	.string	"-INTERNAL:"
.LC680:
	.string	"-INLINE:"
.LC681:
	.string	"-INLINE"
.LC682:
	.string	"-I-"
.LC683:
	.string	"-Gspace"
.LC684:
	.string	"-GRA:"
.LC685:
	.string	"-GCM:"
.LC686:
	.string	"-FLIST:"
.LC687:
	.string	"-FE:"
.LC688:
	.string	"-DEFAULT:"
.LC689:
	.string	"-DEBUG:"
.LC690:
	.string	"-CLIST:"
.LC691:
	.string	"-CG:"
.LC692:
	.string	"-66"
.LC693:
	.string	"--write-user-dependencies"
.LC694:
	.string	"--write-dependencies"
.LC695:
	.string	"--whole-archive"
.LC696:
	.string	"--version"
.LC697:
	.string	"--verbose"
.LC698:
	.string	"--user-dependencies"
.LC699:
	.string	"--undefine-macro"
.LC700:
	.string	"--trigraphs"
.LC701:
	.string	"--traditional-cpp"
.LC702:
	.string	"--traditional"
.LC703:
	.string	"--trace-includes"
.LC704:
	.string	"--target"
.LC705:
	.string	"--symbolic"
.LC706:
	.string	"--static"
.LC707:
	.string	"--specs="
.LC708:
	.string	"--specs"
.LC709:
	.string	"--shared"
.LC710:
	.string	"--save-temps"
.LC711:
	.string	"--profile"
.LC712:
	.string	"--print-search-dirs"
.LC713:
	.string	"--print-prog-name="
.LC714:
	.string	"--print-prog-name"
.LC715:
	.string	"--print-multi-lib"
	.align 4
.LC716:
	.string	"--print-missing-file-dependencies"
.LC717:
	.string	"--print-libgcc-file-name"
.LC718:
	.string	"--print-file-name="
.LC719:
	.string	"--print-file-name"
.LC720:
	.string	"--preprocess"
.LC721:
	.string	"--pipe"
.LC722:
	.string	"--pedantic-errors"
.LC723:
	.string	"--pedantic"
.LC724:
	.string	"--output"
.LC725:
	.string	"--optimize"
.LC726:
	.string	"--no-whole-archive"
.LC727:
	.string	"--no-warnings"
.LC728:
	.string	"--no-standard-libraries"
.LC729:
	.string	"--no-standard-includes"
.LC730:
	.string	"--no-line-commands"
.LC731:
	.string	"--library-directory"
.LC732:
	.string	"--include-with-prefix-before"
.LC733:
	.string	"--include-with-prefix"
.LC734:
	.string	"--include-prefix"
.LC735:
	.string	"--include-directory-after"
.LC736:
	.string	"--include-directory"
.LC737:
	.string	"--include-barrier"
.LC738:
	.string	"--include"
.LC739:
	.string	"--imacros"
.LC740:
	.string	"--help"
.LC741:
	.string	"--force-link"
.LC742:
	.string	"--extra-warnings"
.LC743:
	.string	"--dependencies"
.LC744:
	.string	"--define-macro"
.LC745:
	.string	"--debug"
.LC746:
	.string	"--compile"
.LC747:
	.string	"--comments"
.LC748:
	.string	"--assert"
.LC749:
	.string	"--assemble"
.LC750:
	.string	"--ansi"
.LC751:
	.string	"--all-warnings"
.LC752:
	.string	"-###"
.LC753:
	.string	"-"
	.text
.globl get_option
	.type	get_option, @function
get_option:
.LFB24:
	.file 2 "./get_option.i"
	.loc 2 6 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%edi
.LCFI78:
	pushl	%esi
.LCFI79:
	pushl	%ebx
.LCFI80:
	subl	$9020, %esp
.LCFI81:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 8 0
	movl	optargd@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 9 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	cmpl	$122, -20(%ebp)
	ja	.L162
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	.L216@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L216:
	.long	.L163@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L164@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L165@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L166@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L167@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L168@GOTOFF
	.long	.L162@GOTOFF
	.long	.L169@GOTOFF
	.long	.L170@GOTOFF
	.long	.L171@GOTOFF
	.long	.L172@GOTOFF
	.long	.L173@GOTOFF
	.long	.L174@GOTOFF
	.long	.L175@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L176@GOTOFF
	.long	.L177@GOTOFF
	.long	.L178@GOTOFF
	.long	.L179@GOTOFF
	.long	.L180@GOTOFF
	.long	.L181@GOTOFF
	.long	.L182@GOTOFF
	.long	.L183@GOTOFF
	.long	.L184@GOTOFF
	.long	.L185@GOTOFF
	.long	.L186@GOTOFF
	.long	.L187@GOTOFF
	.long	.L188@GOTOFF
	.long	.L189@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L162@GOTOFF
	.long	.L190@GOTOFF
	.long	.L191@GOTOFF
	.long	.L192@GOTOFF
	.long	.L193@GOTOFF
	.long	.L194@GOTOFF
	.long	.L195@GOTOFF
	.long	.L196@GOTOFF
	.long	.L197@GOTOFF
	.long	.L198@GOTOFF
	.long	.L199@GOTOFF
	.long	.L200@GOTOFF
	.long	.L201@GOTOFF
	.long	.L202@GOTOFF
	.long	.L203@GOTOFF
	.long	.L204@GOTOFF
	.long	.L205@GOTOFF
	.long	.L206@GOTOFF
	.long	.L207@GOTOFF
	.long	.L208@GOTOFF
	.long	.L209@GOTOFF
	.long	.L210@GOTOFF
	.long	.L211@GOTOFF
	.long	.L212@GOTOFF
	.long	.L213@GOTOFF
	.long	.L214@GOTOFF
	.long	.L215@GOTOFF
	.text
.L215:
	.loc 2 11 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	$8, -32(%ebp)
	cld
	movl	-24(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	-32(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 12 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 13 0
	movl	$30, -16(%ebp)
	jmp	.L219
.L214:
	.loc 2 18 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 19 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 20 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 21 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L213:
	.loc 2 25 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 26 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 27 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 28 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	add_string_option_or_dash@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L212:
	.loc 2 32 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -40(%ebp)
	movl	$5, -44(%ebp)
	cld
	movl	-36(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	-44(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L222
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -48(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -52(%ebp)
	movl	$8, -56(%ebp)
	cld
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
	jne	.L222
	.loc 2 34 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 35 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 36 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 37 0
	movl	$33, -16(%ebp)
	jmp	.L219
.L222:
	.loc 2 40 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -64(%ebp)
	movl	$5, -68(%ebp)
	cld
	movl	-60(%ebp), %esi
	movl	-64(%ebp), %edi
	movl	-68(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L225
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -72(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -76(%ebp)
	movl	$4, -80(%ebp)
	cld
	movl	-72(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L225
	.loc 2 42 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 43 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 44 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 45 0
	movl	$34, -16(%ebp)
	jmp	.L219
.L225:
	.loc 2 48 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 49 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -88(%ebp)
	movl	$5, -92(%ebp)
	cld
	movl	-84(%ebp), %esi
	movl	-88(%ebp), %edi
	movl	-92(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L229
	.loc 2 50 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 51 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L229
	.loc 2 52 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 53 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 54 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 55 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L229:
	.loc 2 59 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	leal	.LC25@GOTOFF(%ebx), %esi
	movl	%esi, -100(%ebp)
	movl	$5, -104(%ebp)
	cld
	movl	-96(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-104(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L232
	.loc 2 60 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 61 0
	movl	$36, -16(%ebp)
	jmp	.L219
.L232:
	.loc 2 64 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	leal	.LC26@GOTOFF(%ebx), %esi
	movl	%esi, -112(%ebp)
	movl	$4, -116(%ebp)
	cld
	movl	-108(%ebp), %esi
	movl	-112(%ebp), %edi
	movl	-116(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L234
	.loc 2 65 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 66 0
	movl	$37, -16(%ebp)
	jmp	.L219
.L234:
	.loc 2 69 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	leal	.LC27@GOTOFF(%ebx), %esi
	movl	%esi, -124(%ebp)
	movl	$4, -128(%ebp)
	cld
	movl	-120(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L236
	.loc 2 70 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 71 0
	movl	$38, -16(%ebp)
	jmp	.L219
.L236:
	.loc 2 74 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 75 0
	movl	$39, -16(%ebp)
	jmp	.L219
.L211:
	.loc 2 79 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	leal	.LC28@GOTOFF(%ebx), %esi
	movl	%esi, -136(%ebp)
	movl	$11, -140(%ebp)
	cld
	movl	-132(%ebp), %esi
	movl	-136(%ebp), %edi
	movl	-140(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L238
	.loc 2 80 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 81 0
	movl	$40, -16(%ebp)
	jmp	.L219
.L238:
	.loc 2 84 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
	leal	.LC29@GOTOFF(%ebx), %esi
	movl	%esi, -148(%ebp)
	movl	$13, -152(%ebp)
	cld
	movl	-144(%ebp), %esi
	movl	-148(%ebp), %edi
	movl	-152(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L240
	.loc 2 85 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 86 0
	movl	$41, -16(%ebp)
	jmp	.L219
.L240:
	.loc 2 89 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	leal	.LC30@GOTOFF(%ebx), %esi
	movl	%esi, -160(%ebp)
	movl	$13, -164(%ebp)
	cld
	movl	-156(%ebp), %esi
	movl	-160(%ebp), %edi
	movl	-164(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L242
	.loc 2 90 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 91 0
	movl	$42, -16(%ebp)
	jmp	.L219
.L242:
	.loc 2 94 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -168(%ebp)
	leal	.LC31@GOTOFF(%ebx), %esi
	movl	%esi, -172(%ebp)
	movl	$8, -176(%ebp)
	cld
	movl	-168(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	-176(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L244
	.loc 2 95 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 96 0
	movl	$43, -16(%ebp)
	jmp	.L219
.L244:
	.loc 2 99 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	leal	.LC32@GOTOFF(%ebx), %esi
	movl	%esi, -184(%ebp)
	movl	$5, -188(%ebp)
	cld
	movl	-180(%ebp), %esi
	movl	-184(%ebp), %edi
	movl	-188(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L246
	.loc 2 100 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 101 0
	movl	$44, -16(%ebp)
	jmp	.L219
.L246:
	.loc 2 104 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -192(%ebp)
	leal	.LC33@GOTOFF(%ebx), %esi
	movl	%esi, -196(%ebp)
	movl	$9, -200(%ebp)
	cld
	movl	-192(%ebp), %esi
	movl	-196(%ebp), %edi
	movl	-200(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L248
	.loc 2 105 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 106 0
	movl	$45, -16(%ebp)
	jmp	.L219
.L248:
	.loc 2 109 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
	leal	.LC34@GOTOFF(%ebx), %esi
	movl	%esi, -208(%ebp)
	movl	$9, -212(%ebp)
	cld
	movl	-204(%ebp), %esi
	movl	-208(%ebp), %edi
	movl	-212(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L250
	.loc 2 110 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 111 0
	movl	$46, -16(%ebp)
	jmp	.L219
.L250:
	.loc 2 114 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 115 0
	movl	$47, -16(%ebp)
	jmp	.L219
.L210:
	.loc 2 119 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
	leal	.LC35@GOTOFF(%ebx), %esi
	movl	%esi, -220(%ebp)
	movl	$8, -224(%ebp)
	cld
	movl	-216(%ebp), %esi
	movl	-220(%ebp), %edi
	movl	-224(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L252
	.loc 2 120 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 121 0
	movl	$48, -16(%ebp)
	jmp	.L219
.L252:
	.loc 2 124 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -228(%ebp)
	leal	.LC36@GOTOFF(%ebx), %esi
	movl	%esi, -232(%ebp)
	movl	$10, -236(%ebp)
	cld
	movl	-228(%ebp), %esi
	movl	-232(%ebp), %edi
	movl	-236(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L254
	.loc 2 125 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 126 0
	movl	$49, -16(%ebp)
	jmp	.L219
.L254:
	.loc 2 129 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -240(%ebp)
	leal	.LC37@GOTOFF(%ebx), %esi
	movl	%esi, -244(%ebp)
	movl	$8, -248(%ebp)
	cld
	movl	-240(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	-248(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L256
	.loc 2 130 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 131 0
	movl	$50, -16(%ebp)
	jmp	.L219
.L256:
	.loc 2 134 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -252(%ebp)
	leal	.LC38@GOTOFF(%ebx), %esi
	movl	%esi, -256(%ebp)
	movl	$7, -260(%ebp)
	cld
	movl	-252(%ebp), %esi
	movl	-256(%ebp), %edi
	movl	-260(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L258
	.loc 2 135 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 136 0
	movl	$51, -16(%ebp)
	jmp	.L219
.L258:
	.loc 2 139 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -264(%ebp)
	leal	.LC39@GOTOFF(%ebx), %esi
	movl	%esi, -268(%ebp)
	movl	$21, -272(%ebp)
	cld
	movl	-264(%ebp), %esi
	movl	-268(%ebp), %edi
	movl	-272(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L260
	.loc 2 140 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 141 0
	movl	$52, -16(%ebp)
	jmp	.L219
.L260:
	.loc 2 144 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -276(%ebp)
	leal	.LC40@GOTOFF(%ebx), %esi
	movl	%esi, -280(%ebp)
	movl	$20, -284(%ebp)
	cld
	movl	-276(%ebp), %esi
	movl	-280(%ebp), %edi
	movl	-284(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L262
	.loc 2 145 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 146 0
	movl	$53, -16(%ebp)
	jmp	.L219
.L262:
	.loc 2 149 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -288(%ebp)
	leal	.LC41@GOTOFF(%ebx), %esi
	movl	%esi, -292(%ebp)
	movl	$7, -296(%ebp)
	cld
	movl	-288(%ebp), %esi
	movl	-292(%ebp), %edi
	movl	-296(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L264
	.loc 2 150 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 151 0
	movl	$54, -16(%ebp)
	jmp	.L219
.L264:
	.loc 2 154 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_u_option
	movl	%eax, -16(%ebp)
	jmp	.L219
.L209:
	.loc 2 158 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -300(%ebp)
	leal	.LC42@GOTOFF(%ebx), %esi
	movl	%esi, -304(%ebp)
	movl	$11, -308(%ebp)
	cld
	movl	-300(%ebp), %esi
	movl	-304(%ebp), %edi
	movl	-308(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L266
	.loc 2 159 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 160 0
	movl	$56, -16(%ebp)
	jmp	.L219
.L266:
	.loc 2 163 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -312(%ebp)
	leal	.LC43@GOTOFF(%ebx), %esi
	movl	%esi, -316(%ebp)
	movl	$8, -320(%ebp)
	cld
	movl	-312(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	-320(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L268
	.loc 2 164 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 165 0
	movl	$57, -16(%ebp)
	jmp	.L219
.L268:
	.loc 2 168 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -324(%ebp)
	leal	.LC44@GOTOFF(%ebx), %esi
	movl	%esi, -328(%ebp)
	movl	$17, -332(%ebp)
	cld
	movl	-324(%ebp), %esi
	movl	-328(%ebp), %edi
	movl	-332(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L270
	.loc 2 169 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 170 0
	movl	$58, -16(%ebp)
	jmp	.L219
.L270:
	.loc 2 173 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -336(%ebp)
	leal	.LC45@GOTOFF(%ebx), %esi
	movl	%esi, -340(%ebp)
	movl	$13, -344(%ebp)
	cld
	movl	-336(%ebp), %esi
	movl	-340(%ebp), %edi
	movl	-344(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 174 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 175 0
	movl	$59, -16(%ebp)
	jmp	.L219
.L208:
	.loc 2 180 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -348(%ebp)
	leal	.LC46@GOTOFF(%ebx), %esi
	movl	%esi, -352(%ebp)
	movl	$13, -356(%ebp)
	cld
	movl	-348(%ebp), %esi
	movl	-352(%ebp), %edi
	movl	-356(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L274
	.loc 2 181 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 182 0
	movl	$60, -16(%ebp)
	jmp	.L219
.L274:
	.loc 2 185 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -360(%ebp)
	leal	.LC47@GOTOFF(%ebx), %esi
	movl	%esi, -364(%ebp)
	movl	$10, -368(%ebp)
	cld
	movl	-360(%ebp), %esi
	movl	-364(%ebp), %edi
	movl	-368(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L276
	.loc 2 186 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 187 0
	movl	$61, -16(%ebp)
	jmp	.L219
.L276:
	.loc 2 190 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -372(%ebp)
	leal	.LC48@GOTOFF(%ebx), %esi
	movl	%esi, -376(%ebp)
	movl	$12, -380(%ebp)
	cld
	movl	-372(%ebp), %esi
	movl	-376(%ebp), %edi
	movl	-380(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L278
	.loc 2 191 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 192 0
	movl	$62, -16(%ebp)
	jmp	.L219
.L278:
	.loc 2 195 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -384(%ebp)
	leal	.LC49@GOTOFF(%ebx), %esi
	movl	%esi, -388(%ebp)
	movl	$8, -392(%ebp)
	cld
	movl	-384(%ebp), %esi
	movl	-388(%ebp), %edi
	movl	-392(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L280
	.loc 2 196 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 197 0
	movl	$63, -16(%ebp)
	jmp	.L219
.L280:
	.loc 2 200 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -396(%ebp)
	leal	.LC50@GOTOFF(%ebx), %esi
	movl	%esi, -400(%ebp)
	movl	$18, -404(%ebp)
	cld
	movl	-396(%ebp), %esi
	movl	-400(%ebp), %edi
	movl	-404(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L282
	.loc 2 201 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 202 0
	movl	$64, -16(%ebp)
	jmp	.L219
.L282:
	.loc 2 205 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -408(%ebp)
	leal	.LC51@GOTOFF(%ebx), %esi
	movl	%esi, -412(%ebp)
	movl	$18, -416(%ebp)
	cld
	movl	-408(%ebp), %esi
	movl	-412(%ebp), %edi
	movl	-416(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L284
	.loc 2 206 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 207 0
	movl	$65, -16(%ebp)
	jmp	.L219
.L284:
	.loc 2 210 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -420(%ebp)
	leal	.LC52@GOTOFF(%ebx), %esi
	movl	%esi, -424(%ebp)
	movl	$20, -428(%ebp)
	cld
	movl	-420(%ebp), %esi
	movl	-424(%ebp), %edi
	movl	-428(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L286
	.loc 2 211 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 212 0
	movl	$66, -16(%ebp)
	jmp	.L219
.L286:
	.loc 2 215 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -432(%ebp)
	leal	.LC53@GOTOFF(%ebx), %esi
	movl	%esi, -436(%ebp)
	movl	$18, -440(%ebp)
	cld
	movl	-432(%ebp), %esi
	movl	-436(%ebp), %edi
	movl	-440(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L288
	.loc 2 216 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 217 0
	movl	$67, -16(%ebp)
	jmp	.L219
.L288:
	.loc 2 220 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -444(%ebp)
	leal	.LC54@GOTOFF(%ebx), %esi
	movl	%esi, -448(%ebp)
	movl	$11, -452(%ebp)
	cld
	movl	-444(%ebp), %esi
	movl	-448(%ebp), %edi
	movl	-452(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L290
	.loc 2 221 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 222 0
	movl	$68, -16(%ebp)
	jmp	.L219
.L290:
	.loc 2 225 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -456(%ebp)
	leal	.LC55@GOTOFF(%ebx), %esi
	movl	%esi, -460(%ebp)
	movl	$11, -464(%ebp)
	cld
	movl	-456(%ebp), %esi
	movl	-460(%ebp), %edi
	movl	-464(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L292
	.loc 2 226 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 227 0
	movl	$69, -16(%ebp)
	jmp	.L219
.L292:
	.loc 2 230 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -468(%ebp)
	leal	.LC56@GOTOFF(%ebx), %esi
	movl	%esi, -472(%ebp)
	movl	$11, -476(%ebp)
	cld
	movl	-468(%ebp), %esi
	movl	-472(%ebp), %edi
	movl	-476(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L294
	.loc 2 231 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 232 0
	movl	$70, -16(%ebp)
	jmp	.L219
.L294:
	.loc 2 235 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -480(%ebp)
	leal	.LC57@GOTOFF(%ebx), %esi
	movl	%esi, -484(%ebp)
	movl	$13, -488(%ebp)
	cld
	movl	-480(%ebp), %esi
	movl	-484(%ebp), %edi
	movl	-488(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L296
	.loc 2 236 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 237 0
	movl	$71, -16(%ebp)
	jmp	.L219
.L296:
	.loc 2 240 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -492(%ebp)
	leal	.LC58@GOTOFF(%ebx), %esi
	movl	%esi, -496(%ebp)
	movl	$9, -500(%ebp)
	cld
	movl	-492(%ebp), %esi
	movl	-496(%ebp), %edi
	movl	-500(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L298
	.loc 2 241 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 242 0
	movl	$72, -16(%ebp)
	jmp	.L219
.L298:
	.loc 2 245 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -504(%ebp)
	leal	.LC59@GOTOFF(%ebx), %esi
	movl	%esi, -508(%ebp)
	movl	$9, -512(%ebp)
	cld
	movl	-504(%ebp), %esi
	movl	-508(%ebp), %edi
	movl	-512(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L300
	.loc 2 246 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 247 0
	movl	$73, -16(%ebp)
	jmp	.L219
.L300:
	.loc 2 250 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -516(%ebp)
	leal	.LC60@GOTOFF(%ebx), %esi
	movl	%esi, -520(%ebp)
	movl	$9, -524(%ebp)
	cld
	movl	-516(%ebp), %esi
	movl	-520(%ebp), %edi
	movl	-524(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L302
	.loc 2 251 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 252 0
	movl	$74, -16(%ebp)
	jmp	.L219
.L302:
	.loc 2 255 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -528(%ebp)
	leal	.LC61@GOTOFF(%ebx), %esi
	movl	%esi, -532(%ebp)
	movl	$11, -536(%ebp)
	cld
	movl	-528(%ebp), %esi
	movl	-532(%ebp), %edi
	movl	-536(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L304
	.loc 2 256 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 257 0
	movl	$75, -16(%ebp)
	jmp	.L219
.L304:
	.loc 2 260 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -540(%ebp)
	leal	.LC62@GOTOFF(%ebx), %esi
	movl	%esi, -544(%ebp)
	movl	$22, -548(%ebp)
	cld
	movl	-540(%ebp), %esi
	movl	-544(%ebp), %edi
	movl	-548(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L306
	.loc 2 261 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 262 0
	movl	$76, -16(%ebp)
	jmp	.L219
.L306:
	.loc 2 265 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -552(%ebp)
	leal	.LC63@GOTOFF(%ebx), %esi
	movl	%esi, -556(%ebp)
	movl	$22, -560(%ebp)
	cld
	movl	-552(%ebp), %esi
	movl	-556(%ebp), %edi
	movl	-560(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L308
	.loc 2 266 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 267 0
	movl	$76, -16(%ebp)
	jmp	.L219
.L308:
	.loc 2 270 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -564(%ebp)
	leal	.LC64@GOTOFF(%ebx), %esi
	movl	%esi, -568(%ebp)
	movl	$15, -572(%ebp)
	cld
	movl	-564(%ebp), %esi
	movl	-568(%ebp), %edi
	movl	-572(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L310
	.loc 2 271 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 272 0
	movl	$78, -16(%ebp)
	jmp	.L219
.L310:
	.loc 2 275 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -576(%ebp)
	leal	.LC65@GOTOFF(%ebx), %esi
	movl	%esi, -580(%ebp)
	movl	$13, -584(%ebp)
	cld
	movl	-576(%ebp), %esi
	movl	-580(%ebp), %edi
	movl	-584(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L312
	.loc 2 276 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 277 0
	movl	$79, -16(%ebp)
	jmp	.L219
.L312:
	.loc 2 280 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -588(%ebp)
	leal	.LC66@GOTOFF(%ebx), %esi
	movl	%esi, -592(%ebp)
	movl	$8, -596(%ebp)
	cld
	movl	-588(%ebp), %esi
	movl	-592(%ebp), %edi
	movl	-596(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L314
	.loc 2 281 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 282 0
	movl	$80, -16(%ebp)
	jmp	.L219
.L314:
	.loc 2 285 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 286 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -600(%ebp)
	leal	.LC67@GOTOFF(%ebx), %esi
	movl	%esi, -604(%ebp)
	movl	$7, -608(%ebp)
	cld
	movl	-600(%ebp), %esi
	movl	-604(%ebp), %edi
	movl	-608(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L317
	.loc 2 287 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 288 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 289 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 290 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$81, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L317:
	.loc 2 293 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 294 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -612(%ebp)
	leal	.LC68@GOTOFF(%ebx), %esi
	movl	%esi, -616(%ebp)
	movl	$7, -620(%ebp)
	cld
	movl	-612(%ebp), %esi
	movl	-616(%ebp), %edi
	movl	-620(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L320
	.loc 2 295 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 296 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 297 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 298 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$82, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L320:
	.loc 2 301 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 302 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -624(%ebp)
	leal	.LC69@GOTOFF(%ebx), %esi
	movl	%esi, -628(%ebp)
	movl	$9, -632(%ebp)
	cld
	movl	-624(%ebp), %esi
	movl	-628(%ebp), %edi
	movl	-632(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L323
	.loc 2 303 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 304 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 305 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 306 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$83, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L323:
	.loc 2 309 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -636(%ebp)
	leal	.LC70@GOTOFF(%ebx), %esi
	movl	%esi, -640(%ebp)
	movl	$7, -644(%ebp)
	cld
	movl	-636(%ebp), %esi
	movl	-640(%ebp), %edi
	movl	-644(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L325
	.loc 2 310 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 311 0
	movl	$84, -16(%ebp)
	jmp	.L219
.L325:
	.loc 2 314 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -648(%ebp)
	leal	.LC71@GOTOFF(%ebx), %esi
	movl	%esi, -652(%ebp)
	movl	$7, -656(%ebp)
	cld
	movl	-648(%ebp), %esi
	movl	-652(%ebp), %edi
	movl	-656(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L327
	.loc 2 315 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 316 0
	movl	$85, -16(%ebp)
	jmp	.L219
.L327:
	.loc 2 319 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -660(%ebp)
	leal	.LC72@GOTOFF(%ebx), %esi
	movl	%esi, -664(%ebp)
	movl	$7, -668(%ebp)
	cld
	movl	-660(%ebp), %esi
	movl	-664(%ebp), %edi
	movl	-668(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L329
	.loc 2 320 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 321 0
	movl	$86, -16(%ebp)
	jmp	.L219
.L329:
	.loc 2 324 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -672(%ebp)
	leal	.LC73@GOTOFF(%ebx), %esi
	movl	%esi, -676(%ebp)
	movl	$7, -680(%ebp)
	cld
	movl	-672(%ebp), %esi
	movl	-676(%ebp), %edi
	movl	-680(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L331
	.loc 2 325 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 326 0
	movl	$87, -16(%ebp)
	jmp	.L219
.L331:
	.loc 2 329 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -684(%ebp)
	leal	.LC74@GOTOFF(%ebx), %esi
	movl	%esi, -688(%ebp)
	movl	$15, -692(%ebp)
	cld
	movl	-684(%ebp), %esi
	movl	-688(%ebp), %edi
	movl	-692(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L333
	.loc 2 330 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 331 0
	movl	$88, -16(%ebp)
	jmp	.L219
.L333:
	.loc 2 334 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -696(%ebp)
	leal	.LC75@GOTOFF(%ebx), %esi
	movl	%esi, -700(%ebp)
	movl	$6, -704(%ebp)
	cld
	movl	-696(%ebp), %esi
	movl	-700(%ebp), %edi
	movl	-704(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L335
	.loc 2 335 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 336 0
	movl	$89, -16(%ebp)
	jmp	.L219
.L335:
	.loc 2 339 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -708(%ebp)
	leal	.LC76@GOTOFF(%ebx), %esi
	movl	%esi, -712(%ebp)
	movl	$15, -716(%ebp)
	cld
	movl	-708(%ebp), %esi
	movl	-712(%ebp), %edi
	movl	-716(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L337
	.loc 2 340 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 341 0
	movl	$90, -16(%ebp)
	jmp	.L219
.L337:
	.loc 2 344 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -720(%ebp)
	leal	.LC77@GOTOFF(%ebx), %esi
	movl	%esi, -724(%ebp)
	movl	$8, -728(%ebp)
	cld
	movl	-720(%ebp), %esi
	movl	-724(%ebp), %edi
	movl	-728(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L339
	.loc 2 345 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 346 0
	movl	$91, -16(%ebp)
	jmp	.L219
.L339:
	.loc 2 349 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -732(%ebp)
	leal	.LC78@GOTOFF(%ebx), %esi
	movl	%esi, -736(%ebp)
	movl	$12, -740(%ebp)
	cld
	movl	-732(%ebp), %esi
	movl	-736(%ebp), %edi
	movl	-740(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L341
	.loc 2 350 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 351 0
	movl	$92, -16(%ebp)
	jmp	.L219
.L341:
	.loc 2 354 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 355 0
	movl	$93, -16(%ebp)
	jmp	.L219
.L207:
	.loc 2 359 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 360 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -744(%ebp)
	leal	.LC79@GOTOFF(%ebx), %esi
	movl	%esi, -748(%ebp)
	movl	$6, -752(%ebp)
	cld
	movl	-744(%ebp), %esi
	movl	-748(%ebp), %edi
	movl	-752(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L344
	.loc 2 361 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 362 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 363 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 364 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$94, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L344:
	.loc 2 367 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -756(%ebp)
	leal	.LC80@GOTOFF(%ebx), %esi
	movl	%esi, -760(%ebp)
	movl	$7, -764(%ebp)
	cld
	movl	-756(%ebp), %esi
	movl	-760(%ebp), %edi
	movl	-764(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L346
	.loc 2 368 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 369 0
	movl	$95, -16(%ebp)
	jmp	.L219
.L346:
	.loc 2 372 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -768(%ebp)
	leal	.LC81@GOTOFF(%ebx), %esi
	movl	%esi, -772(%ebp)
	movl	$10, -776(%ebp)
	cld
	movl	-768(%ebp), %esi
	movl	-772(%ebp), %edi
	movl	-776(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L348
	.loc 2 373 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 374 0
	movl	$96, -16(%ebp)
	jmp	.L219
.L348:
	.loc 2 377 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -780(%ebp)
	leal	.LC82@GOTOFF(%ebx), %esi
	movl	%esi, -784(%ebp)
	movl	$9, -788(%ebp)
	cld
	movl	-780(%ebp), %esi
	movl	-784(%ebp), %edi
	movl	-788(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L350
	.loc 2 378 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 379 0
	movl	$97, -16(%ebp)
	jmp	.L219
.L350:
	.loc 2 382 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -792(%ebp)
	leal	.LC83@GOTOFF(%ebx), %esi
	movl	%esi, -796(%ebp)
	movl	$4, -800(%ebp)
	cld
	movl	-792(%ebp), %esi
	movl	-796(%ebp), %edi
	movl	-800(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L352
	.loc 2 383 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 384 0
	movl	$98, -16(%ebp)
	jmp	.L219
.L352:
	.loc 2 387 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -804(%ebp)
	leal	.LC84@GOTOFF(%ebx), %esi
	movl	%esi, -808(%ebp)
	movl	$4, -812(%ebp)
	cld
	movl	-804(%ebp), %esi
	movl	-808(%ebp), %edi
	movl	-812(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L354
	.loc 2 388 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 389 0
	movl	$99, -16(%ebp)
	jmp	.L219
.L354:
	.loc 2 392 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 393 0
	movl	$100, -16(%ebp)
	jmp	.L219
.L206:
	.loc 2 397 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -816(%ebp)
	leal	.LC85@GOTOFF(%ebx), %esi
	movl	%esi, -820(%ebp)
	movl	$6, -824(%ebp)
	cld
	movl	-816(%ebp), %esi
	movl	-820(%ebp), %edi
	movl	-824(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L356
	.loc 2 398 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 399 0
	movl	$101, -16(%ebp)
	jmp	.L219
.L356:
	.loc 2 402 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -828(%ebp)
	leal	.LC86@GOTOFF(%ebx), %esi
	movl	%esi, -832(%ebp)
	movl	$6, -836(%ebp)
	cld
	movl	-828(%ebp), %esi
	movl	-832(%ebp), %edi
	movl	-836(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 403 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 404 0
	movl	$102, -16(%ebp)
	jmp	.L219
.L205:
	.loc 2 409 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -840(%ebp)
	leal	.LC87@GOTOFF(%ebx), %esi
	movl	%esi, -844(%ebp)
	movl	$9, -848(%ebp)
	cld
	movl	-840(%ebp), %esi
	movl	-844(%ebp), %edi
	movl	-848(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L360
	.loc 2 410 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 411 0
	movl	$103, -16(%ebp)
	jmp	.L219
.L360:
	.loc 2 414 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -852(%ebp)
	leal	.LC88@GOTOFF(%ebx), %esi
	movl	%esi, -856(%ebp)
	movl	$7, -860(%ebp)
	cld
	movl	-852(%ebp), %esi
	movl	-856(%ebp), %edi
	movl	-860(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L362
	.loc 2 415 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 416 0
	movl	$104, -16(%ebp)
	jmp	.L219
.L362:
	.loc 2 419 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -864(%ebp)
	leal	.LC89@GOTOFF(%ebx), %esi
	movl	%esi, -868(%ebp)
	movl	$9, -872(%ebp)
	cld
	movl	-864(%ebp), %esi
	movl	-868(%ebp), %edi
	movl	-872(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L364
	.loc 2 420 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 421 0
	movl	$105, -16(%ebp)
	jmp	.L219
.L364:
	.loc 2 424 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -876(%ebp)
	leal	.LC90@GOTOFF(%ebx), %esi
	movl	%esi, -880(%ebp)
	movl	$19, -884(%ebp)
	cld
	movl	-876(%ebp), %esi
	movl	-880(%ebp), %edi
	movl	-884(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L366
	.loc 2 425 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 426 0
	movl	$106, -16(%ebp)
	jmp	.L219
.L366:
	.loc 2 429 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 430 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -888(%ebp)
	leal	.LC91@GOTOFF(%ebx), %esi
	movl	%esi, -892(%ebp)
	movl	$17, -896(%ebp)
	cld
	movl	-888(%ebp), %esi
	movl	-892(%ebp), %edi
	movl	-896(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L369
	.loc 2 431 0
	movl	$17, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 432 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 433 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 434 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$107, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L369:
	.loc 2 437 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -900(%ebp)
	leal	.LC92@GOTOFF(%ebx), %esi
	movl	%esi, -904(%ebp)
	movl	$17, -908(%ebp)
	cld
	movl	-900(%ebp), %esi
	movl	-904(%ebp), %edi
	movl	-908(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L371
	.loc 2 438 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 439 0
	movl	$108, -16(%ebp)
	jmp	.L219
.L371:
	.loc 2 442 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -912(%ebp)
	leal	.LC93@GOTOFF(%ebx), %esi
	movl	%esi, -916(%ebp)
	movl	$24, -920(%ebp)
	cld
	movl	-912(%ebp), %esi
	movl	-916(%ebp), %edi
	movl	-920(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L373
	.loc 2 443 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 444 0
	movl	$109, -16(%ebp)
	jmp	.L219
.L373:
	.loc 2 447 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 448 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -924(%ebp)
	leal	.LC94@GOTOFF(%ebx), %esi
	movl	%esi, -928(%ebp)
	movl	$17, -932(%ebp)
	cld
	movl	-924(%ebp), %esi
	movl	-928(%ebp), %edi
	movl	-932(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L376
	.loc 2 449 0
	movl	$17, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 450 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 451 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 452 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$110, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L376:
	.loc 2 455 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -936(%ebp)
	leal	.LC95@GOTOFF(%ebx), %esi
	movl	%esi, -940(%ebp)
	movl	$9, -944(%ebp)
	cld
	movl	-936(%ebp), %esi
	movl	-940(%ebp), %edi
	movl	-944(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L378
	.loc 2 456 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 457 0
	movl	$111, -16(%ebp)
	jmp	.L219
.L378:
	.loc 2 460 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -948(%ebp)
	leal	.LC96@GOTOFF(%ebx), %esi
	movl	%esi, -952(%ebp)
	movl	$6, -956(%ebp)
	cld
	movl	-948(%ebp), %esi
	movl	-952(%ebp), %edi
	movl	-956(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L380
	.loc 2 461 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 462 0
	movl	$112, -16(%ebp)
	jmp	.L219
.L380:
	.loc 2 465 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -960(%ebp)
	leal	.LC97@GOTOFF(%ebx), %esi
	movl	%esi, -964(%ebp)
	movl	$5, -968(%ebp)
	cld
	movl	-960(%ebp), %esi
	movl	-964(%ebp), %edi
	movl	-968(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L382
	.loc 2 466 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 467 0
	movl	$113, -16(%ebp)
	jmp	.L219
.L382:
	.loc 2 470 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -972(%ebp)
	leal	.LC98@GOTOFF(%ebx), %esi
	movl	%esi, -976(%ebp)
	movl	$6, -980(%ebp)
	cld
	movl	-972(%ebp), %esi
	movl	-976(%ebp), %edi
	movl	-980(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L384
	.loc 2 471 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 472 0
	movl	$114, -16(%ebp)
	jmp	.L219
.L384:
	.loc 2 475 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -984(%ebp)
	leal	.LC99@GOTOFF(%ebx), %esi
	movl	%esi, -988(%ebp)
	movl	$4, -992(%ebp)
	cld
	movl	-984(%ebp), %esi
	movl	-988(%ebp), %edi
	movl	-992(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L386
	.loc 2 476 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 477 0
	movl	$115, -16(%ebp)
	jmp	.L219
.L386:
	.loc 2 480 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -996(%ebp)
	leal	.LC100@GOTOFF(%ebx), %esi
	movl	%esi, -1000(%ebp)
	movl	$6, -1004(%ebp)
	cld
	movl	-996(%ebp), %esi
	movl	-1000(%ebp), %edi
	movl	-1004(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L388
	.loc 2 481 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 482 0
	movl	$116, -16(%ebp)
	jmp	.L219
.L388:
	.loc 2 485 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 486 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1008(%ebp)
	leal	.LC101@GOTOFF(%ebx), %esi
	movl	%esi, -1012(%ebp)
	movl	$5, -1016(%ebp)
	cld
	movl	-1008(%ebp), %esi
	movl	-1012(%ebp), %edi
	movl	-1016(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L391
	.loc 2 487 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 488 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 489 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 490 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L391:
	.loc 2 493 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1020(%ebp)
	leal	.LC102@GOTOFF(%ebx), %esi
	movl	%esi, -1024(%ebp)
	movl	$4, -1028(%ebp)
	cld
	movl	-1020(%ebp), %esi
	movl	-1024(%ebp), %edi
	movl	-1028(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L393
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -1032(%ebp)
	leal	.LC103@GOTOFF(%ebx), %esi
	movl	%esi, -1036(%ebp)
	movl	$5, -1040(%ebp)
	cld
	movl	-1032(%ebp), %esi
	movl	-1036(%ebp), %edi
	movl	-1040(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L393
	.loc 2 495 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 496 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 497 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 498 0
	movl	$118, -16(%ebp)
	jmp	.L219
.L393:
	.loc 2 501 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1044(%ebp)
	leal	.LC102@GOTOFF(%ebx), %esi
	movl	%esi, -1048(%ebp)
	movl	$4, -1052(%ebp)
	cld
	movl	-1044(%ebp), %esi
	movl	-1048(%ebp), %edi
	movl	-1052(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L396
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -1056(%ebp)
	leal	.LC104@GOTOFF(%ebx), %esi
	movl	%esi, -1060(%ebp)
	movl	$5, -1064(%ebp)
	cld
	movl	-1056(%ebp), %esi
	movl	-1060(%ebp), %edi
	movl	-1064(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L396
	.loc 2 503 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 504 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 505 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 506 0
	movl	$119, -16(%ebp)
	jmp	.L219
.L396:
	.loc 2 509 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1068(%ebp)
	leal	.LC102@GOTOFF(%ebx), %esi
	movl	%esi, -1072(%ebp)
	movl	$5, -1076(%ebp)
	cld
	movl	-1068(%ebp), %esi
	movl	-1072(%ebp), %edi
	movl	-1076(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L399
	.loc 2 510 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 511 0
	movl	$120, -16(%ebp)
	jmp	.L219
.L399:
	.loc 2 514 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1080(%ebp)
	leal	.LC105@GOTOFF(%ebx), %esi
	movl	%esi, -1084(%ebp)
	movl	$17, -1088(%ebp)
	cld
	movl	-1080(%ebp), %esi
	movl	-1084(%ebp), %edi
	movl	-1088(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L401
	.loc 2 515 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 516 0
	movl	$121, -16(%ebp)
	jmp	.L219
.L401:
	.loc 2 519 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1092(%ebp)
	leal	.LC106@GOTOFF(%ebx), %esi
	movl	%esi, -1096(%ebp)
	movl	$10, -1100(%ebp)
	cld
	movl	-1092(%ebp), %esi
	movl	-1096(%ebp), %edi
	movl	-1100(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L403
	.loc 2 520 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 521 0
	movl	$122, -16(%ebp)
	jmp	.L219
.L403:
	.loc 2 524 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 525 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1104(%ebp)
	leal	.LC107@GOTOFF(%ebx), %esi
	movl	%esi, -1108(%ebp)
	movl	$5, -1112(%ebp)
	cld
	movl	-1104(%ebp), %esi
	movl	-1108(%ebp), %edi
	movl	-1112(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L406
	.loc 2 526 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 527 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 528 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 529 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L406:
	.loc 2 532 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1116(%ebp)
	leal	.LC108@GOTOFF(%ebx), %esi
	movl	%esi, -1120(%ebp)
	movl	$4, -1124(%ebp)
	cld
	movl	-1116(%ebp), %esi
	movl	-1120(%ebp), %edi
	movl	-1124(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L408
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -1128(%ebp)
	leal	.LC103@GOTOFF(%ebx), %esi
	movl	%esi, -1132(%ebp)
	movl	$5, -1136(%ebp)
	cld
	movl	-1128(%ebp), %esi
	movl	-1132(%ebp), %edi
	movl	-1136(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L408
	.loc 2 534 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 535 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 536 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 537 0
	movl	$124, -16(%ebp)
	jmp	.L219
.L408:
	.loc 2 540 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1140(%ebp)
	leal	.LC108@GOTOFF(%ebx), %esi
	movl	%esi, -1144(%ebp)
	movl	$4, -1148(%ebp)
	cld
	movl	-1140(%ebp), %esi
	movl	-1144(%ebp), %edi
	movl	-1148(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L411
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -1152(%ebp)
	leal	.LC104@GOTOFF(%ebx), %esi
	movl	%esi, -1156(%ebp)
	movl	$5, -1160(%ebp)
	cld
	movl	-1152(%ebp), %esi
	movl	-1156(%ebp), %edi
	movl	-1160(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L411
	.loc 2 542 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 543 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 544 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 545 0
	movl	$125, -16(%ebp)
	jmp	.L219
.L411:
	.loc 2 548 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1164(%ebp)
	leal	.LC108@GOTOFF(%ebx), %esi
	movl	%esi, -1168(%ebp)
	movl	$5, -1172(%ebp)
	cld
	movl	-1164(%ebp), %esi
	movl	-1168(%ebp), %edi
	movl	-1172(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L414
	.loc 2 549 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 550 0
	movl	$126, -16(%ebp)
	jmp	.L219
.L414:
	.loc 2 553 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1176(%ebp)
	leal	.LC109@GOTOFF(%ebx), %esi
	movl	%esi, -1180(%ebp)
	movl	$8, -1184(%ebp)
	cld
	movl	-1176(%ebp), %esi
	movl	-1180(%ebp), %edi
	movl	-1184(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L416
	.loc 2 554 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 555 0
	movl	$127, -16(%ebp)
	jmp	.L219
.L416:
	.loc 2 558 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1188(%ebp)
	leal	.LC110@GOTOFF(%ebx), %esi
	movl	%esi, -1192(%ebp)
	movl	$17, -1196(%ebp)
	cld
	movl	-1188(%ebp), %esi
	movl	-1192(%ebp), %edi
	movl	-1196(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L418
	.loc 2 559 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 560 0
	movl	$128, -16(%ebp)
	jmp	.L219
.L418:
	.loc 2 563 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1200(%ebp)
	leal	.LC111@GOTOFF(%ebx), %esi
	movl	%esi, -1204(%ebp)
	movl	$7, -1208(%ebp)
	cld
	movl	-1200(%ebp), %esi
	movl	-1204(%ebp), %edi
	movl	-1208(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L420
	.loc 2 564 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 565 0
	movl	$129, -16(%ebp)
	jmp	.L219
.L420:
	.loc 2 568 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1212(%ebp)
	leal	.LC112@GOTOFF(%ebx), %esi
	movl	%esi, -1216(%ebp)
	movl	$19, -1220(%ebp)
	cld
	movl	-1212(%ebp), %esi
	movl	-1216(%ebp), %edi
	movl	-1220(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L422
	.loc 2 569 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 570 0
	movl	$130, -16(%ebp)
	jmp	.L219
.L422:
	.loc 2 573 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1224(%ebp)
	leal	.LC113@GOTOFF(%ebx), %esi
	movl	%esi, -1228(%ebp)
	movl	$19, -1232(%ebp)
	cld
	movl	-1224(%ebp), %esi
	movl	-1228(%ebp), %edi
	movl	-1232(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L424
	.loc 2 574 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 575 0
	movl	$130, -16(%ebp)
	jmp	.L219
.L424:
	.loc 2 578 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 579 0
	movl	$132, -16(%ebp)
	jmp	.L219
.L204:
	.loc 2 583 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1236(%ebp)
	leal	.LC114@GOTOFF(%ebx), %esi
	movl	%esi, -1240(%ebp)
	movl	$8, -1244(%ebp)
	cld
	movl	-1236(%ebp), %esi
	movl	-1240(%ebp), %edi
	movl	-1244(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L426
	.loc 2 584 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 585 0
	movl	$133, -16(%ebp)
	jmp	.L219
.L426:
	.loc 2 588 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1248(%ebp)
	leal	.LC115@GOTOFF(%ebx), %esi
	movl	%esi, -1252(%ebp)
	movl	$9, -1256(%ebp)
	cld
	movl	-1248(%ebp), %esi
	movl	-1252(%ebp), %edi
	movl	-1256(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L428
	.loc 2 589 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 590 0
	movl	$134, -16(%ebp)
	jmp	.L219
.L428:
	.loc 2 593 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1260(%ebp)
	leal	.LC116@GOTOFF(%ebx), %esi
	movl	%esi, -1264(%ebp)
	movl	$8, -1268(%ebp)
	cld
	movl	-1260(%ebp), %esi
	movl	-1264(%ebp), %edi
	movl	-1268(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L430
	.loc 2 594 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 595 0
	movl	$135, -16(%ebp)
	jmp	.L219
.L430:
	.loc 2 598 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 599 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 600 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 601 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	add_string_option_or_dash@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L203:
	.loc 2 605 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1272(%ebp)
	leal	.LC117@GOTOFF(%ebx), %esi
	movl	%esi, -1276(%ebp)
	movl	$10, -1280(%ebp)
	cld
	movl	-1272(%ebp), %esi
	movl	-1276(%ebp), %edi
	movl	-1280(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L433
	.loc 2 606 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 607 0
	movl	$137, -16(%ebp)
	jmp	.L219
.L433:
	.loc 2 610 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1284(%ebp)
	leal	.LC118@GOTOFF(%ebx), %esi
	movl	%esi, -1288(%ebp)
	movl	$12, -1292(%ebp)
	cld
	movl	-1284(%ebp), %esi
	movl	-1288(%ebp), %edi
	movl	-1292(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L435
	.loc 2 611 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 612 0
	movl	$138, -16(%ebp)
	jmp	.L219
.L435:
	.loc 2 615 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1296(%ebp)
	leal	.LC119@GOTOFF(%ebx), %esi
	movl	%esi, -1300(%ebp)
	movl	$10, -1304(%ebp)
	cld
	movl	-1296(%ebp), %esi
	movl	-1300(%ebp), %edi
	movl	-1304(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L437
	.loc 2 616 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 617 0
	movl	$139, -16(%ebp)
	jmp	.L219
.L437:
	.loc 2 620 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1308(%ebp)
	leal	.LC120@GOTOFF(%ebx), %esi
	movl	%esi, -1312(%ebp)
	movl	$14, -1316(%ebp)
	cld
	movl	-1308(%ebp), %esi
	movl	-1312(%ebp), %edi
	movl	-1316(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L439
	.loc 2 621 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 622 0
	movl	$140, -16(%ebp)
	jmp	.L219
.L439:
	.loc 2 625 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1320(%ebp)
	leal	.LC121@GOTOFF(%ebx), %esi
	movl	%esi, -1324(%ebp)
	movl	$10, -1328(%ebp)
	cld
	movl	-1320(%ebp), %esi
	movl	-1324(%ebp), %edi
	movl	-1328(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L441
	.loc 2 626 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 627 0
	movl	$141, -16(%ebp)
	jmp	.L219
.L441:
	.loc 2 630 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1332(%ebp)
	leal	.LC122@GOTOFF(%ebx), %esi
	movl	%esi, -1336(%ebp)
	movl	$6, -1340(%ebp)
	cld
	movl	-1332(%ebp), %esi
	movl	-1336(%ebp), %edi
	movl	-1340(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L443
	.loc 2 631 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 632 0
	movl	$142, -16(%ebp)
	jmp	.L219
.L443:
	.loc 2 635 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1344(%ebp)
	leal	.LC123@GOTOFF(%ebx), %esi
	movl	%esi, -1348(%ebp)
	movl	$7, -1352(%ebp)
	cld
	movl	-1344(%ebp), %esi
	movl	-1348(%ebp), %edi
	movl	-1352(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L445
	.loc 2 636 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 637 0
	movl	$143, -16(%ebp)
	jmp	.L219
.L445:
	.loc 2 640 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1356(%ebp)
	leal	.LC124@GOTOFF(%ebx), %esi
	movl	%esi, -1360(%ebp)
	movl	$17, -1364(%ebp)
	cld
	movl	-1356(%ebp), %esi
	movl	-1360(%ebp), %edi
	movl	-1364(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L447
	.loc 2 641 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 642 0
	movl	$144, -16(%ebp)
	jmp	.L219
.L447:
	.loc 2 645 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1368(%ebp)
	leal	.LC125@GOTOFF(%ebx), %esi
	movl	%esi, -1372(%ebp)
	movl	$17, -1376(%ebp)
	cld
	movl	-1368(%ebp), %esi
	movl	-1372(%ebp), %edi
	movl	-1376(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L449
	.loc 2 646 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 647 0
	movl	$144, -16(%ebp)
	jmp	.L219
.L449:
	.loc 2 650 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1380(%ebp)
	leal	.LC126@GOTOFF(%ebx), %esi
	movl	%esi, -1384(%ebp)
	movl	$10, -1388(%ebp)
	cld
	movl	-1380(%ebp), %esi
	movl	-1384(%ebp), %edi
	movl	-1388(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L451
	.loc 2 651 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 652 0
	movl	$146, -16(%ebp)
	jmp	.L219
.L451:
	.loc 2 655 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1392(%ebp)
	leal	.LC127@GOTOFF(%ebx), %esi
	movl	%esi, -1396(%ebp)
	movl	$15, -1400(%ebp)
	cld
	movl	-1392(%ebp), %esi
	movl	-1396(%ebp), %edi
	movl	-1400(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L453
	.loc 2 656 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 657 0
	movl	$147, -16(%ebp)
	jmp	.L219
.L453:
	.loc 2 660 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1404(%ebp)
	leal	.LC128@GOTOFF(%ebx), %esi
	movl	%esi, -1408(%ebp)
	movl	$7, -1412(%ebp)
	cld
	movl	-1404(%ebp), %esi
	movl	-1408(%ebp), %edi
	movl	-1412(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L455
	.loc 2 661 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 662 0
	movl	$148, -16(%ebp)
	jmp	.L219
.L455:
	.loc 2 665 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1416(%ebp)
	leal	.LC129@GOTOFF(%ebx), %esi
	movl	%esi, -1420(%ebp)
	movl	$8, -1424(%ebp)
	cld
	movl	-1416(%ebp), %esi
	movl	-1420(%ebp), %edi
	movl	-1424(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L457
	.loc 2 666 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 667 0
	movl	$149, -16(%ebp)
	jmp	.L219
.L457:
	.loc 2 670 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1428(%ebp)
	leal	.LC130@GOTOFF(%ebx), %esi
	movl	%esi, -1432(%ebp)
	movl	$6, -1436(%ebp)
	cld
	movl	-1428(%ebp), %esi
	movl	-1432(%ebp), %edi
	movl	-1436(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L459
	.loc 2 671 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 672 0
	movl	$150, -16(%ebp)
	jmp	.L219
.L459:
	.loc 2 675 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1440(%ebp)
	leal	.LC131@GOTOFF(%ebx), %esi
	movl	%esi, -1444(%ebp)
	movl	$12, -1448(%ebp)
	cld
	movl	-1440(%ebp), %esi
	movl	-1444(%ebp), %edi
	movl	-1448(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L461
	.loc 2 676 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 677 0
	movl	$151, -16(%ebp)
	jmp	.L219
.L461:
	.loc 2 680 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1452(%ebp)
	leal	.LC132@GOTOFF(%ebx), %esi
	movl	%esi, -1456(%ebp)
	movl	$16, -1460(%ebp)
	cld
	movl	-1452(%ebp), %esi
	movl	-1456(%ebp), %edi
	movl	-1460(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L463
	.loc 2 681 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 682 0
	movl	$152, -16(%ebp)
	jmp	.L219
.L463:
	.loc 2 685 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1464(%ebp)
	leal	.LC133@GOTOFF(%ebx), %esi
	movl	%esi, -1468(%ebp)
	movl	$12, -1472(%ebp)
	cld
	movl	-1464(%ebp), %esi
	movl	-1468(%ebp), %edi
	movl	-1472(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L465
	.loc 2 686 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 687 0
	movl	$151, -16(%ebp)
	jmp	.L219
.L465:
	.loc 2 690 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1476(%ebp)
	leal	.LC134@GOTOFF(%ebx), %esi
	movl	%esi, -1480(%ebp)
	movl	$11, -1484(%ebp)
	cld
	movl	-1476(%ebp), %esi
	movl	-1480(%ebp), %edi
	movl	-1484(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L467
	.loc 2 691 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 692 0
	movl	$154, -16(%ebp)
	jmp	.L219
.L467:
	.loc 2 695 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 696 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1488(%ebp)
	leal	.LC135@GOTOFF(%ebx), %esi
	movl	%esi, -1492(%ebp)
	movl	$14, -1496(%ebp)
	cld
	movl	-1488(%ebp), %esi
	movl	-1492(%ebp), %edi
	movl	-1496(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L470
	.loc 2 697 0
	movl	$14, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 698 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 699 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 700 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$155, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L470:
	.loc 2 703 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1500(%ebp)
	leal	.LC136@GOTOFF(%ebx), %esi
	movl	%esi, -1504(%ebp)
	movl	$8, -1508(%ebp)
	cld
	movl	-1500(%ebp), %esi
	movl	-1504(%ebp), %edi
	movl	-1508(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L472
	.loc 2 704 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 705 0
	movl	$156, -16(%ebp)
	jmp	.L219
.L472:
	.loc 2 708 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1512(%ebp)
	leal	.LC137@GOTOFF(%ebx), %esi
	movl	%esi, -1516(%ebp)
	movl	$5, -1520(%ebp)
	cld
	movl	-1512(%ebp), %esi
	movl	-1516(%ebp), %edi
	movl	-1520(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L474
	.loc 2 709 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 710 0
	movl	$157, -16(%ebp)
	jmp	.L219
.L474:
	.loc 2 713 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 714 0
	movl	$158, -16(%ebp)
	jmp	.L219
.L202:
	.loc 2 718 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 719 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1524(%ebp)
	leal	.LC138@GOTOFF(%ebx), %esi
	movl	%esi, -1528(%ebp)
	movl	$16, -1532(%ebp)
	cld
	movl	-1524(%ebp), %esi
	movl	-1528(%ebp), %edi
	movl	-1532(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L477
	.loc 2 720 0
	movl	$16, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 721 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L477
	.loc 2 722 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 723 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 724 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 725 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$159, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L477:
	.loc 2 729 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1536(%ebp)
	leal	.LC139@GOTOFF(%ebx), %esi
	movl	%esi, -1540(%ebp)
	movl	$20, -1544(%ebp)
	cld
	movl	-1536(%ebp), %esi
	movl	-1540(%ebp), %edi
	movl	-1544(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L480
	.loc 2 730 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 731 0
	movl	$160, -16(%ebp)
	jmp	.L219
.L480:
	.loc 2 734 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 735 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1548(%ebp)
	leal	.LC140@GOTOFF(%ebx), %esi
	movl	%esi, -1552(%ebp)
	movl	$7, -1556(%ebp)
	cld
	movl	-1548(%ebp), %esi
	movl	-1552(%ebp), %edi
	movl	-1556(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L483
	.loc 2 736 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 737 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 738 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 739 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$161, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L483:
	.loc 2 742 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1560(%ebp)
	leal	.LC141@GOTOFF(%ebx), %esi
	movl	%esi, -1564(%ebp)
	movl	$7, -1568(%ebp)
	cld
	movl	-1560(%ebp), %esi
	movl	-1564(%ebp), %edi
	movl	-1568(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L485
	.loc 2 743 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 744 0
	movl	$162, -16(%ebp)
	jmp	.L219
.L485:
	.loc 2 747 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1572(%ebp)
	leal	.LC142@GOTOFF(%ebx), %esi
	movl	%esi, -1576(%ebp)
	movl	$7, -1580(%ebp)
	cld
	movl	-1572(%ebp), %esi
	movl	-1576(%ebp), %edi
	movl	-1580(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L487
	.loc 2 748 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 749 0
	movl	$163, -16(%ebp)
	jmp	.L219
.L487:
	.loc 2 752 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1584(%ebp)
	leal	.LC143@GOTOFF(%ebx), %esi
	movl	%esi, -1588(%ebp)
	movl	$6, -1592(%ebp)
	cld
	movl	-1584(%ebp), %esi
	movl	-1588(%ebp), %edi
	movl	-1592(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L489
	.loc 2 753 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 754 0
	movl	$164, -16(%ebp)
	jmp	.L219
.L489:
	.loc 2 757 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1596(%ebp)
	leal	.LC144@GOTOFF(%ebx), %esi
	movl	%esi, -1600(%ebp)
	movl	$8, -1604(%ebp)
	cld
	movl	-1596(%ebp), %esi
	movl	-1600(%ebp), %edi
	movl	-1604(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L491
	.loc 2 758 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 759 0
	movl	$165, -16(%ebp)
	jmp	.L219
.L491:
	.loc 2 762 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1608(%ebp)
	leal	.LC145@GOTOFF(%ebx), %esi
	movl	%esi, -1612(%ebp)
	movl	$13, -1616(%ebp)
	cld
	movl	-1608(%ebp), %esi
	movl	-1612(%ebp), %edi
	movl	-1616(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L493
	.loc 2 763 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 764 0
	movl	$166, -16(%ebp)
	jmp	.L219
.L493:
	.loc 2 767 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1620(%ebp)
	leal	.LC146@GOTOFF(%ebx), %esi
	movl	%esi, -1624(%ebp)
	movl	$8, -1628(%ebp)
	cld
	movl	-1620(%ebp), %esi
	movl	-1624(%ebp), %edi
	movl	-1628(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L495
	.loc 2 768 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 769 0
	movl	$167, -16(%ebp)
	jmp	.L219
.L495:
	.loc 2 772 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1632(%ebp)
	leal	.LC147@GOTOFF(%ebx), %esi
	movl	%esi, -1636(%ebp)
	movl	$6, -1640(%ebp)
	cld
	movl	-1632(%ebp), %esi
	movl	-1636(%ebp), %edi
	movl	-1640(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L497
	.loc 2 773 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 774 0
	movl	$168, -16(%ebp)
	jmp	.L219
.L497:
	.loc 2 777 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1644(%ebp)
	leal	.LC148@GOTOFF(%ebx), %esi
	movl	%esi, -1648(%ebp)
	movl	$14, -1652(%ebp)
	cld
	movl	-1644(%ebp), %esi
	movl	-1648(%ebp), %edi
	movl	-1652(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L499
	.loc 2 778 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 779 0
	movl	$169, -16(%ebp)
	jmp	.L219
.L499:
	.loc 2 782 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1656(%ebp)
	leal	.LC149@GOTOFF(%ebx), %esi
	movl	%esi, -1660(%ebp)
	movl	$13, -1664(%ebp)
	cld
	movl	-1656(%ebp), %esi
	movl	-1660(%ebp), %edi
	movl	-1664(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L501
	.loc 2 783 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 784 0
	movl	$170, -16(%ebp)
	jmp	.L219
.L501:
	.loc 2 787 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 788 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1668(%ebp)
	leal	.LC150@GOTOFF(%ebx), %esi
	movl	%esi, -1672(%ebp)
	movl	$14, -1676(%ebp)
	cld
	movl	-1668(%ebp), %esi
	movl	-1672(%ebp), %edi
	movl	-1676(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L504
	.loc 2 789 0
	movl	$14, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 790 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 791 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 792 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$171, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L504:
	.loc 2 795 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1680(%ebp)
	leal	.LC151@GOTOFF(%ebx), %esi
	movl	%esi, -1684(%ebp)
	movl	$9, -1688(%ebp)
	cld
	movl	-1680(%ebp), %esi
	movl	-1684(%ebp), %edi
	movl	-1688(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L506
	.loc 2 796 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 797 0
	movl	$172, -16(%ebp)
	jmp	.L219
.L506:
	.loc 2 800 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 801 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1692(%ebp)
	leal	.LC152@GOTOFF(%ebx), %esi
	movl	%esi, -1696(%ebp)
	movl	$10, -1700(%ebp)
	cld
	movl	-1692(%ebp), %esi
	movl	-1696(%ebp), %edi
	movl	-1700(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L509
	.loc 2 802 0
	movl	$10, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 803 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L509
	.loc 2 804 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 805 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 806 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 807 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$173, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L509:
	.loc 2 811 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1704(%ebp)
	leal	.LC153@GOTOFF(%ebx), %esi
	movl	%esi, -1708(%ebp)
	movl	$4, -1712(%ebp)
	cld
	movl	-1704(%ebp), %esi
	movl	-1708(%ebp), %edi
	movl	-1712(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L512
	.loc 2 812 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 813 0
	movl	$174, -16(%ebp)
	jmp	.L219
.L512:
	.loc 2 816 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 817 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1716(%ebp)
	leal	.LC154@GOTOFF(%ebx), %esi
	movl	%esi, -1720(%ebp)
	movl	$7, -1724(%ebp)
	cld
	movl	-1716(%ebp), %esi
	movl	-1720(%ebp), %edi
	movl	-1724(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L515
	.loc 2 818 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 819 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 820 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 821 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$175, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L515:
	.loc 2 824 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1728(%ebp)
	leal	.LC155@GOTOFF(%ebx), %esi
	movl	%esi, -1732(%ebp)
	movl	$10, -1736(%ebp)
	cld
	movl	-1728(%ebp), %esi
	movl	-1732(%ebp), %edi
	movl	-1736(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L517
	.loc 2 825 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 826 0
	movl	$176, -16(%ebp)
	jmp	.L219
.L517:
	.loc 2 829 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1740(%ebp)
	leal	.LC156@GOTOFF(%ebx), %esi
	movl	%esi, -1744(%ebp)
	movl	$10, -1748(%ebp)
	cld
	movl	-1740(%ebp), %esi
	movl	-1744(%ebp), %edi
	movl	-1748(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L519
	.loc 2 830 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 831 0
	movl	$177, -16(%ebp)
	jmp	.L219
.L519:
	.loc 2 834 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1752(%ebp)
	leal	.LC157@GOTOFF(%ebx), %esi
	movl	%esi, -1756(%ebp)
	movl	$9, -1760(%ebp)
	cld
	movl	-1752(%ebp), %esi
	movl	-1756(%ebp), %edi
	movl	-1760(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L521
	.loc 2 835 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 836 0
	movl	$178, -16(%ebp)
	jmp	.L219
.L521:
	.loc 2 839 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1764(%ebp)
	leal	.LC158@GOTOFF(%ebx), %esi
	movl	%esi, -1768(%ebp)
	movl	$16, -1772(%ebp)
	cld
	movl	-1764(%ebp), %esi
	movl	-1768(%ebp), %edi
	movl	-1772(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L523
	.loc 2 840 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 841 0
	movl	$179, -16(%ebp)
	jmp	.L219
.L523:
	.loc 2 844 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1776(%ebp)
	leal	.LC159@GOTOFF(%ebx), %esi
	movl	%esi, -1780(%ebp)
	movl	$11, -1784(%ebp)
	cld
	movl	-1776(%ebp), %esi
	movl	-1780(%ebp), %edi
	movl	-1784(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L525
	.loc 2 845 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 846 0
	movl	$180, -16(%ebp)
	jmp	.L219
.L525:
	.loc 2 849 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1788(%ebp)
	leal	.LC160@GOTOFF(%ebx), %esi
	movl	%esi, -1792(%ebp)
	movl	$9, -1796(%ebp)
	cld
	movl	-1788(%ebp), %esi
	movl	-1792(%ebp), %edi
	movl	-1796(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L527
	.loc 2 850 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 851 0
	movl	$181, -16(%ebp)
	jmp	.L219
.L527:
	.loc 2 854 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1800(%ebp)
	leal	.LC161@GOTOFF(%ebx), %esi
	movl	%esi, -1804(%ebp)
	movl	$13, -1808(%ebp)
	cld
	movl	-1800(%ebp), %esi
	movl	-1804(%ebp), %edi
	movl	-1808(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L529
	.loc 2 855 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 856 0
	movl	$182, -16(%ebp)
	jmp	.L219
.L529:
	.loc 2 859 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1812(%ebp)
	leal	.LC162@GOTOFF(%ebx), %esi
	movl	%esi, -1816(%ebp)
	movl	$11, -1820(%ebp)
	cld
	movl	-1812(%ebp), %esi
	movl	-1816(%ebp), %edi
	movl	-1820(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L531
	.loc 2 860 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 861 0
	movl	$183, -16(%ebp)
	jmp	.L219
.L531:
	.loc 2 864 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1824(%ebp)
	leal	.LC163@GOTOFF(%ebx), %esi
	movl	%esi, -1828(%ebp)
	movl	$6, -1832(%ebp)
	cld
	movl	-1824(%ebp), %esi
	movl	-1828(%ebp), %edi
	movl	-1832(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L533
	.loc 2 865 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 866 0
	movl	$184, -16(%ebp)
	jmp	.L219
.L533:
	.loc 2 869 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1836(%ebp)
	leal	.LC164@GOTOFF(%ebx), %esi
	movl	%esi, -1840(%ebp)
	movl	$7, -1844(%ebp)
	cld
	movl	-1836(%ebp), %esi
	movl	-1840(%ebp), %edi
	movl	-1844(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L535
	.loc 2 870 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 871 0
	movl	$185, -16(%ebp)
	jmp	.L219
.L535:
	.loc 2 874 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1848(%ebp)
	leal	.LC165@GOTOFF(%ebx), %esi
	movl	%esi, -1852(%ebp)
	movl	$10, -1856(%ebp)
	cld
	movl	-1848(%ebp), %esi
	movl	-1852(%ebp), %edi
	movl	-1856(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L537
	.loc 2 875 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 876 0
	movl	$186, -16(%ebp)
	jmp	.L219
.L537:
	.loc 2 879 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 880 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1860(%ebp)
	leal	.LC166@GOTOFF(%ebx), %esi
	movl	%esi, -1864(%ebp)
	movl	$14, -1868(%ebp)
	cld
	movl	-1860(%ebp), %esi
	movl	-1864(%ebp), %edi
	movl	-1868(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L540
	.loc 2 881 0
	movl	$14, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 882 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 883 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 884 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$187, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L540:
	.loc 2 887 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1872(%ebp)
	leal	.LC167@GOTOFF(%ebx), %esi
	movl	%esi, -1876(%ebp)
	movl	$8, -1880(%ebp)
	cld
	movl	-1872(%ebp), %esi
	movl	-1876(%ebp), %edi
	movl	-1880(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L542
	.loc 2 888 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 889 0
	movl	$188, -16(%ebp)
	jmp	.L219
.L542:
	.loc 2 892 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1884(%ebp)
	leal	.LC168@GOTOFF(%ebx), %esi
	movl	%esi, -1888(%ebp)
	movl	$8, -1892(%ebp)
	cld
	movl	-1884(%ebp), %esi
	movl	-1888(%ebp), %edi
	movl	-1892(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L544
	.loc 2 893 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 894 0
	movl	$189, -16(%ebp)
	jmp	.L219
.L544:
	.loc 2 897 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 898 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1896(%ebp)
	leal	.LC169@GOTOFF(%ebx), %esi
	movl	%esi, -1900(%ebp)
	movl	$6, -1904(%ebp)
	cld
	movl	-1896(%ebp), %esi
	movl	-1900(%ebp), %edi
	movl	-1904(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L547
	.loc 2 899 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 900 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 901 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 902 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$190, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L547:
	.loc 2 905 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1908(%ebp)
	leal	.LC170@GOTOFF(%ebx), %esi
	movl	%esi, -1912(%ebp)
	movl	$14, -1916(%ebp)
	cld
	movl	-1908(%ebp), %esi
	movl	-1912(%ebp), %edi
	movl	-1916(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L549
	.loc 2 906 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 907 0
	movl	$191, -16(%ebp)
	jmp	.L219
.L549:
	.loc 2 910 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 911 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1920(%ebp)
	leal	.LC171@GOTOFF(%ebx), %esi
	movl	%esi, -1924(%ebp)
	movl	$9, -1928(%ebp)
	cld
	movl	-1920(%ebp), %esi
	movl	-1924(%ebp), %edi
	movl	-1928(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L552
	.loc 2 912 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 913 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 914 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 915 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$192, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L552:
	.loc 2 918 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1932(%ebp)
	leal	.LC172@GOTOFF(%ebx), %esi
	movl	%esi, -1936(%ebp)
	movl	$9, -1940(%ebp)
	cld
	movl	-1932(%ebp), %esi
	movl	-1936(%ebp), %edi
	movl	-1940(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L554
	.loc 2 919 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 920 0
	movl	$193, -16(%ebp)
	jmp	.L219
.L554:
	.loc 2 923 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 924 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1944(%ebp)
	leal	.LC173@GOTOFF(%ebx), %esi
	movl	%esi, -1948(%ebp)
	movl	$7, -1952(%ebp)
	cld
	movl	-1944(%ebp), %esi
	movl	-1948(%ebp), %edi
	movl	-1952(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L557
	.loc 2 925 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 926 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 927 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 928 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$194, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L557:
	.loc 2 931 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 932 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1956(%ebp)
	leal	.LC174@GOTOFF(%ebx), %esi
	movl	%esi, -1960(%ebp)
	movl	$14, -1964(%ebp)
	cld
	movl	-1956(%ebp), %esi
	movl	-1960(%ebp), %edi
	movl	-1964(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L560
	.loc 2 933 0
	movl	$14, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 934 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L560
	.loc 2 935 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 936 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 937 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 938 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$195, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L560:
	.loc 2 942 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 943 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1968(%ebp)
	leal	.LC175@GOTOFF(%ebx), %esi
	movl	%esi, -1972(%ebp)
	movl	$14, -1976(%ebp)
	cld
	movl	-1968(%ebp), %esi
	movl	-1972(%ebp), %edi
	movl	-1976(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L564
	.loc 2 944 0
	movl	$14, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 945 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L564
	.loc 2 946 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 947 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 948 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 949 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$196, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L564:
	.loc 2 953 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 954 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1980(%ebp)
	leal	.LC176@GOTOFF(%ebx), %esi
	movl	%esi, -1984(%ebp)
	movl	$18, -1988(%ebp)
	cld
	movl	-1980(%ebp), %esi
	movl	-1984(%ebp), %edi
	movl	-1988(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L568
	.loc 2 955 0
	movl	$18, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 956 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L568
	.loc 2 957 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 958 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 959 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 960 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$197, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L568:
	.loc 2 964 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1992(%ebp)
	leal	.LC177@GOTOFF(%ebx), %esi
	movl	%esi, -1996(%ebp)
	movl	$14, -2000(%ebp)
	cld
	movl	-1992(%ebp), %esi
	movl	-1996(%ebp), %edi
	movl	-2000(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L571
	.loc 2 965 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 966 0
	movl	$198, -16(%ebp)
	jmp	.L219
.L571:
	.loc 2 969 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2004(%ebp)
	leal	.LC178@GOTOFF(%ebx), %esi
	movl	%esi, -2008(%ebp)
	movl	$14, -2012(%ebp)
	cld
	movl	-2004(%ebp), %esi
	movl	-2008(%ebp), %edi
	movl	-2012(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L573
	.loc 2 970 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 971 0
	movl	$198, -16(%ebp)
	jmp	.L219
.L573:
	.loc 2 974 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2016(%ebp)
	leal	.LC179@GOTOFF(%ebx), %esi
	movl	%esi, -2020(%ebp)
	movl	$9, -2024(%ebp)
	cld
	movl	-2016(%ebp), %esi
	movl	-2020(%ebp), %edi
	movl	-2024(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L575
	.loc 2 975 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 976 0
	movl	$200, -16(%ebp)
	jmp	.L219
.L575:
	.loc 2 979 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2028(%ebp)
	leal	.LC180@GOTOFF(%ebx), %esi
	movl	%esi, -2032(%ebp)
	movl	$5, -2036(%ebp)
	cld
	movl	-2028(%ebp), %esi
	movl	-2032(%ebp), %edi
	movl	-2036(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L577
	.loc 2 980 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 981 0
	movl	$201, -16(%ebp)
	jmp	.L219
.L577:
	.loc 2 984 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2040(%ebp)
	leal	.LC181@GOTOFF(%ebx), %esi
	movl	%esi, -2044(%ebp)
	movl	$8, -2048(%ebp)
	cld
	movl	-2040(%ebp), %esi
	movl	-2044(%ebp), %edi
	movl	-2048(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L579
	.loc 2 985 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 986 0
	movl	$202, -16(%ebp)
	jmp	.L219
.L579:
	.loc 2 989 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2052(%ebp)
	leal	.LC182@GOTOFF(%ebx), %esi
	movl	%esi, -2056(%ebp)
	movl	$6, -2060(%ebp)
	cld
	movl	-2052(%ebp), %esi
	movl	-2056(%ebp), %edi
	movl	-2060(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L581
	.loc 2 990 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 991 0
	movl	$203, -16(%ebp)
	jmp	.L219
.L581:
	.loc 2 994 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2064(%ebp)
	leal	.LC183@GOTOFF(%ebx), %esi
	movl	%esi, -2068(%ebp)
	movl	$5, -2072(%ebp)
	cld
	movl	-2064(%ebp), %esi
	movl	-2068(%ebp), %edi
	movl	-2072(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L583
	.loc 2 995 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 996 0
	movl	$204, -16(%ebp)
	jmp	.L219
.L583:
	.loc 2 999 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1000 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1001 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1002 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$205, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L201:
	.loc 2 1006 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2076(%ebp)
	leal	.LC184@GOTOFF(%ebx), %esi
	movl	%esi, -2080(%ebp)
	movl	$10, -2084(%ebp)
	cld
	movl	-2076(%ebp), %esi
	movl	-2080(%ebp), %edi
	movl	-2084(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L586
	.loc 2 1007 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1008 0
	movl	$206, -16(%ebp)
	jmp	.L219
.L586:
	.loc 2 1011 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1012 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1013 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1014 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$207, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L200:
	.loc 2 1018 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2088(%ebp)
	leal	.LC185@GOTOFF(%ebx), %esi
	movl	%esi, -2092(%ebp)
	movl	$12, -2096(%ebp)
	cld
	movl	-2088(%ebp), %esi
	movl	-2092(%ebp), %edi
	movl	-2096(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L589
	.loc 2 1019 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1020 0
	movl	$208, -16(%ebp)
	jmp	.L219
.L589:
	.loc 2 1023 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2100(%ebp)
	leal	.LC186@GOTOFF(%ebx), %esi
	movl	%esi, -2104(%ebp)
	movl	$6, -2108(%ebp)
	cld
	movl	-2100(%ebp), %esi
	movl	-2104(%ebp), %edi
	movl	-2108(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 1024 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1025 0
	movl	$209, -16(%ebp)
	jmp	.L219
.L199:
	.loc 2 1030 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2112(%ebp)
	leal	.LC187@GOTOFF(%ebx), %esi
	movl	%esi, -2116(%ebp)
	movl	$6, -2120(%ebp)
	cld
	movl	-2112(%ebp), %esi
	movl	-2116(%ebp), %edi
	movl	-2120(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 1031 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1032 0
	movl	$210, -16(%ebp)
	jmp	.L219
.L198:
	.loc 2 1037 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1038 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2124(%ebp)
	leal	.LC188@GOTOFF(%ebx), %esi
	movl	%esi, -2128(%ebp)
	movl	$18, -2132(%ebp)
	cld
	movl	-2124(%ebp), %esi
	movl	-2128(%ebp), %edi
	movl	-2132(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L596
	.loc 2 1039 0
	movl	$18, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1040 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L598
	.loc 2 1041 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1042 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1043 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$211, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L598:
	.loc 2 1045 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L596
	.loc 2 1046 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L601
	.loc 2 1047 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L601:
	.loc 2 1049 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1050 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1051 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$211, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L596:
	.loc 2 1055 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1056 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2136(%ebp)
	leal	.LC190@GOTOFF(%ebx), %esi
	movl	%esi, -2140(%ebp)
	movl	$12, -2144(%ebp)
	cld
	movl	-2136(%ebp), %esi
	movl	-2140(%ebp), %edi
	movl	-2144(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L604
	.loc 2 1057 0
	movl	$12, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1058 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L606
	.loc 2 1059 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1060 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1061 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$212, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L606:
	.loc 2 1063 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L604
	.loc 2 1064 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L609
	.loc 2 1065 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L609:
	.loc 2 1067 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1068 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1069 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$212, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L604:
	.loc 2 1073 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1074 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2148(%ebp)
	leal	.LC191@GOTOFF(%ebx), %esi
	movl	%esi, -2152(%ebp)
	movl	$8, -2156(%ebp)
	cld
	movl	-2148(%ebp), %esi
	movl	-2152(%ebp), %edi
	movl	-2156(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L612
	.loc 2 1075 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1076 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L614
	.loc 2 1077 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1078 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1079 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$213, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L614:
	.loc 2 1081 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L612
	.loc 2 1082 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L617
	.loc 2 1083 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L617:
	.loc 2 1085 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1086 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1087 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$213, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L612:
	.loc 2 1091 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1092 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2160(%ebp)
	leal	.LC192@GOTOFF(%ebx), %esi
	movl	%esi, -2164(%ebp)
	movl	$8, -2168(%ebp)
	cld
	movl	-2160(%ebp), %esi
	movl	-2164(%ebp), %edi
	movl	-2168(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L620
	.loc 2 1093 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1094 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1095 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1096 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$214, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L620:
	.loc 2 1099 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2172(%ebp)
	leal	.LC193@GOTOFF(%ebx), %esi
	movl	%esi, -2176(%ebp)
	movl	$5, -2180(%ebp)
	cld
	movl	-2172(%ebp), %esi
	movl	-2176(%ebp), %edi
	movl	-2180(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L622
	.loc 2 1100 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1101 0
	movl	$215, -16(%ebp)
	jmp	.L219
.L622:
	.loc 2 1104 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1105 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2184(%ebp)
	leal	.LC194@GOTOFF(%ebx), %esi
	movl	%esi, -2188(%ebp)
	movl	$11, -2192(%ebp)
	cld
	movl	-2184(%ebp), %esi
	movl	-2188(%ebp), %edi
	movl	-2192(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L625
	.loc 2 1106 0
	movl	$11, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1107 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1108 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1109 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$216, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L625:
	.loc 2 1112 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2196(%ebp)
	leal	.LC195@GOTOFF(%ebx), %esi
	movl	%esi, -2200(%ebp)
	movl	$8, -2204(%ebp)
	cld
	movl	-2196(%ebp), %esi
	movl	-2200(%ebp), %edi
	movl	-2204(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L627
	.loc 2 1113 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1114 0
	movl	$217, -16(%ebp)
	jmp	.L219
.L627:
	.loc 2 1117 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1118 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2208(%ebp)
	leal	.LC196@GOTOFF(%ebx), %esi
	movl	%esi, -2212(%ebp)
	movl	$8, -2216(%ebp)
	cld
	movl	-2208(%ebp), %esi
	movl	-2212(%ebp), %edi
	movl	-2216(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L630
	.loc 2 1119 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1120 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1121 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1122 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$218, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L630:
	.loc 2 1125 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1126 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2220(%ebp)
	leal	.LC197@GOTOFF(%ebx), %esi
	movl	%esi, -2224(%ebp)
	movl	$8, -2228(%ebp)
	cld
	movl	-2220(%ebp), %esi
	movl	-2224(%ebp), %edi
	movl	-2228(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L633
	.loc 2 1127 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1128 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1129 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1130 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$219, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L633:
	.loc 2 1133 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2232(%ebp)
	leal	.LC10@GOTOFF(%ebx), %esi
	movl	%esi, -2236(%ebp)
	movl	$15, -2240(%ebp)
	cld
	movl	-2232(%ebp), %esi
	movl	-2236(%ebp), %edi
	movl	-2240(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L635
	.loc 2 1134 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1135 0
	movl	$220, -16(%ebp)
	jmp	.L219
.L635:
	.loc 2 1138 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2244(%ebp)
	leal	.LC198@GOTOFF(%ebx), %esi
	movl	%esi, -2248(%ebp)
	movl	$15, -2252(%ebp)
	cld
	movl	-2244(%ebp), %esi
	movl	-2248(%ebp), %edi
	movl	-2252(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L637
	.loc 2 1139 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1140 0
	movl	$220, -16(%ebp)
	jmp	.L219
.L637:
	.loc 2 1143 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1144 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2256(%ebp)
	leal	.LC199@GOTOFF(%ebx), %esi
	movl	%esi, -2260(%ebp)
	movl	$10, -2264(%ebp)
	cld
	movl	-2256(%ebp), %esi
	movl	-2260(%ebp), %edi
	movl	-2264(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L640
	.loc 2 1145 0
	movl	$10, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1146 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L642
	.loc 2 1147 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1148 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1149 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$222, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L642:
	.loc 2 1151 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L640
	.loc 2 1152 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L645
	.loc 2 1153 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L645:
	.loc 2 1155 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1156 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1157 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$222, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L640:
	.loc 2 1161 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2268(%ebp)
	leal	.LC200@GOTOFF(%ebx), %esi
	movl	%esi, -2272(%ebp)
	movl	$4, -2276(%ebp)
	cld
	movl	-2268(%ebp), %esi
	movl	-2272(%ebp), %edi
	movl	-2276(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L647
	.loc 2 1162 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1163 0
	movl	$223, -16(%ebp)
	jmp	.L219
.L647:
	.loc 2 1166 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2280(%ebp)
	leal	.LC201@GOTOFF(%ebx), %esi
	movl	%esi, -2284(%ebp)
	movl	$4, -2288(%ebp)
	cld
	movl	-2280(%ebp), %esi
	movl	-2284(%ebp), %edi
	movl	-2288(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L649
	.loc 2 1167 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1168 0
	movl	$224, -16(%ebp)
	jmp	.L219
.L649:
	.loc 2 1171 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2292(%ebp)
	leal	.LC202@GOTOFF(%ebx), %esi
	movl	%esi, -2296(%ebp)
	movl	$4, -2300(%ebp)
	cld
	movl	-2292(%ebp), %esi
	movl	-2296(%ebp), %edi
	movl	-2300(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 1172 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1173 0
	movl	$225, -16(%ebp)
	jmp	.L219
.L197:
	.loc 2 1178 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1179 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2304(%ebp)
	leal	.LC203@GOTOFF(%ebx), %esi
	movl	%esi, -2308(%ebp)
	movl	$6, -2312(%ebp)
	cld
	movl	-2304(%ebp), %esi
	movl	-2308(%ebp), %edi
	movl	-2312(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L654
	.loc 2 1180 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1181 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1182 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1183 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$226, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L654:
	.loc 2 1186 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2316(%ebp)
	leal	.LC204@GOTOFF(%ebx), %esi
	movl	%esi, -2320(%ebp)
	movl	$6, -2324(%ebp)
	cld
	movl	-2316(%ebp), %esi
	movl	-2320(%ebp), %edi
	movl	-2324(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L656
	.loc 2 1187 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1188 0
	movl	$227, -16(%ebp)
	jmp	.L219
.L656:
	.loc 2 1191 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2328(%ebp)
	leal	.LC205@GOTOFF(%ebx), %esi
	movl	%esi, -2332(%ebp)
	movl	$9, -2336(%ebp)
	cld
	movl	-2328(%ebp), %esi
	movl	-2332(%ebp), %edi
	movl	-2336(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 1192 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1193 0
	movl	$228, -16(%ebp)
	jmp	.L219
.L196:
	.loc 2 1198 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2340(%ebp)
	leal	.LC206@GOTOFF(%ebx), %esi
	movl	%esi, -2344(%ebp)
	movl	$9, -2348(%ebp)
	cld
	movl	-2340(%ebp), %esi
	movl	-2344(%ebp), %edi
	movl	-2348(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L660
	.loc 2 1199 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1200 0
	movl	$229, -16(%ebp)
	jmp	.L219
.L660:
	.loc 2 1203 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2352(%ebp)
	leal	.LC207@GOTOFF(%ebx), %esi
	movl	%esi, -2356(%ebp)
	movl	$9, -2360(%ebp)
	cld
	movl	-2352(%ebp), %esi
	movl	-2356(%ebp), %edi
	movl	-2360(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L662
	.loc 2 1204 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1205 0
	movl	$230, -16(%ebp)
	jmp	.L219
.L662:
	.loc 2 1208 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2364(%ebp)
	leal	.LC208@GOTOFF(%ebx), %esi
	movl	%esi, -2368(%ebp)
	movl	$9, -2372(%ebp)
	cld
	movl	-2364(%ebp), %esi
	movl	-2368(%ebp), %edi
	movl	-2372(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L664
	.loc 2 1209 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1210 0
	movl	$231, -16(%ebp)
	jmp	.L219
.L664:
	.loc 2 1213 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2376(%ebp)
	leal	.LC209@GOTOFF(%ebx), %esi
	movl	%esi, -2380(%ebp)
	movl	$9, -2384(%ebp)
	cld
	movl	-2376(%ebp), %esi
	movl	-2380(%ebp), %edi
	movl	-2384(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L666
	.loc 2 1214 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1215 0
	movl	$232, -16(%ebp)
	jmp	.L219
.L666:
	.loc 2 1218 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2388(%ebp)
	leal	.LC210@GOTOFF(%ebx), %esi
	movl	%esi, -2392(%ebp)
	movl	$9, -2396(%ebp)
	cld
	movl	-2388(%ebp), %esi
	movl	-2392(%ebp), %edi
	movl	-2396(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L668
	.loc 2 1219 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1220 0
	movl	$233, -16(%ebp)
	jmp	.L219
.L668:
	.loc 2 1223 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2400(%ebp)
	leal	.LC211@GOTOFF(%ebx), %esi
	movl	%esi, -2404(%ebp)
	movl	$8, -2408(%ebp)
	cld
	movl	-2400(%ebp), %esi
	movl	-2404(%ebp), %edi
	movl	-2408(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L670
	.loc 2 1224 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1225 0
	movl	$234, -16(%ebp)
	jmp	.L219
.L670:
	.loc 2 1228 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2412(%ebp)
	leal	.LC212@GOTOFF(%ebx), %esi
	movl	%esi, -2416(%ebp)
	movl	$7, -2420(%ebp)
	cld
	movl	-2412(%ebp), %esi
	movl	-2416(%ebp), %edi
	movl	-2420(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L672
	.loc 2 1229 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1230 0
	movl	$235, -16(%ebp)
	jmp	.L219
.L672:
	.loc 2 1233 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2424(%ebp)
	leal	.LC213@GOTOFF(%ebx), %esi
	movl	%esi, -2428(%ebp)
	movl	$6, -2432(%ebp)
	cld
	movl	-2424(%ebp), %esi
	movl	-2428(%ebp), %edi
	movl	-2432(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L674
	.loc 2 1234 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1235 0
	movl	$236, -16(%ebp)
	jmp	.L219
.L674:
	.loc 2 1238 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2436(%ebp)
	leal	.LC214@GOTOFF(%ebx), %esi
	movl	%esi, -2440(%ebp)
	movl	$11, -2444(%ebp)
	cld
	movl	-2436(%ebp), %esi
	movl	-2440(%ebp), %edi
	movl	-2444(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L676
	.loc 2 1239 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1240 0
	movl	$237, -16(%ebp)
	jmp	.L219
.L676:
	.loc 2 1243 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2448(%ebp)
	leal	.LC215@GOTOFF(%ebx), %esi
	movl	%esi, -2452(%ebp)
	movl	$11, -2456(%ebp)
	cld
	movl	-2448(%ebp), %esi
	movl	-2452(%ebp), %edi
	movl	-2456(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L678
	.loc 2 1244 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1245 0
	movl	$238, -16(%ebp)
	jmp	.L219
.L678:
	.loc 2 1248 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2460(%ebp)
	leal	.LC216@GOTOFF(%ebx), %esi
	movl	%esi, -2464(%ebp)
	movl	$11, -2468(%ebp)
	cld
	movl	-2460(%ebp), %esi
	movl	-2464(%ebp), %edi
	movl	-2468(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L680
	.loc 2 1249 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1250 0
	movl	$239, -16(%ebp)
	jmp	.L219
.L680:
	.loc 2 1253 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2472(%ebp)
	leal	.LC217@GOTOFF(%ebx), %esi
	movl	%esi, -2476(%ebp)
	movl	$11, -2480(%ebp)
	cld
	movl	-2472(%ebp), %esi
	movl	-2476(%ebp), %edi
	movl	-2480(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L682
	.loc 2 1254 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1255 0
	movl	$240, -16(%ebp)
	jmp	.L219
.L682:
	.loc 2 1258 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2484(%ebp)
	leal	.LC218@GOTOFF(%ebx), %esi
	movl	%esi, -2488(%ebp)
	movl	$10, -2492(%ebp)
	cld
	movl	-2484(%ebp), %esi
	movl	-2488(%ebp), %edi
	movl	-2492(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L684
	.loc 2 1259 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1260 0
	movl	$241, -16(%ebp)
	jmp	.L219
.L684:
	.loc 2 1263 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2496(%ebp)
	leal	.LC219@GOTOFF(%ebx), %esi
	movl	%esi, -2500(%ebp)
	movl	$11, -2504(%ebp)
	cld
	movl	-2496(%ebp), %esi
	movl	-2500(%ebp), %edi
	movl	-2504(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L686
	.loc 2 1264 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1265 0
	movl	$242, -16(%ebp)
	jmp	.L219
.L686:
	.loc 2 1268 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2508(%ebp)
	leal	.LC220@GOTOFF(%ebx), %esi
	movl	%esi, -2512(%ebp)
	movl	$10, -2516(%ebp)
	cld
	movl	-2508(%ebp), %esi
	movl	-2512(%ebp), %edi
	movl	-2516(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L688
	.loc 2 1269 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1270 0
	movl	$243, -16(%ebp)
	jmp	.L219
.L688:
	.loc 2 1273 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2520(%ebp)
	leal	.LC221@GOTOFF(%ebx), %esi
	movl	%esi, -2524(%ebp)
	movl	$8, -2528(%ebp)
	cld
	movl	-2520(%ebp), %esi
	movl	-2524(%ebp), %edi
	movl	-2528(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L690
	.loc 2 1274 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1275 0
	movl	$244, -16(%ebp)
	jmp	.L219
.L690:
	.loc 2 1278 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2532(%ebp)
	leal	.LC222@GOTOFF(%ebx), %esi
	movl	%esi, -2536(%ebp)
	movl	$5, -2540(%ebp)
	cld
	movl	-2532(%ebp), %esi
	movl	-2536(%ebp), %edi
	movl	-2540(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L692
	.loc 2 1279 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1280 0
	movl	$245, -16(%ebp)
	jmp	.L219
.L692:
	.loc 2 1283 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2544(%ebp)
	leal	.LC223@GOTOFF(%ebx), %esi
	movl	%esi, -2548(%ebp)
	movl	$4, -2552(%ebp)
	cld
	movl	-2544(%ebp), %esi
	movl	-2548(%ebp), %edi
	movl	-2552(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L694
	.loc 2 1284 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1285 0
	movl	$246, -16(%ebp)
	jmp	.L219
.L694:
	.loc 2 1288 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2556(%ebp)
	leal	.LC224@GOTOFF(%ebx), %esi
	movl	%esi, -2560(%ebp)
	movl	$4, -2564(%ebp)
	cld
	movl	-2556(%ebp), %esi
	movl	-2560(%ebp), %edi
	movl	-2564(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L696
	.loc 2 1289 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1290 0
	movl	$247, -16(%ebp)
	jmp	.L219
.L696:
	.loc 2 1293 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2568(%ebp)
	leal	.LC225@GOTOFF(%ebx), %esi
	movl	%esi, -2572(%ebp)
	movl	$4, -2576(%ebp)
	cld
	movl	-2568(%ebp), %esi
	movl	-2572(%ebp), %edi
	movl	-2576(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L698
	.loc 2 1294 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1295 0
	movl	$248, -16(%ebp)
	jmp	.L219
.L698:
	.loc 2 1298 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2580(%ebp)
	leal	.LC226@GOTOFF(%ebx), %esi
	movl	%esi, -2584(%ebp)
	movl	$4, -2588(%ebp)
	cld
	movl	-2580(%ebp), %esi
	movl	-2584(%ebp), %edi
	movl	-2588(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L700
	.loc 2 1299 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1300 0
	movl	$249, -16(%ebp)
	jmp	.L219
.L700:
	.loc 2 1303 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 1304 0
	movl	$250, -16(%ebp)
	jmp	.L219
.L195:
	.loc 2 1308 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2592(%ebp)
	leal	.LC227@GOTOFF(%ebx), %esi
	movl	%esi, -2596(%ebp)
	movl	$19, -2600(%ebp)
	cld
	movl	-2592(%ebp), %esi
	movl	-2596(%ebp), %edi
	movl	-2600(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L702
	.loc 2 1309 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1310 0
	movl	$251, -16(%ebp)
	jmp	.L219
.L702:
	.loc 2 1313 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2604(%ebp)
	leal	.LC228@GOTOFF(%ebx), %esi
	movl	%esi, -2608(%ebp)
	movl	$7, -2612(%ebp)
	cld
	movl	-2604(%ebp), %esi
	movl	-2608(%ebp), %edi
	movl	-2612(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L704
	.loc 2 1314 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1315 0
	movl	$252, -16(%ebp)
	jmp	.L219
.L704:
	.loc 2 1318 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2616(%ebp)
	leal	.LC229@GOTOFF(%ebx), %esi
	movl	%esi, -2620(%ebp)
	movl	$18, -2624(%ebp)
	cld
	movl	-2616(%ebp), %esi
	movl	-2620(%ebp), %edi
	movl	-2624(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L706
	.loc 2 1319 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1320 0
	movl	$253, -16(%ebp)
	jmp	.L219
.L706:
	.loc 2 1323 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2628(%ebp)
	leal	.LC230@GOTOFF(%ebx), %esi
	movl	%esi, -2632(%ebp)
	movl	$18, -2636(%ebp)
	cld
	movl	-2628(%ebp), %esi
	movl	-2632(%ebp), %edi
	movl	-2636(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L708
	.loc 2 1324 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1325 0
	movl	$254, -16(%ebp)
	jmp	.L219
.L708:
	.loc 2 1328 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2640(%ebp)
	leal	.LC231@GOTOFF(%ebx), %esi
	movl	%esi, -2644(%ebp)
	movl	$11, -2648(%ebp)
	cld
	movl	-2640(%ebp), %esi
	movl	-2644(%ebp), %edi
	movl	-2648(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L710
	.loc 2 1329 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1330 0
	movl	$255, -16(%ebp)
	jmp	.L219
.L710:
	.loc 2 1333 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2652(%ebp)
	leal	.LC232@GOTOFF(%ebx), %esi
	movl	%esi, -2656(%ebp)
	movl	$14, -2660(%ebp)
	cld
	movl	-2652(%ebp), %esi
	movl	-2656(%ebp), %edi
	movl	-2660(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L712
	.loc 2 1334 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1335 0
	movl	$256, -16(%ebp)
	jmp	.L219
.L712:
	.loc 2 1338 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2664(%ebp)
	leal	.LC233@GOTOFF(%ebx), %esi
	movl	%esi, -2668(%ebp)
	movl	$14, -2672(%ebp)
	cld
	movl	-2664(%ebp), %esi
	movl	-2668(%ebp), %edi
	movl	-2672(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L714
	.loc 2 1339 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1340 0
	movl	$257, -16(%ebp)
	jmp	.L219
.L714:
	.loc 2 1343 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2676(%ebp)
	leal	.LC234@GOTOFF(%ebx), %esi
	movl	%esi, -2680(%ebp)
	movl	$17, -2684(%ebp)
	cld
	movl	-2676(%ebp), %esi
	movl	-2680(%ebp), %edi
	movl	-2684(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L716
	.loc 2 1344 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1345 0
	movl	$258, -16(%ebp)
	jmp	.L219
.L716:
	.loc 2 1348 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2688(%ebp)
	leal	.LC235@GOTOFF(%ebx), %esi
	movl	%esi, -2692(%ebp)
	movl	$16, -2696(%ebp)
	cld
	movl	-2688(%ebp), %esi
	movl	-2692(%ebp), %edi
	movl	-2696(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L718
	.loc 2 1349 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1350 0
	movl	$259, -16(%ebp)
	jmp	.L219
.L718:
	.loc 2 1353 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2700(%ebp)
	leal	.LC236@GOTOFF(%ebx), %esi
	movl	%esi, -2704(%ebp)
	movl	$16, -2708(%ebp)
	cld
	movl	-2700(%ebp), %esi
	movl	-2704(%ebp), %edi
	movl	-2708(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L720
	.loc 2 1354 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1355 0
	movl	$260, -16(%ebp)
	jmp	.L219
.L720:
	.loc 2 1358 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2712(%ebp)
	leal	.LC237@GOTOFF(%ebx), %esi
	movl	%esi, -2716(%ebp)
	movl	$21, -2720(%ebp)
	cld
	movl	-2712(%ebp), %esi
	movl	-2716(%ebp), %edi
	movl	-2720(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L722
	.loc 2 1359 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1360 0
	movl	$261, -16(%ebp)
	jmp	.L219
.L722:
	.loc 2 1363 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2724(%ebp)
	leal	.LC238@GOTOFF(%ebx), %esi
	movl	%esi, -2728(%ebp)
	movl	$28, -2732(%ebp)
	cld
	movl	-2724(%ebp), %esi
	movl	-2728(%ebp), %edi
	movl	-2732(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L724
	.loc 2 1364 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1365 0
	movl	$262, -16(%ebp)
	jmp	.L219
.L724:
	.loc 2 1368 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2736(%ebp)
	leal	.LC239@GOTOFF(%ebx), %esi
	movl	%esi, -2740(%ebp)
	movl	$15, -2744(%ebp)
	cld
	movl	-2736(%ebp), %esi
	movl	-2740(%ebp), %edi
	movl	-2744(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L726
	.loc 2 1369 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1370 0
	movl	$263, -16(%ebp)
	jmp	.L219
.L726:
	.loc 2 1373 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2748(%ebp)
	leal	.LC240@GOTOFF(%ebx), %esi
	movl	%esi, -2752(%ebp)
	movl	$19, -2756(%ebp)
	cld
	movl	-2748(%ebp), %esi
	movl	-2752(%ebp), %edi
	movl	-2756(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L728
	.loc 2 1374 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1375 0
	movl	$264, -16(%ebp)
	jmp	.L219
.L728:
	.loc 2 1378 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2760(%ebp)
	leal	.LC241@GOTOFF(%ebx), %esi
	movl	%esi, -2764(%ebp)
	movl	$15, -2768(%ebp)
	cld
	movl	-2760(%ebp), %esi
	movl	-2764(%ebp), %edi
	movl	-2768(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L730
	.loc 2 1379 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1380 0
	movl	$265, -16(%ebp)
	jmp	.L219
.L730:
	.loc 2 1383 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2772(%ebp)
	leal	.LC5@GOTOFF(%ebx), %esi
	movl	%esi, -2776(%ebp)
	movl	$10, -2780(%ebp)
	cld
	movl	-2772(%ebp), %esi
	movl	-2776(%ebp), %edi
	movl	-2780(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L732
	.loc 2 1384 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1385 0
	movl	$266, -16(%ebp)
	jmp	.L219
.L732:
	.loc 2 1388 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2784(%ebp)
	leal	.LC242@GOTOFF(%ebx), %esi
	movl	%esi, -2788(%ebp)
	movl	$14, -2792(%ebp)
	cld
	movl	-2784(%ebp), %esi
	movl	-2788(%ebp), %edi
	movl	-2792(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L734
	.loc 2 1389 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1390 0
	movl	$267, -16(%ebp)
	jmp	.L219
.L734:
	.loc 2 1393 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2796(%ebp)
	leal	.LC243@GOTOFF(%ebx), %esi
	movl	%esi, -2800(%ebp)
	movl	$6, -2804(%ebp)
	cld
	movl	-2796(%ebp), %esi
	movl	-2800(%ebp), %edi
	movl	-2804(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L736
	.loc 2 1394 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1395 0
	movl	$268, -16(%ebp)
	jmp	.L219
.L736:
	.loc 2 1398 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2808(%ebp)
	leal	.LC244@GOTOFF(%ebx), %esi
	movl	%esi, -2812(%ebp)
	movl	$15, -2816(%ebp)
	cld
	movl	-2808(%ebp), %esi
	movl	-2812(%ebp), %edi
	movl	-2816(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L738
	.loc 2 1399 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1400 0
	movl	$269, -16(%ebp)
	jmp	.L219
.L738:
	.loc 2 1403 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2820(%ebp)
	leal	.LC245@GOTOFF(%ebx), %esi
	movl	%esi, -2824(%ebp)
	movl	$16, -2828(%ebp)
	cld
	movl	-2820(%ebp), %esi
	movl	-2824(%ebp), %edi
	movl	-2828(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L740
	.loc 2 1404 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1405 0
	movl	$270, -16(%ebp)
	jmp	.L219
.L740:
	.loc 2 1408 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1409 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2832(%ebp)
	leal	.LC246@GOTOFF(%ebx), %esi
	movl	%esi, -2836(%ebp)
	movl	$17, -2840(%ebp)
	cld
	movl	-2832(%ebp), %esi
	movl	-2836(%ebp), %edi
	movl	-2840(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L743
	.loc 2 1410 0
	movl	$17, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1411 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L743
	.loc 2 1412 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1413 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1414 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1415 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$271, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L743:
	.loc 2 1419 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2844(%ebp)
	leal	.LC247@GOTOFF(%ebx), %esi
	movl	%esi, -2848(%ebp)
	movl	$18, -2852(%ebp)
	cld
	movl	-2844(%ebp), %esi
	movl	-2848(%ebp), %edi
	movl	-2852(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L746
	.loc 2 1420 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1421 0
	movl	$272, -16(%ebp)
	jmp	.L219
.L746:
	.loc 2 1424 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2856(%ebp)
	leal	.LC248@GOTOFF(%ebx), %esi
	movl	%esi, -2860(%ebp)
	movl	$18, -2864(%ebp)
	cld
	movl	-2856(%ebp), %esi
	movl	-2860(%ebp), %edi
	movl	-2864(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L748
	.loc 2 1425 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1426 0
	movl	$273, -16(%ebp)
	jmp	.L219
.L748:
	.loc 2 1429 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2868(%ebp)
	leal	.LC249@GOTOFF(%ebx), %esi
	movl	%esi, -2872(%ebp)
	movl	$14, -2876(%ebp)
	cld
	movl	-2868(%ebp), %esi
	movl	-2872(%ebp), %edi
	movl	-2876(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L750
	.loc 2 1430 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1431 0
	movl	$274, -16(%ebp)
	jmp	.L219
.L750:
	.loc 2 1434 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2880(%ebp)
	leal	.LC250@GOTOFF(%ebx), %esi
	movl	%esi, -2884(%ebp)
	movl	$10, -2888(%ebp)
	cld
	movl	-2880(%ebp), %esi
	movl	-2884(%ebp), %edi
	movl	-2888(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L752
	.loc 2 1435 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1436 0
	movl	$275, -16(%ebp)
	jmp	.L219
.L752:
	.loc 2 1439 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2892(%ebp)
	leal	.LC251@GOTOFF(%ebx), %esi
	movl	%esi, -2896(%ebp)
	movl	$10, -2900(%ebp)
	cld
	movl	-2892(%ebp), %esi
	movl	-2896(%ebp), %edi
	movl	-2900(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L754
	.loc 2 1440 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1441 0
	movl	$276, -16(%ebp)
	jmp	.L219
.L754:
	.loc 2 1444 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2904(%ebp)
	leal	.LC252@GOTOFF(%ebx), %esi
	movl	%esi, -2908(%ebp)
	movl	$6, -2912(%ebp)
	cld
	movl	-2904(%ebp), %esi
	movl	-2908(%ebp), %edi
	movl	-2912(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L756
	.loc 2 1445 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1446 0
	movl	$277, -16(%ebp)
	jmp	.L219
.L756:
	.loc 2 1449 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2916(%ebp)
	leal	.LC253@GOTOFF(%ebx), %esi
	movl	%esi, -2920(%ebp)
	movl	$14, -2924(%ebp)
	cld
	movl	-2916(%ebp), %esi
	movl	-2920(%ebp), %edi
	movl	-2924(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L758
	.loc 2 1450 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1451 0
	movl	$278, -16(%ebp)
	jmp	.L219
.L758:
	.loc 2 1454 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2928(%ebp)
	leal	.LC254@GOTOFF(%ebx), %esi
	movl	%esi, -2932(%ebp)
	movl	$19, -2936(%ebp)
	cld
	movl	-2928(%ebp), %esi
	movl	-2932(%ebp), %edi
	movl	-2936(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L760
	.loc 2 1455 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1456 0
	movl	$279, -16(%ebp)
	jmp	.L219
.L760:
	.loc 2 1459 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2940(%ebp)
	leal	.LC255@GOTOFF(%ebx), %esi
	movl	%esi, -2944(%ebp)
	movl	$14, -2948(%ebp)
	cld
	movl	-2940(%ebp), %esi
	movl	-2944(%ebp), %edi
	movl	-2948(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L762
	.loc 2 1460 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1461 0
	movl	$280, -16(%ebp)
	jmp	.L219
.L762:
	.loc 2 1464 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2952(%ebp)
	leal	.LC256@GOTOFF(%ebx), %esi
	movl	%esi, -2956(%ebp)
	movl	$14, -2960(%ebp)
	cld
	movl	-2952(%ebp), %esi
	movl	-2956(%ebp), %edi
	movl	-2960(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L764
	.loc 2 1465 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1466 0
	movl	$281, -16(%ebp)
	jmp	.L219
.L764:
	.loc 2 1469 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2964(%ebp)
	leal	.LC257@GOTOFF(%ebx), %esi
	movl	%esi, -2968(%ebp)
	movl	$15, -2972(%ebp)
	cld
	movl	-2964(%ebp), %esi
	movl	-2968(%ebp), %edi
	movl	-2972(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L766
	.loc 2 1470 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1471 0
	movl	$282, -16(%ebp)
	jmp	.L219
.L766:
	.loc 2 1474 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2976(%ebp)
	leal	.LC258@GOTOFF(%ebx), %esi
	movl	%esi, -2980(%ebp)
	movl	$14, -2984(%ebp)
	cld
	movl	-2976(%ebp), %esi
	movl	-2980(%ebp), %edi
	movl	-2984(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L768
	.loc 2 1475 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1476 0
	movl	$283, -16(%ebp)
	jmp	.L219
.L768:
	.loc 2 1479 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -2988(%ebp)
	leal	.LC259@GOTOFF(%ebx), %esi
	movl	%esi, -2992(%ebp)
	movl	$20, -2996(%ebp)
	cld
	movl	-2988(%ebp), %esi
	movl	-2992(%ebp), %edi
	movl	-2996(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L770
	.loc 2 1480 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1481 0
	movl	$284, -16(%ebp)
	jmp	.L219
.L770:
	.loc 2 1484 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3000(%ebp)
	leal	.LC260@GOTOFF(%ebx), %esi
	movl	%esi, -3004(%ebp)
	movl	$18, -3008(%ebp)
	cld
	movl	-3000(%ebp), %esi
	movl	-3004(%ebp), %edi
	movl	-3008(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L772
	.loc 2 1485 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1486 0
	movl	$285, -16(%ebp)
	jmp	.L219
.L772:
	.loc 2 1489 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3012(%ebp)
	leal	.LC261@GOTOFF(%ebx), %esi
	movl	%esi, -3016(%ebp)
	movl	$17, -3020(%ebp)
	cld
	movl	-3012(%ebp), %esi
	movl	-3016(%ebp), %edi
	movl	-3020(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L774
	.loc 2 1490 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1491 0
	movl	$286, -16(%ebp)
	jmp	.L219
.L774:
	.loc 2 1494 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3024(%ebp)
	leal	.LC262@GOTOFF(%ebx), %esi
	movl	%esi, -3028(%ebp)
	movl	$7, -3032(%ebp)
	cld
	movl	-3024(%ebp), %esi
	movl	-3028(%ebp), %edi
	movl	-3032(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L776
	.loc 2 1495 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1496 0
	movl	$287, -16(%ebp)
	jmp	.L219
.L776:
	.loc 2 1499 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3036(%ebp)
	leal	.LC263@GOTOFF(%ebx), %esi
	movl	%esi, -3040(%ebp)
	movl	$17, -3044(%ebp)
	cld
	movl	-3036(%ebp), %esi
	movl	-3040(%ebp), %edi
	movl	-3044(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L778
	.loc 2 1500 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1501 0
	movl	$288, -16(%ebp)
	jmp	.L219
.L778:
	.loc 2 1504 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3048(%ebp)
	leal	.LC264@GOTOFF(%ebx), %esi
	movl	%esi, -3052(%ebp)
	movl	$23, -3056(%ebp)
	cld
	movl	-3048(%ebp), %esi
	movl	-3052(%ebp), %edi
	movl	-3056(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L780
	.loc 2 1505 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1506 0
	movl	$289, -16(%ebp)
	jmp	.L219
.L780:
	.loc 2 1509 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3060(%ebp)
	leal	.LC265@GOTOFF(%ebx), %esi
	movl	%esi, -3064(%ebp)
	movl	$10, -3068(%ebp)
	cld
	movl	-3060(%ebp), %esi
	movl	-3064(%ebp), %edi
	movl	-3068(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L782
	.loc 2 1510 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1511 0
	movl	$290, -16(%ebp)
	jmp	.L219
.L782:
	.loc 2 1514 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3072(%ebp)
	leal	.LC266@GOTOFF(%ebx), %esi
	movl	%esi, -3076(%ebp)
	movl	$20, -3080(%ebp)
	cld
	movl	-3072(%ebp), %esi
	movl	-3076(%ebp), %edi
	movl	-3080(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L784
	.loc 2 1515 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1516 0
	movl	$291, -16(%ebp)
	jmp	.L219
.L784:
	.loc 2 1519 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3084(%ebp)
	leal	.LC267@GOTOFF(%ebx), %esi
	movl	%esi, -3088(%ebp)
	movl	$10, -3092(%ebp)
	cld
	movl	-3084(%ebp), %esi
	movl	-3088(%ebp), %edi
	movl	-3092(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L786
	.loc 2 1520 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1521 0
	movl	$292, -16(%ebp)
	jmp	.L219
.L786:
	.loc 2 1524 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3096(%ebp)
	leal	.LC268@GOTOFF(%ebx), %esi
	movl	%esi, -3100(%ebp)
	movl	$18, -3104(%ebp)
	cld
	movl	-3096(%ebp), %esi
	movl	-3100(%ebp), %edi
	movl	-3104(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L788
	.loc 2 1525 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1526 0
	movl	$293, -16(%ebp)
	jmp	.L219
.L788:
	.loc 2 1529 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3108(%ebp)
	leal	.LC269@GOTOFF(%ebx), %esi
	movl	%esi, -3112(%ebp)
	movl	$14, -3116(%ebp)
	cld
	movl	-3108(%ebp), %esi
	movl	-3112(%ebp), %edi
	movl	-3116(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L790
	.loc 2 1530 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1531 0
	movl	$294, -16(%ebp)
	jmp	.L219
.L790:
	.loc 2 1534 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3120(%ebp)
	leal	.LC270@GOTOFF(%ebx), %esi
	movl	%esi, -3124(%ebp)
	movl	$15, -3128(%ebp)
	cld
	movl	-3120(%ebp), %esi
	movl	-3124(%ebp), %edi
	movl	-3128(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L792
	.loc 2 1535 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1536 0
	movl	$295, -16(%ebp)
	jmp	.L219
.L792:
	.loc 2 1539 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3132(%ebp)
	leal	.LC271@GOTOFF(%ebx), %esi
	movl	%esi, -3136(%ebp)
	movl	$15, -3140(%ebp)
	cld
	movl	-3132(%ebp), %esi
	movl	-3136(%ebp), %edi
	movl	-3140(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L794
	.loc 2 1540 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1541 0
	movl	$296, -16(%ebp)
	jmp	.L219
.L794:
	.loc 2 1544 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3144(%ebp)
	leal	.LC272@GOTOFF(%ebx), %esi
	movl	%esi, -3148(%ebp)
	movl	$23, -3152(%ebp)
	cld
	movl	-3144(%ebp), %esi
	movl	-3148(%ebp), %edi
	movl	-3152(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L796
	.loc 2 1545 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1546 0
	movl	$297, -16(%ebp)
	jmp	.L219
.L796:
	.loc 2 1549 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3156(%ebp)
	leal	.LC273@GOTOFF(%ebx), %esi
	movl	%esi, -3160(%ebp)
	movl	$6, -3164(%ebp)
	cld
	movl	-3156(%ebp), %esi
	movl	-3160(%ebp), %edi
	movl	-3164(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L798
	.loc 2 1550 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1551 0
	movl	$298, -16(%ebp)
	jmp	.L219
.L798:
	.loc 2 1554 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3168(%ebp)
	leal	.LC274@GOTOFF(%ebx), %esi
	movl	%esi, -3172(%ebp)
	movl	$6, -3176(%ebp)
	cld
	movl	-3168(%ebp), %esi
	movl	-3172(%ebp), %edi
	movl	-3176(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L800
	.loc 2 1555 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1556 0
	movl	$299, -16(%ebp)
	jmp	.L219
.L800:
	.loc 2 1559 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3180(%ebp)
	leal	.LC275@GOTOFF(%ebx), %esi
	movl	%esi, -3184(%ebp)
	movl	$13, -3188(%ebp)
	cld
	movl	-3180(%ebp), %esi
	movl	-3184(%ebp), %edi
	movl	-3188(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L802
	.loc 2 1560 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1561 0
	movl	$300, -16(%ebp)
	jmp	.L219
.L802:
	.loc 2 1564 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3192(%ebp)
	leal	.LC276@GOTOFF(%ebx), %esi
	movl	%esi, -3196(%ebp)
	movl	$20, -3200(%ebp)
	cld
	movl	-3192(%ebp), %esi
	movl	-3196(%ebp), %edi
	movl	-3200(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L804
	.loc 2 1565 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1566 0
	movl	$301, -16(%ebp)
	jmp	.L219
.L804:
	.loc 2 1569 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3204(%ebp)
	leal	.LC277@GOTOFF(%ebx), %esi
	movl	%esi, -3208(%ebp)
	movl	$14, -3212(%ebp)
	cld
	movl	-3204(%ebp), %esi
	movl	-3208(%ebp), %edi
	movl	-3212(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L806
	.loc 2 1570 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1571 0
	movl	$302, -16(%ebp)
	jmp	.L219
.L806:
	.loc 2 1574 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3216(%ebp)
	leal	.LC278@GOTOFF(%ebx), %esi
	movl	%esi, -3220(%ebp)
	movl	$25, -3224(%ebp)
	cld
	movl	-3216(%ebp), %esi
	movl	-3220(%ebp), %edi
	movl	-3224(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L808
	.loc 2 1575 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1576 0
	movl	$303, -16(%ebp)
	jmp	.L219
.L808:
	.loc 2 1579 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3228(%ebp)
	leal	.LC279@GOTOFF(%ebx), %esi
	movl	%esi, -3232(%ebp)
	movl	$26, -3236(%ebp)
	cld
	movl	-3228(%ebp), %esi
	movl	-3232(%ebp), %edi
	movl	-3236(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L810
	.loc 2 1580 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1581 0
	movl	$304, -16(%ebp)
	jmp	.L219
.L810:
	.loc 2 1584 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3240(%ebp)
	leal	.LC280@GOTOFF(%ebx), %esi
	movl	%esi, -3244(%ebp)
	movl	$25, -3248(%ebp)
	cld
	movl	-3240(%ebp), %esi
	movl	-3244(%ebp), %edi
	movl	-3248(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L812
	.loc 2 1585 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1586 0
	movl	$305, -16(%ebp)
	jmp	.L219
.L812:
	.loc 2 1589 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3252(%ebp)
	leal	.LC281@GOTOFF(%ebx), %esi
	movl	%esi, -3256(%ebp)
	movl	$10, -3260(%ebp)
	cld
	movl	-3252(%ebp), %esi
	movl	-3256(%ebp), %edi
	movl	-3260(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L814
	.loc 2 1590 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1591 0
	movl	$306, -16(%ebp)
	jmp	.L219
.L814:
	.loc 2 1594 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3264(%ebp)
	leal	.LC282@GOTOFF(%ebx), %esi
	movl	%esi, -3268(%ebp)
	movl	$21, -3272(%ebp)
	cld
	movl	-3264(%ebp), %esi
	movl	-3268(%ebp), %edi
	movl	-3272(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L816
	.loc 2 1595 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1596 0
	movl	$307, -16(%ebp)
	jmp	.L219
.L816:
	.loc 2 1599 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3276(%ebp)
	leal	.LC283@GOTOFF(%ebx), %esi
	movl	%esi, -3280(%ebp)
	movl	$16, -3284(%ebp)
	cld
	movl	-3276(%ebp), %esi
	movl	-3280(%ebp), %edi
	movl	-3284(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L818
	.loc 2 1600 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1601 0
	movl	$308, -16(%ebp)
	jmp	.L219
.L818:
	.loc 2 1604 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3288(%ebp)
	leal	.LC284@GOTOFF(%ebx), %esi
	movl	%esi, -3292(%ebp)
	movl	$22, -3296(%ebp)
	cld
	movl	-3288(%ebp), %esi
	movl	-3292(%ebp), %edi
	movl	-3296(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L820
	.loc 2 1605 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1606 0
	movl	$309, -16(%ebp)
	jmp	.L219
.L820:
	.loc 2 1609 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3300(%ebp)
	leal	.LC285@GOTOFF(%ebx), %esi
	movl	%esi, -3304(%ebp)
	movl	$10, -3308(%ebp)
	cld
	movl	-3300(%ebp), %esi
	movl	-3304(%ebp), %edi
	movl	-3308(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L822
	.loc 2 1610 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1611 0
	movl	$310, -16(%ebp)
	jmp	.L219
.L822:
	.loc 2 1614 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3312(%ebp)
	leal	.LC286@GOTOFF(%ebx), %esi
	movl	%esi, -3316(%ebp)
	movl	$20, -3320(%ebp)
	cld
	movl	-3312(%ebp), %esi
	movl	-3316(%ebp), %edi
	movl	-3320(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L824
	.loc 2 1615 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1616 0
	movl	$311, -16(%ebp)
	jmp	.L219
.L824:
	.loc 2 1619 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3324(%ebp)
	leal	.LC287@GOTOFF(%ebx), %esi
	movl	%esi, -3328(%ebp)
	movl	$19, -3332(%ebp)
	cld
	movl	-3324(%ebp), %esi
	movl	-3328(%ebp), %edi
	movl	-3332(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L826
	.loc 2 1620 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1621 0
	movl	$312, -16(%ebp)
	jmp	.L219
.L826:
	.loc 2 1624 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3336(%ebp)
	leal	.LC288@GOTOFF(%ebx), %esi
	movl	%esi, -3340(%ebp)
	movl	$19, -3344(%ebp)
	cld
	movl	-3336(%ebp), %esi
	movl	-3340(%ebp), %edi
	movl	-3344(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L828
	.loc 2 1625 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1626 0
	movl	$313, -16(%ebp)
	jmp	.L219
.L828:
	.loc 2 1629 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3348(%ebp)
	leal	.LC289@GOTOFF(%ebx), %esi
	movl	%esi, -3352(%ebp)
	movl	$24, -3356(%ebp)
	cld
	movl	-3348(%ebp), %esi
	movl	-3352(%ebp), %edi
	movl	-3356(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L830
	.loc 2 1630 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1631 0
	movl	$314, -16(%ebp)
	jmp	.L219
.L830:
	.loc 2 1634 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3360(%ebp)
	leal	.LC290@GOTOFF(%ebx), %esi
	movl	%esi, -3364(%ebp)
	movl	$31, -3368(%ebp)
	cld
	movl	-3360(%ebp), %esi
	movl	-3364(%ebp), %edi
	movl	-3368(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L832
	.loc 2 1635 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1636 0
	movl	$315, -16(%ebp)
	jmp	.L219
.L832:
	.loc 2 1639 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3372(%ebp)
	leal	.LC291@GOTOFF(%ebx), %esi
	movl	%esi, -3376(%ebp)
	movl	$18, -3380(%ebp)
	cld
	movl	-3372(%ebp), %esi
	movl	-3376(%ebp), %edi
	movl	-3380(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L834
	.loc 2 1640 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1641 0
	movl	$316, -16(%ebp)
	jmp	.L219
.L834:
	.loc 2 1644 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3384(%ebp)
	leal	.LC292@GOTOFF(%ebx), %esi
	movl	%esi, -3388(%ebp)
	movl	$17, -3392(%ebp)
	cld
	movl	-3384(%ebp), %esi
	movl	-3388(%ebp), %edi
	movl	-3392(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L836
	.loc 2 1645 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1646 0
	movl	$317, -16(%ebp)
	jmp	.L219
.L836:
	.loc 2 1649 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3396(%ebp)
	leal	.LC293@GOTOFF(%ebx), %esi
	movl	%esi, -3400(%ebp)
	movl	$21, -3404(%ebp)
	cld
	movl	-3396(%ebp), %esi
	movl	-3400(%ebp), %edi
	movl	-3404(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L838
	.loc 2 1650 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1651 0
	movl	$318, -16(%ebp)
	jmp	.L219
.L838:
	.loc 2 1654 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3408(%ebp)
	leal	.LC294@GOTOFF(%ebx), %esi
	movl	%esi, -3412(%ebp)
	movl	$21, -3416(%ebp)
	cld
	movl	-3408(%ebp), %esi
	movl	-3412(%ebp), %edi
	movl	-3416(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L840
	.loc 2 1655 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1656 0
	movl	$319, -16(%ebp)
	jmp	.L219
.L840:
	.loc 2 1659 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3420(%ebp)
	leal	.LC295@GOTOFF(%ebx), %esi
	movl	%esi, -3424(%ebp)
	movl	$13, -3428(%ebp)
	cld
	movl	-3420(%ebp), %esi
	movl	-3424(%ebp), %edi
	movl	-3428(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L842
	.loc 2 1660 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1661 0
	movl	$320, -16(%ebp)
	jmp	.L219
.L842:
	.loc 2 1664 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3432(%ebp)
	leal	.LC296@GOTOFF(%ebx), %esi
	movl	%esi, -3436(%ebp)
	movl	$13, -3440(%ebp)
	cld
	movl	-3432(%ebp), %esi
	movl	-3436(%ebp), %edi
	movl	-3440(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L844
	.loc 2 1665 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1666 0
	movl	$321, -16(%ebp)
	jmp	.L219
.L844:
	.loc 2 1669 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3444(%ebp)
	leal	.LC297@GOTOFF(%ebx), %esi
	movl	%esi, -3448(%ebp)
	movl	$9, -3452(%ebp)
	cld
	movl	-3444(%ebp), %esi
	movl	-3448(%ebp), %edi
	movl	-3452(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L846
	.loc 2 1670 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1671 0
	movl	$322, -16(%ebp)
	jmp	.L219
.L846:
	.loc 2 1674 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3456(%ebp)
	leal	.LC298@GOTOFF(%ebx), %esi
	movl	%esi, -3460(%ebp)
	movl	$17, -3464(%ebp)
	cld
	movl	-3456(%ebp), %esi
	movl	-3460(%ebp), %edi
	movl	-3464(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L848
	.loc 2 1675 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1676 0
	movl	$323, -16(%ebp)
	jmp	.L219
.L848:
	.loc 2 1679 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3468(%ebp)
	leal	.LC299@GOTOFF(%ebx), %esi
	movl	%esi, -3472(%ebp)
	movl	$22, -3476(%ebp)
	cld
	movl	-3468(%ebp), %esi
	movl	-3472(%ebp), %edi
	movl	-3476(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L850
	.loc 2 1680 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1681 0
	movl	$324, -16(%ebp)
	jmp	.L219
.L850:
	.loc 2 1684 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3480(%ebp)
	leal	.LC300@GOTOFF(%ebx), %esi
	movl	%esi, -3484(%ebp)
	movl	$23, -3488(%ebp)
	cld
	movl	-3480(%ebp), %esi
	movl	-3484(%ebp), %edi
	movl	-3488(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L852
	.loc 2 1685 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1686 0
	movl	$325, -16(%ebp)
	jmp	.L219
.L852:
	.loc 2 1689 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3492(%ebp)
	leal	.LC301@GOTOFF(%ebx), %esi
	movl	%esi, -3496(%ebp)
	movl	$10, -3500(%ebp)
	cld
	movl	-3492(%ebp), %esi
	movl	-3496(%ebp), %edi
	movl	-3500(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L854
	.loc 2 1690 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1691 0
	movl	$326, -16(%ebp)
	jmp	.L219
.L854:
	.loc 2 1694 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3504(%ebp)
	leal	.LC302@GOTOFF(%ebx), %esi
	movl	%esi, -3508(%ebp)
	movl	$18, -3512(%ebp)
	cld
	movl	-3504(%ebp), %esi
	movl	-3508(%ebp), %edi
	movl	-3512(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L856
	.loc 2 1695 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1696 0
	movl	$327, -16(%ebp)
	jmp	.L219
.L856:
	.loc 2 1699 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3516(%ebp)
	leal	.LC303@GOTOFF(%ebx), %esi
	movl	%esi, -3520(%ebp)
	movl	$9, -3524(%ebp)
	cld
	movl	-3516(%ebp), %esi
	movl	-3520(%ebp), %edi
	movl	-3524(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L858
	.loc 2 1700 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1701 0
	movl	$328, -16(%ebp)
	jmp	.L219
.L858:
	.loc 2 1704 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3528(%ebp)
	leal	.LC304@GOTOFF(%ebx), %esi
	movl	%esi, -3532(%ebp)
	movl	$9, -3536(%ebp)
	cld
	movl	-3528(%ebp), %esi
	movl	-3532(%ebp), %edi
	movl	-3536(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L860
	.loc 2 1705 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1706 0
	movl	$329, -16(%ebp)
	jmp	.L219
.L860:
	.loc 2 1709 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3540(%ebp)
	leal	.LC305@GOTOFF(%ebx), %esi
	movl	%esi, -3544(%ebp)
	movl	$16, -3548(%ebp)
	cld
	movl	-3540(%ebp), %esi
	movl	-3544(%ebp), %edi
	movl	-3548(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L862
	.loc 2 1710 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1711 0
	movl	$330, -16(%ebp)
	jmp	.L219
.L862:
	.loc 2 1714 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3552(%ebp)
	leal	.LC306@GOTOFF(%ebx), %esi
	movl	%esi, -3556(%ebp)
	movl	$14, -3560(%ebp)
	cld
	movl	-3552(%ebp), %esi
	movl	-3556(%ebp), %edi
	movl	-3560(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L864
	.loc 2 1715 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1716 0
	movl	$331, -16(%ebp)
	jmp	.L219
.L864:
	.loc 2 1719 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3564(%ebp)
	leal	.LC307@GOTOFF(%ebx), %esi
	movl	%esi, -3568(%ebp)
	movl	$28, -3572(%ebp)
	cld
	movl	-3564(%ebp), %esi
	movl	-3568(%ebp), %edi
	movl	-3572(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L866
	.loc 2 1720 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1721 0
	movl	$332, -16(%ebp)
	jmp	.L219
.L866:
	.loc 2 1724 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3576(%ebp)
	leal	.LC308@GOTOFF(%ebx), %esi
	movl	%esi, -3580(%ebp)
	movl	$28, -3584(%ebp)
	cld
	movl	-3576(%ebp), %esi
	movl	-3580(%ebp), %edi
	movl	-3584(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L868
	.loc 2 1725 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1726 0
	movl	$333, -16(%ebp)
	jmp	.L219
.L868:
	.loc 2 1729 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3588(%ebp)
	leal	.LC309@GOTOFF(%ebx), %esi
	movl	%esi, -3592(%ebp)
	movl	$20, -3596(%ebp)
	cld
	movl	-3588(%ebp), %esi
	movl	-3592(%ebp), %edi
	movl	-3596(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L870
	.loc 2 1730 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1731 0
	movl	$334, -16(%ebp)
	jmp	.L219
.L870:
	.loc 2 1734 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3600(%ebp)
	leal	.LC310@GOTOFF(%ebx), %esi
	movl	%esi, -3604(%ebp)
	movl	$24, -3608(%ebp)
	cld
	movl	-3600(%ebp), %esi
	movl	-3604(%ebp), %edi
	movl	-3608(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L872
	.loc 2 1735 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1736 0
	movl	$335, -16(%ebp)
	jmp	.L219
.L872:
	.loc 2 1739 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3612(%ebp)
	leal	.LC311@GOTOFF(%ebx), %esi
	movl	%esi, -3616(%ebp)
	movl	$16, -3620(%ebp)
	cld
	movl	-3612(%ebp), %esi
	movl	-3616(%ebp), %edi
	movl	-3620(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L874
	.loc 2 1740 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1741 0
	movl	$336, -16(%ebp)
	jmp	.L219
.L874:
	.loc 2 1744 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3624(%ebp)
	leal	.LC312@GOTOFF(%ebx), %esi
	movl	%esi, -3628(%ebp)
	movl	$22, -3632(%ebp)
	cld
	movl	-3624(%ebp), %esi
	movl	-3628(%ebp), %edi
	movl	-3632(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L876
	.loc 2 1745 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1746 0
	movl	$337, -16(%ebp)
	jmp	.L219
.L876:
	.loc 2 1749 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3636(%ebp)
	leal	.LC313@GOTOFF(%ebx), %esi
	movl	%esi, -3640(%ebp)
	movl	$12, -3644(%ebp)
	cld
	movl	-3636(%ebp), %esi
	movl	-3640(%ebp), %edi
	movl	-3644(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L878
	.loc 2 1750 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1751 0
	movl	$338, -16(%ebp)
	jmp	.L219
.L878:
	.loc 2 1754 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3648(%ebp)
	leal	.LC314@GOTOFF(%ebx), %esi
	movl	%esi, -3652(%ebp)
	movl	$24, -3656(%ebp)
	cld
	movl	-3648(%ebp), %esi
	movl	-3652(%ebp), %edi
	movl	-3656(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L880
	.loc 2 1755 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1756 0
	movl	$339, -16(%ebp)
	jmp	.L219
.L880:
	.loc 2 1759 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3660(%ebp)
	leal	.LC315@GOTOFF(%ebx), %esi
	movl	%esi, -3664(%ebp)
	movl	$31, -3668(%ebp)
	cld
	movl	-3660(%ebp), %esi
	movl	-3664(%ebp), %edi
	movl	-3668(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L882
	.loc 2 1760 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1761 0
	movl	$340, -16(%ebp)
	jmp	.L219
.L882:
	.loc 2 1764 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3672(%ebp)
	leal	.LC316@GOTOFF(%ebx), %esi
	movl	%esi, -3676(%ebp)
	movl	$11, -3680(%ebp)
	cld
	movl	-3672(%ebp), %esi
	movl	-3676(%ebp), %edi
	movl	-3680(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L884
	.loc 2 1765 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1766 0
	movl	$341, -16(%ebp)
	jmp	.L219
.L884:
	.loc 2 1769 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3684(%ebp)
	leal	.LC317@GOTOFF(%ebx), %esi
	movl	%esi, -3688(%ebp)
	movl	$12, -3692(%ebp)
	cld
	movl	-3684(%ebp), %esi
	movl	-3688(%ebp), %edi
	movl	-3692(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L886
	.loc 2 1770 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1771 0
	movl	$342, -16(%ebp)
	jmp	.L219
.L886:
	.loc 2 1774 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3696(%ebp)
	leal	.LC318@GOTOFF(%ebx), %esi
	movl	%esi, -3700(%ebp)
	movl	$23, -3704(%ebp)
	cld
	movl	-3696(%ebp), %esi
	movl	-3700(%ebp), %edi
	movl	-3704(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L888
	.loc 2 1775 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1776 0
	movl	$343, -16(%ebp)
	jmp	.L219
.L888:
	.loc 2 1779 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3708(%ebp)
	leal	.LC319@GOTOFF(%ebx), %esi
	movl	%esi, -3712(%ebp)
	movl	$16, -3716(%ebp)
	cld
	movl	-3708(%ebp), %esi
	movl	-3712(%ebp), %edi
	movl	-3716(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L890
	.loc 2 1780 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1781 0
	movl	$344, -16(%ebp)
	jmp	.L219
.L890:
	.loc 2 1784 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3720(%ebp)
	leal	.LC320@GOTOFF(%ebx), %esi
	movl	%esi, -3724(%ebp)
	movl	$18, -3728(%ebp)
	cld
	movl	-3720(%ebp), %esi
	movl	-3724(%ebp), %edi
	movl	-3728(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L892
	.loc 2 1785 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1786 0
	movl	$345, -16(%ebp)
	jmp	.L219
.L892:
	.loc 2 1789 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3732(%ebp)
	leal	.LC321@GOTOFF(%ebx), %esi
	movl	%esi, -3736(%ebp)
	movl	$18, -3740(%ebp)
	cld
	movl	-3732(%ebp), %esi
	movl	-3736(%ebp), %edi
	movl	-3740(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L894
	.loc 2 1790 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1791 0
	movl	$346, -16(%ebp)
	jmp	.L219
.L894:
	.loc 2 1794 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3744(%ebp)
	leal	.LC322@GOTOFF(%ebx), %esi
	movl	%esi, -3748(%ebp)
	movl	$18, -3752(%ebp)
	cld
	movl	-3744(%ebp), %esi
	movl	-3748(%ebp), %edi
	movl	-3752(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L896
	.loc 2 1795 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1796 0
	movl	$347, -16(%ebp)
	jmp	.L219
.L896:
	.loc 2 1799 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3756(%ebp)
	leal	.LC323@GOTOFF(%ebx), %esi
	movl	%esi, -3760(%ebp)
	movl	$15, -3764(%ebp)
	cld
	movl	-3756(%ebp), %esi
	movl	-3760(%ebp), %edi
	movl	-3764(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L898
	.loc 2 1800 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1801 0
	movl	$348, -16(%ebp)
	jmp	.L219
.L898:
	.loc 2 1804 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3768(%ebp)
	leal	.LC324@GOTOFF(%ebx), %esi
	movl	%esi, -3772(%ebp)
	movl	$17, -3776(%ebp)
	cld
	movl	-3768(%ebp), %esi
	movl	-3772(%ebp), %edi
	movl	-3776(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L900
	.loc 2 1805 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1806 0
	movl	$349, -16(%ebp)
	jmp	.L219
.L900:
	.loc 2 1809 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3780(%ebp)
	leal	.LC325@GOTOFF(%ebx), %esi
	movl	%esi, -3784(%ebp)
	movl	$15, -3788(%ebp)
	cld
	movl	-3780(%ebp), %esi
	movl	-3784(%ebp), %edi
	movl	-3788(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L902
	.loc 2 1810 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1811 0
	movl	$350, -16(%ebp)
	jmp	.L219
.L902:
	.loc 2 1814 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3792(%ebp)
	leal	.LC326@GOTOFF(%ebx), %esi
	movl	%esi, -3796(%ebp)
	movl	$16, -3800(%ebp)
	cld
	movl	-3792(%ebp), %esi
	movl	-3796(%ebp), %edi
	movl	-3800(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L904
	.loc 2 1815 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1816 0
	movl	$351, -16(%ebp)
	jmp	.L219
.L904:
	.loc 2 1819 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3804(%ebp)
	leal	.LC327@GOTOFF(%ebx), %esi
	movl	%esi, -3808(%ebp)
	movl	$16, -3812(%ebp)
	cld
	movl	-3804(%ebp), %esi
	movl	-3808(%ebp), %edi
	movl	-3812(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L906
	.loc 2 1820 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1821 0
	movl	$352, -16(%ebp)
	jmp	.L219
.L906:
	.loc 2 1824 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3816(%ebp)
	leal	.LC328@GOTOFF(%ebx), %esi
	movl	%esi, -3820(%ebp)
	movl	$15, -3824(%ebp)
	cld
	movl	-3816(%ebp), %esi
	movl	-3820(%ebp), %edi
	movl	-3824(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L908
	.loc 2 1825 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1826 0
	movl	$353, -16(%ebp)
	jmp	.L219
.L908:
	.loc 2 1829 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3828(%ebp)
	leal	.LC329@GOTOFF(%ebx), %esi
	movl	%esi, -3832(%ebp)
	movl	$20, -3836(%ebp)
	cld
	movl	-3828(%ebp), %esi
	movl	-3832(%ebp), %edi
	movl	-3836(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L910
	.loc 2 1830 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1831 0
	movl	$354, -16(%ebp)
	jmp	.L219
.L910:
	.loc 2 1834 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3840(%ebp)
	leal	.LC330@GOTOFF(%ebx), %esi
	movl	%esi, -3844(%ebp)
	movl	$12, -3848(%ebp)
	cld
	movl	-3840(%ebp), %esi
	movl	-3844(%ebp), %edi
	movl	-3848(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L912
	.loc 2 1835 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1836 0
	movl	$355, -16(%ebp)
	jmp	.L219
.L912:
	.loc 2 1839 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3852(%ebp)
	leal	.LC331@GOTOFF(%ebx), %esi
	movl	%esi, -3856(%ebp)
	movl	$15, -3860(%ebp)
	cld
	movl	-3852(%ebp), %esi
	movl	-3856(%ebp), %edi
	movl	-3860(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L914
	.loc 2 1840 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1841 0
	movl	$356, -16(%ebp)
	jmp	.L219
.L914:
	.loc 2 1844 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3864(%ebp)
	leal	.LC332@GOTOFF(%ebx), %esi
	movl	%esi, -3868(%ebp)
	movl	$13, -3872(%ebp)
	cld
	movl	-3864(%ebp), %esi
	movl	-3868(%ebp), %edi
	movl	-3872(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L916
	.loc 2 1845 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1846 0
	movl	$357, -16(%ebp)
	jmp	.L219
.L916:
	.loc 2 1849 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3876(%ebp)
	leal	.LC333@GOTOFF(%ebx), %esi
	movl	%esi, -3880(%ebp)
	movl	$9, -3884(%ebp)
	cld
	movl	-3876(%ebp), %esi
	movl	-3880(%ebp), %edi
	movl	-3884(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L918
	.loc 2 1850 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1851 0
	movl	$358, -16(%ebp)
	jmp	.L219
.L918:
	.loc 2 1854 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3888(%ebp)
	leal	.LC334@GOTOFF(%ebx), %esi
	movl	%esi, -3892(%ebp)
	movl	$9, -3896(%ebp)
	cld
	movl	-3888(%ebp), %esi
	movl	-3892(%ebp), %edi
	movl	-3896(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L920
	.loc 2 1855 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1856 0
	movl	$359, -16(%ebp)
	jmp	.L219
.L920:
	.loc 2 1859 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3900(%ebp)
	leal	.LC335@GOTOFF(%ebx), %esi
	movl	%esi, -3904(%ebp)
	movl	$9, -3908(%ebp)
	cld
	movl	-3900(%ebp), %esi
	movl	-3904(%ebp), %edi
	movl	-3908(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L922
	.loc 2 1860 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1861 0
	movl	$360, -16(%ebp)
	jmp	.L219
.L922:
	.loc 2 1864 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3912(%ebp)
	leal	.LC336@GOTOFF(%ebx), %esi
	movl	%esi, -3916(%ebp)
	movl	$16, -3920(%ebp)
	cld
	movl	-3912(%ebp), %esi
	movl	-3916(%ebp), %edi
	movl	-3920(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L924
	.loc 2 1865 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1866 0
	movl	$361, -16(%ebp)
	jmp	.L219
.L924:
	.loc 2 1869 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3924(%ebp)
	leal	.LC337@GOTOFF(%ebx), %esi
	movl	%esi, -3928(%ebp)
	movl	$20, -3932(%ebp)
	cld
	movl	-3924(%ebp), %esi
	movl	-3928(%ebp), %edi
	movl	-3932(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L926
	.loc 2 1870 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1871 0
	movl	$362, -16(%ebp)
	jmp	.L219
.L926:
	.loc 2 1874 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1875 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3936(%ebp)
	leal	.LC338@GOTOFF(%ebx), %esi
	movl	%esi, -3940(%ebp)
	movl	$17, -3944(%ebp)
	cld
	movl	-3936(%ebp), %esi
	movl	-3940(%ebp), %edi
	movl	-3944(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L929
	.loc 2 1876 0
	movl	$17, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1877 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L929
	.loc 2 1878 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1879 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1880 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1881 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$363, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L929:
	.loc 2 1885 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3948(%ebp)
	leal	.LC339@GOTOFF(%ebx), %esi
	movl	%esi, -3952(%ebp)
	movl	$13, -3956(%ebp)
	cld
	movl	-3948(%ebp), %esi
	movl	-3952(%ebp), %edi
	movl	-3956(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L932
	.loc 2 1886 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1887 0
	movl	$364, -16(%ebp)
	jmp	.L219
.L932:
	.loc 2 1890 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3960(%ebp)
	leal	.LC340@GOTOFF(%ebx), %esi
	movl	%esi, -3964(%ebp)
	movl	$7, -3968(%ebp)
	cld
	movl	-3960(%ebp), %esi
	movl	-3964(%ebp), %edi
	movl	-3968(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L934
	.loc 2 1891 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1892 0
	movl	$365, -16(%ebp)
	jmp	.L219
.L934:
	.loc 2 1895 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3972(%ebp)
	leal	.LC341@GOTOFF(%ebx), %esi
	movl	%esi, -3976(%ebp)
	movl	$21, -3980(%ebp)
	cld
	movl	-3972(%ebp), %esi
	movl	-3976(%ebp), %edi
	movl	-3980(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L936
	.loc 2 1896 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1897 0
	movl	$366, -16(%ebp)
	jmp	.L219
.L936:
	.loc 2 1900 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3984(%ebp)
	leal	.LC342@GOTOFF(%ebx), %esi
	movl	%esi, -3988(%ebp)
	movl	$14, -3992(%ebp)
	cld
	movl	-3984(%ebp), %esi
	movl	-3988(%ebp), %edi
	movl	-3992(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L938
	.loc 2 1901 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1902 0
	movl	$367, -16(%ebp)
	jmp	.L219
.L938:
	.loc 2 1905 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -3996(%ebp)
	leal	.LC343@GOTOFF(%ebx), %esi
	movl	%esi, -4000(%ebp)
	movl	$24, -4004(%ebp)
	cld
	movl	-3996(%ebp), %esi
	movl	-4000(%ebp), %edi
	movl	-4004(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L940
	.loc 2 1906 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1907 0
	movl	$368, -16(%ebp)
	jmp	.L219
.L940:
	.loc 2 1910 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4008(%ebp)
	leal	.LC344@GOTOFF(%ebx), %esi
	movl	%esi, -4012(%ebp)
	movl	$11, -4016(%ebp)
	cld
	movl	-4008(%ebp), %esi
	movl	-4012(%ebp), %edi
	movl	-4016(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L942
	.loc 2 1911 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1912 0
	movl	$369, -16(%ebp)
	jmp	.L219
.L942:
	.loc 2 1915 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 1916 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4020(%ebp)
	leal	.LC345@GOTOFF(%ebx), %esi
	movl	%esi, -4024(%ebp)
	movl	$15, -4028(%ebp)
	cld
	movl	-4020(%ebp), %esi
	movl	-4024(%ebp), %edi
	movl	-4028(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L945
	.loc 2 1917 0
	movl	$15, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 1918 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L945
	.loc 2 1919 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1920 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 1921 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1922 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$370, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L945:
	.loc 2 1926 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4032(%ebp)
	leal	.LC346@GOTOFF(%ebx), %esi
	movl	%esi, -4036(%ebp)
	movl	$19, -4040(%ebp)
	cld
	movl	-4032(%ebp), %esi
	movl	-4036(%ebp), %edi
	movl	-4040(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L948
	.loc 2 1927 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1928 0
	movl	$371, -16(%ebp)
	jmp	.L219
.L948:
	.loc 2 1931 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4044(%ebp)
	leal	.LC347@GOTOFF(%ebx), %esi
	movl	%esi, -4048(%ebp)
	movl	$9, -4052(%ebp)
	cld
	movl	-4044(%ebp), %esi
	movl	-4048(%ebp), %edi
	movl	-4052(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L950
	.loc 2 1932 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1933 0
	movl	$372, -16(%ebp)
	jmp	.L219
.L950:
	.loc 2 1936 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4056(%ebp)
	leal	.LC348@GOTOFF(%ebx), %esi
	movl	%esi, -4060(%ebp)
	movl	$25, -4064(%ebp)
	cld
	movl	-4056(%ebp), %esi
	movl	-4060(%ebp), %edi
	movl	-4064(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L952
	.loc 2 1937 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1938 0
	movl	$373, -16(%ebp)
	jmp	.L219
.L952:
	.loc 2 1941 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4068(%ebp)
	leal	.LC349@GOTOFF(%ebx), %esi
	movl	%esi, -4072(%ebp)
	movl	$21, -4076(%ebp)
	cld
	movl	-4068(%ebp), %esi
	movl	-4072(%ebp), %edi
	movl	-4076(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L954
	.loc 2 1942 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1943 0
	movl	$374, -16(%ebp)
	jmp	.L219
.L954:
	.loc 2 1946 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4080(%ebp)
	leal	.LC350@GOTOFF(%ebx), %esi
	movl	%esi, -4084(%ebp)
	movl	$28, -4088(%ebp)
	cld
	movl	-4080(%ebp), %esi
	movl	-4084(%ebp), %edi
	movl	-4088(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L956
	.loc 2 1947 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1948 0
	movl	$375, -16(%ebp)
	jmp	.L219
.L956:
	.loc 2 1951 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4092(%ebp)
	leal	.LC351@GOTOFF(%ebx), %esi
	movl	%esi, -4096(%ebp)
	movl	$9, -4100(%ebp)
	cld
	movl	-4092(%ebp), %esi
	movl	-4096(%ebp), %edi
	movl	-4100(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L958
	.loc 2 1952 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1953 0
	movl	$376, -16(%ebp)
	jmp	.L219
.L958:
	.loc 2 1956 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4104(%ebp)
	leal	.LC352@GOTOFF(%ebx), %esi
	movl	%esi, -4108(%ebp)
	movl	$20, -4112(%ebp)
	cld
	movl	-4104(%ebp), %esi
	movl	-4108(%ebp), %edi
	movl	-4112(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L960
	.loc 2 1957 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1958 0
	movl	$377, -16(%ebp)
	jmp	.L219
.L960:
	.loc 2 1961 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4116(%ebp)
	leal	.LC353@GOTOFF(%ebx), %esi
	movl	%esi, -4120(%ebp)
	movl	$15, -4124(%ebp)
	cld
	movl	-4116(%ebp), %esi
	movl	-4120(%ebp), %edi
	movl	-4124(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L962
	.loc 2 1962 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1963 0
	movl	$378, -16(%ebp)
	jmp	.L219
.L962:
	.loc 2 1966 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4128(%ebp)
	leal	.LC354@GOTOFF(%ebx), %esi
	movl	%esi, -4132(%ebp)
	movl	$7, -4136(%ebp)
	cld
	movl	-4128(%ebp), %esi
	movl	-4132(%ebp), %edi
	movl	-4136(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L964
	.loc 2 1967 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1968 0
	movl	$379, -16(%ebp)
	jmp	.L219
.L964:
	.loc 2 1971 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4140(%ebp)
	leal	.LC355@GOTOFF(%ebx), %esi
	movl	%esi, -4144(%ebp)
	movl	$20, -4148(%ebp)
	cld
	movl	-4140(%ebp), %esi
	movl	-4144(%ebp), %edi
	movl	-4148(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L966
	.loc 2 1972 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1973 0
	movl	$380, -16(%ebp)
	jmp	.L219
.L966:
	.loc 2 1976 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4152(%ebp)
	leal	.LC356@GOTOFF(%ebx), %esi
	movl	%esi, -4156(%ebp)
	movl	$15, -4160(%ebp)
	cld
	movl	-4152(%ebp), %esi
	movl	-4156(%ebp), %edi
	movl	-4160(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L968
	.loc 2 1977 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1978 0
	movl	$381, -16(%ebp)
	jmp	.L219
.L968:
	.loc 2 1981 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4164(%ebp)
	leal	.LC357@GOTOFF(%ebx), %esi
	movl	%esi, -4168(%ebp)
	movl	$23, -4172(%ebp)
	cld
	movl	-4164(%ebp), %esi
	movl	-4168(%ebp), %edi
	movl	-4172(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L970
	.loc 2 1982 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1983 0
	movl	$382, -16(%ebp)
	jmp	.L219
.L970:
	.loc 2 1986 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4176(%ebp)
	leal	.LC358@GOTOFF(%ebx), %esi
	movl	%esi, -4180(%ebp)
	movl	$12, -4184(%ebp)
	cld
	movl	-4176(%ebp), %esi
	movl	-4180(%ebp), %edi
	movl	-4184(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L972
	.loc 2 1987 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1988 0
	movl	$383, -16(%ebp)
	jmp	.L219
.L972:
	.loc 2 1991 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4188(%ebp)
	leal	.LC359@GOTOFF(%ebx), %esi
	movl	%esi, -4192(%ebp)
	movl	$13, -4196(%ebp)
	cld
	movl	-4188(%ebp), %esi
	movl	-4192(%ebp), %edi
	movl	-4196(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L974
	.loc 2 1992 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1993 0
	movl	$384, -16(%ebp)
	jmp	.L219
.L974:
	.loc 2 1996 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4200(%ebp)
	leal	.LC360@GOTOFF(%ebx), %esi
	movl	%esi, -4204(%ebp)
	movl	$12, -4208(%ebp)
	cld
	movl	-4200(%ebp), %esi
	movl	-4204(%ebp), %edi
	movl	-4208(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L976
	.loc 2 1997 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 1998 0
	movl	$385, -16(%ebp)
	jmp	.L219
.L976:
	.loc 2 2001 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4212(%ebp)
	leal	.LC361@GOTOFF(%ebx), %esi
	movl	%esi, -4216(%ebp)
	movl	$14, -4220(%ebp)
	cld
	movl	-4212(%ebp), %esi
	movl	-4216(%ebp), %edi
	movl	-4220(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L978
	.loc 2 2002 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2003 0
	movl	$386, -16(%ebp)
	jmp	.L219
.L978:
	.loc 2 2006 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2007 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4224(%ebp)
	leal	.LC362@GOTOFF(%ebx), %esi
	movl	%esi, -4228(%ebp)
	movl	$8, -4232(%ebp)
	cld
	movl	-4224(%ebp), %esi
	movl	-4228(%ebp), %edi
	movl	-4232(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L981
	.loc 2 2008 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2009 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2010 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2011 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$387, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L981:
	.loc 2 2014 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4236(%ebp)
	leal	.LC363@GOTOFF(%ebx), %esi
	movl	%esi, -4240(%ebp)
	movl	$14, -4244(%ebp)
	cld
	movl	-4236(%ebp), %esi
	movl	-4240(%ebp), %edi
	movl	-4244(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L983
	.loc 2 2015 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2016 0
	movl	$388, -16(%ebp)
	jmp	.L219
.L983:
	.loc 2 2019 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4248(%ebp)
	leal	.LC364@GOTOFF(%ebx), %esi
	movl	%esi, -4252(%ebp)
	movl	$12, -4256(%ebp)
	cld
	movl	-4248(%ebp), %esi
	movl	-4252(%ebp), %edi
	movl	-4256(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L985
	.loc 2 2020 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2021 0
	movl	$389, -16(%ebp)
	jmp	.L219
.L985:
	.loc 2 2024 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4260(%ebp)
	leal	.LC365@GOTOFF(%ebx), %esi
	movl	%esi, -4264(%ebp)
	movl	$6, -4268(%ebp)
	cld
	movl	-4260(%ebp), %esi
	movl	-4264(%ebp), %edi
	movl	-4268(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L987
	.loc 2 2025 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2026 0
	movl	$390, -16(%ebp)
	jmp	.L219
.L987:
	.loc 2 2029 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4272(%ebp)
	leal	.LC366@GOTOFF(%ebx), %esi
	movl	%esi, -4276(%ebp)
	movl	$6, -4280(%ebp)
	cld
	movl	-4272(%ebp), %esi
	movl	-4276(%ebp), %edi
	movl	-4280(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L989
	.loc 2 2030 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2031 0
	movl	$391, -16(%ebp)
	jmp	.L219
.L989:
	.loc 2 2034 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2035 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4284(%ebp)
	leal	.LC367@GOTOFF(%ebx), %esi
	movl	%esi, -4288(%ebp)
	movl	$9, -4292(%ebp)
	cld
	movl	-4284(%ebp), %esi
	movl	-4288(%ebp), %edi
	movl	-4292(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L992
	.loc 2 2036 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2037 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2038 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2039 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$392, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L992:
	.loc 2 2042 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4296(%ebp)
	leal	.LC368@GOTOFF(%ebx), %esi
	movl	%esi, -4300(%ebp)
	movl	$26, -4304(%ebp)
	cld
	movl	-4296(%ebp), %esi
	movl	-4300(%ebp), %edi
	movl	-4304(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L994
	.loc 2 2043 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2044 0
	movl	$393, -16(%ebp)
	jmp	.L219
.L994:
	.loc 2 2047 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4308(%ebp)
	leal	.LC369@GOTOFF(%ebx), %esi
	movl	%esi, -4312(%ebp)
	movl	$13, -4316(%ebp)
	cld
	movl	-4308(%ebp), %esi
	movl	-4312(%ebp), %edi
	movl	-4316(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L996
	.loc 2 2048 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2049 0
	movl	$394, -16(%ebp)
	jmp	.L219
.L996:
	.loc 2 2052 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2053 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4320(%ebp)
	leal	.LC370@GOTOFF(%ebx), %esi
	movl	%esi, -4324(%ebp)
	movl	$9, -4328(%ebp)
	cld
	movl	-4320(%ebp), %esi
	movl	-4324(%ebp), %edi
	movl	-4328(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L999
	.loc 2 2054 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2055 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2056 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2057 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$395, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L999:
	.loc 2 2060 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4332(%ebp)
	leal	.LC371@GOTOFF(%ebx), %esi
	movl	%esi, -4336(%ebp)
	movl	$4, -4340(%ebp)
	cld
	movl	-4332(%ebp), %esi
	movl	-4336(%ebp), %edi
	movl	-4340(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1001
	.loc 2 2061 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2062 0
	movl	$396, -16(%ebp)
	jmp	.L219
.L1001:
	.loc 2 2065 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4344(%ebp)
	leal	.LC372@GOTOFF(%ebx), %esi
	movl	%esi, -4348(%ebp)
	movl	$13, -4352(%ebp)
	cld
	movl	-4344(%ebp), %esi
	movl	-4348(%ebp), %edi
	movl	-4352(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1003
	.loc 2 2066 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2067 0
	movl	$397, -16(%ebp)
	jmp	.L219
.L1003:
	.loc 2 2070 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4356(%ebp)
	leal	.LC373@GOTOFF(%ebx), %esi
	movl	%esi, -4360(%ebp)
	movl	$33, -4364(%ebp)
	cld
	movl	-4356(%ebp), %esi
	movl	-4360(%ebp), %edi
	movl	-4364(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1005
	.loc 2 2071 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2072 0
	movl	$398, -16(%ebp)
	jmp	.L219
.L1005:
	.loc 2 2075 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4368(%ebp)
	leal	.LC374@GOTOFF(%ebx), %esi
	movl	%esi, -4372(%ebp)
	movl	$39, -4376(%ebp)
	cld
	movl	-4368(%ebp), %esi
	movl	-4372(%ebp), %edi
	movl	-4376(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1007
	.loc 2 2076 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2077 0
	movl	$399, -16(%ebp)
	jmp	.L219
.L1007:
	.loc 2 2080 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4380(%ebp)
	leal	.LC375@GOTOFF(%ebx), %esi
	movl	%esi, -4384(%ebp)
	movl	$17, -4388(%ebp)
	cld
	movl	-4380(%ebp), %esi
	movl	-4384(%ebp), %edi
	movl	-4388(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1009
	.loc 2 2081 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2082 0
	movl	$400, -16(%ebp)
	jmp	.L219
.L1009:
	.loc 2 2085 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2086 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4392(%ebp)
	leal	.LC376@GOTOFF(%ebx), %esi
	movl	%esi, -4396(%ebp)
	movl	$10, -4400(%ebp)
	cld
	movl	-4392(%ebp), %esi
	movl	-4396(%ebp), %edi
	movl	-4400(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1012
	.loc 2 2087 0
	movl	$10, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2088 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2089 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2090 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$401, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1012:
	.loc 2 2093 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4404(%ebp)
	leal	.LC377@GOTOFF(%ebx), %esi
	movl	%esi, -4408(%ebp)
	movl	$16, -4412(%ebp)
	cld
	movl	-4404(%ebp), %esi
	movl	-4408(%ebp), %edi
	movl	-4412(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1014
	.loc 2 2094 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2095 0
	movl	$402, -16(%ebp)
	jmp	.L219
.L1014:
	.loc 2 2098 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4416(%ebp)
	leal	.LC378@GOTOFF(%ebx), %esi
	movl	%esi, -4420(%ebp)
	movl	$18, -4424(%ebp)
	cld
	movl	-4416(%ebp), %esi
	movl	-4420(%ebp), %edi
	movl	-4424(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1016
	.loc 2 2099 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2100 0
	movl	$403, -16(%ebp)
	jmp	.L219
.L1016:
	.loc 2 2103 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4428(%ebp)
	leal	.LC379@GOTOFF(%ebx), %esi
	movl	%esi, -4432(%ebp)
	movl	$19, -4436(%ebp)
	cld
	movl	-4428(%ebp), %esi
	movl	-4432(%ebp), %edi
	movl	-4436(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1018
	.loc 2 2104 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2105 0
	movl	$404, -16(%ebp)
	jmp	.L219
.L1018:
	.loc 2 2108 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4440(%ebp)
	leal	.LC380@GOTOFF(%ebx), %esi
	movl	%esi, -4444(%ebp)
	movl	$16, -4448(%ebp)
	cld
	movl	-4440(%ebp), %esi
	movl	-4444(%ebp), %edi
	movl	-4448(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1020
	.loc 2 2109 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2110 0
	movl	$405, -16(%ebp)
	jmp	.L219
.L1020:
	.loc 2 2113 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2114 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4452(%ebp)
	leal	.LC381@GOTOFF(%ebx), %esi
	movl	%esi, -4456(%ebp)
	movl	$7, -4460(%ebp)
	cld
	movl	-4452(%ebp), %esi
	movl	-4456(%ebp), %edi
	movl	-4460(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1023
	.loc 2 2115 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2116 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2117 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2118 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$406, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1023:
	.loc 2 2121 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4464(%ebp)
	leal	.LC382@GOTOFF(%ebx), %esi
	movl	%esi, -4468(%ebp)
	movl	$7, -4472(%ebp)
	cld
	movl	-4464(%ebp), %esi
	movl	-4468(%ebp), %edi
	movl	-4472(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1025
	.loc 2 2122 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2123 0
	movl	$407, -16(%ebp)
	jmp	.L219
.L1025:
	.loc 2 2126 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4476(%ebp)
	leal	.LC383@GOTOFF(%ebx), %esi
	movl	%esi, -4480(%ebp)
	movl	$12, -4484(%ebp)
	cld
	movl	-4476(%ebp), %esi
	movl	-4480(%ebp), %edi
	movl	-4484(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1027
	.loc 2 2127 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2128 0
	movl	$408, -16(%ebp)
	jmp	.L219
.L1027:
	.loc 2 2131 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4488(%ebp)
	leal	.LC384@GOTOFF(%ebx), %esi
	movl	%esi, -4492(%ebp)
	movl	$21, -4496(%ebp)
	cld
	movl	-4488(%ebp), %esi
	movl	-4492(%ebp), %edi
	movl	-4496(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1029
	.loc 2 2132 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2133 0
	movl	$409, -16(%ebp)
	jmp	.L219
.L1029:
	.loc 2 2136 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4500(%ebp)
	leal	.LC385@GOTOFF(%ebx), %esi
	movl	%esi, -4504(%ebp)
	movl	$15, -4508(%ebp)
	cld
	movl	-4500(%ebp), %esi
	movl	-4504(%ebp), %edi
	movl	-4508(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1031
	.loc 2 2137 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2138 0
	movl	$410, -16(%ebp)
	jmp	.L219
.L1031:
	.loc 2 2141 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2142 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4512(%ebp)
	leal	.LC386@GOTOFF(%ebx), %esi
	movl	%esi, -4516(%ebp)
	movl	$12, -4520(%ebp)
	cld
	movl	-4512(%ebp), %esi
	movl	-4516(%ebp), %edi
	movl	-4520(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1034
	.loc 2 2143 0
	movl	$12, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2144 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2145 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2146 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$411, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1034:
	.loc 2 2149 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2150 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4524(%ebp)
	leal	.LC387@GOTOFF(%ebx), %esi
	movl	%esi, -4528(%ebp)
	movl	$13, -4532(%ebp)
	cld
	movl	-4524(%ebp), %esi
	movl	-4528(%ebp), %edi
	movl	-4532(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1037
	.loc 2 2151 0
	movl	$13, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2152 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2153 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2154 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$412, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1037:
	.loc 2 2157 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2158 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4536(%ebp)
	leal	.LC8@GOTOFF(%ebx), %esi
	movl	%esi, -4540(%ebp)
	movl	$6, -4544(%ebp)
	cld
	movl	-4536(%ebp), %esi
	movl	-4540(%ebp), %edi
	movl	-4544(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1040
	.loc 2 2159 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2160 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2161 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2162 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$413, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1040:
	.loc 2 2165 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4548(%ebp)
	leal	.LC388@GOTOFF(%ebx), %esi
	movl	%esi, -4552(%ebp)
	movl	$10, -4556(%ebp)
	cld
	movl	-4548(%ebp), %esi
	movl	-4552(%ebp), %edi
	movl	-4556(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1042
	.loc 2 2166 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2167 0
	movl	$414, -16(%ebp)
	jmp	.L219
.L1042:
	.loc 2 2170 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4560(%ebp)
	leal	.LC389@GOTOFF(%ebx), %esi
	movl	%esi, -4564(%ebp)
	movl	$23, -4568(%ebp)
	cld
	movl	-4560(%ebp), %esi
	movl	-4564(%ebp), %edi
	movl	-4568(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1044
	.loc 2 2171 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2172 0
	movl	$415, -16(%ebp)
	jmp	.L219
.L1044:
	.loc 2 2175 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4572(%ebp)
	leal	.LC7@GOTOFF(%ebx), %esi
	movl	%esi, -4576(%ebp)
	movl	$7, -4580(%ebp)
	cld
	movl	-4572(%ebp), %esi
	movl	-4576(%ebp), %edi
	movl	-4580(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1046
	.loc 2 2176 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2177 0
	movl	$416, -16(%ebp)
	jmp	.L219
.L1046:
	.loc 2 2180 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2181 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4584(%ebp)
	leal	.LC390@GOTOFF(%ebx), %esi
	movl	%esi, -4588(%ebp)
	movl	$6, -4592(%ebp)
	cld
	movl	-4584(%ebp), %esi
	movl	-4588(%ebp), %edi
	movl	-4592(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1049
	.loc 2 2182 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2183 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2184 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2185 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$417, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1049:
	.loc 2 2188 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2189 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4596(%ebp)
	leal	.LC391@GOTOFF(%ebx), %esi
	movl	%esi, -4600(%ebp)
	movl	$8, -4604(%ebp)
	cld
	movl	-4596(%ebp), %esi
	movl	-4600(%ebp), %edi
	movl	-4604(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1052
	.loc 2 2190 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2191 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1054
	.loc 2 2192 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2193 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2194 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$418, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1054:
	.loc 2 2196 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1052
	.loc 2 2197 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1057
	.loc 2 2198 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1057:
	.loc 2 2200 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2201 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2202 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$418, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1052:
	.loc 2 2206 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2207 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4608(%ebp)
	leal	.LC392@GOTOFF(%ebx), %esi
	movl	%esi, -4612(%ebp)
	movl	$9, -4616(%ebp)
	cld
	movl	-4608(%ebp), %esi
	movl	-4612(%ebp), %edi
	movl	-4616(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1060
	.loc 2 2208 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2209 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2210 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2211 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$419, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1060:
	.loc 2 2214 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2215 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4620(%ebp)
	leal	.LC393@GOTOFF(%ebx), %esi
	movl	%esi, -4624(%ebp)
	movl	$10, -4628(%ebp)
	cld
	movl	-4620(%ebp), %esi
	movl	-4624(%ebp), %edi
	movl	-4628(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1063
	.loc 2 2216 0
	movl	$10, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2217 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2218 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2219 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$420, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1063:
	.loc 2 2222 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2223 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4632(%ebp)
	leal	.LC394@GOTOFF(%ebx), %esi
	movl	%esi, -4636(%ebp)
	movl	$7, -4640(%ebp)
	cld
	movl	-4632(%ebp), %esi
	movl	-4636(%ebp), %edi
	movl	-4640(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1066
	.loc 2 2224 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2225 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2226 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2227 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$421, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1066:
	.loc 2 2230 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2231 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4644(%ebp)
	leal	.LC395@GOTOFF(%ebx), %esi
	movl	%esi, -4648(%ebp)
	movl	$10, -4652(%ebp)
	cld
	movl	-4644(%ebp), %esi
	movl	-4648(%ebp), %edi
	movl	-4652(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1069
	.loc 2 2232 0
	movl	$10, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2233 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2234 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2235 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$422, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1069:
	.loc 2 2238 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2239 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4656(%ebp)
	leal	.LC396@GOTOFF(%ebx), %esi
	movl	%esi, -4660(%ebp)
	movl	$8, -4664(%ebp)
	cld
	movl	-4656(%ebp), %esi
	movl	-4660(%ebp), %edi
	movl	-4664(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1072
	.loc 2 2240 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2241 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1074
	.loc 2 2242 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2243 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2244 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$423, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1074:
	.loc 2 2246 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1072
	.loc 2 2247 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1077
	.loc 2 2248 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1077:
	.loc 2 2250 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2251 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2252 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$423, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1072:
	.loc 2 2256 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2257 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4668(%ebp)
	leal	.LC397@GOTOFF(%ebx), %esi
	movl	%esi, -4672(%ebp)
	movl	$9, -4676(%ebp)
	cld
	movl	-4668(%ebp), %esi
	movl	-4672(%ebp), %edi
	movl	-4676(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1080
	.loc 2 2258 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2259 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2260 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2261 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$419, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1080:
	.loc 2 2264 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2265 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4680(%ebp)
	leal	.LC398@GOTOFF(%ebx), %esi
	movl	%esi, -4684(%ebp)
	movl	$10, -4688(%ebp)
	cld
	movl	-4680(%ebp), %esi
	movl	-4684(%ebp), %edi
	movl	-4688(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1083
	.loc 2 2266 0
	movl	$10, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2267 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2268 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2269 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$420, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1083:
	.loc 2 2272 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2273 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4692(%ebp)
	leal	.LC399@GOTOFF(%ebx), %esi
	movl	%esi, -4696(%ebp)
	movl	$7, -4700(%ebp)
	cld
	movl	-4692(%ebp), %esi
	movl	-4696(%ebp), %edi
	movl	-4700(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1086
	.loc 2 2274 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2275 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2276 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2277 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$421, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1086:
	.loc 2 2280 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2281 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4704(%ebp)
	leal	.LC400@GOTOFF(%ebx), %esi
	movl	%esi, -4708(%ebp)
	movl	$10, -4712(%ebp)
	cld
	movl	-4704(%ebp), %esi
	movl	-4708(%ebp), %edi
	movl	-4712(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1089
	.loc 2 2282 0
	movl	$10, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2283 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2284 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2285 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$422, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1089:
	.loc 2 2288 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2289 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4716(%ebp)
	leal	.LC401@GOTOFF(%ebx), %esi
	movl	%esi, -4720(%ebp)
	movl	$3, -4724(%ebp)
	cld
	movl	-4716(%ebp), %esi
	movl	-4720(%ebp), %edi
	movl	-4724(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1092
	.loc 2 2290 0
	movl	$3, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2291 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2292 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2293 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$428, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1092:
	.loc 2 2296 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4728(%ebp)
	leal	.LC402@GOTOFF(%ebx), %esi
	movl	%esi, -4732(%ebp)
	movl	$6, -4736(%ebp)
	cld
	movl	-4728(%ebp), %esi
	movl	-4732(%ebp), %edi
	movl	-4736(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1094
	.loc 2 2297 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2298 0
	movl	$429, -16(%ebp)
	jmp	.L219
.L1094:
	.loc 2 2301 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4740(%ebp)
	leal	.LC403@GOTOFF(%ebx), %esi
	movl	%esi, -4744(%ebp)
	movl	$26, -4748(%ebp)
	cld
	movl	-4740(%ebp), %esi
	movl	-4744(%ebp), %edi
	movl	-4748(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1096
	.loc 2 2302 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2303 0
	movl	$430, -16(%ebp)
	jmp	.L219
.L1096:
	.loc 2 2306 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4752(%ebp)
	leal	.LC404@GOTOFF(%ebx), %esi
	movl	%esi, -4756(%ebp)
	movl	$19, -4760(%ebp)
	cld
	movl	-4752(%ebp), %esi
	movl	-4756(%ebp), %edi
	movl	-4760(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1098
	.loc 2 2307 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2308 0
	movl	$431, -16(%ebp)
	jmp	.L219
.L1098:
	.loc 2 2311 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4764(%ebp)
	leal	.LC405@GOTOFF(%ebx), %esi
	movl	%esi, -4768(%ebp)
	movl	$17, -4772(%ebp)
	cld
	movl	-4764(%ebp), %esi
	movl	-4768(%ebp), %edi
	movl	-4772(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1100
	.loc 2 2312 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2313 0
	movl	$432, -16(%ebp)
	jmp	.L219
.L1100:
	.loc 2 2316 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2317 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4776(%ebp)
	leal	.LC406@GOTOFF(%ebx), %esi
	movl	%esi, -4780(%ebp)
	movl	$14, -4784(%ebp)
	cld
	movl	-4776(%ebp), %esi
	movl	-4780(%ebp), %edi
	movl	-4784(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1103
	.loc 2 2318 0
	movl	$14, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2319 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1103
	.loc 2 2320 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2321 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2322 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2323 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$433, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1103:
	.loc 2 2327 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4788(%ebp)
	leal	.LC407@GOTOFF(%ebx), %esi
	movl	%esi, -4792(%ebp)
	movl	$6, -4796(%ebp)
	cld
	movl	-4788(%ebp), %esi
	movl	-4792(%ebp), %edi
	movl	-4796(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1106
	.loc 2 2328 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2329 0
	movl	$434, -16(%ebp)
	jmp	.L219
.L1106:
	.loc 2 2332 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4800(%ebp)
	leal	.LC408@GOTOFF(%ebx), %esi
	movl	%esi, -4804(%ebp)
	movl	$6, -4808(%ebp)
	cld
	movl	-4800(%ebp), %esi
	movl	-4804(%ebp), %edi
	movl	-4808(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 2333 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2334 0
	movl	$435, -16(%ebp)
	jmp	.L219
.L194:
	.loc 2 2339 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4812(%ebp)
	leal	.LC409@GOTOFF(%ebx), %esi
	movl	%esi, -4816(%ebp)
	movl	$15, -4820(%ebp)
	cld
	movl	-4812(%ebp), %esi
	movl	-4816(%ebp), %edi
	movl	-4820(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1110
	.loc 2 2340 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2341 0
	movl	$436, -16(%ebp)
	jmp	.L219
.L1110:
	.loc 2 2344 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4824(%ebp)
	leal	.LC410@GOTOFF(%ebx), %esi
	movl	%esi, -4828(%ebp)
	movl	$15, -4832(%ebp)
	cld
	movl	-4824(%ebp), %esi
	movl	-4828(%ebp), %edi
	movl	-4832(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1112
	.loc 2 2345 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2346 0
	movl	$436, -16(%ebp)
	jmp	.L219
.L1112:
	.loc 2 2349 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4836(%ebp)
	leal	.LC411@GOTOFF(%ebx), %esi
	movl	%esi, -4840(%ebp)
	movl	$16, -4844(%ebp)
	cld
	movl	-4836(%ebp), %esi
	movl	-4840(%ebp), %edi
	movl	-4844(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1114
	.loc 2 2350 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2351 0
	movl	$438, -16(%ebp)
	jmp	.L219
.L1114:
	.loc 2 2354 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_e_option
	movl	%eax, -16(%ebp)
	jmp	.L219
.L193:
	.loc 2 2358 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4848(%ebp)
	leal	.LC412@GOTOFF(%ebx), %esi
	movl	%esi, -4852(%ebp)
	movl	$4, -4856(%ebp)
	cld
	movl	-4848(%ebp), %esi
	movl	-4852(%ebp), %edi
	movl	-4856(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1116
	.loc 2 2359 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2360 0
	movl	$440, -16(%ebp)
	jmp	.L219
.L1116:
	.loc 2 2363 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4860(%ebp)
	leal	.LC413@GOTOFF(%ebx), %esi
	movl	%esi, -4864(%ebp)
	movl	$4, -4868(%ebp)
	cld
	movl	-4860(%ebp), %esi
	movl	-4864(%ebp), %edi
	movl	-4868(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1118
	.loc 2 2364 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2365 0
	movl	$441, -16(%ebp)
	jmp	.L219
.L1118:
	.loc 2 2368 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4872(%ebp)
	leal	.LC414@GOTOFF(%ebx), %esi
	movl	%esi, -4876(%ebp)
	movl	$4, -4880(%ebp)
	cld
	movl	-4872(%ebp), %esi
	movl	-4876(%ebp), %edi
	movl	-4880(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1120
	.loc 2 2369 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2370 0
	movl	$442, -16(%ebp)
	jmp	.L219
.L1120:
	.loc 2 2373 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4884(%ebp)
	leal	.LC415@GOTOFF(%ebx), %esi
	movl	%esi, -4888(%ebp)
	movl	$4, -4892(%ebp)
	cld
	movl	-4884(%ebp), %esi
	movl	-4888(%ebp), %edi
	movl	-4892(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1122
	.loc 2 2374 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2375 0
	movl	$443, -16(%ebp)
	jmp	.L219
.L1122:
	.loc 2 2378 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4896(%ebp)
	leal	.LC416@GOTOFF(%ebx), %esi
	movl	%esi, -4900(%ebp)
	movl	$13, -4904(%ebp)
	cld
	movl	-4896(%ebp), %esi
	movl	-4900(%ebp), %edi
	movl	-4904(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1124
	.loc 2 2379 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2380 0
	movl	$444, -16(%ebp)
	jmp	.L219
.L1124:
	.loc 2 2383 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4908(%ebp)
	leal	.LC417@GOTOFF(%ebx), %esi
	movl	%esi, -4912(%ebp)
	movl	$11, -4916(%ebp)
	cld
	movl	-4908(%ebp), %esi
	movl	-4912(%ebp), %edi
	movl	-4916(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1126
	.loc 2 2384 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2385 0
	movl	$445, -16(%ebp)
	jmp	.L219
.L1126:
	.loc 2 2388 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4920(%ebp)
	leal	.LC418@GOTOFF(%ebx), %esi
	movl	%esi, -4924(%ebp)
	movl	$13, -4928(%ebp)
	cld
	movl	-4920(%ebp), %esi
	movl	-4924(%ebp), %edi
	movl	-4928(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1128
	.loc 2 2389 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2390 0
	movl	$446, -16(%ebp)
	jmp	.L219
.L1128:
	.loc 2 2393 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4932(%ebp)
	leal	.LC419@GOTOFF(%ebx), %esi
	movl	%esi, -4936(%ebp)
	movl	$12, -4940(%ebp)
	cld
	movl	-4932(%ebp), %esi
	movl	-4936(%ebp), %edi
	movl	-4940(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1130
	.loc 2 2394 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2395 0
	movl	$447, -16(%ebp)
	jmp	.L219
.L1130:
	.loc 2 2398 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4944(%ebp)
	leal	.LC420@GOTOFF(%ebx), %esi
	movl	%esi, -4948(%ebp)
	movl	$7, -4952(%ebp)
	cld
	movl	-4944(%ebp), %esi
	movl	-4948(%ebp), %edi
	movl	-4952(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1132
	.loc 2 2399 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2400 0
	movl	$448, -16(%ebp)
	jmp	.L219
.L1132:
	.loc 2 2403 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4956(%ebp)
	leal	.LC421@GOTOFF(%ebx), %esi
	movl	%esi, -4960(%ebp)
	movl	$4, -4964(%ebp)
	cld
	movl	-4956(%ebp), %esi
	movl	-4960(%ebp), %edi
	movl	-4964(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1134
	.loc 2 2404 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2405 0
	movl	$449, -16(%ebp)
	jmp	.L219
.L1134:
	.loc 2 2408 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4968(%ebp)
	leal	.LC422@GOTOFF(%ebx), %esi
	movl	%esi, -4972(%ebp)
	movl	$4, -4976(%ebp)
	cld
	movl	-4968(%ebp), %esi
	movl	-4972(%ebp), %edi
	movl	-4976(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1136
	.loc 2 2409 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2410 0
	movl	$450, -16(%ebp)
	jmp	.L219
.L1136:
	.loc 2 2413 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4980(%ebp)
	leal	.LC423@GOTOFF(%ebx), %esi
	movl	%esi, -4984(%ebp)
	movl	$4, -4988(%ebp)
	cld
	movl	-4980(%ebp), %esi
	movl	-4984(%ebp), %edi
	movl	-4988(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1138
	.loc 2 2414 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2415 0
	movl	$451, -16(%ebp)
	jmp	.L219
.L1138:
	.loc 2 2418 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4992(%ebp)
	leal	.LC424@GOTOFF(%ebx), %esi
	movl	%esi, -4996(%ebp)
	movl	$4, -5000(%ebp)
	cld
	movl	-4992(%ebp), %esi
	movl	-4996(%ebp), %edi
	movl	-5000(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1140
	.loc 2 2419 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2420 0
	movl	$452, -16(%ebp)
	jmp	.L219
.L1140:
	.loc 2 2423 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5004(%ebp)
	leal	.LC425@GOTOFF(%ebx), %esi
	movl	%esi, -5008(%ebp)
	movl	$4, -5012(%ebp)
	cld
	movl	-5004(%ebp), %esi
	movl	-5008(%ebp), %edi
	movl	-5012(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1142
	.loc 2 2424 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2425 0
	movl	$453, -16(%ebp)
	jmp	.L219
.L1142:
	.loc 2 2428 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5016(%ebp)
	leal	.LC426@GOTOFF(%ebx), %esi
	movl	%esi, -5020(%ebp)
	movl	$4, -5024(%ebp)
	cld
	movl	-5016(%ebp), %esi
	movl	-5020(%ebp), %edi
	movl	-5024(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1144
	.loc 2 2429 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2430 0
	movl	$454, -16(%ebp)
	jmp	.L219
.L1144:
	.loc 2 2433 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5028(%ebp)
	leal	.LC427@GOTOFF(%ebx), %esi
	movl	%esi, -5032(%ebp)
	movl	$4, -5036(%ebp)
	cld
	movl	-5028(%ebp), %esi
	movl	-5032(%ebp), %edi
	movl	-5036(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1146
	.loc 2 2434 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2435 0
	movl	$455, -16(%ebp)
	jmp	.L219
.L1146:
	.loc 2 2438 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5040(%ebp)
	leal	.LC428@GOTOFF(%ebx), %esi
	movl	%esi, -5044(%ebp)
	movl	$4, -5048(%ebp)
	cld
	movl	-5040(%ebp), %esi
	movl	-5044(%ebp), %edi
	movl	-5048(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1148
	.loc 2 2439 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2440 0
	movl	$456, -16(%ebp)
	jmp	.L219
.L1148:
	.loc 2 2443 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5052(%ebp)
	leal	.LC429@GOTOFF(%ebx), %esi
	movl	%esi, -5056(%ebp)
	movl	$4, -5060(%ebp)
	cld
	movl	-5052(%ebp), %esi
	movl	-5056(%ebp), %edi
	movl	-5060(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1150
	.loc 2 2444 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2445 0
	movl	$457, -16(%ebp)
	jmp	.L219
.L1150:
	.loc 2 2448 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5064(%ebp)
	leal	.LC430@GOTOFF(%ebx), %esi
	movl	%esi, -5068(%ebp)
	movl	$4, -5072(%ebp)
	cld
	movl	-5064(%ebp), %esi
	movl	-5068(%ebp), %edi
	movl	-5072(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1152
	.loc 2 2449 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2450 0
	movl	$458, -16(%ebp)
	jmp	.L219
.L1152:
	.loc 2 2453 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5076(%ebp)
	leal	.LC431@GOTOFF(%ebx), %esi
	movl	%esi, -5080(%ebp)
	movl	$4, -5084(%ebp)
	cld
	movl	-5076(%ebp), %esi
	movl	-5080(%ebp), %edi
	movl	-5084(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1154
	.loc 2 2454 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2455 0
	movl	$459, -16(%ebp)
	jmp	.L219
.L1154:
	.loc 2 2458 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5088(%ebp)
	leal	.LC432@GOTOFF(%ebx), %esi
	movl	%esi, -5092(%ebp)
	movl	$4, -5096(%ebp)
	cld
	movl	-5088(%ebp), %esi
	movl	-5092(%ebp), %edi
	movl	-5096(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1156
	.loc 2 2459 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2460 0
	movl	$460, -16(%ebp)
	jmp	.L219
.L1156:
	.loc 2 2463 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5100(%ebp)
	leal	.LC433@GOTOFF(%ebx), %esi
	movl	%esi, -5104(%ebp)
	movl	$4, -5108(%ebp)
	cld
	movl	-5100(%ebp), %esi
	movl	-5104(%ebp), %edi
	movl	-5108(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1158
	.loc 2 2464 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2465 0
	movl	$461, -16(%ebp)
	jmp	.L219
.L1158:
	.loc 2 2468 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5112(%ebp)
	leal	.LC434@GOTOFF(%ebx), %esi
	movl	%esi, -5116(%ebp)
	movl	$10, -5120(%ebp)
	cld
	movl	-5112(%ebp), %esi
	movl	-5116(%ebp), %edi
	movl	-5120(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1160
	.loc 2 2469 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2470 0
	movl	$462, -16(%ebp)
	jmp	.L219
.L1160:
	.loc 2 2473 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5124(%ebp)
	leal	.LC435@GOTOFF(%ebx), %esi
	movl	%esi, -5128(%ebp)
	movl	$11, -5132(%ebp)
	cld
	movl	-5124(%ebp), %esi
	movl	-5128(%ebp), %edi
	movl	-5132(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1162
	.loc 2 2474 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2475 0
	movl	$463, -16(%ebp)
	jmp	.L219
.L1162:
	.loc 2 2478 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5136(%ebp)
	leal	.LC436@GOTOFF(%ebx), %esi
	movl	%esi, -5140(%ebp)
	movl	$4, -5144(%ebp)
	cld
	movl	-5136(%ebp), %esi
	movl	-5140(%ebp), %edi
	movl	-5144(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1164
	.loc 2 2479 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2480 0
	movl	$464, -16(%ebp)
	jmp	.L219
.L1164:
	.loc 2 2483 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5148(%ebp)
	leal	.LC437@GOTOFF(%ebx), %esi
	movl	%esi, -5152(%ebp)
	movl	$4, -5156(%ebp)
	cld
	movl	-5148(%ebp), %esi
	movl	-5152(%ebp), %edi
	movl	-5156(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1166
	.loc 2 2484 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2485 0
	movl	$465, -16(%ebp)
	jmp	.L219
.L1166:
	.loc 2 2488 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5160(%ebp)
	leal	.LC438@GOTOFF(%ebx), %esi
	movl	%esi, -5164(%ebp)
	movl	$4, -5168(%ebp)
	cld
	movl	-5160(%ebp), %esi
	movl	-5164(%ebp), %edi
	movl	-5168(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1168
	.loc 2 2489 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2490 0
	movl	$466, -16(%ebp)
	jmp	.L219
.L1168:
	.loc 2 2493 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5172(%ebp)
	leal	.LC439@GOTOFF(%ebx), %esi
	movl	%esi, -5176(%ebp)
	movl	$4, -5180(%ebp)
	cld
	movl	-5172(%ebp), %esi
	movl	-5176(%ebp), %edi
	movl	-5180(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1170
	.loc 2 2494 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2495 0
	movl	$467, -16(%ebp)
	jmp	.L219
.L1170:
	.loc 2 2498 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5184(%ebp)
	leal	.LC440@GOTOFF(%ebx), %esi
	movl	%esi, -5188(%ebp)
	movl	$4, -5192(%ebp)
	cld
	movl	-5184(%ebp), %esi
	movl	-5188(%ebp), %edi
	movl	-5192(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1172
	.loc 2 2499 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2500 0
	movl	$468, -16(%ebp)
	jmp	.L219
.L1172:
	.loc 2 2503 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5196(%ebp)
	leal	.LC441@GOTOFF(%ebx), %esi
	movl	%esi, -5200(%ebp)
	movl	$9, -5204(%ebp)
	cld
	movl	-5196(%ebp), %esi
	movl	-5200(%ebp), %edi
	movl	-5204(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1174
	.loc 2 2504 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2505 0
	movl	$469, -16(%ebp)
	jmp	.L219
.L1174:
	.loc 2 2508 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5208(%ebp)
	leal	.LC442@GOTOFF(%ebx), %esi
	movl	%esi, -5212(%ebp)
	movl	$4, -5216(%ebp)
	cld
	movl	-5208(%ebp), %esi
	movl	-5212(%ebp), %edi
	movl	-5216(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1176
	.loc 2 2509 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2510 0
	movl	$470, -16(%ebp)
	jmp	.L219
.L1176:
	.loc 2 2513 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5220(%ebp)
	leal	.LC443@GOTOFF(%ebx), %esi
	movl	%esi, -5224(%ebp)
	movl	$4, -5228(%ebp)
	cld
	movl	-5220(%ebp), %esi
	movl	-5224(%ebp), %edi
	movl	-5228(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1178
	.loc 2 2514 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2515 0
	movl	$471, -16(%ebp)
	jmp	.L219
.L1178:
	.loc 2 2518 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5232(%ebp)
	leal	.LC444@GOTOFF(%ebx), %esi
	movl	%esi, -5236(%ebp)
	movl	$4, -5240(%ebp)
	cld
	movl	-5232(%ebp), %esi
	movl	-5236(%ebp), %edi
	movl	-5240(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1180
	.loc 2 2519 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2520 0
	movl	$472, -16(%ebp)
	jmp	.L219
.L1180:
	.loc 2 2523 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5244(%ebp)
	leal	.LC445@GOTOFF(%ebx), %esi
	movl	%esi, -5248(%ebp)
	movl	$4, -5252(%ebp)
	cld
	movl	-5244(%ebp), %esi
	movl	-5248(%ebp), %edi
	movl	-5252(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1182
	.loc 2 2524 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2525 0
	movl	$473, -16(%ebp)
	jmp	.L219
.L1182:
	.loc 2 2528 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5256(%ebp)
	leal	.LC446@GOTOFF(%ebx), %esi
	movl	%esi, -5260(%ebp)
	movl	$4, -5264(%ebp)
	cld
	movl	-5256(%ebp), %esi
	movl	-5260(%ebp), %edi
	movl	-5264(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1184
	.loc 2 2529 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2530 0
	movl	$474, -16(%ebp)
	jmp	.L219
.L1184:
	.loc 2 2533 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5268(%ebp)
	leal	.LC447@GOTOFF(%ebx), %esi
	movl	%esi, -5272(%ebp)
	movl	$4, -5276(%ebp)
	cld
	movl	-5268(%ebp), %esi
	movl	-5272(%ebp), %edi
	movl	-5276(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1186
	.loc 2 2534 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2535 0
	movl	$475, -16(%ebp)
	jmp	.L219
.L1186:
	.loc 2 2538 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5280(%ebp)
	leal	.LC448@GOTOFF(%ebx), %esi
	movl	%esi, -5284(%ebp)
	movl	$4, -5288(%ebp)
	cld
	movl	-5280(%ebp), %esi
	movl	-5284(%ebp), %edi
	movl	-5288(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1188
	.loc 2 2539 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2540 0
	movl	$476, -16(%ebp)
	jmp	.L219
.L1188:
	.loc 2 2543 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5292(%ebp)
	leal	.LC449@GOTOFF(%ebx), %esi
	movl	%esi, -5296(%ebp)
	movl	$4, -5300(%ebp)
	cld
	movl	-5292(%ebp), %esi
	movl	-5296(%ebp), %edi
	movl	-5300(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1190
	.loc 2 2544 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2545 0
	movl	$477, -16(%ebp)
	jmp	.L219
.L1190:
	.loc 2 2548 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5304(%ebp)
	leal	.LC450@GOTOFF(%ebx), %esi
	movl	%esi, -5308(%ebp)
	movl	$4, -5312(%ebp)
	cld
	movl	-5304(%ebp), %esi
	movl	-5308(%ebp), %edi
	movl	-5312(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1192
	.loc 2 2549 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2550 0
	movl	$478, -16(%ebp)
	jmp	.L219
.L1192:
	.loc 2 2553 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5316(%ebp)
	leal	.LC451@GOTOFF(%ebx), %esi
	movl	%esi, -5320(%ebp)
	movl	$4, -5324(%ebp)
	cld
	movl	-5316(%ebp), %esi
	movl	-5320(%ebp), %edi
	movl	-5324(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1194
	.loc 2 2554 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2555 0
	movl	$479, -16(%ebp)
	jmp	.L219
.L1194:
	.loc 2 2558 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5328(%ebp)
	leal	.LC452@GOTOFF(%ebx), %esi
	movl	%esi, -5332(%ebp)
	movl	$4, -5336(%ebp)
	cld
	movl	-5328(%ebp), %esi
	movl	-5332(%ebp), %edi
	movl	-5336(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1196
	.loc 2 2559 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2560 0
	movl	$480, -16(%ebp)
	jmp	.L219
.L1196:
	.loc 2 2563 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5340(%ebp)
	leal	.LC453@GOTOFF(%ebx), %esi
	movl	%esi, -5344(%ebp)
	movl	$4, -5348(%ebp)
	cld
	movl	-5340(%ebp), %esi
	movl	-5344(%ebp), %edi
	movl	-5348(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1198
	.loc 2 2564 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2565 0
	movl	$481, -16(%ebp)
	jmp	.L219
.L1198:
	.loc 2 2568 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5352(%ebp)
	leal	.LC454@GOTOFF(%ebx), %esi
	movl	%esi, -5356(%ebp)
	movl	$4, -5360(%ebp)
	cld
	movl	-5352(%ebp), %esi
	movl	-5356(%ebp), %edi
	movl	-5360(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1200
	.loc 2 2569 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2570 0
	movl	$482, -16(%ebp)
	jmp	.L219
.L1200:
	.loc 2 2573 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5364(%ebp)
	leal	.LC455@GOTOFF(%ebx), %esi
	movl	%esi, -5368(%ebp)
	movl	$4, -5372(%ebp)
	cld
	movl	-5364(%ebp), %esi
	movl	-5368(%ebp), %edi
	movl	-5372(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1202
	.loc 2 2574 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2575 0
	movl	$483, -16(%ebp)
	jmp	.L219
.L1202:
	.loc 2 2578 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5376(%ebp)
	leal	.LC456@GOTOFF(%ebx), %esi
	movl	%esi, -5380(%ebp)
	movl	$4, -5384(%ebp)
	cld
	movl	-5376(%ebp), %esi
	movl	-5380(%ebp), %edi
	movl	-5384(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1204
	.loc 2 2579 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2580 0
	movl	$484, -16(%ebp)
	jmp	.L219
.L1204:
	.loc 2 2583 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5388(%ebp)
	leal	.LC457@GOTOFF(%ebx), %esi
	movl	%esi, -5392(%ebp)
	movl	$4, -5396(%ebp)
	cld
	movl	-5388(%ebp), %esi
	movl	-5392(%ebp), %edi
	movl	-5396(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1206
	.loc 2 2584 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2585 0
	movl	$485, -16(%ebp)
	jmp	.L219
.L1206:
	.loc 2 2588 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5400(%ebp)
	leal	.LC458@GOTOFF(%ebx), %esi
	movl	%esi, -5404(%ebp)
	movl	$9, -5408(%ebp)
	cld
	movl	-5400(%ebp), %esi
	movl	-5404(%ebp), %edi
	movl	-5408(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 2589 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2590 0
	movl	$469, -16(%ebp)
	jmp	.L219
.L192:
	.loc 2 2595 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5412(%ebp)
	leal	.LC459@GOTOFF(%ebx), %esi
	movl	%esi, -5416(%ebp)
	movl	$17, -5420(%ebp)
	cld
	movl	-5412(%ebp), %esi
	movl	-5416(%ebp), %edi
	movl	-5420(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1210
	.loc 2 2596 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2597 0
	movl	$487, -16(%ebp)
	jmp	.L219
.L1210:
	.loc 2 2600 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5424(%ebp)
	leal	.LC460@GOTOFF(%ebx), %esi
	movl	%esi, -5428(%ebp)
	movl	$5, -5432(%ebp)
	cld
	movl	-5424(%ebp), %esi
	movl	-5428(%ebp), %edi
	movl	-5432(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1212
	.loc 2 2601 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2602 0
	movl	$488, -16(%ebp)
	jmp	.L219
.L1212:
	.loc 2 2605 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5436(%ebp)
	leal	.LC461@GOTOFF(%ebx), %esi
	movl	%esi, -5440(%ebp)
	movl	$6, -5444(%ebp)
	cld
	movl	-5436(%ebp), %esi
	movl	-5440(%ebp), %edi
	movl	-5444(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1214
	.loc 2 2606 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2607 0
	movl	$489, -16(%ebp)
	jmp	.L219
.L1214:
	.loc 2 2610 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5448(%ebp)
	leal	.LC462@GOTOFF(%ebx), %esi
	movl	%esi, -5452(%ebp)
	movl	$11, -5456(%ebp)
	cld
	movl	-5448(%ebp), %esi
	movl	-5452(%ebp), %edi
	movl	-5456(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1216
	.loc 2 2611 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2612 0
	movl	$490, -16(%ebp)
	jmp	.L219
.L1216:
	.loc 2 2615 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2616 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5460(%ebp)
	leal	.LC463@GOTOFF(%ebx), %esi
	movl	%esi, -5464(%ebp)
	movl	$8, -5468(%ebp)
	cld
	movl	-5460(%ebp), %esi
	movl	-5464(%ebp), %edi
	movl	-5468(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1219
	.loc 2 2617 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2618 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2619 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2620 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$491, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1219:
	.loc 2 2623 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5472(%ebp)
	leal	.LC464@GOTOFF(%ebx), %esi
	movl	%esi, -5476(%ebp)
	movl	$12, -5480(%ebp)
	cld
	movl	-5472(%ebp), %esi
	movl	-5476(%ebp), %edi
	movl	-5480(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1221
	.loc 2 2624 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2625 0
	movl	$492, -16(%ebp)
	jmp	.L219
.L1221:
	.loc 2 2628 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5484(%ebp)
	leal	.LC465@GOTOFF(%ebx), %esi
	movl	%esi, -5488(%ebp)
	movl	$7, -5492(%ebp)
	cld
	movl	-5484(%ebp), %esi
	movl	-5488(%ebp), %edi
	movl	-5492(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1223
	.loc 2 2629 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2630 0
	movl	$493, -16(%ebp)
	jmp	.L219
.L1223:
	.loc 2 2633 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5496(%ebp)
	leal	.LC466@GOTOFF(%ebx), %esi
	movl	%esi, -5500(%ebp)
	movl	$7, -5504(%ebp)
	cld
	movl	-5496(%ebp), %esi
	movl	-5500(%ebp), %edi
	movl	-5504(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1225
	.loc 2 2634 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2635 0
	movl	$494, -16(%ebp)
	jmp	.L219
.L1225:
	.loc 2 2638 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5508(%ebp)
	leal	.LC467@GOTOFF(%ebx), %esi
	movl	%esi, -5512(%ebp)
	movl	$8, -5516(%ebp)
	cld
	movl	-5508(%ebp), %esi
	movl	-5512(%ebp), %edi
	movl	-5516(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1227
	.loc 2 2639 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2640 0
	movl	$495, -16(%ebp)
	jmp	.L219
.L1227:
	.loc 2 2643 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5520(%ebp)
	leal	.LC468@GOTOFF(%ebx), %esi
	movl	%esi, -5524(%ebp)
	movl	$7, -5528(%ebp)
	cld
	movl	-5520(%ebp), %esi
	movl	-5524(%ebp), %edi
	movl	-5528(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1229
	.loc 2 2644 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2645 0
	movl	$496, -16(%ebp)
	jmp	.L219
.L1229:
	.loc 2 2648 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5532(%ebp)
	leal	.LC469@GOTOFF(%ebx), %esi
	movl	%esi, -5536(%ebp)
	movl	$5, -5540(%ebp)
	cld
	movl	-5532(%ebp), %esi
	movl	-5536(%ebp), %edi
	movl	-5540(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1231
	.loc 2 2649 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2650 0
	movl	$497, -16(%ebp)
	jmp	.L219
.L1231:
	.loc 2 2653 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2654 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5544(%ebp)
	leal	.LC470@GOTOFF(%ebx), %esi
	movl	%esi, -5548(%ebp)
	movl	$7, -5552(%ebp)
	cld
	movl	-5544(%ebp), %esi
	movl	-5548(%ebp), %edi
	movl	-5552(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1234
	.loc 2 2655 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2656 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1234
	.loc 2 2657 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2658 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2659 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2660 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$498, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1234:
	.loc 2 2664 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5556(%ebp)
	leal	.LC471@GOTOFF(%ebx), %esi
	movl	%esi, -5560(%ebp)
	movl	$10, -5564(%ebp)
	cld
	movl	-5556(%ebp), %esi
	movl	-5560(%ebp), %edi
	movl	-5564(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1237
	.loc 2 2665 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2666 0
	movl	$499, -16(%ebp)
	jmp	.L219
.L1237:
	.loc 2 2669 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5568(%ebp)
	leal	.LC472@GOTOFF(%ebx), %esi
	movl	%esi, -5572(%ebp)
	movl	$14, -5576(%ebp)
	cld
	movl	-5568(%ebp), %esi
	movl	-5572(%ebp), %edi
	movl	-5576(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1239
	.loc 2 2670 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2671 0
	movl	$500, -16(%ebp)
	jmp	.L219
.L1239:
	.loc 2 2674 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 2675 0
	movl	$501, -16(%ebp)
	jmp	.L219
.L191:
	.loc 2 2679 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5580(%ebp)
	leal	.LC473@GOTOFF(%ebx), %esi
	movl	%esi, -5584(%ebp)
	movl	$12, -5588(%ebp)
	cld
	movl	-5580(%ebp), %esi
	movl	-5584(%ebp), %edi
	movl	-5588(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1241
	.loc 2 2680 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2681 0
	movl	$502, -16(%ebp)
	jmp	.L219
.L1241:
	.loc 2 2684 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5592(%ebp)
	leal	.LC474@GOTOFF(%ebx), %esi
	movl	%esi, -5596(%ebp)
	movl	$12, -5600(%ebp)
	cld
	movl	-5592(%ebp), %esi
	movl	-5596(%ebp), %edi
	movl	-5600(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1243
	.loc 2 2685 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2686 0
	movl	$503, -16(%ebp)
	jmp	.L219
.L1243:
	.loc 2 2689 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5604(%ebp)
	leal	.LC475@GOTOFF(%ebx), %esi
	movl	%esi, -5608(%ebp)
	movl	$7, -5612(%ebp)
	cld
	movl	-5604(%ebp), %esi
	movl	-5608(%ebp), %edi
	movl	-5612(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1245
	.loc 2 2690 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2691 0
	movl	$504, -16(%ebp)
	jmp	.L219
.L1245:
	.loc 2 2694 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5616(%ebp)
	leal	.LC476@GOTOFF(%ebx), %esi
	movl	%esi, -5620(%ebp)
	movl	$11, -5624(%ebp)
	cld
	movl	-5616(%ebp), %esi
	movl	-5620(%ebp), %edi
	movl	-5624(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1247
	.loc 2 2695 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2696 0
	movl	$505, -16(%ebp)
	jmp	.L219
.L1247:
	.loc 2 2699 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2700 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2701 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2702 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$506, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L190:
	.loc 2 2706 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2707 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5628(%ebp)
	leal	.LC477@GOTOFF(%ebx), %esi
	movl	%esi, -5632(%ebp)
	movl	$9, -5636(%ebp)
	cld
	movl	-5628(%ebp), %esi
	movl	-5632(%ebp), %edi
	movl	-5636(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1251
	.loc 2 2708 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2709 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2710 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2711 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$507, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1251:
	.loc 2 2714 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5640(%ebp)
	leal	.LC478@GOTOFF(%ebx), %esi
	movl	%esi, -5644(%ebp)
	movl	$11, -5648(%ebp)
	cld
	movl	-5640(%ebp), %esi
	movl	-5644(%ebp), %edi
	movl	-5648(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1253
	.loc 2 2715 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2716 0
	movl	$508, -16(%ebp)
	jmp	.L219
.L1253:
	.loc 2 2719 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2720 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5652(%ebp)
	leal	.LC479@GOTOFF(%ebx), %esi
	movl	%esi, -5656(%ebp)
	movl	$9, -5660(%ebp)
	cld
	movl	-5652(%ebp), %esi
	movl	-5656(%ebp), %edi
	movl	-5660(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1256
	.loc 2 2721 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2722 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2723 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2724 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$509, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1256:
	.loc 2 2727 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2728 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5664(%ebp)
	leal	.LC480@GOTOFF(%ebx), %esi
	movl	%esi, -5668(%ebp)
	movl	$9, -5672(%ebp)
	cld
	movl	-5664(%ebp), %esi
	movl	-5668(%ebp), %edi
	movl	-5672(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1259
	.loc 2 2729 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2730 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2731 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2732 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$509, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1259:
	.loc 2 2735 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5676(%ebp)
	leal	.LC481@GOTOFF(%ebx), %esi
	movl	%esi, -5680(%ebp)
	movl	$4, -5684(%ebp)
	cld
	movl	-5676(%ebp), %esi
	movl	-5680(%ebp), %edi
	movl	-5684(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1261
	.loc 2 2736 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2737 0
	movl	$511, -16(%ebp)
	jmp	.L219
.L1261:
	.loc 2 2740 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5688(%ebp)
	leal	.LC482@GOTOFF(%ebx), %esi
	movl	%esi, -5692(%ebp)
	movl	$4, -5696(%ebp)
	cld
	movl	-5688(%ebp), %esi
	movl	-5692(%ebp), %edi
	movl	-5696(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1263
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC482@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -5700(%ebp)
	leal	.LC103@GOTOFF(%ebx), %esi
	movl	%esi, -5704(%ebp)
	movl	$5, -5708(%ebp)
	cld
	movl	-5700(%ebp), %esi
	movl	-5704(%ebp), %edi
	movl	-5708(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1263
	.loc 2 2742 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2743 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2744 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2745 0
	movl	$512, -16(%ebp)
	jmp	.L219
.L1263:
	.loc 2 2748 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5712(%ebp)
	leal	.LC482@GOTOFF(%ebx), %esi
	movl	%esi, -5716(%ebp)
	movl	$4, -5720(%ebp)
	cld
	movl	-5712(%ebp), %esi
	movl	-5716(%ebp), %edi
	movl	-5720(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1266
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC482@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	next_string_after
	movl	%eax, -5724(%ebp)
	leal	.LC104@GOTOFF(%ebx), %esi
	movl	%esi, -5728(%ebp)
	movl	$5, -5732(%ebp)
	cld
	movl	-5724(%ebp), %esi
	movl	-5728(%ebp), %edi
	movl	-5732(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1266
	.loc 2 2750 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2751 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2752 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2753 0
	movl	$513, -16(%ebp)
	jmp	.L219
.L1266:
	.loc 2 2756 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5736(%ebp)
	leal	.LC482@GOTOFF(%ebx), %esi
	movl	%esi, -5740(%ebp)
	movl	$5, -5744(%ebp)
	cld
	movl	-5736(%ebp), %esi
	movl	-5740(%ebp), %edi
	movl	-5744(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1269
	.loc 2 2757 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2758 0
	movl	$514, -16(%ebp)
	jmp	.L219
.L1269:
	.loc 2 2761 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5748(%ebp)
	leal	.LC483@GOTOFF(%ebx), %esi
	movl	%esi, -5752(%ebp)
	movl	$6, -5756(%ebp)
	cld
	movl	-5748(%ebp), %esi
	movl	-5752(%ebp), %edi
	movl	-5756(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1271
	.loc 2 2762 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2763 0
	movl	$515, -16(%ebp)
	jmp	.L219
.L1271:
	.loc 2 2766 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5760(%ebp)
	leal	.LC484@GOTOFF(%ebx), %esi
	movl	%esi, -5764(%ebp)
	movl	$5, -5768(%ebp)
	cld
	movl	-5760(%ebp), %esi
	movl	-5764(%ebp), %edi
	movl	-5768(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1273
	.loc 2 2767 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2768 0
	movl	$516, -16(%ebp)
	jmp	.L219
.L1273:
	.loc 2 2771 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5772(%ebp)
	leal	.LC485@GOTOFF(%ebx), %esi
	movl	%esi, -5776(%ebp)
	movl	$8, -5780(%ebp)
	cld
	movl	-5772(%ebp), %esi
	movl	-5776(%ebp), %edi
	movl	-5780(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1275
	.loc 2 2772 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2773 0
	movl	$517, -16(%ebp)
	jmp	.L219
.L1275:
	.loc 2 2776 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5784(%ebp)
	leal	.LC486@GOTOFF(%ebx), %esi
	movl	%esi, -5788(%ebp)
	movl	$9, -5792(%ebp)
	cld
	movl	-5784(%ebp), %esi
	movl	-5788(%ebp), %edi
	movl	-5792(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1277
	.loc 2 2777 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2778 0
	movl	$518, -16(%ebp)
	jmp	.L219
.L1277:
	.loc 2 2781 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5796(%ebp)
	leal	.LC487@GOTOFF(%ebx), %esi
	movl	%esi, -5800(%ebp)
	movl	$9, -5804(%ebp)
	cld
	movl	-5796(%ebp), %esi
	movl	-5800(%ebp), %edi
	movl	-5804(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1279
	.loc 2 2782 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2783 0
	movl	$519, -16(%ebp)
	jmp	.L219
.L1279:
	.loc 2 2786 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5808(%ebp)
	leal	.LC488@GOTOFF(%ebx), %esi
	movl	%esi, -5812(%ebp)
	movl	$9, -5816(%ebp)
	cld
	movl	-5808(%ebp), %esi
	movl	-5812(%ebp), %edi
	movl	-5816(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1281
	.loc 2 2787 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2788 0
	movl	$520, -16(%ebp)
	jmp	.L219
.L1281:
	.loc 2 2791 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5820(%ebp)
	leal	.LC489@GOTOFF(%ebx), %esi
	movl	%esi, -5824(%ebp)
	movl	$10, -5828(%ebp)
	cld
	movl	-5820(%ebp), %esi
	movl	-5824(%ebp), %edi
	movl	-5828(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 2792 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2793 0
	movl	$521, -16(%ebp)
	jmp	.L219
.L189:
	.loc 2 2798 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2799 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2800 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2801 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$522, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L188:
	.loc 2 2805 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5832(%ebp)
	leal	.LC18@GOTOFF(%ebx), %esi
	movl	%esi, -5836(%ebp)
	movl	$8, -5840(%ebp)
	cld
	movl	-5832(%ebp), %esi
	movl	-5836(%ebp), %edi
	movl	-5840(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 2806 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_Xlinker_option
	movl	%eax, -16(%ebp)
	jmp	.L219
.L187:
	.loc 2 2811 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5844(%ebp)
	leal	.LC490@GOTOFF(%ebx), %esi
	movl	%esi, -5848(%ebp)
	movl	$16, -5852(%ebp)
	cld
	movl	-5844(%ebp), %esi
	movl	-5848(%ebp), %edi
	movl	-5852(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1288
	.loc 2 2812 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2813 0
	movl	$524, -16(%ebp)
	jmp	.L219
.L1288:
	.loc 2 2816 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5856(%ebp)
	leal	.LC491@GOTOFF(%ebx), %esi
	movl	%esi, -5860(%ebp)
	movl	$18, -5864(%ebp)
	cld
	movl	-5856(%ebp), %esi
	movl	-5860(%ebp), %edi
	movl	-5864(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1290
	.loc 2 2817 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2818 0
	movl	$525, -16(%ebp)
	jmp	.L219
.L1290:
	.loc 2 2821 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5868(%ebp)
	leal	.LC492@GOTOFF(%ebx), %esi
	movl	%esi, -5872(%ebp)
	movl	$15, -5876(%ebp)
	cld
	movl	-5868(%ebp), %esi
	movl	-5872(%ebp), %edi
	movl	-5876(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1292
	.loc 2 2822 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2823 0
	movl	$526, -16(%ebp)
	jmp	.L219
.L1292:
	.loc 2 2826 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5880(%ebp)
	leal	.LC493@GOTOFF(%ebx), %esi
	movl	%esi, -5884(%ebp)
	movl	$19, -5888(%ebp)
	cld
	movl	-5880(%ebp), %esi
	movl	-5884(%ebp), %edi
	movl	-5888(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1294
	.loc 2 2827 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2828 0
	movl	$527, -16(%ebp)
	jmp	.L219
.L1294:
	.loc 2 2831 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5892(%ebp)
	leal	.LC494@GOTOFF(%ebx), %esi
	movl	%esi, -5896(%ebp)
	movl	$16, -5900(%ebp)
	cld
	movl	-5892(%ebp), %esi
	movl	-5896(%ebp), %edi
	movl	-5900(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1296
	.loc 2 2832 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2833 0
	movl	$528, -16(%ebp)
	jmp	.L219
.L1296:
	.loc 2 2836 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5904(%ebp)
	leal	.LC495@GOTOFF(%ebx), %esi
	movl	%esi, -5908(%ebp)
	movl	$15, -5912(%ebp)
	cld
	movl	-5904(%ebp), %esi
	movl	-5908(%ebp), %edi
	movl	-5912(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1298
	.loc 2 2837 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2838 0
	movl	$529, -16(%ebp)
	jmp	.L219
.L1298:
	.loc 2 2841 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5916(%ebp)
	leal	.LC496@GOTOFF(%ebx), %esi
	movl	%esi, -5920(%ebp)
	movl	$18, -5924(%ebp)
	cld
	movl	-5916(%ebp), %esi
	movl	-5920(%ebp), %edi
	movl	-5924(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1300
	.loc 2 2842 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2843 0
	movl	$530, -16(%ebp)
	jmp	.L219
.L1300:
	.loc 2 2846 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5928(%ebp)
	leal	.LC497@GOTOFF(%ebx), %esi
	movl	%esi, -5932(%ebp)
	movl	$9, -5936(%ebp)
	cld
	movl	-5928(%ebp), %esi
	movl	-5932(%ebp), %edi
	movl	-5936(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1302
	.loc 2 2847 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2848 0
	movl	$531, -16(%ebp)
	jmp	.L219
.L1302:
	.loc 2 2851 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5940(%ebp)
	leal	.LC498@GOTOFF(%ebx), %esi
	movl	%esi, -5944(%ebp)
	movl	$19, -5948(%ebp)
	cld
	movl	-5940(%ebp), %esi
	movl	-5944(%ebp), %edi
	movl	-5948(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1304
	.loc 2 2852 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2853 0
	movl	$532, -16(%ebp)
	jmp	.L219
.L1304:
	.loc 2 2856 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5952(%ebp)
	leal	.LC499@GOTOFF(%ebx), %esi
	movl	%esi, -5956(%ebp)
	movl	$18, -5960(%ebp)
	cld
	movl	-5952(%ebp), %esi
	movl	-5956(%ebp), %edi
	movl	-5960(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1306
	.loc 2 2857 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2858 0
	movl	$533, -16(%ebp)
	jmp	.L219
.L1306:
	.loc 2 2861 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5964(%ebp)
	leal	.LC500@GOTOFF(%ebx), %esi
	movl	%esi, -5968(%ebp)
	movl	$16, -5972(%ebp)
	cld
	movl	-5964(%ebp), %esi
	movl	-5968(%ebp), %edi
	movl	-5972(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1308
	.loc 2 2862 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2863 0
	movl	$534, -16(%ebp)
	jmp	.L219
.L1308:
	.loc 2 2866 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5976(%ebp)
	leal	.LC501@GOTOFF(%ebx), %esi
	movl	%esi, -5980(%ebp)
	movl	$8, -5984(%ebp)
	cld
	movl	-5976(%ebp), %esi
	movl	-5980(%ebp), %edi
	movl	-5984(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1310
	.loc 2 2867 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2868 0
	movl	$535, -16(%ebp)
	jmp	.L219
.L1310:
	.loc 2 2871 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5988(%ebp)
	leal	.LC502@GOTOFF(%ebx), %esi
	movl	%esi, -5992(%ebp)
	movl	$12, -5996(%ebp)
	cld
	movl	-5988(%ebp), %esi
	movl	-5992(%ebp), %edi
	movl	-5996(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1312
	.loc 2 2872 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2873 0
	movl	$536, -16(%ebp)
	jmp	.L219
.L1312:
	.loc 2 2876 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6000(%ebp)
	leal	.LC503@GOTOFF(%ebx), %esi
	movl	%esi, -6004(%ebp)
	movl	$14, -6008(%ebp)
	cld
	movl	-6000(%ebp), %esi
	movl	-6004(%ebp), %edi
	movl	-6008(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1314
	.loc 2 2877 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2878 0
	movl	$537, -16(%ebp)
	jmp	.L219
.L1314:
	.loc 2 2881 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6012(%ebp)
	leal	.LC504@GOTOFF(%ebx), %esi
	movl	%esi, -6016(%ebp)
	movl	$17, -6020(%ebp)
	cld
	movl	-6012(%ebp), %esi
	movl	-6016(%ebp), %edi
	movl	-6020(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1316
	.loc 2 2882 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2883 0
	movl	$538, -16(%ebp)
	jmp	.L219
.L1316:
	.loc 2 2886 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6024(%ebp)
	leal	.LC505@GOTOFF(%ebx), %esi
	movl	%esi, -6028(%ebp)
	movl	$8, -6032(%ebp)
	cld
	movl	-6024(%ebp), %esi
	movl	-6028(%ebp), %edi
	movl	-6032(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1318
	.loc 2 2887 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2888 0
	movl	$539, -16(%ebp)
	jmp	.L219
.L1318:
	.loc 2 2891 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6036(%ebp)
	leal	.LC506@GOTOFF(%ebx), %esi
	movl	%esi, -6040(%ebp)
	movl	$14, -6044(%ebp)
	cld
	movl	-6036(%ebp), %esi
	movl	-6040(%ebp), %edi
	movl	-6044(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1320
	.loc 2 2892 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2893 0
	movl	$540, -16(%ebp)
	jmp	.L219
.L1320:
	.loc 2 2896 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6048(%ebp)
	leal	.LC507@GOTOFF(%ebx), %esi
	movl	%esi, -6052(%ebp)
	movl	$17, -6056(%ebp)
	cld
	movl	-6048(%ebp), %esi
	movl	-6052(%ebp), %edi
	movl	-6056(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1322
	.loc 2 2897 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2898 0
	movl	$541, -16(%ebp)
	jmp	.L219
.L1322:
	.loc 2 2901 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6060(%ebp)
	leal	.LC508@GOTOFF(%ebx), %esi
	movl	%esi, -6064(%ebp)
	movl	$9, -6068(%ebp)
	cld
	movl	-6060(%ebp), %esi
	movl	-6064(%ebp), %edi
	movl	-6068(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1324
	.loc 2 2902 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2903 0
	movl	$542, -16(%ebp)
	jmp	.L219
.L1324:
	.loc 2 2906 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6072(%ebp)
	leal	.LC509@GOTOFF(%ebx), %esi
	movl	%esi, -6076(%ebp)
	movl	$20, -6080(%ebp)
	cld
	movl	-6072(%ebp), %esi
	movl	-6076(%ebp), %edi
	movl	-6080(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1326
	.loc 2 2907 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2908 0
	movl	$543, -16(%ebp)
	jmp	.L219
.L1326:
	.loc 2 2911 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6084(%ebp)
	leal	.LC510@GOTOFF(%ebx), %esi
	movl	%esi, -6088(%ebp)
	movl	$18, -6092(%ebp)
	cld
	movl	-6084(%ebp), %esi
	movl	-6088(%ebp), %edi
	movl	-6092(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1328
	.loc 2 2912 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2913 0
	movl	$544, -16(%ebp)
	jmp	.L219
.L1328:
	.loc 2 2916 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6096(%ebp)
	leal	.LC511@GOTOFF(%ebx), %esi
	movl	%esi, -6100(%ebp)
	movl	$13, -6104(%ebp)
	cld
	movl	-6096(%ebp), %esi
	movl	-6100(%ebp), %edi
	movl	-6104(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1330
	.loc 2 2917 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2918 0
	movl	$545, -16(%ebp)
	jmp	.L219
.L1330:
	.loc 2 2921 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6108(%ebp)
	leal	.LC512@GOTOFF(%ebx), %esi
	movl	%esi, -6112(%ebp)
	movl	$15, -6116(%ebp)
	cld
	movl	-6108(%ebp), %esi
	movl	-6112(%ebp), %edi
	movl	-6116(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1332
	.loc 2 2922 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2923 0
	movl	$546, -16(%ebp)
	jmp	.L219
.L1332:
	.loc 2 2926 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6120(%ebp)
	leal	.LC513@GOTOFF(%ebx), %esi
	movl	%esi, -6124(%ebp)
	movl	$9, -6128(%ebp)
	cld
	movl	-6120(%ebp), %esi
	movl	-6124(%ebp), %edi
	movl	-6128(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1334
	.loc 2 2927 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2928 0
	movl	$547, -16(%ebp)
	jmp	.L219
.L1334:
	.loc 2 2931 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6132(%ebp)
	leal	.LC514@GOTOFF(%ebx), %esi
	movl	%esi, -6136(%ebp)
	movl	$17, -6140(%ebp)
	cld
	movl	-6132(%ebp), %esi
	movl	-6136(%ebp), %edi
	movl	-6140(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1336
	.loc 2 2932 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2933 0
	movl	$548, -16(%ebp)
	jmp	.L219
.L1336:
	.loc 2 2936 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6144(%ebp)
	leal	.LC515@GOTOFF(%ebx), %esi
	movl	%esi, -6148(%ebp)
	movl	$14, -6152(%ebp)
	cld
	movl	-6144(%ebp), %esi
	movl	-6148(%ebp), %edi
	movl	-6152(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1338
	.loc 2 2937 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2938 0
	movl	$549, -16(%ebp)
	jmp	.L219
.L1338:
	.loc 2 2941 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6156(%ebp)
	leal	.LC516@GOTOFF(%ebx), %esi
	movl	%esi, -6160(%ebp)
	movl	$10, -6164(%ebp)
	cld
	movl	-6156(%ebp), %esi
	movl	-6160(%ebp), %edi
	movl	-6164(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1340
	.loc 2 2942 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2943 0
	movl	$550, -16(%ebp)
	jmp	.L219
.L1340:
	.loc 2 2946 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6168(%ebp)
	leal	.LC517@GOTOFF(%ebx), %esi
	movl	%esi, -6172(%ebp)
	movl	$18, -6176(%ebp)
	cld
	movl	-6168(%ebp), %esi
	movl	-6172(%ebp), %edi
	movl	-6176(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1342
	.loc 2 2947 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2948 0
	movl	$551, -16(%ebp)
	jmp	.L219
.L1342:
	.loc 2 2951 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6180(%ebp)
	leal	.LC518@GOTOFF(%ebx), %esi
	movl	%esi, -6184(%ebp)
	movl	$16, -6188(%ebp)
	cld
	movl	-6180(%ebp), %esi
	movl	-6184(%ebp), %edi
	movl	-6188(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1344
	.loc 2 2952 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2953 0
	movl	$552, -16(%ebp)
	jmp	.L219
.L1344:
	.loc 2 2956 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6192(%ebp)
	leal	.LC519@GOTOFF(%ebx), %esi
	movl	%esi, -6196(%ebp)
	movl	$14, -6200(%ebp)
	cld
	movl	-6192(%ebp), %esi
	movl	-6196(%ebp), %edi
	movl	-6200(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1346
	.loc 2 2957 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2958 0
	movl	$553, -16(%ebp)
	jmp	.L219
.L1346:
	.loc 2 2961 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6204(%ebp)
	leal	.LC520@GOTOFF(%ebx), %esi
	movl	%esi, -6208(%ebp)
	movl	$9, -6212(%ebp)
	cld
	movl	-6204(%ebp), %esi
	movl	-6208(%ebp), %edi
	movl	-6212(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1348
	.loc 2 2962 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2963 0
	movl	$554, -16(%ebp)
	jmp	.L219
.L1348:
	.loc 2 2966 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6216(%ebp)
	leal	.LC521@GOTOFF(%ebx), %esi
	movl	%esi, -6220(%ebp)
	movl	$9, -6224(%ebp)
	cld
	movl	-6216(%ebp), %esi
	movl	-6220(%ebp), %edi
	movl	-6224(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1350
	.loc 2 2967 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2968 0
	movl	$555, -16(%ebp)
	jmp	.L219
.L1350:
	.loc 2 2971 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 2972 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6228(%ebp)
	leal	.LC522@GOTOFF(%ebx), %esi
	movl	%esi, -6232(%ebp)
	movl	$4, -6236(%ebp)
	cld
	movl	-6228(%ebp), %esi
	movl	-6232(%ebp), %edi
	movl	-6236(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1353
	.loc 2 2973 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 2974 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 2975 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2976 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$556, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1353:
	.loc 2 2979 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6240(%ebp)
	leal	.LC523@GOTOFF(%ebx), %esi
	movl	%esi, -6244(%ebp)
	movl	$21, -6248(%ebp)
	cld
	movl	-6240(%ebp), %esi
	movl	-6244(%ebp), %edi
	movl	-6248(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1355
	.loc 2 2980 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2981 0
	movl	$557, -16(%ebp)
	jmp	.L219
.L1355:
	.loc 2 2984 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6252(%ebp)
	leal	.LC524@GOTOFF(%ebx), %esi
	movl	%esi, -6256(%ebp)
	movl	$17, -6260(%ebp)
	cld
	movl	-6252(%ebp), %esi
	movl	-6256(%ebp), %edi
	movl	-6260(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1357
	.loc 2 2985 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2986 0
	movl	$558, -16(%ebp)
	jmp	.L219
.L1357:
	.loc 2 2989 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6264(%ebp)
	leal	.LC525@GOTOFF(%ebx), %esi
	movl	%esi, -6268(%ebp)
	movl	$10, -6272(%ebp)
	cld
	movl	-6264(%ebp), %esi
	movl	-6268(%ebp), %edi
	movl	-6272(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1359
	.loc 2 2990 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2991 0
	movl	$559, -16(%ebp)
	jmp	.L219
.L1359:
	.loc 2 2994 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6276(%ebp)
	leal	.LC526@GOTOFF(%ebx), %esi
	movl	%esi, -6280(%ebp)
	movl	$19, -6284(%ebp)
	cld
	movl	-6276(%ebp), %esi
	movl	-6280(%ebp), %edi
	movl	-6284(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1361
	.loc 2 2995 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 2996 0
	movl	$560, -16(%ebp)
	jmp	.L219
.L1361:
	.loc 2 2999 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6288(%ebp)
	leal	.LC527@GOTOFF(%ebx), %esi
	movl	%esi, -6292(%ebp)
	movl	$19, -6296(%ebp)
	cld
	movl	-6288(%ebp), %esi
	movl	-6292(%ebp), %edi
	movl	-6296(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1363
	.loc 2 3000 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3001 0
	movl	$561, -16(%ebp)
	jmp	.L219
.L1363:
	.loc 2 3004 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6300(%ebp)
	leal	.LC528@GOTOFF(%ebx), %esi
	movl	%esi, -6304(%ebp)
	movl	$21, -6308(%ebp)
	cld
	movl	-6300(%ebp), %esi
	movl	-6304(%ebp), %edi
	movl	-6308(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1365
	.loc 2 3005 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3006 0
	movl	$562, -16(%ebp)
	jmp	.L219
.L1365:
	.loc 2 3009 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6312(%ebp)
	leal	.LC529@GOTOFF(%ebx), %esi
	movl	%esi, -6316(%ebp)
	movl	$18, -6320(%ebp)
	cld
	movl	-6312(%ebp), %esi
	movl	-6316(%ebp), %edi
	movl	-6320(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1367
	.loc 2 3010 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3011 0
	movl	$563, -16(%ebp)
	jmp	.L219
.L1367:
	.loc 2 3014 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6324(%ebp)
	leal	.LC530@GOTOFF(%ebx), %esi
	movl	%esi, -6328(%ebp)
	movl	$22, -6332(%ebp)
	cld
	movl	-6324(%ebp), %esi
	movl	-6328(%ebp), %edi
	movl	-6332(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1369
	.loc 2 3015 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3016 0
	movl	$564, -16(%ebp)
	jmp	.L219
.L1369:
	.loc 2 3019 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6336(%ebp)
	leal	.LC531@GOTOFF(%ebx), %esi
	movl	%esi, -6340(%ebp)
	movl	$19, -6344(%ebp)
	cld
	movl	-6336(%ebp), %esi
	movl	-6340(%ebp), %edi
	movl	-6344(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1371
	.loc 2 3020 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3021 0
	movl	$565, -16(%ebp)
	jmp	.L219
.L1371:
	.loc 2 3024 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6348(%ebp)
	leal	.LC532@GOTOFF(%ebx), %esi
	movl	%esi, -6352(%ebp)
	movl	$18, -6356(%ebp)
	cld
	movl	-6348(%ebp), %esi
	movl	-6352(%ebp), %edi
	movl	-6356(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1373
	.loc 2 3025 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3026 0
	movl	$566, -16(%ebp)
	jmp	.L219
.L1373:
	.loc 2 3029 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6360(%ebp)
	leal	.LC533@GOTOFF(%ebx), %esi
	movl	%esi, -6364(%ebp)
	movl	$21, -6368(%ebp)
	cld
	movl	-6360(%ebp), %esi
	movl	-6364(%ebp), %edi
	movl	-6368(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1375
	.loc 2 3030 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3031 0
	movl	$567, -16(%ebp)
	jmp	.L219
.L1375:
	.loc 2 3034 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6372(%ebp)
	leal	.LC534@GOTOFF(%ebx), %esi
	movl	%esi, -6376(%ebp)
	movl	$12, -6380(%ebp)
	cld
	movl	-6372(%ebp), %esi
	movl	-6376(%ebp), %edi
	movl	-6380(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1377
	.loc 2 3035 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3036 0
	movl	$568, -16(%ebp)
	jmp	.L219
.L1377:
	.loc 2 3039 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6384(%ebp)
	leal	.LC535@GOTOFF(%ebx), %esi
	movl	%esi, -6388(%ebp)
	movl	$22, -6392(%ebp)
	cld
	movl	-6384(%ebp), %esi
	movl	-6388(%ebp), %edi
	movl	-6392(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1379
	.loc 2 3040 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3041 0
	movl	$569, -16(%ebp)
	jmp	.L219
.L1379:
	.loc 2 3044 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6396(%ebp)
	leal	.LC536@GOTOFF(%ebx), %esi
	movl	%esi, -6400(%ebp)
	movl	$21, -6404(%ebp)
	cld
	movl	-6396(%ebp), %esi
	movl	-6400(%ebp), %edi
	movl	-6404(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1381
	.loc 2 3045 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3046 0
	movl	$570, -16(%ebp)
	jmp	.L219
.L1381:
	.loc 2 3049 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6408(%ebp)
	leal	.LC537@GOTOFF(%ebx), %esi
	movl	%esi, -6412(%ebp)
	movl	$19, -6416(%ebp)
	cld
	movl	-6408(%ebp), %esi
	movl	-6412(%ebp), %edi
	movl	-6416(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1383
	.loc 2 3050 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3051 0
	movl	$571, -16(%ebp)
	jmp	.L219
.L1383:
	.loc 2 3054 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6420(%ebp)
	leal	.LC538@GOTOFF(%ebx), %esi
	movl	%esi, -6424(%ebp)
	movl	$11, -6428(%ebp)
	cld
	movl	-6420(%ebp), %esi
	movl	-6424(%ebp), %edi
	movl	-6428(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1385
	.loc 2 3055 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3056 0
	movl	$572, -16(%ebp)
	jmp	.L219
.L1385:
	.loc 2 3059 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6432(%ebp)
	leal	.LC539@GOTOFF(%ebx), %esi
	movl	%esi, -6436(%ebp)
	movl	$15, -6440(%ebp)
	cld
	movl	-6432(%ebp), %esi
	movl	-6436(%ebp), %edi
	movl	-6440(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1387
	.loc 2 3060 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3061 0
	movl	$573, -16(%ebp)
	jmp	.L219
.L1387:
	.loc 2 3064 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6444(%ebp)
	leal	.LC540@GOTOFF(%ebx), %esi
	movl	%esi, -6448(%ebp)
	movl	$17, -6452(%ebp)
	cld
	movl	-6444(%ebp), %esi
	movl	-6448(%ebp), %edi
	movl	-6452(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1389
	.loc 2 3065 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3066 0
	movl	$574, -16(%ebp)
	jmp	.L219
.L1389:
	.loc 2 3069 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6456(%ebp)
	leal	.LC541@GOTOFF(%ebx), %esi
	movl	%esi, -6460(%ebp)
	movl	$20, -6464(%ebp)
	cld
	movl	-6456(%ebp), %esi
	movl	-6460(%ebp), %edi
	movl	-6464(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1391
	.loc 2 3070 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3071 0
	movl	$575, -16(%ebp)
	jmp	.L219
.L1391:
	.loc 2 3074 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6468(%ebp)
	leal	.LC542@GOTOFF(%ebx), %esi
	movl	%esi, -6472(%ebp)
	movl	$11, -6476(%ebp)
	cld
	movl	-6468(%ebp), %esi
	movl	-6472(%ebp), %edi
	movl	-6476(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1393
	.loc 2 3075 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3076 0
	movl	$576, -16(%ebp)
	jmp	.L219
.L1393:
	.loc 2 3079 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6480(%ebp)
	leal	.LC543@GOTOFF(%ebx), %esi
	movl	%esi, -6484(%ebp)
	movl	$12, -6488(%ebp)
	cld
	movl	-6480(%ebp), %esi
	movl	-6484(%ebp), %edi
	movl	-6488(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1395
	.loc 2 3080 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3081 0
	movl	$577, -16(%ebp)
	jmp	.L219
.L1395:
	.loc 2 3084 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6492(%ebp)
	leal	.LC544@GOTOFF(%ebx), %esi
	movl	%esi, -6496(%ebp)
	movl	$23, -6500(%ebp)
	cld
	movl	-6492(%ebp), %esi
	movl	-6496(%ebp), %edi
	movl	-6500(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1397
	.loc 2 3085 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3086 0
	movl	$578, -16(%ebp)
	jmp	.L219
.L1397:
	.loc 2 3089 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6504(%ebp)
	leal	.LC545@GOTOFF(%ebx), %esi
	movl	%esi, -6508(%ebp)
	movl	$21, -6512(%ebp)
	cld
	movl	-6504(%ebp), %esi
	movl	-6508(%ebp), %edi
	movl	-6512(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1399
	.loc 2 3090 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3091 0
	movl	$579, -16(%ebp)
	jmp	.L219
.L1399:
	.loc 2 3094 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6516(%ebp)
	leal	.LC546@GOTOFF(%ebx), %esi
	movl	%esi, -6520(%ebp)
	movl	$16, -6524(%ebp)
	cld
	movl	-6516(%ebp), %esi
	movl	-6520(%ebp), %edi
	movl	-6524(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1401
	.loc 2 3095 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3096 0
	movl	$580, -16(%ebp)
	jmp	.L219
.L1401:
	.loc 2 3099 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6528(%ebp)
	leal	.LC547@GOTOFF(%ebx), %esi
	movl	%esi, -6532(%ebp)
	movl	$18, -6536(%ebp)
	cld
	movl	-6528(%ebp), %esi
	movl	-6532(%ebp), %edi
	movl	-6536(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1403
	.loc 2 3100 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3101 0
	movl	$581, -16(%ebp)
	jmp	.L219
.L1403:
	.loc 2 3104 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6540(%ebp)
	leal	.LC548@GOTOFF(%ebx), %esi
	movl	%esi, -6544(%ebp)
	movl	$12, -6548(%ebp)
	cld
	movl	-6540(%ebp), %esi
	movl	-6544(%ebp), %edi
	movl	-6548(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1405
	.loc 2 3105 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3106 0
	movl	$582, -16(%ebp)
	jmp	.L219
.L1405:
	.loc 2 3109 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6552(%ebp)
	leal	.LC549@GOTOFF(%ebx), %esi
	movl	%esi, -6556(%ebp)
	movl	$20, -6560(%ebp)
	cld
	movl	-6552(%ebp), %esi
	movl	-6556(%ebp), %edi
	movl	-6560(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1407
	.loc 2 3110 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3111 0
	movl	$583, -16(%ebp)
	jmp	.L219
.L1407:
	.loc 2 3114 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6564(%ebp)
	leal	.LC550@GOTOFF(%ebx), %esi
	movl	%esi, -6568(%ebp)
	movl	$17, -6572(%ebp)
	cld
	movl	-6564(%ebp), %esi
	movl	-6568(%ebp), %edi
	movl	-6572(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1409
	.loc 2 3115 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3116 0
	movl	$584, -16(%ebp)
	jmp	.L219
.L1409:
	.loc 2 3119 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6576(%ebp)
	leal	.LC551@GOTOFF(%ebx), %esi
	movl	%esi, -6580(%ebp)
	movl	$13, -6584(%ebp)
	cld
	movl	-6576(%ebp), %esi
	movl	-6580(%ebp), %edi
	movl	-6584(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1411
	.loc 2 3120 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3121 0
	movl	$585, -16(%ebp)
	jmp	.L219
.L1411:
	.loc 2 3124 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6588(%ebp)
	leal	.LC552@GOTOFF(%ebx), %esi
	movl	%esi, -6592(%ebp)
	movl	$21, -6596(%ebp)
	cld
	movl	-6588(%ebp), %esi
	movl	-6592(%ebp), %edi
	movl	-6596(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1413
	.loc 2 3125 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3126 0
	movl	$586, -16(%ebp)
	jmp	.L219
.L1413:
	.loc 2 3129 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6600(%ebp)
	leal	.LC553@GOTOFF(%ebx), %esi
	movl	%esi, -6604(%ebp)
	movl	$19, -6608(%ebp)
	cld
	movl	-6600(%ebp), %esi
	movl	-6604(%ebp), %edi
	movl	-6608(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1415
	.loc 2 3130 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3131 0
	movl	$587, -16(%ebp)
	jmp	.L219
.L1415:
	.loc 2 3134 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6612(%ebp)
	leal	.LC554@GOTOFF(%ebx), %esi
	movl	%esi, -6616(%ebp)
	movl	$21, -6620(%ebp)
	cld
	movl	-6612(%ebp), %esi
	movl	-6616(%ebp), %edi
	movl	-6620(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1417
	.loc 2 3135 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3136 0
	movl	$588, -16(%ebp)
	jmp	.L219
.L1417:
	.loc 2 3139 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6624(%ebp)
	leal	.LC555@GOTOFF(%ebx), %esi
	movl	%esi, -6628(%ebp)
	movl	$17, -6632(%ebp)
	cld
	movl	-6624(%ebp), %esi
	movl	-6628(%ebp), %edi
	movl	-6632(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1419
	.loc 2 3140 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3141 0
	movl	$589, -16(%ebp)
	jmp	.L219
.L1419:
	.loc 2 3144 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6636(%ebp)
	leal	.LC556@GOTOFF(%ebx), %esi
	movl	%esi, -6640(%ebp)
	movl	$12, -6644(%ebp)
	cld
	movl	-6636(%ebp), %esi
	movl	-6640(%ebp), %edi
	movl	-6644(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1421
	.loc 2 3145 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3146 0
	movl	$590, -16(%ebp)
	jmp	.L219
.L1421:
	.loc 2 3149 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6648(%ebp)
	leal	.LC557@GOTOFF(%ebx), %esi
	movl	%esi, -6652(%ebp)
	movl	$12, -6656(%ebp)
	cld
	movl	-6648(%ebp), %esi
	movl	-6652(%ebp), %edi
	movl	-6656(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1423
	.loc 2 3150 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3151 0
	movl	$591, -16(%ebp)
	jmp	.L219
.L1423:
	.loc 2 3154 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6660(%ebp)
	leal	.LC558@GOTOFF(%ebx), %esi
	movl	%esi, -6664(%ebp)
	movl	$24, -6668(%ebp)
	cld
	movl	-6660(%ebp), %esi
	movl	-6664(%ebp), %edi
	movl	-6668(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1425
	.loc 2 3155 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3156 0
	movl	$592, -16(%ebp)
	jmp	.L219
.L1425:
	.loc 2 3159 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6672(%ebp)
	leal	.LC559@GOTOFF(%ebx), %esi
	movl	%esi, -6676(%ebp)
	movl	$20, -6680(%ebp)
	cld
	movl	-6672(%ebp), %esi
	movl	-6676(%ebp), %edi
	movl	-6680(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1427
	.loc 2 3160 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3161 0
	movl	$593, -16(%ebp)
	jmp	.L219
.L1427:
	.loc 2 3164 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6684(%ebp)
	leal	.LC560@GOTOFF(%ebx), %esi
	movl	%esi, -6688(%ebp)
	movl	$22, -6692(%ebp)
	cld
	movl	-6684(%ebp), %esi
	movl	-6688(%ebp), %edi
	movl	-6692(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1429
	.loc 2 3165 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3166 0
	movl	$594, -16(%ebp)
	jmp	.L219
.L1429:
	.loc 2 3169 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6696(%ebp)
	leal	.LC561@GOTOFF(%ebx), %esi
	movl	%esi, -6700(%ebp)
	movl	$25, -6704(%ebp)
	cld
	movl	-6696(%ebp), %esi
	movl	-6700(%ebp), %edi
	movl	-6704(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1431
	.loc 2 3170 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3171 0
	movl	$595, -16(%ebp)
	jmp	.L219
.L1431:
	.loc 2 3174 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6708(%ebp)
	leal	.LC562@GOTOFF(%ebx), %esi
	movl	%esi, -6712(%ebp)
	movl	$20, -6716(%ebp)
	cld
	movl	-6708(%ebp), %esi
	movl	-6712(%ebp), %edi
	movl	-6716(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1433
	.loc 2 3175 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3176 0
	movl	$596, -16(%ebp)
	jmp	.L219
.L1433:
	.loc 2 3179 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6720(%ebp)
	leal	.LC563@GOTOFF(%ebx), %esi
	movl	%esi, -6724(%ebp)
	movl	$15, -6728(%ebp)
	cld
	movl	-6720(%ebp), %esi
	movl	-6724(%ebp), %edi
	movl	-6728(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1435
	.loc 2 3180 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3181 0
	movl	$597, -16(%ebp)
	jmp	.L219
.L1435:
	.loc 2 3184 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6732(%ebp)
	leal	.LC564@GOTOFF(%ebx), %esi
	movl	%esi, -6736(%ebp)
	movl	$24, -6740(%ebp)
	cld
	movl	-6732(%ebp), %esi
	movl	-6736(%ebp), %edi
	movl	-6740(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1437
	.loc 2 3185 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3186 0
	movl	$598, -16(%ebp)
	jmp	.L219
.L1437:
	.loc 2 3189 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6744(%ebp)
	leal	.LC565@GOTOFF(%ebx), %esi
	movl	%esi, -6748(%ebp)
	movl	$22, -6752(%ebp)
	cld
	movl	-6744(%ebp), %esi
	movl	-6748(%ebp), %edi
	movl	-6752(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1439
	.loc 2 3190 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3191 0
	movl	$599, -16(%ebp)
	jmp	.L219
.L1439:
	.loc 2 3194 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6756(%ebp)
	leal	.LC566@GOTOFF(%ebx), %esi
	movl	%esi, -6760(%ebp)
	movl	$30, -6764(%ebp)
	cld
	movl	-6756(%ebp), %esi
	movl	-6760(%ebp), %edi
	movl	-6764(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1441
	.loc 2 3195 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3196 0
	movl	$600, -16(%ebp)
	jmp	.L219
.L1441:
	.loc 2 3199 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6768(%ebp)
	leal	.LC567@GOTOFF(%ebx), %esi
	movl	%esi, -6772(%ebp)
	movl	$26, -6776(%ebp)
	cld
	movl	-6768(%ebp), %esi
	movl	-6772(%ebp), %edi
	movl	-6776(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1443
	.loc 2 3200 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3201 0
	movl	$601, -16(%ebp)
	jmp	.L219
.L1443:
	.loc 2 3204 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6780(%ebp)
	leal	.LC568@GOTOFF(%ebx), %esi
	movl	%esi, -6784(%ebp)
	movl	$20, -6788(%ebp)
	cld
	movl	-6780(%ebp), %esi
	movl	-6784(%ebp), %edi
	movl	-6788(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1445
	.loc 2 3205 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3206 0
	movl	$602, -16(%ebp)
	jmp	.L219
.L1445:
	.loc 2 3209 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6792(%ebp)
	leal	.LC569@GOTOFF(%ebx), %esi
	movl	%esi, -6796(%ebp)
	movl	$10, -6800(%ebp)
	cld
	movl	-6792(%ebp), %esi
	movl	-6796(%ebp), %edi
	movl	-6800(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1447
	.loc 2 3210 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3211 0
	movl	$603, -16(%ebp)
	jmp	.L219
.L1447:
	.loc 2 3214 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6804(%ebp)
	leal	.LC570@GOTOFF(%ebx), %esi
	movl	%esi, -6808(%ebp)
	movl	$15, -6812(%ebp)
	cld
	movl	-6804(%ebp), %esi
	movl	-6808(%ebp), %edi
	movl	-6812(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1449
	.loc 2 3215 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3216 0
	movl	$604, -16(%ebp)
	jmp	.L219
.L1449:
	.loc 2 3219 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3220 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6816(%ebp)
	leal	.LC571@GOTOFF(%ebx), %esi
	movl	%esi, -6820(%ebp)
	movl	$17, -6824(%ebp)
	cld
	movl	-6816(%ebp), %esi
	movl	-6820(%ebp), %edi
	movl	-6824(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1452
	.loc 2 3221 0
	movl	$17, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3222 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1452
	.loc 2 3223 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3224 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3225 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3226 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$605, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1452:
	.loc 2 3230 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6828(%ebp)
	leal	.LC572@GOTOFF(%ebx), %esi
	movl	%esi, -6832(%ebp)
	movl	$17, -6836(%ebp)
	cld
	movl	-6828(%ebp), %esi
	movl	-6832(%ebp), %edi
	movl	-6836(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1455
	.loc 2 3231 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3232 0
	movl	$606, -16(%ebp)
	jmp	.L219
.L1455:
	.loc 2 3235 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6840(%ebp)
	leal	.LC573@GOTOFF(%ebx), %esi
	movl	%esi, -6844(%ebp)
	movl	$12, -6848(%ebp)
	cld
	movl	-6840(%ebp), %esi
	movl	-6844(%ebp), %edi
	movl	-6848(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1457
	.loc 2 3236 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3237 0
	movl	$607, -16(%ebp)
	jmp	.L219
.L1457:
	.loc 2 3240 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6852(%ebp)
	leal	.LC574@GOTOFF(%ebx), %esi
	movl	%esi, -6856(%ebp)
	movl	$12, -6860(%ebp)
	cld
	movl	-6852(%ebp), %esi
	movl	-6856(%ebp), %edi
	movl	-6860(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1459
	.loc 2 3241 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3242 0
	movl	$608, -16(%ebp)
	jmp	.L219
.L1459:
	.loc 2 3245 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6864(%ebp)
	leal	.LC575@GOTOFF(%ebx), %esi
	movl	%esi, -6868(%ebp)
	movl	$18, -6872(%ebp)
	cld
	movl	-6864(%ebp), %esi
	movl	-6868(%ebp), %edi
	movl	-6872(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1461
	.loc 2 3246 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3247 0
	movl	$609, -16(%ebp)
	jmp	.L219
.L1461:
	.loc 2 3250 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6876(%ebp)
	leal	.LC576@GOTOFF(%ebx), %esi
	movl	%esi, -6880(%ebp)
	movl	$35, -6884(%ebp)
	cld
	movl	-6876(%ebp), %esi
	movl	-6880(%ebp), %edi
	movl	-6884(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1463
	.loc 2 3251 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3252 0
	movl	$610, -16(%ebp)
	jmp	.L219
.L1463:
	.loc 2 3255 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6888(%ebp)
	leal	.LC577@GOTOFF(%ebx), %esi
	movl	%esi, -6892(%ebp)
	movl	$14, -6896(%ebp)
	cld
	movl	-6888(%ebp), %esi
	movl	-6892(%ebp), %edi
	movl	-6896(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1465
	.loc 2 3256 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3257 0
	movl	$611, -16(%ebp)
	jmp	.L219
.L1465:
	.loc 2 3260 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6900(%ebp)
	leal	.LC578@GOTOFF(%ebx), %esi
	movl	%esi, -6904(%ebp)
	movl	$16, -6908(%ebp)
	cld
	movl	-6900(%ebp), %esi
	movl	-6904(%ebp), %edi
	movl	-6908(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1467
	.loc 2 3261 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3262 0
	movl	$612, -16(%ebp)
	jmp	.L219
.L1467:
	.loc 2 3265 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6912(%ebp)
	leal	.LC579@GOTOFF(%ebx), %esi
	movl	%esi, -6916(%ebp)
	movl	$21, -6920(%ebp)
	cld
	movl	-6912(%ebp), %esi
	movl	-6916(%ebp), %edi
	movl	-6920(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1469
	.loc 2 3266 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3267 0
	movl	$613, -16(%ebp)
	jmp	.L219
.L1469:
	.loc 2 3270 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6924(%ebp)
	leal	.LC580@GOTOFF(%ebx), %esi
	movl	%esi, -6928(%ebp)
	movl	$23, -6932(%ebp)
	cld
	movl	-6924(%ebp), %esi
	movl	-6928(%ebp), %edi
	movl	-6932(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1471
	.loc 2 3271 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3272 0
	movl	$614, -16(%ebp)
	jmp	.L219
.L1471:
	.loc 2 3275 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6936(%ebp)
	leal	.LC581@GOTOFF(%ebx), %esi
	movl	%esi, -6940(%ebp)
	movl	$23, -6944(%ebp)
	cld
	movl	-6936(%ebp), %esi
	movl	-6940(%ebp), %edi
	movl	-6944(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1473
	.loc 2 3276 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3277 0
	movl	$615, -16(%ebp)
	jmp	.L219
.L1473:
	.loc 2 3280 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6948(%ebp)
	leal	.LC582@GOTOFF(%ebx), %esi
	movl	%esi, -6952(%ebp)
	movl	$12, -6956(%ebp)
	cld
	movl	-6948(%ebp), %esi
	movl	-6952(%ebp), %edi
	movl	-6956(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1475
	.loc 2 3281 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3282 0
	movl	$616, -16(%ebp)
	jmp	.L219
.L1475:
	.loc 2 3285 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6960(%ebp)
	leal	.LC583@GOTOFF(%ebx), %esi
	movl	%esi, -6964(%ebp)
	movl	$17, -6968(%ebp)
	cld
	movl	-6960(%ebp), %esi
	movl	-6964(%ebp), %edi
	movl	-6968(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1477
	.loc 2 3286 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3287 0
	movl	$617, -16(%ebp)
	jmp	.L219
.L1477:
	.loc 2 3290 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6972(%ebp)
	leal	.LC584@GOTOFF(%ebx), %esi
	movl	%esi, -6976(%ebp)
	movl	$11, -6980(%ebp)
	cld
	movl	-6972(%ebp), %esi
	movl	-6976(%ebp), %edi
	movl	-6980(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1479
	.loc 2 3291 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3292 0
	movl	$618, -16(%ebp)
	jmp	.L219
.L1479:
	.loc 2 3295 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6984(%ebp)
	leal	.LC585@GOTOFF(%ebx), %esi
	movl	%esi, -6988(%ebp)
	movl	$18, -6992(%ebp)
	cld
	movl	-6984(%ebp), %esi
	movl	-6988(%ebp), %edi
	movl	-6992(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1481
	.loc 2 3296 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3297 0
	movl	$619, -16(%ebp)
	jmp	.L219
.L1481:
	.loc 2 3300 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -6996(%ebp)
	leal	.LC586@GOTOFF(%ebx), %esi
	movl	%esi, -7000(%ebp)
	movl	$12, -7004(%ebp)
	cld
	movl	-6996(%ebp), %esi
	movl	-7000(%ebp), %edi
	movl	-7004(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1483
	.loc 2 3301 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3302 0
	movl	$620, -16(%ebp)
	jmp	.L219
.L1483:
	.loc 2 3305 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7008(%ebp)
	leal	.LC587@GOTOFF(%ebx), %esi
	movl	%esi, -7012(%ebp)
	movl	$17, -7016(%ebp)
	cld
	movl	-7008(%ebp), %esi
	movl	-7012(%ebp), %edi
	movl	-7016(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1485
	.loc 2 3306 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3307 0
	movl	$621, -16(%ebp)
	jmp	.L219
.L1485:
	.loc 2 3310 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7020(%ebp)
	leal	.LC588@GOTOFF(%ebx), %esi
	movl	%esi, -7024(%ebp)
	movl	$27, -7028(%ebp)
	cld
	movl	-7020(%ebp), %esi
	movl	-7024(%ebp), %edi
	movl	-7028(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1487
	.loc 2 3311 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3312 0
	movl	$622, -16(%ebp)
	jmp	.L219
.L1487:
	.loc 2 3315 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7032(%ebp)
	leal	.LC589@GOTOFF(%ebx), %esi
	movl	%esi, -7036(%ebp)
	movl	$29, -7040(%ebp)
	cld
	movl	-7032(%ebp), %esi
	movl	-7036(%ebp), %edi
	movl	-7040(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1489
	.loc 2 3316 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3317 0
	movl	$623, -16(%ebp)
	jmp	.L219
.L1489:
	.loc 2 3320 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7044(%ebp)
	leal	.LC590@GOTOFF(%ebx), %esi
	movl	%esi, -7048(%ebp)
	movl	$16, -7052(%ebp)
	cld
	movl	-7044(%ebp), %esi
	movl	-7048(%ebp), %edi
	movl	-7052(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1491
	.loc 2 3321 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3322 0
	movl	$624, -16(%ebp)
	jmp	.L219
.L1491:
	.loc 2 3325 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7056(%ebp)
	leal	.LC591@GOTOFF(%ebx), %esi
	movl	%esi, -7060(%ebp)
	movl	$23, -7064(%ebp)
	cld
	movl	-7056(%ebp), %esi
	movl	-7060(%ebp), %edi
	movl	-7064(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1493
	.loc 2 3326 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3327 0
	movl	$625, -16(%ebp)
	jmp	.L219
.L1493:
	.loc 2 3330 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7068(%ebp)
	leal	.LC592@GOTOFF(%ebx), %esi
	movl	%esi, -7072(%ebp)
	movl	$16, -7076(%ebp)
	cld
	movl	-7068(%ebp), %esi
	movl	-7072(%ebp), %edi
	movl	-7076(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1495
	.loc 2 3331 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3332 0
	movl	$626, -16(%ebp)
	jmp	.L219
.L1495:
	.loc 2 3335 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7080(%ebp)
	leal	.LC593@GOTOFF(%ebx), %esi
	movl	%esi, -7084(%ebp)
	movl	$14, -7088(%ebp)
	cld
	movl	-7080(%ebp), %esi
	movl	-7084(%ebp), %edi
	movl	-7088(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1497
	.loc 2 3336 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3337 0
	movl	$627, -16(%ebp)
	jmp	.L219
.L1497:
	.loc 2 3340 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7092(%ebp)
	leal	.LC594@GOTOFF(%ebx), %esi
	movl	%esi, -7096(%ebp)
	movl	$13, -7100(%ebp)
	cld
	movl	-7092(%ebp), %esi
	movl	-7096(%ebp), %edi
	movl	-7100(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1499
	.loc 2 3341 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3342 0
	movl	$628, -16(%ebp)
	jmp	.L219
.L1499:
	.loc 2 3345 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7104(%ebp)
	leal	.LC595@GOTOFF(%ebx), %esi
	movl	%esi, -7108(%ebp)
	movl	$21, -7112(%ebp)
	cld
	movl	-7104(%ebp), %esi
	movl	-7108(%ebp), %edi
	movl	-7112(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1501
	.loc 2 3346 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3347 0
	movl	$629, -16(%ebp)
	jmp	.L219
.L1501:
	.loc 2 3350 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7116(%ebp)
	leal	.LC596@GOTOFF(%ebx), %esi
	movl	%esi, -7120(%ebp)
	movl	$15, -7124(%ebp)
	cld
	movl	-7116(%ebp), %esi
	movl	-7120(%ebp), %edi
	movl	-7124(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1503
	.loc 2 3351 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3352 0
	movl	$630, -16(%ebp)
	jmp	.L219
.L1503:
	.loc 2 3355 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7128(%ebp)
	leal	.LC597@GOTOFF(%ebx), %esi
	movl	%esi, -7132(%ebp)
	movl	$16, -7136(%ebp)
	cld
	movl	-7128(%ebp), %esi
	movl	-7132(%ebp), %edi
	movl	-7136(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1505
	.loc 2 3356 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3357 0
	movl	$631, -16(%ebp)
	jmp	.L219
.L1505:
	.loc 2 3360 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7140(%ebp)
	leal	.LC598@GOTOFF(%ebx), %esi
	movl	%esi, -7144(%ebp)
	movl	$23, -7148(%ebp)
	cld
	movl	-7140(%ebp), %esi
	movl	-7144(%ebp), %edi
	movl	-7148(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1507
	.loc 2 3361 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3362 0
	movl	$632, -16(%ebp)
	jmp	.L219
.L1507:
	.loc 2 3365 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7152(%ebp)
	leal	.LC599@GOTOFF(%ebx), %esi
	movl	%esi, -7156(%ebp)
	movl	$22, -7160(%ebp)
	cld
	movl	-7152(%ebp), %esi
	movl	-7156(%ebp), %edi
	movl	-7160(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1509
	.loc 2 3366 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3367 0
	movl	$633, -16(%ebp)
	jmp	.L219
.L1509:
	.loc 2 3370 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7164(%ebp)
	leal	.LC600@GOTOFF(%ebx), %esi
	movl	%esi, -7168(%ebp)
	movl	$17, -7172(%ebp)
	cld
	movl	-7164(%ebp), %esi
	movl	-7168(%ebp), %edi
	movl	-7172(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1511
	.loc 2 3371 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3372 0
	movl	$634, -16(%ebp)
	jmp	.L219
.L1511:
	.loc 2 3375 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7176(%ebp)
	leal	.LC601@GOTOFF(%ebx), %esi
	movl	%esi, -7180(%ebp)
	movl	$12, -7184(%ebp)
	cld
	movl	-7176(%ebp), %esi
	movl	-7180(%ebp), %edi
	movl	-7184(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1513
	.loc 2 3376 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3377 0
	movl	$635, -16(%ebp)
	jmp	.L219
.L1513:
	.loc 2 3380 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7188(%ebp)
	leal	.LC602@GOTOFF(%ebx), %esi
	movl	%esi, -7192(%ebp)
	movl	$21, -7196(%ebp)
	cld
	movl	-7188(%ebp), %esi
	movl	-7192(%ebp), %edi
	movl	-7196(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1515
	.loc 2 3381 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3382 0
	movl	$636, -16(%ebp)
	jmp	.L219
.L1515:
	.loc 2 3385 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7200(%ebp)
	leal	.LC603@GOTOFF(%ebx), %esi
	movl	%esi, -7204(%ebp)
	movl	$19, -7208(%ebp)
	cld
	movl	-7200(%ebp), %esi
	movl	-7204(%ebp), %edi
	movl	-7208(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1517
	.loc 2 3386 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3387 0
	movl	$637, -16(%ebp)
	jmp	.L219
.L1517:
	.loc 2 3390 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7212(%ebp)
	leal	.LC604@GOTOFF(%ebx), %esi
	movl	%esi, -7216(%ebp)
	movl	$27, -7220(%ebp)
	cld
	movl	-7212(%ebp), %esi
	movl	-7216(%ebp), %edi
	movl	-7220(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1519
	.loc 2 3391 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3392 0
	movl	$638, -16(%ebp)
	jmp	.L219
.L1519:
	.loc 2 3395 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7224(%ebp)
	leal	.LC605@GOTOFF(%ebx), %esi
	movl	%esi, -7228(%ebp)
	movl	$23, -7232(%ebp)
	cld
	movl	-7224(%ebp), %esi
	movl	-7228(%ebp), %edi
	movl	-7232(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1521
	.loc 2 3396 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3397 0
	movl	$639, -16(%ebp)
	jmp	.L219
.L1521:
	.loc 2 3400 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7236(%ebp)
	leal	.LC606@GOTOFF(%ebx), %esi
	movl	%esi, -7240(%ebp)
	movl	$17, -7244(%ebp)
	cld
	movl	-7236(%ebp), %esi
	movl	-7240(%ebp), %edi
	movl	-7244(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1523
	.loc 2 3401 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3402 0
	movl	$640, -16(%ebp)
	jmp	.L219
.L1523:
	.loc 2 3405 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7248(%ebp)
	leal	.LC607@GOTOFF(%ebx), %esi
	movl	%esi, -7252(%ebp)
	movl	$7, -7256(%ebp)
	cld
	movl	-7248(%ebp), %esi
	movl	-7252(%ebp), %edi
	movl	-7256(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1525
	.loc 2 3406 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3407 0
	movl	$641, -16(%ebp)
	jmp	.L219
.L1525:
	.loc 2 3410 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7260(%ebp)
	leal	.LC608@GOTOFF(%ebx), %esi
	movl	%esi, -7264(%ebp)
	movl	$12, -7268(%ebp)
	cld
	movl	-7260(%ebp), %esi
	movl	-7264(%ebp), %edi
	movl	-7268(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1527
	.loc 2 3411 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3412 0
	movl	$642, -16(%ebp)
	jmp	.L219
.L1527:
	.loc 2 3415 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3416 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7272(%ebp)
	leal	.LC609@GOTOFF(%ebx), %esi
	movl	%esi, -7276(%ebp)
	movl	$14, -7280(%ebp)
	cld
	movl	-7272(%ebp), %esi
	movl	-7276(%ebp), %edi
	movl	-7280(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1530
	.loc 2 3417 0
	movl	$14, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3418 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1530
	.loc 2 3419 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3420 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3421 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3422 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$643, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1530:
	.loc 2 3426 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3427 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7284(%ebp)
	leal	.LC19@GOTOFF(%ebx), %esi
	movl	%esi, -7288(%ebp)
	movl	$4, -7292(%ebp)
	cld
	movl	-7284(%ebp), %esi
	movl	-7288(%ebp), %edi
	movl	-7292(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1534
	.loc 2 3428 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3429 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3430 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3431 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$644, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1534:
	.loc 2 3434 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7296(%ebp)
	leal	.LC610@GOTOFF(%ebx), %esi
	movl	%esi, -7300(%ebp)
	movl	$14, -7304(%ebp)
	cld
	movl	-7296(%ebp), %esi
	movl	-7300(%ebp), %edi
	movl	-7304(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1536
	.loc 2 3435 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3436 0
	movl	$645, -16(%ebp)
	jmp	.L219
.L1536:
	.loc 2 3439 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7308(%ebp)
	leal	.LC611@GOTOFF(%ebx), %esi
	movl	%esi, -7312(%ebp)
	movl	$9, -7316(%ebp)
	cld
	movl	-7308(%ebp), %esi
	movl	-7312(%ebp), %edi
	movl	-7316(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1538
	.loc 2 3440 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3441 0
	movl	$646, -16(%ebp)
	jmp	.L219
.L1538:
	.loc 2 3444 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7320(%ebp)
	leal	.LC612@GOTOFF(%ebx), %esi
	movl	%esi, -7324(%ebp)
	movl	$9, -7328(%ebp)
	cld
	movl	-7320(%ebp), %esi
	movl	-7324(%ebp), %edi
	movl	-7328(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1540
	.loc 2 3445 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3446 0
	movl	$647, -16(%ebp)
	jmp	.L219
.L1540:
	.loc 2 3449 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7332(%ebp)
	leal	.LC613@GOTOFF(%ebx), %esi
	movl	%esi, -7336(%ebp)
	movl	$15, -7340(%ebp)
	cld
	movl	-7332(%ebp), %esi
	movl	-7336(%ebp), %edi
	movl	-7340(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1542
	.loc 2 3450 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3451 0
	movl	$648, -16(%ebp)
	jmp	.L219
.L1542:
	.loc 2 3454 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7344(%ebp)
	leal	.LC614@GOTOFF(%ebx), %esi
	movl	%esi, -7348(%ebp)
	movl	$32, -7352(%ebp)
	cld
	movl	-7344(%ebp), %esi
	movl	-7348(%ebp), %edi
	movl	-7352(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1544
	.loc 2 3455 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3456 0
	movl	$649, -16(%ebp)
	jmp	.L219
.L1544:
	.loc 2 3459 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7356(%ebp)
	leal	.LC615@GOTOFF(%ebx), %esi
	movl	%esi, -7360(%ebp)
	movl	$11, -7364(%ebp)
	cld
	movl	-7356(%ebp), %esi
	movl	-7360(%ebp), %edi
	movl	-7364(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1546
	.loc 2 3460 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3461 0
	movl	$650, -16(%ebp)
	jmp	.L219
.L1546:
	.loc 2 3464 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7368(%ebp)
	leal	.LC616@GOTOFF(%ebx), %esi
	movl	%esi, -7372(%ebp)
	movl	$11, -7376(%ebp)
	cld
	movl	-7368(%ebp), %esi
	movl	-7372(%ebp), %edi
	movl	-7376(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1548
	.loc 2 3465 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3466 0
	movl	$651, -16(%ebp)
	jmp	.L219
.L1548:
	.loc 2 3469 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7380(%ebp)
	leal	.LC617@GOTOFF(%ebx), %esi
	movl	%esi, -7384(%ebp)
	movl	$18, -7388(%ebp)
	cld
	movl	-7380(%ebp), %esi
	movl	-7384(%ebp), %edi
	movl	-7388(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1550
	.loc 2 3470 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3471 0
	movl	$652, -16(%ebp)
	jmp	.L219
.L1550:
	.loc 2 3474 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7392(%ebp)
	leal	.LC618@GOTOFF(%ebx), %esi
	movl	%esi, -7396(%ebp)
	movl	$20, -7400(%ebp)
	cld
	movl	-7392(%ebp), %esi
	movl	-7396(%ebp), %edi
	movl	-7400(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1552
	.loc 2 3475 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3476 0
	movl	$653, -16(%ebp)
	jmp	.L219
.L1552:
	.loc 2 3479 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7404(%ebp)
	leal	.LC619@GOTOFF(%ebx), %esi
	movl	%esi, -7408(%ebp)
	movl	$9, -7412(%ebp)
	cld
	movl	-7404(%ebp), %esi
	movl	-7408(%ebp), %edi
	movl	-7412(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1554
	.loc 2 3480 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3481 0
	movl	$654, -16(%ebp)
	jmp	.L219
.L1554:
	.loc 2 3484 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7416(%ebp)
	leal	.LC620@GOTOFF(%ebx), %esi
	movl	%esi, -7420(%ebp)
	movl	$14, -7424(%ebp)
	cld
	movl	-7416(%ebp), %esi
	movl	-7420(%ebp), %edi
	movl	-7424(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1556
	.loc 2 3485 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3486 0
	movl	$655, -16(%ebp)
	jmp	.L219
.L1556:
	.loc 2 3489 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7428(%ebp)
	leal	.LC621@GOTOFF(%ebx), %esi
	movl	%esi, -7432(%ebp)
	movl	$38, -7436(%ebp)
	cld
	movl	-7428(%ebp), %esi
	movl	-7432(%ebp), %edi
	movl	-7436(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1558
	.loc 2 3490 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3491 0
	movl	$656, -16(%ebp)
	jmp	.L219
.L1558:
	.loc 2 3494 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7440(%ebp)
	leal	.LC622@GOTOFF(%ebx), %esi
	movl	%esi, -7444(%ebp)
	movl	$8, -7448(%ebp)
	cld
	movl	-7440(%ebp), %esi
	movl	-7444(%ebp), %edi
	movl	-7448(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1560
	.loc 2 3495 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3496 0
	movl	$657, -16(%ebp)
	jmp	.L219
.L1560:
	.loc 2 3499 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7452(%ebp)
	leal	.LC623@GOTOFF(%ebx), %esi
	movl	%esi, -7456(%ebp)
	movl	$15, -7460(%ebp)
	cld
	movl	-7452(%ebp), %esi
	movl	-7456(%ebp), %edi
	movl	-7460(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1562
	.loc 2 3500 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3501 0
	movl	$658, -16(%ebp)
	jmp	.L219
.L1562:
	.loc 2 3504 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7464(%ebp)
	leal	.LC624@GOTOFF(%ebx), %esi
	movl	%esi, -7468(%ebp)
	movl	$9, -7472(%ebp)
	cld
	movl	-7464(%ebp), %esi
	movl	-7468(%ebp), %edi
	movl	-7472(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1564
	.loc 2 3505 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3506 0
	movl	$659, -16(%ebp)
	jmp	.L219
.L1564:
	.loc 2 3509 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7476(%ebp)
	leal	.LC625@GOTOFF(%ebx), %esi
	movl	%esi, -7480(%ebp)
	movl	$14, -7484(%ebp)
	cld
	movl	-7476(%ebp), %esi
	movl	-7480(%ebp), %edi
	movl	-7484(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1566
	.loc 2 3510 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3511 0
	movl	$660, -16(%ebp)
	jmp	.L219
.L1566:
	.loc 2 3514 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7488(%ebp)
	leal	.LC626@GOTOFF(%ebx), %esi
	movl	%esi, -7492(%ebp)
	movl	$24, -7496(%ebp)
	cld
	movl	-7488(%ebp), %esi
	movl	-7492(%ebp), %edi
	movl	-7496(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1568
	.loc 2 3515 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3516 0
	movl	$661, -16(%ebp)
	jmp	.L219
.L1568:
	.loc 2 3519 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7500(%ebp)
	leal	.LC627@GOTOFF(%ebx), %esi
	movl	%esi, -7504(%ebp)
	movl	$13, -7508(%ebp)
	cld
	movl	-7500(%ebp), %esi
	movl	-7504(%ebp), %edi
	movl	-7508(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1570
	.loc 2 3520 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3521 0
	movl	$662, -16(%ebp)
	jmp	.L219
.L1570:
	.loc 2 3524 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7512(%ebp)
	leal	.LC628@GOTOFF(%ebx), %esi
	movl	%esi, -7516(%ebp)
	movl	$30, -7520(%ebp)
	cld
	movl	-7512(%ebp), %esi
	movl	-7516(%ebp), %edi
	movl	-7520(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1572
	.loc 2 3525 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3526 0
	movl	$663, -16(%ebp)
	jmp	.L219
.L1572:
	.loc 2 3529 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7524(%ebp)
	leal	.LC629@GOTOFF(%ebx), %esi
	movl	%esi, -7528(%ebp)
	movl	$20, -7532(%ebp)
	cld
	movl	-7524(%ebp), %esi
	movl	-7528(%ebp), %edi
	movl	-7532(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1574
	.loc 2 3530 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3531 0
	movl	$664, -16(%ebp)
	jmp	.L219
.L1574:
	.loc 2 3534 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7536(%ebp)
	leal	.LC630@GOTOFF(%ebx), %esi
	movl	%esi, -7540(%ebp)
	movl	$13, -7544(%ebp)
	cld
	movl	-7536(%ebp), %esi
	movl	-7540(%ebp), %edi
	movl	-7544(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1576
	.loc 2 3535 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3536 0
	movl	$665, -16(%ebp)
	jmp	.L219
.L1576:
	.loc 2 3539 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7548(%ebp)
	leal	.LC631@GOTOFF(%ebx), %esi
	movl	%esi, -7552(%ebp)
	movl	$11, -7556(%ebp)
	cld
	movl	-7548(%ebp), %esi
	movl	-7552(%ebp), %edi
	movl	-7556(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1578
	.loc 2 3540 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3541 0
	movl	$666, -16(%ebp)
	jmp	.L219
.L1578:
	.loc 2 3544 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7560(%ebp)
	leal	.LC632@GOTOFF(%ebx), %esi
	movl	%esi, -7564(%ebp)
	movl	$10, -7568(%ebp)
	cld
	movl	-7560(%ebp), %esi
	movl	-7564(%ebp), %edi
	movl	-7568(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1580
	.loc 2 3545 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3546 0
	movl	$667, -16(%ebp)
	jmp	.L219
.L1580:
	.loc 2 3549 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7572(%ebp)
	leal	.LC633@GOTOFF(%ebx), %esi
	movl	%esi, -7576(%ebp)
	movl	$18, -7580(%ebp)
	cld
	movl	-7572(%ebp), %esi
	movl	-7576(%ebp), %edi
	movl	-7580(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1582
	.loc 2 3550 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3551 0
	movl	$668, -16(%ebp)
	jmp	.L219
.L1582:
	.loc 2 3554 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7584(%ebp)
	leal	.LC634@GOTOFF(%ebx), %esi
	movl	%esi, -7588(%ebp)
	movl	$12, -7592(%ebp)
	cld
	movl	-7584(%ebp), %esi
	movl	-7588(%ebp), %edi
	movl	-7592(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1584
	.loc 2 3555 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3556 0
	movl	$669, -16(%ebp)
	jmp	.L219
.L1584:
	.loc 2 3559 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7596(%ebp)
	leal	.LC635@GOTOFF(%ebx), %esi
	movl	%esi, -7600(%ebp)
	movl	$13, -7604(%ebp)
	cld
	movl	-7596(%ebp), %esi
	movl	-7600(%ebp), %edi
	movl	-7604(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1586
	.loc 2 3560 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3561 0
	movl	$670, -16(%ebp)
	jmp	.L219
.L1586:
	.loc 2 3564 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7608(%ebp)
	leal	.LC636@GOTOFF(%ebx), %esi
	movl	%esi, -7612(%ebp)
	movl	$20, -7616(%ebp)
	cld
	movl	-7608(%ebp), %esi
	movl	-7612(%ebp), %edi
	movl	-7616(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1588
	.loc 2 3565 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3566 0
	movl	$671, -16(%ebp)
	jmp	.L219
.L1588:
	.loc 2 3569 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7620(%ebp)
	leal	.LC637@GOTOFF(%ebx), %esi
	movl	%esi, -7624(%ebp)
	movl	$6, -7628(%ebp)
	cld
	movl	-7620(%ebp), %esi
	movl	-7624(%ebp), %edi
	movl	-7628(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1590
	.loc 2 3570 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3571 0
	movl	$672, -16(%ebp)
	jmp	.L219
.L1590:
	.loc 2 3574 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7632(%ebp)
	leal	.LC638@GOTOFF(%ebx), %esi
	movl	%esi, -7636(%ebp)
	movl	$19, -7640(%ebp)
	cld
	movl	-7632(%ebp), %esi
	movl	-7636(%ebp), %edi
	movl	-7640(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1592
	.loc 2 3575 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3576 0
	movl	$673, -16(%ebp)
	jmp	.L219
.L1592:
	.loc 2 3579 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7644(%ebp)
	leal	.LC639@GOTOFF(%ebx), %esi
	movl	%esi, -7648(%ebp)
	movl	$6, -7652(%ebp)
	cld
	movl	-7644(%ebp), %esi
	movl	-7648(%ebp), %edi
	movl	-7652(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1594
	.loc 2 3580 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3581 0
	movl	$674, -16(%ebp)
	jmp	.L219
.L1594:
	.loc 2 3584 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3585 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7656(%ebp)
	leal	.LC640@GOTOFF(%ebx), %esi
	movl	%esi, -7660(%ebp)
	movl	$4, -7664(%ebp)
	cld
	movl	-7656(%ebp), %esi
	movl	-7660(%ebp), %edi
	movl	-7664(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1597
	.loc 2 3586 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3587 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3588 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3589 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$675, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1597:
	.loc 2 3592 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3593 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7668(%ebp)
	leal	.LC641@GOTOFF(%ebx), %esi
	movl	%esi, -7672(%ebp)
	movl	$6, -7676(%ebp)
	cld
	movl	-7668(%ebp), %esi
	movl	-7672(%ebp), %edi
	movl	-7676(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1600
	.loc 2 3594 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3595 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3596 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3597 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$676, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1600:
	.loc 2 3600 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3601 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7680(%ebp)
	leal	.LC642@GOTOFF(%ebx), %esi
	movl	%esi, -7684(%ebp)
	movl	$4, -7688(%ebp)
	cld
	movl	-7680(%ebp), %esi
	movl	-7684(%ebp), %edi
	movl	-7688(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1603
	.loc 2 3602 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3603 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3604 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3605 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$677, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1603:
	.loc 2 3608 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_W_option
	movl	%eax, -16(%ebp)
	jmp	.L219
.L186:
	.loc 2 3615 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3616 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7692(%ebp)
	leal	.LC643@GOTOFF(%ebx), %esi
	movl	%esi, -7696(%ebp)
	movl	$5, -7700(%ebp)
	cld
	movl	-7692(%ebp), %esi
	movl	-7696(%ebp), %edi
	movl	-7700(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1606
	.loc 2 3617 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3618 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3619 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3620 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$680, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1606:
	.loc 2 3623 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3624 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1609
	.loc 2 3625 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3626 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3627 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3628 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$681, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1609:
	.loc 2 3631 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 3632 0
	movl	$682, -16(%ebp)
	jmp	.L219
.L185:
	.loc 2 3636 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_U_option
	movl	%eax, -16(%ebp)
	jmp	.L219
.L184:
	.loc 2 3645 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3646 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7704(%ebp)
	leal	.LC644@GOTOFF(%ebx), %esi
	movl	%esi, -7708(%ebp)
	movl	$6, -7712(%ebp)
	cld
	movl	-7704(%ebp), %esi
	movl	-7708(%ebp), %edi
	movl	-7712(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1612
	.loc 2 3647 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3648 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3649 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3650 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$685, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1612:
	.loc 2 3653 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3654 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7716(%ebp)
	leal	.LC645@GOTOFF(%ebx), %esi
	movl	%esi, -7720(%ebp)
	movl	$6, -7724(%ebp)
	cld
	movl	-7716(%ebp), %esi
	movl	-7720(%ebp), %edi
	movl	-7724(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 3655 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3656 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3657 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3658 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$686, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L183:
	.loc 2 3663 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3664 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7728(%ebp)
	leal	.LC646@GOTOFF(%ebx), %esi
	movl	%esi, -7732(%ebp)
	movl	$5, -7736(%ebp)
	cld
	movl	-7728(%ebp), %esi
	movl	-7732(%ebp), %edi
	movl	-7736(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1618
	.loc 2 3665 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3666 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3667 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3668 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$687, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1618:
	.loc 2 3671 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 3672 0
	movl	$688, -16(%ebp)
	jmp	.L219
.L182:
	.loc 2 3676 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_R_option
	movl	%eax, -16(%ebp)
	jmp	.L219
.L181:
	.loc 2 3680 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 3681 0
	movl	$690, -16(%ebp)
	jmp	.L219
.L180:
	.loc 2 3685 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3686 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7740(%ebp)
	leal	.LC647@GOTOFF(%ebx), %esi
	movl	%esi, -7744(%ebp)
	movl	$8, -7748(%ebp)
	cld
	movl	-7740(%ebp), %esi
	movl	-7744(%ebp), %edi
	movl	-7748(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1621
	.loc 2 3687 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3688 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3689 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3690 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$691, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1621:
	.loc 2 3693 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3694 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7752(%ebp)
	leal	.LC648@GOTOFF(%ebx), %esi
	movl	%esi, -7756(%ebp)
	movl	$15, -7760(%ebp)
	cld
	movl	-7752(%ebp), %esi
	movl	-7756(%ebp), %edi
	movl	-7760(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1624
	.loc 2 3695 0
	movl	$15, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3696 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1624
	.loc 2 3697 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3698 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3699 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3700 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$692, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1624:
	.loc 2 3704 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3705 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7764(%ebp)
	leal	.LC649@GOTOFF(%ebx), %esi
	movl	%esi, -7768(%ebp)
	movl	$7, -7772(%ebp)
	cld
	movl	-7764(%ebp), %esi
	movl	-7768(%ebp), %edi
	movl	-7772(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1628
	.loc 2 3706 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3707 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3708 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3709 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$693, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1628:
	.loc 2 3712 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3713 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7776(%ebp)
	leal	.LC650@GOTOFF(%ebx), %esi
	movl	%esi, -7780(%ebp)
	movl	$7, -7784(%ebp)
	cld
	movl	-7776(%ebp), %esi
	movl	-7780(%ebp), %edi
	movl	-7784(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1631
	.loc 2 3714 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3715 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3716 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3717 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$694, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1631:
	.loc 2 3720 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 3721 0
	movl	$695, -16(%ebp)
	jmp	.L219
.L179:
	.loc 2 3725 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7788(%ebp)
	leal	.LC651@GOTOFF(%ebx), %esi
	movl	%esi, -7792(%ebp)
	movl	$4, -7796(%ebp)
	cld
	movl	-7788(%ebp), %esi
	movl	-7792(%ebp), %edi
	movl	-7796(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1633
	.loc 2 3726 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3727 0
	movl	$696, -16(%ebp)
	jmp	.L219
.L1633:
	.loc 2 3730 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3731 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7800(%ebp)
	leal	.LC652@GOTOFF(%ebx), %esi
	movl	%esi, -7804(%ebp)
	movl	$7, -7808(%ebp)
	cld
	movl	-7800(%ebp), %esi
	movl	-7804(%ebp), %edi
	movl	-7808(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1636
	.loc 2 3732 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3733 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1636
	.loc 2 3734 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3735 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3736 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3737 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$697, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1636:
	.loc 2 3741 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7812(%ebp)
	leal	.LC653@GOTOFF(%ebx), %esi
	movl	%esi, -7816(%ebp)
	movl	$7, -7820(%ebp)
	cld
	movl	-7812(%ebp), %esi
	movl	-7816(%ebp), %edi
	movl	-7820(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1639
	.loc 2 3742 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3743 0
	movl	$698, -16(%ebp)
	jmp	.L219
.L1639:
	.loc 2 3746 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3747 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7824(%ebp)
	leal	.LC654@GOTOFF(%ebx), %esi
	movl	%esi, -7828(%ebp)
	movl	$5, -7832(%ebp)
	cld
	movl	-7824(%ebp), %esi
	movl	-7828(%ebp), %edi
	movl	-7832(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1642
	.loc 2 3748 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3749 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3750 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3751 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$699, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1642:
	.loc 2 3754 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, -7836(%ebp)
	leal	.LC655@GOTOFF(%ebx), %esi
	movl	%esi, -7840(%ebp)
	movl	$2, -7844(%ebp)
	cld
	movl	-7836(%ebp), %esi
	movl	-7840(%ebp), %edi
	movl	-7844(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1644
	.loc 2 3755 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3756 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3757 0
	movl	$700, -16(%ebp)
	jmp	.L219
.L1644:
	.loc 2 3760 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, -7848(%ebp)
	leal	.LC656@GOTOFF(%ebx), %esi
	movl	%esi, -7852(%ebp)
	movl	$2, -7856(%ebp)
	cld
	movl	-7848(%ebp), %esi
	movl	-7852(%ebp), %edi
	movl	-7856(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1646
	.loc 2 3761 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3762 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3763 0
	movl	$701, -16(%ebp)
	jmp	.L219
.L1646:
	.loc 2 3766 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, -7860(%ebp)
	leal	.LC657@GOTOFF(%ebx), %esi
	movl	%esi, -7864(%ebp)
	movl	$2, -7868(%ebp)
	cld
	movl	-7860(%ebp), %esi
	movl	-7864(%ebp), %edi
	movl	-7868(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1648
	.loc 2 3767 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3768 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3769 0
	movl	$702, -16(%ebp)
	jmp	.L219
.L1648:
	.loc 2 3772 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, -7872(%ebp)
	leal	.LC658@GOTOFF(%ebx), %esi
	movl	%esi, -7876(%ebp)
	movl	$2, -7880(%ebp)
	cld
	movl	-7872(%ebp), %esi
	movl	-7876(%ebp), %edi
	movl	-7880(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1650
	.loc 2 3773 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3774 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3775 0
	movl	$703, -16(%ebp)
	jmp	.L219
.L1650:
	.loc 2 3778 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3779 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1653
	.loc 2 3780 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3781 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3782 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3783 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$704, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1653:
	.loc 2 3786 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 3787 0
	movl	$705, -16(%ebp)
	jmp	.L219
.L178:
	.loc 2 3791 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3792 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7884(%ebp)
	leal	.LC659@GOTOFF(%ebx), %esi
	movl	%esi, -7888(%ebp)
	movl	$3, -7892(%ebp)
	cld
	movl	-7884(%ebp), %esi
	movl	-7888(%ebp), %edi
	movl	-7892(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 3793 0
	movl	$3, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3794 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L162
	.loc 2 3795 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3796 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3797 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3798 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$706, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L177:
	.loc 2 3804 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3805 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7896(%ebp)
	leal	.LC660@GOTOFF(%ebx), %esi
	movl	%esi, -7900(%ebp)
	movl	$3, -7904(%ebp)
	cld
	movl	-7896(%ebp), %esi
	movl	-7900(%ebp), %edi
	movl	-7904(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1660
	.loc 2 3806 0
	movl	$3, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3807 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3808 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3809 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$707, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1660:
	.loc 2 3812 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3813 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7908(%ebp)
	leal	.LC661@GOTOFF(%ebx), %esi
	movl	%esi, -7912(%ebp)
	movl	$3, -7916(%ebp)
	cld
	movl	-7908(%ebp), %esi
	movl	-7912(%ebp), %edi
	movl	-7916(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1663
	.loc 2 3814 0
	movl	$3, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3815 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3816 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3817 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$708, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1663:
	.loc 2 3820 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7920(%ebp)
	leal	.LC662@GOTOFF(%ebx), %esi
	movl	%esi, -7924(%ebp)
	movl	$4, -7928(%ebp)
	cld
	movl	-7920(%ebp), %esi
	movl	-7924(%ebp), %edi
	movl	-7928(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1665
	.loc 2 3821 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3822 0
	movl	$709, -16(%ebp)
	jmp	.L219
.L1665:
	.loc 2 3825 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7932(%ebp)
	leal	.LC663@GOTOFF(%ebx), %esi
	movl	%esi, -7936(%ebp)
	movl	$5, -7940(%ebp)
	cld
	movl	-7932(%ebp), %esi
	movl	-7936(%ebp), %edi
	movl	-7940(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1667
	.loc 2 3826 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3827 0
	movl	$710, -16(%ebp)
	jmp	.L219
.L1667:
	.loc 2 3830 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7944(%ebp)
	leal	.LC664@GOTOFF(%ebx), %esi
	movl	%esi, -7948(%ebp)
	movl	$4, -7952(%ebp)
	cld
	movl	-7944(%ebp), %esi
	movl	-7948(%ebp), %edi
	movl	-7952(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1669
	.loc 2 3831 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3832 0
	movl	$711, -16(%ebp)
	jmp	.L219
.L1669:
	.loc 2 3835 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7956(%ebp)
	leal	.LC665@GOTOFF(%ebx), %esi
	movl	%esi, -7960(%ebp)
	movl	$4, -7964(%ebp)
	cld
	movl	-7956(%ebp), %esi
	movl	-7960(%ebp), %edi
	movl	-7964(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1671
	.loc 2 3836 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3837 0
	movl	$712, -16(%ebp)
	jmp	.L219
.L1671:
	.loc 2 3840 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3841 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7968(%ebp)
	leal	.LC666@GOTOFF(%ebx), %esi
	movl	%esi, -7972(%ebp)
	movl	$3, -7976(%ebp)
	cld
	movl	-7968(%ebp), %esi
	movl	-7972(%ebp), %edi
	movl	-7976(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1674
	.loc 2 3842 0
	movl	$3, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3843 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3844 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3845 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$713, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1674:
	.loc 2 3848 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3849 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7980(%ebp)
	leal	.LC667@GOTOFF(%ebx), %esi
	movl	%esi, -7984(%ebp)
	movl	$9, -7988(%ebp)
	cld
	movl	-7980(%ebp), %esi
	movl	-7984(%ebp), %edi
	movl	-7988(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1677
	.loc 2 3850 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3851 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3852 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3853 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$714, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1677:
	.loc 2 3856 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3857 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -7992(%ebp)
	leal	.LC668@GOTOFF(%ebx), %esi
	movl	%esi, -7996(%ebp)
	movl	$9, -8000(%ebp)
	cld
	movl	-7992(%ebp), %esi
	movl	-7996(%ebp), %edi
	movl	-8000(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1680
	.loc 2 3858 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3859 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3860 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3861 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$715, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1680:
	.loc 2 3864 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3865 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8004(%ebp)
	leal	.LC669@GOTOFF(%ebx), %esi
	movl	%esi, -8008(%ebp)
	movl	$9, -8012(%ebp)
	cld
	movl	-8004(%ebp), %esi
	movl	-8008(%ebp), %edi
	movl	-8012(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1683
	.loc 2 3866 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3867 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3868 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3869 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$716, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1683:
	.loc 2 3872 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8016(%ebp)
	leal	.LC670@GOTOFF(%ebx), %esi
	movl	%esi, -8020(%ebp)
	movl	$4, -8024(%ebp)
	cld
	movl	-8016(%ebp), %esi
	movl	-8020(%ebp), %edi
	movl	-8024(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1685
	.loc 2 3873 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3874 0
	movl	$717, -16(%ebp)
	jmp	.L219
.L1685:
	.loc 2 3877 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 3878 0
	movl	$718, -16(%ebp)
	jmp	.L219
.L176:
	.loc 2 3882 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3883 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8028(%ebp)
	leal	.LC671@GOTOFF(%ebx), %esi
	movl	%esi, -8032(%ebp)
	movl	$5, -8036(%ebp)
	cld
	movl	-8028(%ebp), %esi
	movl	-8032(%ebp), %edi
	movl	-8036(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1688
	.loc 2 3884 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3885 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3886 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3887 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$719, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1688:
	.loc 2 3890 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3891 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8040(%ebp)
	leal	.LC672@GOTOFF(%ebx), %esi
	movl	%esi, -8044(%ebp)
	movl	$6, -8048(%ebp)
	cld
	movl	-8040(%ebp), %esi
	movl	-8044(%ebp), %edi
	movl	-8048(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1691
	.loc 2 3892 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3893 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3894 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3895 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$720, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1691:
	.loc 2 3898 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3899 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8052(%ebp)
	leal	.LC673@GOTOFF(%ebx), %esi
	movl	%esi, -8056(%ebp)
	movl	$6, -8060(%ebp)
	cld
	movl	-8052(%ebp), %esi
	movl	-8056(%ebp), %edi
	movl	-8060(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1694
	.loc 2 3900 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3901 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3902 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3903 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$721, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1694:
	.loc 2 3906 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3907 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8064(%ebp)
	leal	.LC674@GOTOFF(%ebx), %esi
	movl	%esi, -8068(%ebp)
	movl	$4, -8072(%ebp)
	cld
	movl	-8064(%ebp), %esi
	movl	-8068(%ebp), %edi
	movl	-8072(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1697
	.loc 2 3908 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3909 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3910 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3911 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$722, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1697:
	.loc 2 3914 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8076(%ebp)
	leal	.LC675@GOTOFF(%ebx), %esi
	movl	%esi, -8080(%ebp)
	movl	$10, -8084(%ebp)
	cld
	movl	-8076(%ebp), %esi
	movl	-8080(%ebp), %edi
	movl	-8084(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1699
	.loc 2 3915 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3916 0
	movl	$723, -16(%ebp)
	jmp	.L219
.L1699:
	.loc 2 3919 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3920 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8088(%ebp)
	leal	.LC676@GOTOFF(%ebx), %esi
	movl	%esi, -8092(%ebp)
	movl	$6, -8096(%ebp)
	cld
	movl	-8088(%ebp), %esi
	movl	-8092(%ebp), %edi
	movl	-8096(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1702
	.loc 2 3921 0
	movl	$6, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3922 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3923 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3924 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$724, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1702:
	.loc 2 3927 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3928 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1705
	.loc 2 3929 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3930 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3931 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$725, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1705:
	.loc 2 3933 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1707
	.loc 2 3934 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1709
	.loc 2 3935 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1709:
	.loc 2 3937 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3938 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3939 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$725, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1707:
	.loc 2 3942 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 3943 0
	movl	$726, -16(%ebp)
	jmp	.L219
.L175:
	.loc 2 3947 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3948 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8100(%ebp)
	leal	.LC677@GOTOFF(%ebx), %esi
	movl	%esi, -8104(%ebp)
	movl	$5, -8108(%ebp)
	cld
	movl	-8100(%ebp), %esi
	movl	-8104(%ebp), %edi
	movl	-8108(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1712
	.loc 2 3949 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3950 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3951 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3952 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$727, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1712:
	.loc 2 3955 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8112(%ebp)
	leal	.LC678@GOTOFF(%ebx), %esi
	movl	%esi, -8116(%ebp)
	movl	$5, -8120(%ebp)
	cld
	movl	-8112(%ebp), %esi
	movl	-8116(%ebp), %edi
	movl	-8120(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1714
	.loc 2 3956 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3957 0
	movl	$728, -16(%ebp)
	jmp	.L219
.L1714:
	.loc 2 3960 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3961 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8124(%ebp)
	leal	.LC679@GOTOFF(%ebx), %esi
	movl	%esi, -8128(%ebp)
	movl	$10, -8132(%ebp)
	cld
	movl	-8124(%ebp), %esi
	movl	-8128(%ebp), %edi
	movl	-8132(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1717
	.loc 2 3962 0
	movl	$10, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3963 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3964 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3965 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$729, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1717:
	.loc 2 3968 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3969 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8136(%ebp)
	leal	.LC680@GOTOFF(%ebx), %esi
	movl	%esi, -8140(%ebp)
	movl	$8, -8144(%ebp)
	cld
	movl	-8136(%ebp), %esi
	movl	-8140(%ebp), %edi
	movl	-8144(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1720
	.loc 2 3970 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 3971 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3972 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3973 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$730, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1720:
	.loc 2 3976 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8148(%ebp)
	leal	.LC681@GOTOFF(%ebx), %esi
	movl	%esi, -8152(%ebp)
	movl	$8, -8156(%ebp)
	cld
	movl	-8148(%ebp), %esi
	movl	-8152(%ebp), %edi
	movl	-8156(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1722
	.loc 2 3977 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3978 0
	movl	$731, -16(%ebp)
	jmp	.L219
.L1722:
	.loc 2 3981 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8160(%ebp)
	leal	.LC682@GOTOFF(%ebx), %esi
	movl	%esi, -8164(%ebp)
	movl	$4, -8168(%ebp)
	cld
	movl	-8160(%ebp), %esi
	movl	-8164(%ebp), %edi
	movl	-8168(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1724
	.loc 2 3982 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3983 0
	movl	$732, -16(%ebp)
	jmp	.L219
.L1724:
	.loc 2 3986 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 3987 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1727
	.loc 2 3988 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3989 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3990 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$733, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1727:
	.loc 2 3992 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L162
	.loc 2 3993 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1731
	.loc 2 3994 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1731:
	.loc 2 3996 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 3997 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 3998 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$733, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L174:
	.loc 2 4003 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 4004 0
	movl	$734, -16(%ebp)
	jmp	.L219
.L173:
	.loc 2 4008 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4009 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8172(%ebp)
	leal	.LC683@GOTOFF(%ebx), %esi
	movl	%esi, -8176(%ebp)
	movl	$7, -8180(%ebp)
	cld
	movl	-8172(%ebp), %esi
	movl	-8176(%ebp), %edi
	movl	-8180(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1734
	.loc 2 4010 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4011 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L1734
	.loc 2 4012 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4013 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4014 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4015 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$735, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1734:
	.loc 2 4019 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4020 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8184(%ebp)
	leal	.LC684@GOTOFF(%ebx), %esi
	movl	%esi, -8188(%ebp)
	movl	$5, -8192(%ebp)
	cld
	movl	-8184(%ebp), %esi
	movl	-8188(%ebp), %edi
	movl	-8192(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1738
	.loc 2 4021 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4022 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4023 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4024 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$736, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1738:
	.loc 2 4027 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4028 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8196(%ebp)
	leal	.LC685@GOTOFF(%ebx), %esi
	movl	%esi, -8200(%ebp)
	movl	$5, -8204(%ebp)
	cld
	movl	-8196(%ebp), %esi
	movl	-8200(%ebp), %edi
	movl	-8204(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1741
	.loc 2 4029 0
	movl	$5, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4030 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4031 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4032 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$737, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1741:
	.loc 2 4035 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4036 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	is_decimal
	testl	%eax, %eax
	je	.L162
	.loc 2 4037 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4038 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	optargd@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4039 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4040 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$738, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L172:
	.loc 2 4045 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4046 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8208(%ebp)
	leal	.LC686@GOTOFF(%ebx), %esi
	movl	%esi, -8212(%ebp)
	movl	$7, -8216(%ebp)
	cld
	movl	-8208(%ebp), %esi
	movl	-8212(%ebp), %edi
	movl	-8216(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1747
	.loc 2 4047 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4048 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4049 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4050 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$739, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1747:
	.loc 2 4053 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4054 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8220(%ebp)
	leal	.LC687@GOTOFF(%ebx), %esi
	movl	%esi, -8224(%ebp)
	movl	$4, -8228(%ebp)
	cld
	movl	-8220(%ebp), %esi
	movl	-8224(%ebp), %edi
	movl	-8228(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1750
	.loc 2 4055 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4056 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4057 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4058 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$740, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1750:
	.loc 2 4061 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 4062 0
	movl	$741, -16(%ebp)
	jmp	.L219
.L171:
	.loc 2 4066 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 4067 0
	movl	$742, -16(%ebp)
	jmp	.L219
.L170:
	.loc 2 4071 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4072 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8232(%ebp)
	leal	.LC688@GOTOFF(%ebx), %esi
	movl	%esi, -8236(%ebp)
	movl	$9, -8240(%ebp)
	cld
	movl	-8232(%ebp), %esi
	movl	-8236(%ebp), %edi
	movl	-8240(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1753
	.loc 2 4073 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4074 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4075 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4076 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$743, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1753:
	.loc 2 4079 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4080 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8244(%ebp)
	leal	.LC689@GOTOFF(%ebx), %esi
	movl	%esi, -8248(%ebp)
	movl	$7, -8252(%ebp)
	cld
	movl	-8244(%ebp), %esi
	movl	-8248(%ebp), %edi
	movl	-8252(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1756
	.loc 2 4081 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4082 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4083 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4084 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$744, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1756:
	.loc 2 4087 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4088 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4089 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4090 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$745, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L169:
	.loc 2 4094 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4095 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8256(%ebp)
	leal	.LC690@GOTOFF(%ebx), %esi
	movl	%esi, -8260(%ebp)
	movl	$7, -8264(%ebp)
	cld
	movl	-8256(%ebp), %esi
	movl	-8260(%ebp), %edi
	movl	-8264(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1760
	.loc 2 4096 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4097 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4098 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4099 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$746, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1760:
	.loc 2 4102 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4103 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8268(%ebp)
	leal	.LC691@GOTOFF(%ebx), %esi
	movl	%esi, -8272(%ebp)
	movl	$4, -8276(%ebp)
	cld
	movl	-8268(%ebp), %esi
	movl	-8272(%ebp), %edi
	movl	-8276(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1763
	.loc 2 4104 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4105 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4106 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4107 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$747, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1763:
	.loc 2 4110 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_C_option
	movl	%eax, -16(%ebp)
	jmp	.L219
.L168:
	.loc 2 4114 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4115 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4116 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4117 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$749, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L167:
	.loc 2 4121 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8280(%ebp)
	leal	.LC692@GOTOFF(%ebx), %esi
	movl	%esi, -8284(%ebp)
	movl	$4, -8288(%ebp)
	cld
	movl	-8280(%ebp), %esi
	movl	-8284(%ebp), %edi
	movl	-8288(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 4122 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4123 0
	movl	$750, -16(%ebp)
	jmp	.L219
.L166:
	.loc 2 4128 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 4129 0
	movl	$751, -16(%ebp)
	jmp	.L219
.L165:
	.loc 2 4133 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8292(%ebp)
	leal	.LC693@GOTOFF(%ebx), %esi
	movl	%esi, -8296(%ebp)
	movl	$26, -8300(%ebp)
	cld
	movl	-8292(%ebp), %esi
	movl	-8296(%ebp), %edi
	movl	-8300(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1768
	.loc 2 4134 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4135 0
	movl	$752, -16(%ebp)
	jmp	.L219
.L1768:
	.loc 2 4138 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8304(%ebp)
	leal	.LC694@GOTOFF(%ebx), %esi
	movl	%esi, -8308(%ebp)
	movl	$21, -8312(%ebp)
	cld
	movl	-8304(%ebp), %esi
	movl	-8308(%ebp), %edi
	movl	-8312(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1770
	.loc 2 4139 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4140 0
	movl	$753, -16(%ebp)
	jmp	.L219
.L1770:
	.loc 2 4143 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8316(%ebp)
	leal	.LC695@GOTOFF(%ebx), %esi
	movl	%esi, -8320(%ebp)
	movl	$16, -8324(%ebp)
	cld
	movl	-8316(%ebp), %esi
	movl	-8320(%ebp), %edi
	movl	-8324(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1772
	.loc 2 4144 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4145 0
	movl	$754, -16(%ebp)
	jmp	.L219
.L1772:
	.loc 2 4148 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8328(%ebp)
	leal	.LC696@GOTOFF(%ebx), %esi
	movl	%esi, -8332(%ebp)
	movl	$10, -8336(%ebp)
	cld
	movl	-8328(%ebp), %esi
	movl	-8332(%ebp), %edi
	movl	-8336(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1774
	.loc 2 4149 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4150 0
	movl	$755, -16(%ebp)
	jmp	.L219
.L1774:
	.loc 2 4153 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8340(%ebp)
	leal	.LC697@GOTOFF(%ebx), %esi
	movl	%esi, -8344(%ebp)
	movl	$10, -8348(%ebp)
	cld
	movl	-8340(%ebp), %esi
	movl	-8344(%ebp), %edi
	movl	-8348(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1776
	.loc 2 4154 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4155 0
	movl	$756, -16(%ebp)
	jmp	.L219
.L1776:
	.loc 2 4158 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8352(%ebp)
	leal	.LC698@GOTOFF(%ebx), %esi
	movl	%esi, -8356(%ebp)
	movl	$20, -8360(%ebp)
	cld
	movl	-8352(%ebp), %esi
	movl	-8356(%ebp), %edi
	movl	-8360(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1778
	.loc 2 4159 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4160 0
	movl	$757, -16(%ebp)
	jmp	.L219
.L1778:
	.loc 2 4163 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4164 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8364(%ebp)
	leal	.LC699@GOTOFF(%ebx), %esi
	movl	%esi, -8368(%ebp)
	movl	$16, -8372(%ebp)
	cld
	movl	-8364(%ebp), %esi
	movl	-8368(%ebp), %edi
	movl	-8372(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1781
	.loc 2 4165 0
	movl	$16, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4166 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4167 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4168 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$758, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1781:
	.loc 2 4171 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8376(%ebp)
	leal	.LC700@GOTOFF(%ebx), %esi
	movl	%esi, -8380(%ebp)
	movl	$12, -8384(%ebp)
	cld
	movl	-8376(%ebp), %esi
	movl	-8380(%ebp), %edi
	movl	-8384(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1783
	.loc 2 4172 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4173 0
	movl	$759, -16(%ebp)
	jmp	.L219
.L1783:
	.loc 2 4176 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8388(%ebp)
	leal	.LC701@GOTOFF(%ebx), %esi
	movl	%esi, -8392(%ebp)
	movl	$18, -8396(%ebp)
	cld
	movl	-8388(%ebp), %esi
	movl	-8392(%ebp), %edi
	movl	-8396(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1785
	.loc 2 4177 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4178 0
	movl	$760, -16(%ebp)
	jmp	.L219
.L1785:
	.loc 2 4181 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8400(%ebp)
	leal	.LC702@GOTOFF(%ebx), %esi
	movl	%esi, -8404(%ebp)
	movl	$14, -8408(%ebp)
	cld
	movl	-8400(%ebp), %esi
	movl	-8404(%ebp), %edi
	movl	-8408(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1787
	.loc 2 4182 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4183 0
	movl	$761, -16(%ebp)
	jmp	.L219
.L1787:
	.loc 2 4186 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8412(%ebp)
	leal	.LC703@GOTOFF(%ebx), %esi
	movl	%esi, -8416(%ebp)
	movl	$17, -8420(%ebp)
	cld
	movl	-8412(%ebp), %esi
	movl	-8416(%ebp), %edi
	movl	-8420(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1789
	.loc 2 4187 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4188 0
	movl	$762, -16(%ebp)
	jmp	.L219
.L1789:
	.loc 2 4191 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4192 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8424(%ebp)
	leal	.LC704@GOTOFF(%ebx), %esi
	movl	%esi, -8428(%ebp)
	movl	$8, -8432(%ebp)
	cld
	movl	-8424(%ebp), %esi
	movl	-8428(%ebp), %edi
	movl	-8432(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1792
	.loc 2 4193 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4194 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4195 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4196 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$763, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1792:
	.loc 2 4199 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8436(%ebp)
	leal	.LC705@GOTOFF(%ebx), %esi
	movl	%esi, -8440(%ebp)
	movl	$11, -8444(%ebp)
	cld
	movl	-8436(%ebp), %esi
	movl	-8440(%ebp), %edi
	movl	-8444(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1794
	.loc 2 4200 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4201 0
	movl	$764, -16(%ebp)
	jmp	.L219
.L1794:
	.loc 2 4204 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8448(%ebp)
	leal	.LC706@GOTOFF(%ebx), %esi
	movl	%esi, -8452(%ebp)
	movl	$9, -8456(%ebp)
	cld
	movl	-8448(%ebp), %esi
	movl	-8452(%ebp), %edi
	movl	-8456(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1796
	.loc 2 4205 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4206 0
	movl	$765, -16(%ebp)
	jmp	.L219
.L1796:
	.loc 2 4209 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4210 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8460(%ebp)
	leal	.LC707@GOTOFF(%ebx), %esi
	movl	%esi, -8464(%ebp)
	movl	$8, -8468(%ebp)
	cld
	movl	-8460(%ebp), %esi
	movl	-8464(%ebp), %edi
	movl	-8468(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1799
	.loc 2 4211 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4212 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4213 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4214 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$766, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1799:
	.loc 2 4217 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4218 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8472(%ebp)
	leal	.LC708@GOTOFF(%ebx), %esi
	movl	%esi, -8476(%ebp)
	movl	$7, -8480(%ebp)
	cld
	movl	-8472(%ebp), %esi
	movl	-8476(%ebp), %edi
	movl	-8480(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1802
	.loc 2 4219 0
	movl	$7, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4220 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4221 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4222 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$767, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1802:
	.loc 2 4225 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8484(%ebp)
	leal	.LC709@GOTOFF(%ebx), %esi
	movl	%esi, -8488(%ebp)
	movl	$9, -8492(%ebp)
	cld
	movl	-8484(%ebp), %esi
	movl	-8488(%ebp), %edi
	movl	-8492(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1804
	.loc 2 4226 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4227 0
	movl	$768, -16(%ebp)
	jmp	.L219
.L1804:
	.loc 2 4230 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8496(%ebp)
	leal	.LC710@GOTOFF(%ebx), %esi
	movl	%esi, -8500(%ebp)
	movl	$13, -8504(%ebp)
	cld
	movl	-8496(%ebp), %esi
	movl	-8500(%ebp), %edi
	movl	-8504(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1806
	.loc 2 4231 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4232 0
	movl	$769, -16(%ebp)
	jmp	.L219
.L1806:
	.loc 2 4235 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8508(%ebp)
	leal	.LC711@GOTOFF(%ebx), %esi
	movl	%esi, -8512(%ebp)
	movl	$10, -8516(%ebp)
	cld
	movl	-8508(%ebp), %esi
	movl	-8512(%ebp), %edi
	movl	-8516(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1808
	.loc 2 4236 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4237 0
	movl	$770, -16(%ebp)
	jmp	.L219
.L1808:
	.loc 2 4240 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8520(%ebp)
	leal	.LC712@GOTOFF(%ebx), %esi
	movl	%esi, -8524(%ebp)
	movl	$20, -8528(%ebp)
	cld
	movl	-8520(%ebp), %esi
	movl	-8524(%ebp), %edi
	movl	-8528(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1810
	.loc 2 4241 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4242 0
	movl	$771, -16(%ebp)
	jmp	.L219
.L1810:
	.loc 2 4245 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4246 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8532(%ebp)
	leal	.LC713@GOTOFF(%ebx), %esi
	movl	%esi, -8536(%ebp)
	movl	$18, -8540(%ebp)
	cld
	movl	-8532(%ebp), %esi
	movl	-8536(%ebp), %edi
	movl	-8540(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1813
	.loc 2 4247 0
	movl	$18, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4248 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4249 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4250 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$772, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1813:
	.loc 2 4253 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4254 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8544(%ebp)
	leal	.LC714@GOTOFF(%ebx), %esi
	movl	%esi, -8548(%ebp)
	movl	$17, -8552(%ebp)
	cld
	movl	-8544(%ebp), %esi
	movl	-8548(%ebp), %edi
	movl	-8552(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1816
	.loc 2 4255 0
	movl	$17, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4256 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4257 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4258 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$773, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1816:
	.loc 2 4261 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8556(%ebp)
	leal	.LC715@GOTOFF(%ebx), %esi
	movl	%esi, -8560(%ebp)
	movl	$18, -8564(%ebp)
	cld
	movl	-8556(%ebp), %esi
	movl	-8560(%ebp), %edi
	movl	-8564(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1818
	.loc 2 4262 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4263 0
	movl	$774, -16(%ebp)
	jmp	.L219
.L1818:
	.loc 2 4266 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8568(%ebp)
	leal	.LC716@GOTOFF(%ebx), %esi
	movl	%esi, -8572(%ebp)
	movl	$34, -8576(%ebp)
	cld
	movl	-8568(%ebp), %esi
	movl	-8572(%ebp), %edi
	movl	-8576(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1820
	.loc 2 4267 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4268 0
	movl	$775, -16(%ebp)
	jmp	.L219
.L1820:
	.loc 2 4271 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8580(%ebp)
	leal	.LC717@GOTOFF(%ebx), %esi
	movl	%esi, -8584(%ebp)
	movl	$25, -8588(%ebp)
	cld
	movl	-8580(%ebp), %esi
	movl	-8584(%ebp), %edi
	movl	-8588(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1822
	.loc 2 4272 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4273 0
	movl	$776, -16(%ebp)
	jmp	.L219
.L1822:
	.loc 2 4276 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4277 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8592(%ebp)
	leal	.LC718@GOTOFF(%ebx), %esi
	movl	%esi, -8596(%ebp)
	movl	$18, -8600(%ebp)
	cld
	movl	-8592(%ebp), %esi
	movl	-8596(%ebp), %edi
	movl	-8600(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1825
	.loc 2 4278 0
	movl	$18, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4279 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4280 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4281 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$777, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1825:
	.loc 2 4284 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4285 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8604(%ebp)
	leal	.LC719@GOTOFF(%ebx), %esi
	movl	%esi, -8608(%ebp)
	movl	$17, -8612(%ebp)
	cld
	movl	-8604(%ebp), %esi
	movl	-8608(%ebp), %edi
	movl	-8612(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1828
	.loc 2 4286 0
	movl	$17, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4287 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4288 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4289 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$778, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1828:
	.loc 2 4292 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8616(%ebp)
	leal	.LC720@GOTOFF(%ebx), %esi
	movl	%esi, -8620(%ebp)
	movl	$13, -8624(%ebp)
	cld
	movl	-8616(%ebp), %esi
	movl	-8620(%ebp), %edi
	movl	-8624(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1830
	.loc 2 4293 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4294 0
	movl	$779, -16(%ebp)
	jmp	.L219
.L1830:
	.loc 2 4297 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8628(%ebp)
	leal	.LC721@GOTOFF(%ebx), %esi
	movl	%esi, -8632(%ebp)
	movl	$7, -8636(%ebp)
	cld
	movl	-8628(%ebp), %esi
	movl	-8632(%ebp), %edi
	movl	-8636(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1832
	.loc 2 4298 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4299 0
	movl	$780, -16(%ebp)
	jmp	.L219
.L1832:
	.loc 2 4302 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8640(%ebp)
	leal	.LC722@GOTOFF(%ebx), %esi
	movl	%esi, -8644(%ebp)
	movl	$18, -8648(%ebp)
	cld
	movl	-8640(%ebp), %esi
	movl	-8644(%ebp), %edi
	movl	-8648(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1834
	.loc 2 4303 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4304 0
	movl	$781, -16(%ebp)
	jmp	.L219
.L1834:
	.loc 2 4307 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8652(%ebp)
	leal	.LC723@GOTOFF(%ebx), %esi
	movl	%esi, -8656(%ebp)
	movl	$11, -8660(%ebp)
	cld
	movl	-8652(%ebp), %esi
	movl	-8656(%ebp), %edi
	movl	-8660(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1836
	.loc 2 4308 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4309 0
	movl	$782, -16(%ebp)
	jmp	.L219
.L1836:
	.loc 2 4312 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4313 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8664(%ebp)
	leal	.LC724@GOTOFF(%ebx), %esi
	movl	%esi, -8668(%ebp)
	movl	$8, -8672(%ebp)
	cld
	movl	-8664(%ebp), %esi
	movl	-8668(%ebp), %edi
	movl	-8672(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1839
	.loc 2 4314 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4315 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4316 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4317 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$783, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1839:
	.loc 2 4320 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8676(%ebp)
	leal	.LC725@GOTOFF(%ebx), %esi
	movl	%esi, -8680(%ebp)
	movl	$11, -8684(%ebp)
	cld
	movl	-8676(%ebp), %esi
	movl	-8680(%ebp), %edi
	movl	-8684(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1841
	.loc 2 4321 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4322 0
	movl	$784, -16(%ebp)
	jmp	.L219
.L1841:
	.loc 2 4325 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8688(%ebp)
	leal	.LC726@GOTOFF(%ebx), %esi
	movl	%esi, -8692(%ebp)
	movl	$19, -8696(%ebp)
	cld
	movl	-8688(%ebp), %esi
	movl	-8692(%ebp), %edi
	movl	-8696(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1843
	.loc 2 4326 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4327 0
	movl	$785, -16(%ebp)
	jmp	.L219
.L1843:
	.loc 2 4330 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8700(%ebp)
	leal	.LC727@GOTOFF(%ebx), %esi
	movl	%esi, -8704(%ebp)
	movl	$14, -8708(%ebp)
	cld
	movl	-8700(%ebp), %esi
	movl	-8704(%ebp), %edi
	movl	-8708(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1845
	.loc 2 4331 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4332 0
	movl	$786, -16(%ebp)
	jmp	.L219
.L1845:
	.loc 2 4335 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8712(%ebp)
	leal	.LC728@GOTOFF(%ebx), %esi
	movl	%esi, -8716(%ebp)
	movl	$24, -8720(%ebp)
	cld
	movl	-8712(%ebp), %esi
	movl	-8716(%ebp), %edi
	movl	-8720(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1847
	.loc 2 4336 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4337 0
	movl	$787, -16(%ebp)
	jmp	.L219
.L1847:
	.loc 2 4340 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8724(%ebp)
	leal	.LC729@GOTOFF(%ebx), %esi
	movl	%esi, -8728(%ebp)
	movl	$23, -8732(%ebp)
	cld
	movl	-8724(%ebp), %esi
	movl	-8728(%ebp), %edi
	movl	-8732(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1849
	.loc 2 4341 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4342 0
	movl	$788, -16(%ebp)
	jmp	.L219
.L1849:
	.loc 2 4345 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8736(%ebp)
	leal	.LC730@GOTOFF(%ebx), %esi
	movl	%esi, -8740(%ebp)
	movl	$19, -8744(%ebp)
	cld
	movl	-8736(%ebp), %esi
	movl	-8740(%ebp), %edi
	movl	-8744(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1851
	.loc 2 4346 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4347 0
	movl	$789, -16(%ebp)
	jmp	.L219
.L1851:
	.loc 2 4350 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4351 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8748(%ebp)
	leal	.LC731@GOTOFF(%ebx), %esi
	movl	%esi, -8752(%ebp)
	movl	$19, -8756(%ebp)
	cld
	movl	-8748(%ebp), %esi
	movl	-8752(%ebp), %edi
	movl	-8756(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1854
	.loc 2 4352 0
	movl	$19, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4353 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1856
	.loc 2 4354 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4355 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4356 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$790, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1856:
	.loc 2 4358 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1854
	.loc 2 4359 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1859
	.loc 2 4360 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1859:
	.loc 2 4362 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4363 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4364 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$790, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1854:
	.loc 2 4368 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4369 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8760(%ebp)
	leal	.LC732@GOTOFF(%ebx), %esi
	movl	%esi, -8764(%ebp)
	movl	$28, -8768(%ebp)
	cld
	movl	-8760(%ebp), %esi
	movl	-8764(%ebp), %edi
	movl	-8768(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1862
	.loc 2 4370 0
	movl	$28, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4371 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1864
	.loc 2 4372 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4373 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4374 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$791, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1864:
	.loc 2 4376 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1862
	.loc 2 4377 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1867
	.loc 2 4378 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1867:
	.loc 2 4380 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4381 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4382 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$791, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1862:
	.loc 2 4386 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4387 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8772(%ebp)
	leal	.LC733@GOTOFF(%ebx), %esi
	movl	%esi, -8776(%ebp)
	movl	$21, -8780(%ebp)
	cld
	movl	-8772(%ebp), %esi
	movl	-8776(%ebp), %edi
	movl	-8780(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1870
	.loc 2 4388 0
	movl	$21, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4389 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1872
	.loc 2 4390 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4391 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4392 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$792, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1872:
	.loc 2 4394 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1870
	.loc 2 4395 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1875
	.loc 2 4396 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1875:
	.loc 2 4398 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4399 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4400 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$792, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1870:
	.loc 2 4404 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4405 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8784(%ebp)
	leal	.LC734@GOTOFF(%ebx), %esi
	movl	%esi, -8788(%ebp)
	movl	$16, -8792(%ebp)
	cld
	movl	-8784(%ebp), %esi
	movl	-8788(%ebp), %edi
	movl	-8792(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1878
	.loc 2 4406 0
	movl	$16, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4407 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4408 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4409 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$793, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1878:
	.loc 2 4412 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4413 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8796(%ebp)
	leal	.LC735@GOTOFF(%ebx), %esi
	movl	%esi, -8800(%ebp)
	movl	$25, -8804(%ebp)
	cld
	movl	-8796(%ebp), %esi
	movl	-8800(%ebp), %edi
	movl	-8804(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1881
	.loc 2 4414 0
	movl	$25, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4415 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1883
	.loc 2 4416 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4417 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4418 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$794, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1883:
	.loc 2 4420 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1881
	.loc 2 4421 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1886
	.loc 2 4422 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1886:
	.loc 2 4424 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4425 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4426 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$794, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1881:
	.loc 2 4430 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4431 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8808(%ebp)
	leal	.LC736@GOTOFF(%ebx), %esi
	movl	%esi, -8812(%ebp)
	movl	$19, -8816(%ebp)
	cld
	movl	-8808(%ebp), %esi
	movl	-8812(%ebp), %edi
	movl	-8816(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1889
	.loc 2 4432 0
	movl	$19, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4433 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_string
	movl	%eax, (%esp)
	call	want_directory@PLT
	testl	%eax, %eax
	je	.L1891
	.loc 2 4434 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4435 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4436 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$795, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1891:
	.loc 2 4438 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1889
	.loc 2 4439 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1894
	.loc 2 4440 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1894:
	.loc 2 4442 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4443 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4444 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$795, (%esp)
	call	add_any_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1889:
	.loc 2 4448 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8820(%ebp)
	leal	.LC737@GOTOFF(%ebx), %esi
	movl	%esi, -8824(%ebp)
	movl	$18, -8828(%ebp)
	cld
	movl	-8820(%ebp), %esi
	movl	-8824(%ebp), %edi
	movl	-8828(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1896
	.loc 2 4449 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4450 0
	movl	$796, -16(%ebp)
	jmp	.L219
.L1896:
	.loc 2 4453 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4454 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8832(%ebp)
	leal	.LC738@GOTOFF(%ebx), %esi
	movl	%esi, -8836(%ebp)
	movl	$9, -8840(%ebp)
	cld
	movl	-8832(%ebp), %esi
	movl	-8836(%ebp), %edi
	movl	-8840(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1899
	.loc 2 4455 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4456 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4457 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4458 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$797, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1899:
	.loc 2 4461 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4462 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8844(%ebp)
	leal	.LC739@GOTOFF(%ebx), %esi
	movl	%esi, -8848(%ebp)
	movl	$9, -8852(%ebp)
	cld
	movl	-8844(%ebp), %esi
	movl	-8848(%ebp), %edi
	movl	-8852(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1902
	.loc 2 4463 0
	movl	$9, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4464 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4465 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4466 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$798, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1902:
	.loc 2 4469 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8856(%ebp)
	leal	.LC740@GOTOFF(%ebx), %esi
	movl	%esi, -8860(%ebp)
	movl	$7, -8864(%ebp)
	cld
	movl	-8856(%ebp), %esi
	movl	-8860(%ebp), %edi
	movl	-8864(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1904
	.loc 2 4470 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4471 0
	movl	$799, -16(%ebp)
	jmp	.L219
.L1904:
	.loc 2 4474 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4475 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8868(%ebp)
	leal	.LC741@GOTOFF(%ebx), %esi
	movl	%esi, -8872(%ebp)
	movl	$12, -8876(%ebp)
	cld
	movl	-8868(%ebp), %esi
	movl	-8872(%ebp), %edi
	movl	-8876(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1907
	.loc 2 4476 0
	movl	$12, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4477 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4478 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4479 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$800, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1907:
	.loc 2 4482 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8880(%ebp)
	leal	.LC742@GOTOFF(%ebx), %esi
	movl	%esi, -8884(%ebp)
	movl	$17, -8888(%ebp)
	cld
	movl	-8880(%ebp), %esi
	movl	-8884(%ebp), %edi
	movl	-8888(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1909
	.loc 2 4483 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4484 0
	movl	$801, -16(%ebp)
	jmp	.L219
.L1909:
	.loc 2 4487 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8892(%ebp)
	leal	.LC743@GOTOFF(%ebx), %esi
	movl	%esi, -8896(%ebp)
	movl	$15, -8900(%ebp)
	cld
	movl	-8892(%ebp), %esi
	movl	-8896(%ebp), %edi
	movl	-8900(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1911
	.loc 2 4488 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4489 0
	movl	$802, -16(%ebp)
	jmp	.L219
.L1911:
	.loc 2 4492 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4493 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8904(%ebp)
	leal	.LC744@GOTOFF(%ebx), %esi
	movl	%esi, -8908(%ebp)
	movl	$14, -8912(%ebp)
	cld
	movl	-8904(%ebp), %esi
	movl	-8908(%ebp), %edi
	movl	-8912(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1914
	.loc 2 4494 0
	movl	$14, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4495 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4496 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4497 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$803, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1914:
	.loc 2 4500 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8916(%ebp)
	leal	.LC745@GOTOFF(%ebx), %esi
	movl	%esi, -8920(%ebp)
	movl	$8, -8924(%ebp)
	cld
	movl	-8916(%ebp), %esi
	movl	-8920(%ebp), %edi
	movl	-8924(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1916
	.loc 2 4501 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4502 0
	movl	$804, -16(%ebp)
	jmp	.L219
.L1916:
	.loc 2 4505 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8928(%ebp)
	leal	.LC746@GOTOFF(%ebx), %esi
	movl	%esi, -8932(%ebp)
	movl	$10, -8936(%ebp)
	cld
	movl	-8928(%ebp), %esi
	movl	-8932(%ebp), %edi
	movl	-8936(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1918
	.loc 2 4506 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4507 0
	movl	$805, -16(%ebp)
	jmp	.L219
.L1918:
	.loc 2 4510 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8940(%ebp)
	leal	.LC747@GOTOFF(%ebx), %esi
	movl	%esi, -8944(%ebp)
	movl	$11, -8948(%ebp)
	cld
	movl	-8940(%ebp), %esi
	movl	-8944(%ebp), %edi
	movl	-8948(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1920
	.loc 2 4511 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4512 0
	movl	$806, -16(%ebp)
	jmp	.L219
.L1920:
	.loc 2 4515 0
	movl	optindex@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L162
	.loc 2 4516 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8952(%ebp)
	leal	.LC748@GOTOFF(%ebx), %esi
	movl	%esi, -8956(%ebp)
	movl	$8, -8960(%ebp)
	cld
	movl	-8952(%ebp), %esi
	movl	-8956(%ebp), %edi
	movl	-8960(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1923
	.loc 2 4517 0
	movl	$8, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	end_option
	.loc 2 4518 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_optarg
	movl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4519 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4520 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$807, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L1923:
	.loc 2 4523 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8964(%ebp)
	leal	.LC749@GOTOFF(%ebx), %esi
	movl	%esi, -8968(%ebp)
	movl	$11, -8972(%ebp)
	cld
	movl	-8964(%ebp), %esi
	movl	-8968(%ebp), %edi
	movl	-8972(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1925
	.loc 2 4524 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4525 0
	movl	$808, -16(%ebp)
	jmp	.L219
.L1925:
	.loc 2 4528 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8976(%ebp)
	leal	.LC750@GOTOFF(%ebx), %esi
	movl	%esi, -8980(%ebp)
	movl	$7, -8984(%ebp)
	cld
	movl	-8976(%ebp), %esi
	movl	-8980(%ebp), %edi
	movl	-8984(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1927
	.loc 2 4529 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4530 0
	movl	$809, -16(%ebp)
	jmp	.L219
.L1927:
	.loc 2 4533 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8988(%ebp)
	leal	.LC751@GOTOFF(%ebx), %esi
	movl	%esi, -8992(%ebp)
	movl	$15, -8996(%ebp)
	cld
	movl	-8988(%ebp), %esi
	movl	-8992(%ebp), %edi
	movl	-8996(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1929
	.loc 2 4534 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4535 0
	movl	$810, -16(%ebp)
	jmp	.L219
.L1929:
	.loc 2 4538 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_next_char
	.loc 2 4539 0
	movl	$811, -16(%ebp)
	jmp	.L219
.L164:
	.loc 2 4543 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -9000(%ebp)
	leal	.LC752@GOTOFF(%ebx), %esi
	movl	%esi, -9004(%ebp)
	movl	$5, -9008(%ebp)
	cld
	movl	-9000(%ebp), %esi
	movl	-9004(%ebp), %edi
	movl	-9008(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 4544 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4545 0
	movl	$812, -16(%ebp)
	jmp	.L219
.L163:
	.loc 2 4550 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -9012(%ebp)
	leal	.LC753@GOTOFF(%ebx), %esi
	movl	%esi, -9016(%ebp)
	movl	$2, -9020(%ebp)
	cld
	movl	-9012(%ebp), %esi
	movl	-9016(%ebp), %edi
	movl	-9020(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L162
	.loc 2 4551 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4552 0
	movl	$813, -16(%ebp)
	jmp	.L219
.L162:
	.loc 2 4557 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	optindex@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	optargs@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 4558 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, optindex@GOTOFF(%ebx)
	.loc 2 4559 0
	movl	$0, -16(%ebp)
.L219:
	movl	-16(%ebp), %eax
	.loc 2 4560 0
	addl	$9020, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	get_option, .-get_option
	.section	.rodata
.LC754:
	.string	"libgcc.a"
.LC755:
	.string	"CPIC"
.LC756:
	.string	"volatile_asm_stop=on"
.LC757:
	.string	"force_jalr"
	.text
.globl get_real_option_if_aliased
	.type	get_real_option_if_aliased, @function
get_real_option_if_aliased:
.LFB25:
	.loc 2 4564 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$20, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 4565 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$773, -12(%ebp)
	je	.L1960
	cmpl	$773, -12(%ebp)
	jg	.L1985
	cmpl	$758, -12(%ebp)
	je	.L1948
	cmpl	$758, -12(%ebp)
	jg	.L1986
	cmpl	$205, -12(%ebp)
	je	.L1942
	cmpl	$205, -12(%ebp)
	jg	.L1987
	cmpl	$160, -12(%ebp)
	je	.L1939
	cmpl	$160, -12(%ebp)
	jg	.L1988
	cmpl	$109, -12(%ebp)
	je	.L1937
	cmpl	$114, -12(%ebp)
	je	.L1938
	jmp	.L1936
.L1988:
	cmpl	$164, -12(%ebp)
	je	.L1940
	cmpl	$184, -12(%ebp)
	je	.L1941
	jmp	.L1936
.L1987:
	cmpl	$753, -12(%ebp)
	je	.L1945
	cmpl	$753, -12(%ebp)
	jg	.L1989
	cmpl	$210, -12(%ebp)
	je	.L1943
	cmpl	$752, -12(%ebp)
	je	.L1944
	jmp	.L1936
.L1989:
	cmpl	$755, -12(%ebp)
	je	.L1946
	cmpl	$757, -12(%ebp)
	je	.L1947
	jmp	.L1936
.L1986:
	cmpl	$766, -12(%ebp)
	je	.L1954
	cmpl	$766, -12(%ebp)
	jg	.L1990
	cmpl	$761, -12(%ebp)
	je	.L1951
	cmpl	$761, -12(%ebp)
	jg	.L1991
	cmpl	$759, -12(%ebp)
	je	.L1949
	cmpl	$760, -12(%ebp)
	je	.L1950
	jmp	.L1936
.L1991:
	cmpl	$763, -12(%ebp)
	je	.L1952
	cmpl	$764, -12(%ebp)
	je	.L1953
	jmp	.L1936
.L1990:
	cmpl	$769, -12(%ebp)
	je	.L1957
	cmpl	$769, -12(%ebp)
	jg	.L1992
	cmpl	$767, -12(%ebp)
	je	.L1955
	cmpl	$768, -12(%ebp)
	je	.L1956
	jmp	.L1936
.L1992:
	cmpl	$771, -12(%ebp)
	je	.L1958
	cmpl	$772, -12(%ebp)
	je	.L1959
	jmp	.L1936
.L1985:
	cmpl	$791, -12(%ebp)
	je	.L1972
	cmpl	$791, -12(%ebp)
	jg	.L1993
	cmpl	$780, -12(%ebp)
	je	.L1966
	cmpl	$780, -12(%ebp)
	jg	.L1994
	cmpl	$776, -12(%ebp)
	je	.L1963
	cmpl	$776, -12(%ebp)
	jg	.L1995
	cmpl	$774, -12(%ebp)
	je	.L1961
	cmpl	$775, -12(%ebp)
	je	.L1962
	jmp	.L1936
.L1995:
	cmpl	$777, -12(%ebp)
	je	.L1964
	cmpl	$778, -12(%ebp)
	je	.L1965
	jmp	.L1936
.L1994:
	cmpl	$787, -12(%ebp)
	je	.L1969
	cmpl	$787, -12(%ebp)
	jg	.L1996
	cmpl	$781, -12(%ebp)
	je	.L1967
	cmpl	$782, -12(%ebp)
	je	.L1968
	jmp	.L1936
.L1996:
	cmpl	$788, -12(%ebp)
	je	.L1970
	cmpl	$790, -12(%ebp)
	je	.L1971
	jmp	.L1936
.L1993:
	cmpl	$797, -12(%ebp)
	je	.L1978
	cmpl	$797, -12(%ebp)
	jg	.L1997
	cmpl	$794, -12(%ebp)
	je	.L1975
	cmpl	$794, -12(%ebp)
	jg	.L1998
	cmpl	$792, -12(%ebp)
	je	.L1973
	cmpl	$793, -12(%ebp)
	je	.L1974
	jmp	.L1936
.L1998:
	cmpl	$795, -12(%ebp)
	je	.L1976
	cmpl	$796, -12(%ebp)
	je	.L1977
	jmp	.L1936
.L1997:
	cmpl	$803, -12(%ebp)
	je	.L1981
	cmpl	$803, -12(%ebp)
	jg	.L1999
	cmpl	$798, -12(%ebp)
	je	.L1979
	cmpl	$800, -12(%ebp)
	je	.L1980
	jmp	.L1936
.L1999:
	cmpl	$809, -12(%ebp)
	je	.L1983
	cmpl	$810, -12(%ebp)
	je	.L1984
	cmpl	$807, -12(%ebp)
	je	.L1982
	jmp	.L1936
.L1937:
	.loc 2 4567 0
	movl	optargs@GOT(%ebx), %edx
	leal	.LC754@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 2 4568 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$110, (%esp)
	call	add_string_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L2000
.L1938:
	.loc 2 4571 0
	movl	optargs@GOT(%ebx), %edx
	leal	.LC755@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 2 4572 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$685, (%esp)
	call	add_string_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L2000
.L1939:
	.loc 2 4575 0
	movl	optargs@GOT(%ebx), %edx
	leal	.LC756@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 2 4576 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$747, (%esp)
	call	add_string_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L2000
.L1940:
	.loc 2 4578 0
	movl	$164, -8(%ebp)
	jmp	.L2000
.L1941:
	.loc 2 4579 0
	movl	$184, -8(%ebp)
	jmp	.L2000
.L1942:
	.loc 2 4580 0
	movl	$205, -8(%ebp)
	jmp	.L2000
.L1943:
	.loc 2 4582 0
	movl	optargs@GOT(%ebx), %edx
	leal	.LC757@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 2 4583 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$686, (%esp)
	call	add_string_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L2000
.L1944:
	.loc 2 4585 0
	movl	$710, -8(%ebp)
	jmp	.L2000
.L1945:
	.loc 2 4586 0
	movl	$717, -8(%ebp)
	jmp	.L2000
.L1946:
	.loc 2 4587 0
	movl	$45, -8(%ebp)
	jmp	.L2000
.L1947:
	.loc 2 4588 0
	movl	$711, -8(%ebp)
	jmp	.L2000
.L1948:
	.loc 2 4589 0
	movl	$684, -8(%ebp)
	jmp	.L2000
.L1949:
	.loc 2 4590 0
	movl	$56, -8(%ebp)
	jmp	.L2000
.L1950:
	.loc 2 4591 0
	movl	$58, -8(%ebp)
	jmp	.L2000
.L1951:
	.loc 2 4592 0
	movl	$59, -8(%ebp)
	jmp	.L2000
.L1952:
	.loc 2 4593 0
	movl	$506, -8(%ebp)
	jmp	.L2000
.L1953:
	.loc 2 4594 0
	movl	$61, -8(%ebp)
	jmp	.L2000
.L1954:
	.loc 2 4595 0
	movl	$81, -8(%ebp)
	jmp	.L2000
.L1955:
	.loc 2 4596 0
	movl	$81, -8(%ebp)
	jmp	.L2000
.L1956:
	.loc 2 4597 0
	movl	$91, -8(%ebp)
	jmp	.L2000
.L1957:
	.loc 2 4598 0
	movl	$92, -8(%ebp)
	jmp	.L2000
.L1958:
	.loc 2 4599 0
	movl	$106, -8(%ebp)
	jmp	.L2000
.L1959:
	.loc 2 4600 0
	movl	$107, -8(%ebp)
	jmp	.L2000
.L1960:
	.loc 2 4601 0
	movl	$107, -8(%ebp)
	jmp	.L2000
.L1961:
	.loc 2 4602 0
	movl	$108, -8(%ebp)
	jmp	.L2000
.L1962:
	.loc 2 4603 0
	movl	$712, -8(%ebp)
	jmp	.L2000
.L1963:
	.loc 2 4605 0
	movl	optargs@GOT(%ebx), %edx
	leal	.LC754@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 2 4606 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$110, (%esp)
	call	add_string_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L2000
.L1964:
	.loc 2 4608 0
	movl	$110, -8(%ebp)
	jmp	.L2000
.L1965:
	.loc 2 4609 0
	movl	$110, -8(%ebp)
	jmp	.L2000
.L1966:
	.loc 2 4610 0
	movl	$112, -8(%ebp)
	jmp	.L2000
.L1967:
	.loc 2 4611 0
	movl	$121, -8(%ebp)
	jmp	.L2000
.L1968:
	.loc 2 4612 0
	movl	$122, -8(%ebp)
	jmp	.L2000
.L1969:
	.loc 2 4613 0
	movl	$137, -8(%ebp)
	jmp	.L2000
.L1970:
	.loc 2 4614 0
	movl	$139, -8(%ebp)
	jmp	.L2000
.L1971:
	.loc 2 4615 0
	movl	$725, -8(%ebp)
	jmp	.L2000
.L1972:
	.loc 2 4616 0
	movl	$211, -8(%ebp)
	jmp	.L2000
.L1973:
	.loc 2 4617 0
	movl	$212, -8(%ebp)
	jmp	.L2000
.L1974:
	.loc 2 4618 0
	movl	$214, -8(%ebp)
	jmp	.L2000
.L1975:
	.loc 2 4619 0
	movl	$222, -8(%ebp)
	jmp	.L2000
.L1976:
	.loc 2 4620 0
	movl	$733, -8(%ebp)
	jmp	.L2000
.L1977:
	.loc 2 4621 0
	movl	$732, -8(%ebp)
	jmp	.L2000
.L1978:
	.loc 2 4622 0
	movl	$218, -8(%ebp)
	jmp	.L2000
.L1979:
	.loc 2 4623 0
	movl	$219, -8(%ebp)
	jmp	.L2000
.L1980:
	.loc 2 4624 0
	movl	$2, -8(%ebp)
	jmp	.L2000
.L1981:
	.loc 2 4625 0
	movl	$745, -8(%ebp)
	jmp	.L2000
.L1982:
	.loc 2 4626 0
	movl	$749, -8(%ebp)
	jmp	.L2000
.L1983:
	.loc 2 4627 0
	movl	$515, -8(%ebp)
	jmp	.L2000
.L1984:
	.loc 2 4628 0
	movl	$672, -8(%ebp)
	jmp	.L2000
.L1936:
	.loc 2 4629 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L2000:
	movl	-8(%ebp), %eax
	.loc 2 4631 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	get_real_option_if_aliased, .-get_real_option_if_aliased
	.comm	option_name,4,4
	.comm	dump_outfile_to_stdout,4,4
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI0-.LFB5
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI4-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI6-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI10
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI14-.LFB10
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI18-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI19
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
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI23-.LFB12
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
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI28-.LFB13
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
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI32-.LFB14
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI38-.LFB15
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI42-.LFB16
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
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
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI50-.LFB18
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI54-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI55
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI58-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI59
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI64-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI65
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI68-.LFB22
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI72-.LFB23
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI76-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI81-.LCFI77
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
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI82-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI83
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
	.file 3 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 4 "../../driver/basic.h"
	.file 5 "../../driver/lang_defs.h"
	.file 6 "./option_names.h"
	.file 7 "../../driver/errors.h"
	.file 8 "../../driver/phases.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
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
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI58-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI59-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xce7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/get_options.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x3
	.byte	0xd6
	.long	0x97
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
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
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.byte	0x4
	.long	0xc2
	.uleb128 0x5
	.byte	0x4
	.long	0xbb
	.uleb128 0x2
	.string	"boolean"
	.byte	0x4
	.byte	0x2c
	.long	0xbb
	.uleb128 0x2
	.string	"buffer_t"
	.byte	0x4
	.byte	0x2f
	.long	0x16e
	.uleb128 0x6
	.long	0x17f
	.long	0xc2
	.uleb128 0x7
	.long	0x9e
	.value	0x1ff
	.byte	0x0
	.uleb128 0x8
	.long	0x1e3
	.byte	0x4
	.byte	0x5
	.byte	0x2f
	.uleb128 0x9
	.string	"L_NONE"
	.sleb128 0
	.uleb128 0x9
	.string	"L_ALL"
	.sleb128 1
	.uleb128 0x9
	.string	"L_cpp"
	.sleb128 2
	.uleb128 0x9
	.string	"L_cc"
	.sleb128 3
	.uleb128 0x9
	.string	"L_CC"
	.sleb128 4
	.uleb128 0x9
	.string	"L_f77"
	.sleb128 5
	.uleb128 0x9
	.string	"L_f90"
	.sleb128 6
	.uleb128 0x9
	.string	"L_as"
	.sleb128 7
	.uleb128 0x9
	.string	"L_ld"
	.sleb128 8
	.uleb128 0x9
	.string	"L_internal"
	.sleb128 9
	.uleb128 0x9
	.string	"L_LAST"
	.sleb128 10
	.byte	0x0
	.uleb128 0x2
	.string	"languages_t"
	.byte	0x5
	.byte	0x3b
	.long	0x17f
	.uleb128 0x8
	.long	0x41d
	.byte	0x4
	.byte	0x5
	.byte	0x54
	.uleb128 0x9
	.string	"P_NONE"
	.sleb128 0
	.uleb128 0x9
	.string	"P_All"
	.sleb128 1
	.uleb128 0x9
	.string	"P_m4"
	.sleb128 2
	.uleb128 0x9
	.string	"P_ratfor"
	.sleb128 3
	.uleb128 0x9
	.string	"P_cpp"
	.sleb128 4
	.uleb128 0x9
	.string	"P_gcpp"
	.sleb128 5
	.uleb128 0x9
	.string	"P_gcpp_plus"
	.sleb128 6
	.uleb128 0x9
	.string	"P_c_cpp"
	.sleb128 7
	.uleb128 0x9
	.string	"P_cplus_cpp"
	.sleb128 8
	.uleb128 0x9
	.string	"P_f_cpp"
	.sleb128 9
	.uleb128 0x9
	.string	"P_f90_cpp"
	.sleb128 10
	.uleb128 0x9
	.string	"P_f_coco"
	.sleb128 11
	.uleb128 0x9
	.string	"P_any_cpp"
	.sleb128 12
	.uleb128 0x9
	.string	"P_pfa"
	.sleb128 13
	.uleb128 0x9
	.string	"P_pca"
	.sleb128 14
	.uleb128 0x9
	.string	"P_mpc"
	.sleb128 15
	.uleb128 0x9
	.string	"P_any_optfe"
	.sleb128 16
	.uleb128 0x9
	.string	"P_f_fe"
	.sleb128 17
	.uleb128 0x9
	.string	"P_cppf_fe"
	.sleb128 18
	.uleb128 0x9
	.string	"P_f90_fe"
	.sleb128 19
	.uleb128 0x9
	.string	"P_cppf90_fe"
	.sleb128 20
	.uleb128 0x9
	.string	"P_c_gfe"
	.sleb128 21
	.uleb128 0x9
	.string	"P_cplus_gfe"
	.sleb128 22
	.uleb128 0x9
	.string	"P_any_fe"
	.sleb128 23
	.uleb128 0x9
	.string	"P_pseudo_f_fe"
	.sleb128 24
	.uleb128 0x9
	.string	"P_pseudo_c_fe"
	.sleb128 25
	.uleb128 0x9
	.string	"P_lister"
	.sleb128 26
	.uleb128 0x9
	.string	"P_inline"
	.sleb128 27
	.uleb128 0x9
	.string	"P_ipl"
	.sleb128 28
	.uleb128 0x9
	.string	"p_any_ipl"
	.sleb128 29
	.uleb128 0x9
	.string	"P_be"
	.sleb128 30
	.uleb128 0x9
	.string	"P_as"
	.sleb128 31
	.uleb128 0x9
	.string	"P_gas"
	.sleb128 32
	.uleb128 0x9
	.string	"P_any_as"
	.sleb128 33
	.uleb128 0x9
	.string	"P_dsm_prelink"
	.sleb128 34
	.uleb128 0x9
	.string	"P_ipa_link"
	.sleb128 35
	.uleb128 0x9
	.string	"P_collect"
	.sleb128 36
	.uleb128 0x9
	.string	"P_ld"
	.sleb128 37
	.uleb128 0x9
	.string	"P_ldplus"
	.sleb128 38
	.uleb128 0x9
	.string	"P_any_ld"
	.sleb128 39
	.uleb128 0x9
	.string	"P_cord"
	.sleb128 40
	.uleb128 0x9
	.string	"P_pixie"
	.sleb128 41
	.uleb128 0x9
	.string	"P_prof"
	.sleb128 42
	.uleb128 0x9
	.string	"P_ar"
	.sleb128 43
	.uleb128 0x9
	.string	"P_startup"
	.sleb128 44
	.uleb128 0x9
	.string	"P_include"
	.sleb128 45
	.uleb128 0x9
	.string	"P_library"
	.sleb128 46
	.uleb128 0x9
	.string	"P_alt_library"
	.sleb128 47
	.uleb128 0x9
	.string	"P_sl2startup"
	.sleb128 48
	.uleb128 0x9
	.string	"P_LAST"
	.sleb128 49
	.byte	0x0
	.uleb128 0x2
	.string	"phases_t"
	.byte	0x5
	.byte	0x97
	.long	0x1f6
	.uleb128 0xa
	.long	0x46c
	.string	"get_next_char"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x52
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF2
	.byte	0x1
	.byte	0x52
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x143
	.uleb128 0xa
	.long	0x4bf
	.string	"end_option"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x5d
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF2
	.byte	0x1
	.byte	0x5d
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.string	"length"
	.byte	0x1
	.byte	0x5d
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0xd
	.long	0x4ff
	.string	"get_optarg"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.long	0x143
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x67
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF2
	.byte	0x1
	.byte	0x67
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xd
	.long	0x540
	.string	"next_string"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.long	0x143
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x76
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF2
	.byte	0x1
	.byte	0x76
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xd
	.long	0x5af
	.string	"next_string_after"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.long	0x143
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0xc
	.string	"prefix"
	.byte	0x1
	.byte	0x84
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x84
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.long	.LASF2
	.byte	0x1
	.byte	0x84
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.string	"new_optindex"
	.byte	0x1
	.byte	0x87
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xd
	.long	0x5df
	.string	"is_decimal"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x14f
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0x93
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0x633
	.byte	0x1
	.string	"add_string_option"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbb
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0xb
	.long	.LASF3
	.byte	0x1
	.byte	0x9b
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"arg"
	.byte	0x1
	.byte	0x9b
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0xa0
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xf
	.long	0x68f
	.byte	0x1
	.string	"add_string_option_or_dash"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.long	0xbb
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0xb
	.long	.LASF3
	.byte	0x1
	.byte	0xaa
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"arg"
	.byte	0x1
	.byte	0xaa
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0xaf
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xf
	.long	0x6e7
	.byte	0x1
	.string	"add_any_string_option"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0xbb
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0xb
	.long	.LASF3
	.byte	0x1
	.byte	0xbe
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"arg"
	.byte	0x1
	.byte	0xbe
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0xc1
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x10
	.long	0x74c
	.byte	0x1
	.string	"check_for_driver_controls"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0xc
	.string	"argc"
	.byte	0x1
	.byte	0xcc
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0xcc
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0xce
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0xcf
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xd
	.long	0x7a9
	.string	"parse_u_option"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.long	0xbb
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0xfd
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF2
	.byte	0x1
	.byte	0xfd
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.value	0x100
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x809
	.string	"parse_U_option"
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	0xbb
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x111
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x1
	.value	0x111
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.value	0x117
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x886
	.string	"parse_C_option"
	.byte	0x1
	.value	0x12a
	.byte	0x1
	.long	0xbb
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x129
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x1
	.value	0x129
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	0x86c
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.value	0x12f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x11
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.value	0x137
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x8e6
	.string	"parse_R_option"
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0xbb
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x146
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x1
	.value	0x146
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.value	0x14c
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x92d
	.string	"parse_e_option"
	.byte	0x1
	.value	0x15c
	.byte	0x1
	.long	0xbb
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x15b
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x1
	.value	0x15b
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x13
	.long	0x993
	.string	"parse_Xlinker_option"
	.byte	0x1
	.value	0x167
	.byte	0x1
	.long	0xbb
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x166
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x1
	.value	0x166
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.value	0x16b
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x9e5
	.string	"end_multi_option"
	.byte	0x1
	.value	0x183
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x182
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x1
	.value	0x182
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x182
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x13
	.long	0xa6e
	.string	"parse_multi_option"
	.byte	0x1
	.value	0x190
	.byte	0x1
	.long	0xbb
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x18f
	.long	0x46c
	.byte	0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x14
	.long	.LASF2
	.byte	0x1
	.value	0x18f
	.long	0x149
	.byte	0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.value	0x191
	.long	0xbb
	.byte	0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x192
	.long	0x143
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x18
	.string	"q"
	.byte	0x1
	.value	0x192
	.long	0x143
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.value	0x193
	.long	0x15e
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.byte	0x0
	.uleb128 0x13
	.long	0xae6
	.string	"parse_W_option"
	.byte	0x1
	.value	0x1be
	.byte	0x1
	.long	0xbb
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x1bd
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x1
	.value	0x1bd
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF3
	.byte	0x1
	.value	0x1bf
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"phase"
	.byte	0x1
	.value	0x1c0
	.long	0x41d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"start"
	.byte	0x1
	.value	0x1c1
	.long	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.long	0xb27
	.byte	0x1
	.string	"get_option"
	.byte	0x2
	.byte	0x6
	.byte	0x1
	.long	0xbb
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0xb
	.long	.LASF2
	.byte	0x2
	.byte	0x5
	.long	0x149
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF1
	.byte	0x2
	.byte	0x5
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x19
	.long	0xb6c
	.byte	0x1
	.string	"get_real_option_if_aliased"
	.byte	0x2
	.value	0x11d4
	.byte	0x1
	.long	0xbb
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x14
	.long	.LASF3
	.byte	0x2
	.value	0x11d3
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xe
	.string	"optindex"
	.byte	0x1
	.byte	0x42
	.long	0xbb
	.byte	0x5
	.byte	0x3
	.long	optindex
	.uleb128 0xe
	.string	"null_string"
	.byte	0x1
	.byte	0x72
	.long	0x143
	.byte	0x5
	.byte	0x3
	.long	null_string
	.uleb128 0x18
	.string	"middle_of_multi_option"
	.byte	0x1
	.value	0x17e
	.long	0x14f
	.byte	0x5
	.byte	0x3
	.long	middle_of_multi_option
	.uleb128 0x1a
	.string	"option_name"
	.byte	0x1
	.byte	0x37
	.long	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	option_name
	.uleb128 0x1a
	.string	"optargs"
	.byte	0x1
	.byte	0x40
	.long	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	optargs
	.uleb128 0x1a
	.string	"optargd"
	.byte	0x1
	.byte	0x41
	.long	0xbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	optargd
	.uleb128 0x1b
	.string	"invoked_lang"
	.byte	0x5
	.byte	0x99
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"last_phase"
	.byte	0x5
	.byte	0xa0
	.long	0x41d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"ignore_suffix"
	.byte	0x5
	.byte	0xd8
	.long	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"abi"
	.byte	0x6
	.value	0x32e
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"print_warnings"
	.byte	0x7
	.byte	0x31
	.long	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"fullwarn"
	.byte	0x7
	.byte	0x32
	.long	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"auto_parallelize"
	.byte	0x8
	.byte	0x46
	.long	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"Gen_feedback"
	.byte	0x8
	.byte	0x47
	.long	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"Use_feedback"
	.byte	0x8
	.byte	0x48
	.long	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"dump_outfile_to_stdout"
	.byte	0x8
	.byte	0x57
	.long	0x14f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_outfile_to_stdout
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.long	0xeb
	.value	0x2
	.long	.Ldebug_info0
	.long	0xceb
	.long	0x5df
	.string	"add_string_option"
	.long	0x633
	.string	"add_string_option_or_dash"
	.long	0x68f
	.string	"add_any_string_option"
	.long	0x6e7
	.string	"check_for_driver_controls"
	.long	0xae6
	.string	"get_option"
	.long	0xb27
	.string	"get_real_option_if_aliased"
	.long	0xbc0
	.string	"option_name"
	.long	0xbda
	.string	"optargs"
	.long	0xbf0
	.string	"optargd"
	.long	0xcc5
	.string	"dump_outfile_to_stdout"
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
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"argi"
.LASF3:
	.string	"flag"
.LASF1:
	.string	"argv"
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
