	.file	"option_seen.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_option_seen
	.type	init_option_seen, @function
init_option_seen:
.LFB2:
	.file 1 "../../driver/option_seen.c"
	.loc 1 82 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$20, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 84 0
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, option_is_seen@GOTOFF(%ebx)
	.loc 1 85 0
	movl	$0, -8(%ebp)
	jmp	.L2
.L3:
	.loc 1 86 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 85 0
	addl	$1, -8(%ebp)
.L2:
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L3
	.loc 1 89 0
	movl	$8, (%esp)
	call	malloc@PLT
	movl	%eax, order_options_seen@GOTOFF(%ebx)
	.loc 1 90 0
	movl	order_options_seen@GOTOFF(%ebx), %eax
	movl	$-1, (%eax)
	.loc 1 91 0
	movl	order_options_seen@GOTOFF(%ebx), %eax
	movl	$0, 4(%eax)
	.loc 1 92 0
	movl	order_options_seen@GOTOFF(%ebx), %eax
	movl	%eax, 4+order_options_seen@GOTOFF(%ebx)
	.loc 1 93 0
	movl	order_options_seen@GOTOFF(%ebx), %eax
	movl	%eax, IMPLICITLY_SEEN@GOTOFF(%ebx)
	.loc 1 94 0
	movl	$0, current_seen@GOTOFF(%ebx)
	.loc 1 95 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE2:
	.size	init_option_seen, .-init_option_seen
	.section	.rodata
	.align 4
.LC0:
	.string	"Out of memory allocating %d options_seen"
	.text
.globl double_max_option_seen
	.type	double_max_option_seen, @function
double_max_option_seen:
.LFB3:
	.loc 1 100 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$36, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 105 0
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	option_is_seen@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 106 0
	cmpl	$0, -8(%ebp)
	jne	.L7
	.loc 1 107 0
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L7:
	.loc 1 110 0
	movl	-8(%ebp), %eax
	movl	%eax, option_is_seen@GOTOFF(%ebx)
	.loc 1 111 0
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -16(%ebp)
	.loc 1 113 0
	movl	$0, current_seen@GOTOFF(%ebx)
	.loc 1 114 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L9
.L10:
	.loc 1 115 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 114 0
	addl	$1, -12(%ebp)
.L9:
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L10
	.loc 1 117 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE3:
	.size	double_max_option_seen, .-double_max_option_seen
.globl option_was_seen
	.type	option_was_seen, @function
option_was_seen:
.LFB4:
	.loc 1 122 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 123 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 124 0
	popl	%ebp
	ret
.LFE4:
	.size	option_was_seen, .-option_was_seen
.globl option_was_implicitly_seen
	.type	option_was_implicitly_seen, @function
option_was_implicitly_seen:
.LFB5:
	.loc 1 129 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 130 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	IMPLICITLY_SEEN@GOTOFF(%ecx), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	.loc 1 131 0
	popl	%ebp
	ret
.LFE5:
	.size	option_was_implicitly_seen, .-option_was_implicitly_seen
.globl add_option_seen
	.type	add_option_seen, @function
add_option_seen:
.LFB6:
	.loc 1 136 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$20, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 140 0
	movl	$8, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 141 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 142 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 143 0
	movl	4+order_options_seen@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 144 0
	movl	-8(%ebp), %eax
	movl	%eax, 4+order_options_seen@GOTOFF(%ebx)
	.loc 1 145 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 146 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	add_option_seen, .-add_option_seen
.globl prepend_option_seen
	.type	prepend_option_seen, @function
prepend_option_seen:
.LFB7:
	.loc 1 151 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$20, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 155 0
	movl	$8, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 156 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 158 0
	movl	order_options_seen@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 159 0
	movl	order_options_seen@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 160 0
	movl	order_options_seen@GOTOFF(%ebx), %edx
	movl	4+order_options_seen@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L20
	.loc 1 161 0
	movl	-8(%ebp), %eax
	movl	%eax, 4+order_options_seen@GOTOFF(%ebx)
.L20:
	.loc 1 163 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 164 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	prepend_option_seen, .-prepend_option_seen
.globl add_option_implicitly_seen
	.type	add_option_implicitly_seen, @function
add_option_implicitly_seen:
.LFB8:
	.loc 1 169 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 172 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	IMPLICITLY_SEEN@GOTOFF(%ecx), %eax
	movl	%eax, (%edx)
	.loc 1 173 0
	popl	%ebp
	ret
.LFE8:
	.size	add_option_implicitly_seen, .-add_option_implicitly_seen
.globl replace_option_seen
	.type	replace_option_seen, @function
replace_option_seen:
.LFB9:
	.loc 1 178 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	subl	$16, %esp
.LCFI24:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 179 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 180 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 181 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ecx), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 182 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 183 0
	leave
	ret
.LFE9:
	.size	replace_option_seen, .-replace_option_seen
	.section	.rodata
.LC1:
	.string	"couldn't unset option %d"
	.text
	.type	delete_order_option, @function
delete_order_option:
.LFB10:
	.loc 1 187 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$36, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 190 0
	movl	order_options_seen@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L28
.L29:
	.loc 1 191 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L30
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 197 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L36
	.loc 1 199 0
	movl	-8(%ebp), %eax
	movl	%eax, 4+order_options_seen@GOTOFF(%ebx)
	.loc 1 201 0
	jmp	.L36
.L30:
	.loc 1 190 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L28:
	cmpl	$0, -8(%ebp)
	jne	.L29
	.loc 1 204 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L36:
	.loc 1 205 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	delete_order_option, .-delete_order_option
.globl set_option_unseen
	.type	set_option_unseen, @function
set_option_unseen:
.LFB11:
	.loc 1 210 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$20, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 212 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 213 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 214 0
	cmpl	$0, -8(%ebp)
	je	.L40
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_order_option
.L40:
	.loc 1 215 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	set_option_unseen, .-set_option_unseen
.globl first_option_seen
	.type	first_option_seen, @function
first_option_seen:
.LFB12:
	.loc 1 223 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	subl	$4, %esp
.LCFI35:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 224 0
	movl	order_options_seen@GOTOFF(%ecx), %eax
	movl	4(%eax), %eax
	movl	%eax, current_seen@GOTOFF(%ecx)
	.loc 1 225 0
	movl	current_seen@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	jne	.L42
	.loc 1 226 0
	movl	$0, -4(%ebp)
	jmp	.L44
.L42:
	.loc 1 228 0
	movl	current_seen@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L44:
	movl	-4(%ebp), %eax
	.loc 1 230 0
	leave
	ret
.LFE12:
	.size	first_option_seen, .-first_option_seen
.globl next_option_seen
	.type	next_option_seen, @function
next_option_seen:
.LFB13:
	.loc 1 234 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	subl	$4, %esp
.LCFI38:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 235 0
	movl	current_seen@GOTOFF(%ecx), %eax
	movl	4(%eax), %eax
	movl	%eax, current_seen@GOTOFF(%ecx)
	.loc 1 236 0
	movl	current_seen@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	jne	.L47
	.loc 1 237 0
	movl	$0, -4(%ebp)
	jmp	.L49
.L47:
	.loc 1 239 0
	movl	current_seen@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L49:
	movl	-4(%ebp), %eax
	.loc 1 241 0
	leave
	ret
.LFE13:
	.size	next_option_seen, .-next_option_seen
.globl more_option_seen
	.type	more_option_seen, @function
more_option_seen:
.LFB14:
	.loc 1 245 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 246 0
	movl	current_seen@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 247 0
	popl	%ebp
	ret
.LFE14:
	.size	more_option_seen, .-more_option_seen
.globl current_option_seen_later
	.type	current_option_seen_later, @function
current_option_seen_later:
.LFB15:
	.loc 1 253 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 255 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	option_is_seen@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	current_seen@GOTOFF(%ecx), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	.loc 1 256 0
	popl	%ebp
	ret
.LFE15:
	.size	current_option_seen_later, .-current_option_seen_later
.globl set_current_option_unseen
	.type	set_current_option_unseen, @function
set_current_option_unseen:
.LFB16:
	.loc 1 262 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$4, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 263 0
	movl	current_seen@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	delete_order_option
	.loc 1 264 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	set_current_option_unseen, .-set_current_option_unseen
	.section	.rodata
.LC2:
	.string	"order_options_seen:"
.LC3:
	.string	"flag %d\n"
	.text
.globl dump_option_seen
	.type	dump_option_seen, @function
dump_option_seen:
.LFB17:
	.loc 1 268 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$36, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 270 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 271 0
	movl	order_options_seen@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L58
.L59:
	.loc 1 272 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 271 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L58:
	cmpl	$0, -8(%ebp)
	jne	.L59
	.loc 1 274 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	dump_option_seen, .-dump_option_seen
	.local	order_options_seen
	.comm	order_options_seen,8,4
	.local	option_is_seen
	.comm	option_is_seen,4,4
	.local	IMPLICITLY_SEEN
	.comm	IMPLICITLY_SEEN,4,4
	.local	current_seen
	.comm	current_seen,4,4
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
	.long	.LFB2
	.long	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI0-.LFB2
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
	.long	.LFB3
	.long	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI4-.LFB3
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
	.long	.LFB4
	.long	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI10-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI12-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI16-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI17
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI20-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI22-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI25-.LFB10
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI29-.LFB11
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI33-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI36-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI39-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI41-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI43-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI46-.LCFI44
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI47-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI48
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE30:
	.file 2 "../../driver/basic.h"
	.file 3 "./option_names.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB2-.Ltext0
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
	.long	.LFE2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB3-.Ltext0
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
	.long	.LFE3-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB4-.Ltext0
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
	.long	.LFE4-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB15-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI41-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI42-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB16-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI43-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI44-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x646
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/option_seen.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"boolean"
	.byte	0x2
	.byte	0x2c
	.long	0x89
	.uleb128 0x5
	.long	0x179
	.string	"int_list_rec"
	.byte	0x8
	.byte	0x1
	.byte	0x3f
	.uleb128 0x6
	.string	"value"
	.byte	0x1
	.byte	0x40
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"next"
	.byte	0x1
	.byte	0x41
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x144
	.uleb128 0x4
	.string	"int_list"
	.byte	0x1
	.byte	0x42
	.long	0x144
	.uleb128 0x4
	.string	"int_list_p"
	.byte	0x1
	.byte	0x42
	.long	0x179
	.uleb128 0x5
	.long	0x1d8
	.string	"linked_list_rec"
	.byte	0x8
	.byte	0x1
	.byte	0x43
	.uleb128 0x6
	.string	"head"
	.byte	0x1
	.byte	0x44
	.long	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"tail"
	.byte	0x1
	.byte	0x45
	.long	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x17f
	.uleb128 0x4
	.string	"linked_list"
	.byte	0x1
	.byte	0x46
	.long	0x1a1
	.uleb128 0x8
	.long	0x224
	.byte	0x1
	.string	"init_option_seen"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x53
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x8
	.long	0x27f
	.byte	0x1
	.string	"double_max_option_seen"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.long	.LLST1
	.uleb128 0x9
	.string	"base"
	.byte	0x1
	.byte	0x66
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x67
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"new_list"
	.byte	0x1
	.byte	0x68
	.long	0x27f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x18f
	.uleb128 0xa
	.long	0x2bd
	.byte	0x1
	.string	"option_was_seen"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	0x135
	.long	.LFB4
	.long	.LFE4
	.long	.LLST2
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x79
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.long	0x300
	.byte	0x1
	.string	"option_was_implicitly_seen"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	0x135
	.long	.LFB5
	.long	.LFE5
	.long	.LLST3
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x80
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x8
	.long	0x340
	.byte	0x1
	.string	"add_option_seen"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST4
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x87
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x8b
	.long	0x1d8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x8
	.long	0x384
	.byte	0x1
	.string	"prepend_option_seen"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST5
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0x96
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x9a
	.long	0x1d8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x8
	.long	0x3c3
	.byte	0x1
	.string	"add_option_implicitly_seen"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST6
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0xa8
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x8
	.long	0x425
	.byte	0x1
	.string	"replace_option_seen"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST7
	.uleb128 0xc
	.string	"old_optflag"
	.byte	0x1
	.byte	0xb1
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"new_optflag"
	.byte	0x1
	.byte	0xb1
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0xb3
	.long	0x1d8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.long	0x468
	.string	"delete_order_option"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST8
	.uleb128 0xc
	.string	"old"
	.byte	0x1
	.byte	0xba
	.long	0x1d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0xbc
	.long	0x1d8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x8
	.long	0x4aa
	.byte	0x1
	.string	"set_option_unseen"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST9
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0xd1
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0xd3
	.long	0x1d8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.string	"first_option_seen"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	0x89
	.long	.LFB12
	.long	.LFE12
	.long	.LLST10
	.uleb128 0xe
	.byte	0x1
	.string	"next_option_seen"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.long	0x89
	.long	.LFB13
	.long	.LFE13
	.long	.LLST11
	.uleb128 0xe
	.byte	0x1
	.string	"more_option_seen"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	0x135
	.long	.LFB14
	.long	.LFE14
	.long	.LLST12
	.uleb128 0xa
	.long	0x55f
	.byte	0x1
	.string	"current_option_seen_later"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.long	0x135
	.long	.LFB15
	.long	.LFE15
	.long	.LLST13
	.uleb128 0xb
	.long	.LASF1
	.byte	0x1
	.byte	0xfc
	.long	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.string	"set_current_option_unseen"
	.byte	0x1
	.value	0x106
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST14
	.uleb128 0x10
	.long	0x5c0
	.byte	0x1
	.string	"dump_option_seen"
	.byte	0x1
	.value	0x10c
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST15
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.value	0x10d
	.long	0x1d8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x9
	.string	"order_options_seen"
	.byte	0x1
	.byte	0x47
	.long	0x1de
	.byte	0x5
	.byte	0x3
	.long	order_options_seen
	.uleb128 0x9
	.string	"option_is_seen"
	.byte	0x1
	.byte	0x48
	.long	0x27f
	.byte	0x5
	.byte	0x3
	.long	option_is_seen
	.uleb128 0x9
	.string	"IMPLICITLY_SEEN"
	.byte	0x1
	.byte	0x4a
	.long	0x1d8
	.byte	0x5
	.byte	0x3
	.long	IMPLICITLY_SEEN
	.uleb128 0x9
	.string	"current_seen"
	.byte	0x1
	.byte	0x4d
	.long	0x1d8
	.byte	0x5
	.byte	0x3
	.long	current_seen
	.uleb128 0x12
	.string	"max_options"
	.byte	0x3
	.value	0x325
	.long	0x89
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.long	0x17b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x64a
	.long	0x1f1
	.string	"init_option_seen"
	.long	0x224
	.string	"double_max_option_seen"
	.long	0x285
	.string	"option_was_seen"
	.long	0x2bd
	.string	"option_was_implicitly_seen"
	.long	0x300
	.string	"add_option_seen"
	.long	0x340
	.string	"prepend_option_seen"
	.long	0x384
	.string	"add_option_implicitly_seen"
	.long	0x3c3
	.string	"replace_option_seen"
	.long	0x468
	.string	"set_option_unseen"
	.long	0x4aa
	.string	"first_option_seen"
	.long	0x4d1
	.string	"next_option_seen"
	.long	0x4f7
	.string	"more_option_seen"
	.long	0x51d
	.string	"current_option_seen_later"
	.long	0x55f
	.string	"set_current_option_unseen"
	.long	0x58b
	.string	"dump_option_seen"
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
.LASF1:
	.string	"optflag"
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
