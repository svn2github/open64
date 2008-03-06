	.file	"options.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl max_options
	.data
	.align 4
	.type	max_options, @object
	.size	max_options, 4
max_options:
	.long	914
	.align 4
	.type	last_option, @object
	.size	last_option, 4
last_option:
	.long	814
	.text
.globl get_option_name
	.type	get_option_name, @function
get_option_name:
.LFB2:
	.file 1 "../../driver/options.c"
	.loc 1 88 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$4, %esp
.LCFI2:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 90 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L2
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 91 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L5
.L2:
	.loc 1 93 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
.L5:
	movl	-4(%ebp), %eax
	.loc 1 95 0
	leave
	ret
.LFE2:
	.size	get_option_name, .-get_option_name
.globl get_option_help
	.type	get_option_help, @function
get_option_help:
.LFB3:
	.loc 1 100 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 101 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	28(%eax), %eax
	.loc 1 102 0
	popl	%ebp
	ret
.LFE3:
	.size	get_option_help, .-get_option_help
.globl option_has_blank
	.type	option_has_blank, @function
option_has_blank:
.LFB4:
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
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L10
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	has_blank@PLT
	testl	%eax, %eax
	je	.L10
	movl	$1, -8(%ebp)
	jmp	.L13
.L10:
	movl	$0, -8(%ebp)
.L13:
	movl	-8(%ebp), %eax
	.loc 1 111 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE4:
	.size	option_has_blank, .-option_has_blank
.globl set_language_for_option
	.type	set_language_for_option, @function
set_language_for_option:
.LFB5:
	.loc 1 116 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%esi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$16, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 117 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_language_mask@PLT
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	.loc 1 118 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE5:
	.size	set_language_for_option, .-set_language_for_option
.globl add_language_for_option
	.type	add_language_for_option, @function
add_language_for_option:
.LFB6:
	.loc 1 122 0
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
	subl	$28, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 123 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -28(%ebp)
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_language_mask@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-24(%ebp), %eax
	orl	%esi, %eax
	movl	-20(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 124 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE6:
	.size	add_language_for_option, .-add_language_for_option
.globl option_matches_language
	.type	option_matches_language, @function
option_matches_language:
.LFB7:
	.loc 1 129 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$20, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 130 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	is_matching_language@PLT
	.loc 1 131 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	option_matches_language, .-option_matches_language
.globl is_internal_option
	.type	is_internal_option, @function
is_internal_option:
.LFB8:
	.loc 1 136 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$20, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 137 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$9, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	is_matching_language@PLT
	.loc 1 138 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	is_internal_option, .-is_internal_option
.globl set_internal_option
	.type	set_internal_option, @function
set_internal_option:
.LFB9:
	.loc 1 143 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$20, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 144 0
	movl	$9, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_language_for_option@PLT
	.loc 1 145 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	set_internal_option, .-set_internal_option
.globl option_matches_phase
	.type	option_matches_phase, @function
option_matches_phase:
.LFB10:
	.loc 1 150 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$20, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 151 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	is_matching_phase@PLT
	.loc 1 152 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	option_matches_phase, .-option_matches_phase
.globl add_phase_for_option
	.type	add_phase_for_option, @function
add_phase_for_option:
.LFB11:
	.loc 1 157 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%edi
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$28, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 158 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -28(%ebp)
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_mask@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-24(%ebp), %eax
	orl	%esi, %eax
	movl	-20(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 159 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE11:
	.size	add_phase_for_option, .-add_phase_for_option
.globl remove_phase_for_option
	.type	remove_phase_for_option, @function
remove_phase_for_option:
.LFB12:
	.loc 1 164 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%edi
.LCFI44:
	pushl	%esi
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$28, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 165 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	%edx, -28(%ebp)
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_mask@PLT
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-24(%ebp), %eax
	andl	%esi, %eax
	movl	-20(%ebp), %edx
	andl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 166 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	remove_phase_for_option, .-remove_phase_for_option
	.type	double_max_options, @function
double_max_options:
.LFB13:
	.loc 1 171 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$20, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 172 0
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	max_options@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 173 0
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sall	$5, %edx
	movl	options@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, options@GOTOFF(%ebx)
	.loc 1 174 0
	call	double_max_option_seen@PLT
	.loc 1 175 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	double_max_options, .-double_max_options
.globl add_new_option
	.type	add_new_option, @function
add_new_option:
.LFB14:
	.loc 1 180 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%esi
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$32, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 182 0
	movl	last_option@GOTOFF(%ebx), %eax
	movl	max_options@GOT(%ebx), %edx
	movl	(%edx), %edx
	cmpl	%edx, %eax
	jl	.L34
	.loc 1 183 0
	call	double_max_options
.L34:
	.loc 1 185 0
	movl	$12, (%esp)
	call	malloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 186 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 187 0
	movl	last_option@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 188 0
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 189 0
	movl	last_option@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 190 0
	movl	last_option@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 24(%eax)
	.loc 1 191 0
	movl	last_option@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 28(%eax)
	.loc 1 192 0
	movl	last_option@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	$1, (%esp)
	call	get_language_mask@PLT
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	.loc 1 193 0
	movl	last_option@GOTOFF(%ebx), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	$0, (%esp)
	call	get_phase_mask@PLT
	movl	%eax, 8(%esi)
	movl	%edx, 12(%esi)
	.loc 1 194 0
	movl	last_option@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, last_option@GOTOFF(%ebx)
	.loc 1 195 0
	movl	last_option@GOTOFF(%ebx), %eax
	subl	$1, %eax
	.loc 1 196 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE14:
	.size	add_new_option, .-add_new_option
	.section	.rodata
.LC0:
	.string	"roundoff"
.LC1:
	.string	"-Wl,"
	.text
.globl add_derived_option
	.type	add_derived_option, @function
add_derived_option:
.LFB15:
	.loc 1 206 0
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
	subl	$44, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 210 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_new_option@PLT
	movl	%eax, -16(%ebp)
	.loc 1 211 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L38
	.loc 1 213 0
	movl	-20(%ebp), %eax
	addl	$9, %eax
	movzbl	(%eax), %edx
	movl	roundoff@GOT(%ebx), %eax
	movb	%dl, (%eax)
.L38:
	.loc 1 216 0
	movl	-16(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 217 0
	movl	-16(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 219 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 220 0
	movl	-16(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 222 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 223 0
	jmp	.L47
.L41:
	.loc 1 224 0
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 225 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	expand_template_string@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 228 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$4, -40(%ebp)
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
	jne	.L42
	.loc 1 229 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	leal	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
.L42:
	.loc 1 231 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 232 0
	cmpl	$0, -28(%ebp)
	je	.L40
	.loc 1 234 0
	movl	$12, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 235 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.L40:
.L47:
	.loc 1 223 0
	cmpl	$0, -28(%ebp)
	jne	.L41
	.loc 1 238 0
	movl	-24(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 239 0
	movl	-16(%ebp), %eax
	.loc 1 240 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	add_derived_option, .-add_derived_option
.globl is_derived_option
	.type	is_derived_option, @function
is_derived_option:
.LFB16:
	.loc 1 245 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 246 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 247 0
	popl	%ebp
	ret
.LFE16:
	.size	is_derived_option, .-is_derived_option
.globl get_derived_parent
	.type	get_derived_parent, @function
get_derived_parent:
.LFB17:
	.loc 1 252 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 253 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	.loc 1 254 0
	popl	%ebp
	ret
.LFE17:
	.size	get_derived_parent, .-get_derived_parent
.globl first_option
	.type	first_option, @function
first_option:
.LFB18:
	.loc 1 269 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 270 0
	movl	last_option@GOTOFF(%ecx), %eax
	subl	$1, %eax
	movl	%eax, current_option@GOTOFF(%ecx)
	.loc 1 271 0
	movl	current_option@GOTOFF(%ecx), %eax
	.loc 1 272 0
	popl	%ebp
	ret
.LFE18:
	.size	first_option, .-first_option
.globl next_option
	.type	next_option, @function
next_option:
.LFB19:
	.loc 1 276 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 277 0
	movl	current_option@GOTOFF(%ecx), %eax
	subl	$1, %eax
	movl	%eax, current_option@GOTOFF(%ecx)
	.loc 1 278 0
	movl	current_option@GOTOFF(%ecx), %eax
	.loc 1 279 0
	popl	%ebp
	ret
.LFE19:
	.size	next_option, .-next_option
.globl no_more_options
	.type	no_more_options, @function
no_more_options:
.LFB20:
	.loc 1 283 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 284 0
	movl	current_option@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 285 0
	popl	%ebp
	ret
.LFE20:
	.size	no_more_options, .-no_more_options
.globl first_combo_item
	.type	first_combo_item, @function
first_combo_item:
.LFB21:
	.loc 1 296 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	subl	$4, %esp
.LCFI75:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 297 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, current_combo@GOTOFF(%ecx)
	.loc 1 298 0
	movl	current_combo@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	jne	.L59
	.loc 1 299 0
	movl	$0, -4(%ebp)
	jmp	.L61
.L59:
	.loc 1 301 0
	movl	current_combo@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L61:
	movl	-4(%ebp), %eax
	.loc 1 302 0
	leave
	ret
.LFE21:
	.size	first_combo_item, .-first_combo_item
.globl next_combo_item
	.type	next_combo_item, @function
next_combo_item:
.LFB22:
	.loc 1 306 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	subl	$4, %esp
.LCFI78:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 307 0
	movl	current_combo@GOTOFF(%ecx), %eax
	movl	4(%eax), %eax
	movl	%eax, current_combo@GOTOFF(%ecx)
	.loc 1 308 0
	movl	current_combo@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	jne	.L64
	.loc 1 309 0
	movl	$0, -4(%ebp)
	jmp	.L66
.L64:
	.loc 1 311 0
	movl	current_combo@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L66:
	movl	-4(%ebp), %eax
	.loc 1 312 0
	leave
	ret
.LFE22:
	.size	next_combo_item, .-next_combo_item
.globl no_more_combo_items
	.type	no_more_combo_items, @function
no_more_combo_items:
.LFB23:
	.loc 1 316 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 317 0
	movl	current_combo@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 318 0
	popl	%ebp
	ret
.LFE23:
	.size	no_more_combo_items, .-no_more_combo_items
.globl first_implied_option
	.type	first_implied_option, @function
first_implied_option:
.LFB24:
	.loc 1 329 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	subl	$4, %esp
.LCFI83:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 330 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, current_implied@GOTOFF(%ecx)
	.loc 1 331 0
	movl	current_implied@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	jne	.L71
	.loc 1 332 0
	movl	$0, -4(%ebp)
	jmp	.L73
.L71:
	.loc 1 334 0
	movl	current_implied@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L73:
	movl	-4(%ebp), %eax
	.loc 1 335 0
	leave
	ret
.LFE24:
	.size	first_implied_option, .-first_implied_option
.globl next_implied_option
	.type	next_implied_option, @function
next_implied_option:
.LFB25:
	.loc 1 339 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	subl	$4, %esp
.LCFI86:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 340 0
	movl	current_implied@GOTOFF(%ecx), %eax
	movl	8(%eax), %eax
	movl	%eax, current_implied@GOTOFF(%ecx)
	.loc 1 341 0
	movl	current_implied@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	jne	.L76
	.loc 1 342 0
	movl	$0, -4(%ebp)
	jmp	.L78
.L76:
	.loc 1 344 0
	movl	current_implied@GOTOFF(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L78:
	movl	-4(%ebp), %eax
	.loc 1 345 0
	leave
	ret
.LFE25:
	.size	next_implied_option, .-next_implied_option
.globl no_more_implied_options
	.type	no_more_implied_options, @function
no_more_implied_options:
.LFB26:
	.loc 1 349 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 350 0
	movl	current_implied@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 351 0
	popl	%ebp
	ret
.LFE26:
	.size	no_more_implied_options, .-no_more_implied_options
.globl get_current_implied_name
	.type	get_current_implied_name, @function
get_current_implied_name:
.LFB27:
	.loc 1 357 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 358 0
	movl	current_implied@GOTOFF(%ecx), %eax
	movl	4(%eax), %eax
	.loc 1 359 0
	popl	%ebp
	ret
.LFE27:
	.size	get_current_implied_name, .-get_current_implied_name
	.section	.rodata
.LC2:
	.string	"dump option %d"
.LC3:
	.string	" (%s)"
.LC4:
	.string	"\tlangs = %llx, phases = %llx\n"
.LC5:
	.string	"\timplies:"
.LC6:
	.string	"  %d(%s)"
.LC7:
	.string	"\tcombos:"
.LC8:
	.string	"  %d"
	.text
.globl dump_option
	.type	dump_option, @function
dump_option:
.LFB28:
	.loc 1 363 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%edi
.LCFI93:
	pushl	%esi
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$44, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 364 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 365 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 366 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 367 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 368 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L85:
	.loc 1 370 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 371 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %esi
	movl	12(%eax), %edi
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 373 0
	cmpl	$0, -20(%ebp)
	je	.L87
	.loc 1 374 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 375 0
	jmp	.L89
.L90:
	.loc 1 376 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 377 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
.L89:
	.loc 1 375 0
	cmpl	$0, -20(%ebp)
	jne	.L90
.L87:
	.loc 1 380 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 381 0
	cmpl	$0, -16(%ebp)
	je	.L96
	.loc 1 382 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 383 0
	jmp	.L93
.L94:
	.loc 1 384 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 385 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L93:
	.loc 1 383 0
	cmpl	$0, -16(%ebp)
	jne	.L94
	.loc 1 387 0
	movl	$10, (%esp)
	call	putchar@PLT
.L96:
	.loc 1 389 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	dump_option, .-dump_option
.globl msglevel
	.data
	.align 4
	.type	msglevel, @object
	.size	msglevel, 4
msglevel:
	.long	-1
.globl skip_as
	.align 4
	.type	skip_as, @object
	.size	skip_as, 4
skip_as:
	.long	-1
.globl shared
	.align 4
	.type	shared, @object
	.size	shared, 4
shared:
	.long	-1
.globl rflag
	.align 4
	.type	rflag, @object
	.size	rflag, 4
rflag:
	.long	-1
.globl qwalign2
	.align 4
	.type	qwalign2, @object
	.size	qwalign2, 4
qwalign2:
	.long	-1
.globl qwalign1
	.align 4
	.type	qwalign1, @object
	.size	qwalign1, 4
qwalign1:
	.long	-1
.globl iflag
	.align 4
	.type	iflag, @object
	.size	iflag, 4
iflag:
	.long	-1
.globl abi
	.align 4
	.type	abi, @object
	.size	abi, 4
abi:
	.long	-1
.globl sse2
	.align 4
	.type	sse2, @object
	.size	sse2, 4
sse2:
	.long	-1
.globl ospace
	.align 4
	.type	ospace, @object
	.size	ospace, 4
ospace:
	.long	-1
.globl mpkind
	.align 4
	.type	mpkind, @object
	.size	mpkind, 4
mpkind:
	.long	-1
.globl sse3
	.align 4
	.type	sse3, @object
	.size	sse3, 4
sse3:
	.long	-1
.globl m3dnow
	.align 4
	.type	m3dnow, @object
	.size	m3dnow, 4
m3dnow:
	.long	-1
.globl isa
	.align 4
	.type	isa, @object
	.size	isa, 4
isa:
	.long	-1
.globl ipa
	.align 4
	.type	ipa, @object
	.size	ipa, 4
ipa:
	.long	-1
.globl use_h264libs
	.align 4
	.type	use_h264libs, @object
	.size	use_h264libs, 4
use_h264libs:
	.long	-1
.globl glevel
	.align 4
	.type	glevel, @object
	.size	glevel, 4
glevel:
	.long	-1
.globl use_ftpp
	.align 4
	.type	use_ftpp, @object
	.size	use_ftpp, 4
use_ftpp:
	.long	-1
.globl fortran_form
	.align 4
	.type	fortran_form, @object
	.size	fortran_form, 4
fortran_form:
	.long	-1
.globl pic
	.align 4
	.type	pic, @object
	.size	pic, 4
pic:
	.long	-1
.globl fmath_errno
	.align 4
	.type	fmath_errno, @object
	.size	fmath_errno, 4
fmath_errno:
	.long	-1
.globl ffast_math
	.align 4
	.type	ffast_math, @object
	.size	ffast_math, 4
ffast_math:
	.long	-1
.globl fbuiltin
	.align 4
	.type	fbuiltin, @object
	.size	fbuiltin, 4
fbuiltin:
	.long	-1
.globl use_coco
	.align 4
	.type	use_coco, @object
	.size	use_coco, 4
use_coco:
	.long	-1
.globl dflag
	.align 4
	.type	dflag, @object
	.size	dflag, 4
dflag:
	.long	-1
.globl cordflag
	.align 4
	.type	cordflag, @object
	.size	cordflag, 4
cordflag:
	.long	-1
.globl io_byteswap
	.align 4
	.type	io_byteswap, @object
	.size	io_byteswap, 4
io_byteswap:
	.long	-1
.globl compat_gcc
	.align 4
	.type	compat_gcc, @object
	.size	compat_gcc, 4
compat_gcc:
	.long	-1
.globl use_bblibs
	.align 4
	.type	use_bblibs, @object
	.size	use_bblibs, 4
use_bblibs:
	.long	-1
.globl isstatic
	.align 4
	.type	isstatic, @object
	.size	isstatic, 4
isstatic:
	.long	-1
.globl ansi
	.align 4
	.type	ansi, @object
	.size	ansi, 4
ansi:
	.long	-1
.globl olevel
	.align 4
	.type	olevel, @object
	.size	olevel, 4
olevel:
	.long	-1
.globl standard_cplusplus
	.align 4
	.type	standard_cplusplus, @object
	.size	standard_cplusplus, 4
standard_cplusplus:
	.long	-1
.globl gnum
	.align 4
	.type	gnum, @object
	.size	gnum, 4
gnum:
	.long	-1
	.text
	.type	create_option_info, @function
create_option_info:
.LFB29:
	.file 2 "./init_options.i"
	.loc 2 43 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%esi
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$32, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 2 44 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 2 45 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 2 46 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 16(%eax)
	.loc 2 47 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 20(%eax)
	.loc 2 48 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, 24(%esi)
	.loc 2 49 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	32(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, 28(%esi)
	.loc 2 50 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE29:
	.size	create_option_info, .-create_option_info
	.type	create_implies_item, @function
create_implies_item:
.LFB30:
	.loc 2 54 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$20, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 56 0
	movl	$12, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 2 57 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 2 58 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 2 59 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 2 60 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 2 61 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	create_implies_item, .-create_implies_item
	.type	create_combo_item, @function
create_combo_item:
.LFB31:
	.loc 2 65 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$20, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 67 0
	movl	$8, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 2 68 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 2 69 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 2 70 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	options@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 2 71 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	create_combo_item, .-create_combo_item
	.section	.rodata
.LC9:
	.string	""
.LC10:
	.string	"-xall"
.LC11:
	.string	"-u"
.LC12:
	.string	"-u %s"
.LC13:
	.string	"-scan"
.LC14:
	.string	"-object"
.LC15:
	.string	"-m2"
.LC16:
	.string	"-m1"
.LC17:
	.string	"-m0"
.LC18:
	.string	"-lo=ocktl"
.LC19:
	.string	"-init"
.LC20:
	.string	"-init %s"
.LC21:
	.string	"-include="
.LC22:
	.string	"-include=%D"
.LC23:
	.string	"-fini"
.LC24:
	.string	"-fini %s"
.LC25:
	.string	"-cvs_nosrc,"
.LC26:
	.string	"-cvs_nosrc,%D"
.LC27:
	.string	"-cvs_nosrc"
.LC28:
	.string	"-cvs,"
.LC29:
	.string	"-cvs,%D"
.LC30:
	.string	"-cvs"
.LC31:
	.string	"-cpp_pic"
.LC32:
	.string	"-D__DSO__"
.LC33:
	.string	"-D_PIC"
.LC34:
	.string	"-cpp_nonansi"
.LC35:
	.string	"-D_LONGLONG"
.LC36:
	.string	"-cpp_fortran90"
.LC37:
	.string	"-DLANGUAGE_FORTRAN90"
.LC38:
	.string	"-D_LANGUAGE_FORTRAN90"
.LC39:
	.string	"-cpp_fortran77"
.LC40:
	.string	"-DLANGUAGE_FORTRAN77"
.LC41:
	.string	"-D_LANGUAGE_FORTRAN77"
.LC42:
	.string	"-cpp_fortran"
.LC43:
	.string	"-DLANGUAGE_FORTRAN"
.LC44:
	.string	"-D_LANGUAGE_FORTRAN"
.LC45:
	.string	"-cpp_extensions"
.LC46:
	.string	"-D__MATH_HAS_NO_SIDE_EFFECTS"
.LC47:
	.string	"-D__EXTENSIONS__"
.LC48:
	.string	"-cpp_assembly"
.LC49:
	.string	"-DLANGUAGE_ASSEMBLY"
.LC50:
	.string	"-D_LANGUAGE_ASSEMBLY"
.LC51:
	.string	"-Xansi"
.LC52:
	.string	"-D__GNUC__"
.LC53:
	.string	"-D_LANGUAGE_C_PLUS_PLUS=1"
.LC54:
	.string	"-D_LANGUAGE_C"
	.align 4
.LC55:
	.string	"set uninitialized variables to zero"
.LC56:
	.string	"-zerouv"
.LC57:
	.string	"-DEBUG:zero_uninitialized"
.LC58:
	.string	"-y"
.LC59:
	.string	"-y %s"
	.align 4
.LC60:
	.string	"Specify explicit language for input files"
.LC61:
	.string	"-x"
	.align 4
.LC62:
	.string	"turn off warnings about options"
.LC63:
	.string	"-woffoptions"
.LC64:
	.string	"turn off all warnings"
.LC65:
	.string	"-woffall"
.LC66:
	.string	"-w"
.LC67:
	.string	"turn off named warnings"
.LC68:
	.string	"-woff"
.LC69:
	.string	"-woff%d"
	.align 4
.LC70:
	.string	"turn off F66 incompatibility warnings"
.LC71:
	.string	"-w66"
	.align 4
.LC72:
	.string	"supress warnings but exit with error status"
.LC73:
	.string	"-w3"
.LC74:
	.string	"warnings count as errors"
.LC75:
	.string	"-w2"
.LC76:
	.string	"-vms_stdin"
.LC77:
	.string	"-vms_library"
.LC78:
	.string	"-vms_endfile"
.LC79:
	.string	"-vms_cc"
.LC80:
	.string	"-vms"
	.align 4
.LC81:
	.string	"Show the version of the compiler being used"
.LC82:
	.string	"-version"
.LC83:
	.string	"MATRA varargs"
.LC84:
	.string	"-varargs"
	.align 4
.LC85:
	.string	"show phases and version as they are being invoked"
.LC86:
	.string	"-v"
.LC87:
	.string	"-show"
.LC88:
	.string	"-usegfe"
.LC89:
	.string	"-INTERNAL:return_info=on"
.LC90:
	.string	"-INTERNAL:mldid_mstid=on"
.LC91:
	.string	"-INTERNAL:return_val=on"
.LC92:
	.string	"-usefpidx"
.LC93:
	.string	"-usef90"
.LC94:
	.string	"-useas"
.LC95:
	.string	"-use_readwrite_const"
.LC96:
	.string	"-use_readonly_const"
.LC97:
	.string	"-undef"
.LC98:
	.string	"-trigraphs"
.LC99:
	.string	"trap uninitialized variables"
.LC100:
	.string	"-trapuv"
.LC101:
	.string	"-DEBUG:trap_uninitialized"
.LC102:
	.string	"-traditional-cpp"
.LC103:
	.string	"-traditional"
	.align 4
.LC104:
	.string	"Attempt to support traditional K&R style C"
.LC105:
	.string	"-syntax-only"
.LC106:
	.string	"-symbolic"
	.align 4
.LC107:
	.string	"Print diagnostic information about subscription management"
.LC108:
	.string	"-subverbose"
	.align 4
.LC109:
	.string	"predefined include search path list"
.LC110:
	.string	"-stdinc"
	.align 4
.LC111:
	.string	"Support revised ISO C, from 1999"
.LC112:
	.string	"-std=iso9899:199x"
.LC113:
	.string	"-std=iso9899:1999"
	.align 4
.LC114:
	.string	"Support ISO C from 1990, with 1994 amendments"
.LC115:
	.string	"-std=iso9899:199409"
.LC116:
	.string	"Support ISO C from 1990"
.LC117:
	.string	"-std=iso9899:1990"
	.align 4
.LC118:
	.string	"Support ISO C from 1999, with GNU extensions"
.LC119:
	.string	"-std=gnu9x"
.LC120:
	.string	"-std=gnu99"
	.align 4
.LC121:
	.string	"Support ISO C from 1990, with GNU extensions"
.LC122:
	.string	"-std=gnu89"
	.align 4
.LC123:
	.string	"The same as `-std=c++98' plus GNU extensions.  This is the default for C++ code."
.LC124:
	.string	"-std=gnu++98"
.LC125:
	.string	"-std=c9x"
.LC126:
	.string	"-std=c99"
.LC127:
	.string	"-std=c89"
	.align 4
.LC128:
	.string	"Support 1998 ISO C++ standard plus amendments"
.LC129:
	.string	"-std=c++98"
.LC130:
	.string	"-static_threadprivate"
	.align 4
.LC131:
	.string	"Force the use of the static libgcc library"
.LC132:
	.string	"-static-libgcc"
.LC133:
	.string	"treat local data as static"
.LC134:
	.string	"-static-data"
.LC135:
	.string	"-static"
.LC136:
	.string	"-specs="
.LC137:
	.string	"-soname"
.LC138:
	.string	"-soname %s"
	.align 4
.LC139:
	.string	"tell which application is compiled, to decide the right LUT"
.LC140:
	.string	"-sl2_lut="
.LC141:
	.string	"-CG:app_name=%s"
.LC142:
	.string	"show time taken by each phase"
.LC143:
	.string	"-showt"
.LC144:
	.string	"-showd"
.LC145:
	.string	"-show1"
	.align 4
.LC146:
	.string	"show what phases would be called, but don't invoke anything"
.LC147:
	.string	"-show0"
	.align 4
.LC148:
	.string	"Show the default compiler options being used"
.LC149:
	.string	"-show-defaults"
	.align 4
.LC150:
	.string	"show phases as they are being invoked"
	.align 4
.LC151:
	.string	"Force the use of the shared libgcc library"
.LC152:
	.string	"-shared-libgcc"
.LC153:
	.string	"dso-shared PIC code"
.LC154:
	.string	"-shared"
.LC155:
	.string	"-TENV:PIC"
.LC156:
	.string	"-save-temps"
	.align 4
.LC157:
	.string	"Strip symbol table and relocation information"
.LC158:
	.string	"-s"
.LC159:
	.string	"-rpath"
.LC160:
	.string	"-rpath %s"
	.align 4
.LC161:
	.string	"override the turning down of optimization levels"
.LC162:
	.string	"-realO"
.LC163:
	.string	"-rdynamic"
.LC164:
	.string	"-Wl,--export-dynamic"
.LC165:
	.string	"-r8const"
	.align 4
.LC166:
	.string	"use REAL*8 and COMPLEX*16 as the defaults for real and complex"
.LC167:
	.string	"-r8"
	.align 4
.LC168:
	.string	"use REAL*4 and COMPLEX*8 as the defaults for real and complex"
.LC169:
	.string	"-r4"
	.align 4
.LC170:
	.string	"produce a relocatable .o and stop"
.LC171:
	.string	"-r"
	.align 4
.LC172:
	.string	"quadword alignment: do pu alignment"
.LC173:
	.string	"-qwa2"
.LC174:
	.string	"-CG:qw_aligned=2"
.LC175:
	.string	"quadword alignment"
.LC176:
	.string	"-qwa1"
.LC177:
	.string	"-CG:qw_aligned=1"
.LC178:
	.string	"Compile with pthreads support"
.LC179:
	.string	"-pthread"
.LC180:
	.string	"-promp"
.LC181:
	.string	"-PROMP:=on"
.LC182:
	.string	"-PHASE:prompf"
.LC183:
	.string	"-profile"
.LC184:
	.string	"-TENV:call_mcount"
.LC185:
	.string	"-lm"
	.align 4
.LC186:
	.string	"Print the installation directory and directories the compiler will search"
.LC187:
	.string	"-print-search-dirs"
.LC188:
	.string	"-print-prog-name="
	.align 4
.LC189:
	.string	"Print the mapping from multilib directory names to compiler switches that enable them."
.LC190:
	.string	"-print-multi-lib"
.LC191:
	.string	"-print-libgcc-file-name"
.LC192:
	.string	"-print-file-name=libgcc.a"
.LC193:
	.string	"-print-file-name="
.LC194:
	.string	"use prelinker (default)"
.LC195:
	.string	"-prelink"
.LC196:
	.string	"-pipe"
	.align 4
.LC197:
	.string	"Generate position independent code, if possible"
.LC198:
	.string	"-pie"
.LC199:
	.string	"-pic1"
.LC200:
	.string	"-TENV:CPIC"
.LC201:
	.string	"-pg"
.LC202:
	.string	"-pfa2"
.LC203:
	.string	"-pfa,"
.LC204:
	.string	"-pfa"
.LC205:
	.string	"-pfalist"
.LC206:
	.string	"-LNO:prompl"
.LC207:
	.string	"-pfakeep"
	.align 4
.LC208:
	.string	"Issue warnings needed by strict compliance to ANSI C"
.LC209:
	.string	"-pedantic-errors"
.LC210:
	.string	"-pedantic"
.LC211:
	.string	"-pca,"
.LC212:
	.string	"-pcalist"
.LC213:
	.string	"-pcakeep"
.LC214:
	.string	"-pca"
	.align 4
.LC215:
	.string	"Define __PATHCC__ and other macros"
.LC216:
	.string	"-pathcc"
	.align 4
.LC217:
	.string	"Return the highest error code encountered by any phase"
.LC218:
	.string	"-pass-exit-codes"
.LC219:
	.string	"-parse"
.LC220:
	.string	"-pad_char_literals"
.LC221:
	.string	"-p"
	.align 4
.LC222:
	.string	"enable the multiprocessing directives (same as -mp)"
.LC223:
	.string	"-openmp"
.LC224:
	.string	"-mp"
.LC225:
	.string	"One trip DO loops"
.LC226:
	.string	"-onetrip"
.LC227:
	.string	"-1"
.LC228:
	.string	"-old_rl"
	.align 4
.LC229:
	.string	"put output in following file name rather than a.out"
.LC230:
	.string	"-o"
	.align 4
.LC231:
	.string	"Do not use standard system startup files or libraries when linking"
.LC232:
	.string	"-nostdlib"
	.align 4
.LC233:
	.string	"Do not search for header files in the standard directories specific to C++"
.LC234:
	.string	"-nostdinc++"
	.align 4
.LC235:
	.string	"no predefined include search path list"
.LC236:
	.string	"-nostdinc"
	.align 4
.LC237:
	.string	"Do not use standard system startup files when linking"
.LC238:
	.string	"-nostartfiles"
.LC239:
	.string	"suppress inline processing"
.LC240:
	.string	"-noinline"
.LC241:
	.string	"-INLINE:=OFF"
	.align 4
.LC242:
	.string	"make integer and logical quantities short (2 bytes)"
.LC243:
	.string	"-noi4"
.LC244:
	.string	"-nof77"
.LC245:
	.string	"-noextend_source"
.LC246:
	.string	"-scan=72"
	.align 4
.LC247:
	.string	"Don't optimize exponentiation operations"
.LC248:
	.string	"-noexpopt"
.LC249:
	.string	"-OPT:fast_exp=no"
	.align 4
.LC250:
	.string	"Do not use standard system libraries when linking"
.LC251:
	.string	"-nodefaultlibs"
.LC252:
	.string	"don't do cpp processing"
.LC253:
	.string	"-nocpp"
.LC254:
	.string	"disallow bool keyword"
.LC255:
	.string	"-nobool"
.LC256:
	.string	"-noas"
.LC257:
	.string	"-no_prelink"
.LC258:
	.string	"-no-traditional"
	.align 4
.LC259:
	.string	"Don't define __PATHCC__ and other macros"
.LC260:
	.string	"-no-pathcc"
	.align 4
.LC261:
	.string	"Remove intrinsic from the initial set the compiler recognizes"
.LC262:
	.string	"-no-intrinsic="
.LC263:
	.string	"-no-intrinsic=%s"
	.align 4
.LC264:
	.string	"Don't define __GNUC__ and other macros"
.LC265:
	.string	"-no-gcc"
.LC266:
	.string	"Compile for 32-bit ABI"
.LC267:
	.string	"-n32"
.LC268:
	.string	"-TARG:abi=n32"
.LC269:
	.string	"-n"
	.align 4
.LC270:
	.string	"Specify the precision of x87 floating-point calculations (32/64/80-bit)"
.LC271:
	.string	"-mx87-precision="
.LC272:
	.string	"-TARG:x87-precision=%d"
.LC273:
	.string	"-mvolatile-asm-stop"
.LC274:
	.string	"-CG:volatile_asm_stop=on"
.LC275:
	.string	"Set CPU type"
.LC276:
	.string	"-mtune="
.LC277:
	.string	"Enable SSE3 extensions"
.LC278:
	.string	"-msse3"
.LC279:
	.string	"Enable SSE2 extensions"
.LC280:
	.string	"-msse2"
.LC281:
	.string	"Enable SSE extensions"
.LC282:
	.string	"-msse"
.LC283:
	.string	"-mspace"
.LC284:
	.string	"-OPT:space"
.LC285:
	.string	"-msoft-float"
.LC286:
	.string	"-mplist"
.LC287:
	.string	"-mpio"
.LC288:
	.string	"-mp_use_locks"
.LC289:
	.string	"-mp_use_copy"
.LC290:
	.string	"-mp_schedtype="
.LC291:
	.string	"-mp_schedtype=%s"
.LC292:
	.string	"-mp_keep"
.LC293:
	.string	"-mp_chunk="
.LC294:
	.string	"-mp_chunk=%d"
	.align 4
.LC295:
	.string	"enable the multiprocessing directives"
	.align 4
.LC296:
	.string	"Directory in which to create .mod file"
.LC297:
	.string	"-module"
.LC298:
	.string	"Disable SSE3 extensions"
.LC299:
	.string	"-mno-sse3"
.LC300:
	.string	"Disable SSE2/SSE3 extensions"
.LC301:
	.string	"-mno-sse2"
.LC302:
	.string	"-mno-sse"
.LC303:
	.string	"-mno-soft-float"
.LC304:
	.string	"-mno-sdata"
.LC305:
	.string	"-G0"
.LC306:
	.string	"Disable MMX extensions"
.LC307:
	.string	"-mno-mmx"
	.align 4
.LC308:
	.string	"IEEE floating point comparisons not required"
.LC309:
	.string	"-mno-ieee-fp"
.LC310:
	.string	"-OPT:IEEE_NaN_Inf=off"
.LC311:
	.string	"Disable 3Dnow extensions"
.LC312:
	.string	"-mno-3dnow"
.LC313:
	.string	"Enable MMX extensions"
.LC314:
	.string	"-mmmx"
	.align 4
.LC315:
	.string	"compile for mips4 instruction set"
.LC316:
	.string	"-mips4"
.LC317:
	.string	"-TARG:isa=mips4"
.LC318:
	.string	"-mips4 MIPS4_DEFS"
	.align 4
.LC319:
	.string	"Use IEEE floating point comparisons"
.LC320:
	.string	"-mieee-fp"
.LC321:
	.string	"-OPT:IEEE_NaN_Inf=on"
.LC322:
	.string	"-mfixed-range="
	.align 4
.LC323:
	.string	"-TENV:registers_not_allocatable=%s"
.LC324:
	.string	"-memsim"
.LC325:
	.string	"-lmemsim"
.LC326:
	.string	"-LNO:mem_sim=TRUE"
.LC327:
	.string	"-memctr"
.LC328:
	.string	"-mcpu="
.LC329:
	.string	"-mconstant-gp"
.LC330:
	.string	"-TENV:constant_gp=on"
.LC331:
	.string	"Set the memory model to use"
.LC332:
	.string	"-mcmodel="
.LC333:
	.string	"-TENV:mcmodel=%s"
.LC334:
	.string	"-mcmodel=%s"
.LC335:
	.string	"-mb-step"
.LC336:
	.string	"-march="
.LC337:
	.string	"-malign-loops="
.LC338:
	.string	"-malign-jumps="
.LC339:
	.string	"-malign-functions="
.LC340:
	.string	"-macro_expand"
.LC341:
	.string	"-ma-step"
.LC342:
	.string	"-TARG:ma0_step=on"
.LC343:
	.string	"Compile for 64-bit ABI"
.LC344:
	.string	"-m64"
.LC345:
	.string	"-TARG:abi=n64"
.LC346:
	.string	"Enable 3Dnow extensions"
.LC347:
	.string	"-m3dnow"
.LC348:
	.string	"-m386"
.LC349:
	.string	"-m32"
.LC350:
	.string	"Pass -m args to as"
.LC351:
	.string	"-m"
.LC352:
	.string	"-m %s"
.LC353:
	.string	"-ldscript"
	.align 4
.LC354:
	.string	"-l<arg> adds library lib<arg> to link list"
.LC355:
	.string	"-l"
.LC356:
	.string	"-l%s"
	.align 4
.LC357:
	.string	"Treat $ as a normal last character in symbol names"
.LC358:
	.string	"-keepdollar"
.LC359:
	.string	"keep intermediate files"
.LC360:
	.string	"-keep"
.LC361:
	.string	"-jalr"
.LC362:
	.string	"-TARG:force_jalr"
.LC363:
	.string	"-iwithprefixbefore"
.LC364:
	.string	"-iwithprefixbefore %D"
.LC365:
	.string	"-iwithprefix"
.LC366:
	.string	"-iwithprefix %D"
.LC367:
	.string	"-isystem"
.LC368:
	.string	"-isystem %D"
.LC369:
	.string	"-iprefix"
.LC370:
	.string	"-iprefix %s"
	.align 4
.LC371:
	.string	"Perform interprocedural analysis and optimization"
.LC372:
	.string	"-ipa"
	.align 4
.LC373:
	.string	"Add intrinsic to the initial set the compiler recognizes"
.LC374:
	.string	"-intrinsic="
.LC375:
	.string	"-intrinsic=%s"
.LC376:
	.string	"request inline processing"
.LC377:
	.string	"-inline"
.LC378:
	.string	"-INLINE"
.LC379:
	.string	"-include"
.LC380:
	.string	"-include %s"
.LC381:
	.string	"-imacros"
.LC382:
	.string	"-imacros %s"
.LC383:
	.string	"-ignore_suffix"
.LC384:
	.string	"-idirafter"
.LC385:
	.string	"-idirafter %D"
	.align 4
.LC386:
	.string	"make integer and logical quantities long long (8 bytes)"
.LC387:
	.string	"-i8"
	.align 4
.LC388:
	.string	"make integer and logical quantities long (4 bytes)"
.LC389:
	.string	"-i4"
.LC390:
	.string	"-i2"
	.align 4
.LC391:
	.string	"print list of possible options that contain given string"
.LC392:
	.string	"-help:"
	.align 4
.LC393:
	.string	"print list of possible options"
.LC394:
	.string	"-help"
.LC395:
	.string	"-h264lib"
.LC396:
	.string	"-TARG:processor=sl2_pcore"
.LC397:
	.string	"-CG:sl2=on"
.LC398:
	.string	"-gstabs3"
.LC399:
	.string	"-gstabs2"
.LC400:
	.string	"-gstabs1"
.LC401:
	.string	"-gstabs0"
.LC402:
	.string	"-gstabs+"
.LC403:
	.string	"-gstabs"
	.align 4
.LC404:
	.string	"Produce debugging information for use by GDB"
.LC405:
	.string	"-ggdb3"
.LC406:
	.string	"-g3"
.LC407:
	.string	"-ggdb"
.LC408:
	.string	"-g2"
	.align 4
.LC409:
	.string	"Produce DWARF 2 debugging information at debug level 3"
.LC410:
	.string	"-gdwarf-23"
	.align 4
.LC411:
	.string	"Produce DWARF 2 debugging information at debug level 2"
.LC412:
	.string	"-gdwarf-22"
	.align 4
.LC413:
	.string	"Produce DWARF 2 debugging information at debug level 1"
.LC414:
	.string	"-gdwarf-21"
.LC415:
	.string	"-g1"
	.align 4
.LC416:
	.string	"Produce DWARF 2 debugging information at debug level 0"
.LC417:
	.string	"-gdwarf-20"
.LC418:
	.string	"-g0"
	.align 4
.LC419:
	.string	"Produce debugging information in DWARF version 2 format"
.LC420:
	.string	"-gdwarf-2"
.LC421:
	.string	"-gdwarf-1+"
.LC422:
	.string	"-gdwarf-1"
.LC423:
	.string	"-gdwarf"
	.align 4
.LC424:
	.string	"Define __GNUC__ and other macros"
.LC425:
	.string	"-gcc"
	.align 4
.LC426:
	.string	"Add debugging information for C preprocessor macros"
.LC427:
	.string	"no debug info"
.LC428:
	.string	"full debug info"
.LC429:
	.string	"-g"
	.align 4
.LC430:
	.string	"Attempt to support writable-strings K&R style C"
.LC431:
	.string	"-fwritable-strings"
.LC432:
	.string	"-fweak"
.LC433:
	.string	"-fvolatile-static"
	.align 4
.LC434:
	.string	"Consider all mem refs to global data to be volatile"
.LC435:
	.string	"-fvolatile-global"
	.align 4
.LC436:
	.string	"Consider all mem refs through pointers as volatile"
.LC437:
	.string	"-fvolatile"
	.align 4
.LC438:
	.string	"Run verification routine before tree-to-whirl conversion"
.LC439:
	.string	"-fverify-tree"
.LC440:
	.string	"-fverbose-asm"
	.align 4
.LC441:
	.string	"Register static destructors with __cxa_atexit instead of atexit"
.LC442:
	.string	"-fuse-cxa-atexit"
.LC443:
	.string	"-funwind-tables"
.LC444:
	.string	"-TENV:frame_pointer=on"
.LC445:
	.string	"-CG:emit_unwind_info=on"
	.align 4
.LC446:
	.string	"Make 'char' be unsigned by default"
.LC447:
	.string	"-funsigned-char"
.LC448:
	.string	"-D__CHAR_UNSIGNED__"
	.align 4
.LC449:
	.string	"Make bitfields be unsigned by default"
.LC450:
	.string	"-funsigned-bitfields"
	.align 4
.LC451:
	.string	"Improve FP speed by violating ANSI & IEEE rules"
.LC452:
	.string	"-funsafe-math-optimizations"
.LC453:
	.string	"-fno-math-errno"
	.align 4
.LC454:
	.string	"-OPT:funsafe_math_optimizations=ON"
.LC455:
	.string	"unroll-loops"
.LC456:
	.string	"-funroll-loops"
	.align 4
.LC457:
	.string	"Peform loop onrolling for all loops"
.LC458:
	.string	"-funroll-all-loops"
.LC459:
	.string	"Append underscores to symbols"
.LC460:
	.string	"-funderscoring"
	.align 4
.LC461:
	.string	"give more warnings, especially about missing prototypes"
.LC462:
	.string	"-fullwarn"
.LC463:
	.string	"-ftraditional"
.LC464:
	.string	"-ftpp"
	.align 4
.LC465:
	.string	"Perform jump threading optimisations"
.LC466:
	.string	"-fthread-jumps"
.LC467:
	.string	"turn on test coverage"
.LC468:
	.string	"-ftest-coverage"
.LC469:
	.string	"-CG:test_coverage=true"
	.align 4
.LC470:
	.string	"Set maximum instantiation depth for template classes"
.LC471:
	.string	"-ftemplate-depth-"
.LC472:
	.string	"-ftemplate-depth-%d"
	.align 4
.LC473:
	.string	"Assume strictest aliasing rules"
.LC474:
	.string	"-fstrict-aliasing"
.LC475:
	.string	"-OPT:alias=typed"
	.align 4
.LC476:
	.string	"Perform strength reduction optimisations"
.LC477:
	.string	"-fstrength-reduce"
.LC478:
	.string	"-fstack-check"
.LC479:
	.string	"-fssa-dce"
.LC480:
	.string	"-fssa-ccp"
.LC481:
	.string	"-fssa"
	.align 4
.LC482:
	.string	"Make 'char' be signed by default"
.LC483:
	.string	"-fsigned-char"
	.align 4
.LC484:
	.string	"Make bitfields be signed by default"
.LC485:
	.string	"-fsigned-bitfields"
	.align 4
.LC486:
	.string	"Use short unsigned int for wchar_t instead of the default underlying type for the target."
.LC487:
	.string	"-fshort-wchar"
	.align 4
.LC488:
	.string	"Use the smallest fitting integer to hold enums"
.LC489:
	.string	"-fshort-enums"
	.align 4
.LC490:
	.string	"Use the same size for double as for float"
.LC491:
	.string	"-fshort-double"
	.align 4
.LC492:
	.string	"Mark data as shared rather than private"
.LC493:
	.string	"-fshared-data"
	.align 4
.LC494:
	.string	"Append a second underscore to symbols that already contain an underscore"
.LC495:
	.string	"-fsecond-underscore"
.LC496:
	.string	"-fschedule-insns2"
.LC497:
	.string	"-fschedule-insns"
	.align 4
.LC498:
	.string	"Generate runtime type information"
.LC499:
	.string	"-frtti"
.LC500:
	.string	"-frerun-loop-opt"
.LC501:
	.string	"-frerun-cse-after-loop"
.LC502:
	.string	"-fregmove"
.LC503:
	.string	"-freg-struct-return"
	.align 4
.LC504:
	.string	"sets Fortran 90 free form source statement formatting"
.LC505:
	.string	"-freeform"
.LC506:
	.string	"-freduce-all-givs"
.LC507:
	.string	"-framepointer"
.LC508:
	.string	"-fprofile-arcs"
.LC509:
	.string	"-OPT:profile_arcs=true"
	.align 4
.LC510:
	.string	"Tell preprocessor that input has already been preprocessed"
.LC511:
	.string	"-fpreprocessed"
	.align 4
.LC512:
	.string	"Add a prefix to all function names"
.LC513:
	.string	"-fprefix-function-name"
.LC514:
	.string	"-fpie"
.LC515:
	.string	"-fpic"
	.align 4
.LC516:
	.string	"Downgrade messages about nonconformant code to warnings"
.LC517:
	.string	"-fpermissive"
.LC518:
	.string	"-fpcc-struct-return"
	.align 4
.LC519:
	.string	"Pack structure members together without holes"
.LC520:
	.string	"-fpack-struct"
.LC521:
	.string	"-foptimize-sibling-calls"
.LC522:
	.string	"-foptimize-register-moves"
.LC523:
	.string	"-foptimize-register-move"
.LC524:
	.string	"-fonetrip"
	.align 4
.LC525:
	.string	"When possible do not generate stack frames"
.LC526:
	.string	"-fomit-frame-pointer"
.LC527:
	.string	"-fnotraditional"
.LC528:
	.string	"-fno-writable-strings"
.LC529:
	.string	"-fno-weak"
	.align 4
.LC530:
	.string	"Register static destructors with atexit instead of __cxa_atexit"
.LC531:
	.string	"-fno-use-cxa-atexit"
.LC532:
	.string	"-fno-unwind-tables"
.LC533:
	.string	"-CG:emit_unwind_info=off"
.LC534:
	.string	"-fno-unsigned-char"
.LC535:
	.string	"-fno-unsigned-bitfields"
	.align 4
.LC536:
	.string	"Conform to ANSI & IEEE math rules at the expense of speed"
	.align 4
.LC537:
	.string	"-fno-unsafe-math-optimizations"
.LC538:
	.string	"-fmath-errno"
	.align 4
.LC539:
	.string	"-OPT:funsafe_math_optimizations=OFF"
	.align 4
.LC540:
	.string	"Don't append underscores to symbols"
.LC541:
	.string	"-fno-underscoring"
.LC542:
	.string	"-fno-traditional"
	.align 4
.LC543:
	.string	"Do not assume strict aliasing rules"
.LC544:
	.string	"-fno-strict-aliasing"
.LC545:
	.string	"-fno-strength-reduce"
.LC546:
	.string	"-fno-ssa-dce"
.LC547:
	.string	"-fno-ssa-ccp"
.LC548:
	.string	"-fno-ssa"
.LC549:
	.string	"-fno-signed-char"
.LC550:
	.string	"-fno-signed-bitfields"
	.align 4
.LC551:
	.string	"Don't append a second underscore to symbols that already contain an underscore"
.LC552:
	.string	"-fno-second-underscore"
	.align 4
.LC553:
	.string	"Do not generate runtime type information"
.LC554:
	.string	"-fno-rtti"
	.align 4
.LC555:
	.string	"Tell preprocessor that input has not already been preprocessed"
.LC556:
	.string	"-fno-preprocessed"
	.align 4
.LC557:
	.string	"Do not generate position independent code"
.LC558:
	.string	"-fno-pie"
.LC559:
	.string	"-fno-pic"
	.align 4
.LC560:
	.string	"Keep messages about nonconformant code as errors"
.LC561:
	.string	"-fno-permissive"
.LC562:
	.string	"-fno-peephole"
.LC563:
	.string	"-fno-optimize-sibling-calls"
.LC564:
	.string	"-fno-optimize-register-move"
	.align 4
.LC565:
	.string	"Do not treat operator keywords and, bitand, bitor, compl, not, or and xor as keywords."
.LC566:
	.string	"-fno-operator-names"
.LC567:
	.string	"-fno-omit-frame-pointer"
	.align 4
.LC568:
	.string	"Do not set ERRNO after calling math functions that are executed with a single instruction"
.LC569:
	.string	"-LANG:math_errno=off"
	.align 4
.LC570:
	.string	"Do not automatically integrate simple functions into their callers"
.LC571:
	.string	"-fno-inline-functions"
.LC572:
	.string	"-fno-inline"
.LC573:
	.string	"-INLINE:=off"
	.align 4
.LC574:
	.string	"Never emit code for non-inline templates instantiated implicitly"
.LC575:
	.string	"-fno-implicit-templates"
	.align 4
.LC576:
	.string	"Never emit code for inline templates instantiated implicitly"
	.align 4
.LC577:
	.string	"-fno-implicit-inline-templates"
.LC578:
	.string	"Ignore #ident directives"
.LC579:
	.string	"-fno-ident"
.LC580:
	.string	"-fno-hosted"
.LC581:
	.string	"Disable exception handling"
.LC582:
	.string	"-fno-handle-exceptions"
.LC583:
	.string	"-fno-gnu-linker"
	.align 4
.LC584:
	.string	"Do not recognize 'typeof' as a keyword"
.LC585:
	.string	"-fno-gnu-keywords"
.LC586:
	.string	"-fno-function-cse"
.LC587:
	.string	"-fno-freestanding"
	.align 4
.LC588:
	.string	"Variables declared in a for-init loop extend to the enclosing scope"
.LC589:
	.string	"-fno-for-scope"
	.align 4
.LC590:
	.string	"Do not use faster versions of standard library functions"
.LC591:
	.string	"-fno-fast-stdlib"
.LC592:
	.string	"-OPT:fast_stdlib=off"
.LC593:
	.string	"-fno-fast-math"
.LC594:
	.string	"-OPT:ffast_math=OFF"
.LC595:
	.string	"-fno-exceptions"
	.align 4
.LC596:
	.string	"Ignore Fortran compiler directives inside comments"
.LC597:
	.string	"-fno-directives"
.LC598:
	.string	"-fno-defer-pop"
.LC599:
	.string	"-fno-default-inline"
	.align 4
.LC600:
	.string	"use strict ref/def initialization model"
.LC601:
	.string	"-fno-common"
	.align 4
.LC602:
	.string	"Do not check result of operator new for NULL"
.LC603:
	.string	"-fno-check-new"
	.align 4
.LC604:
	.string	"Do not recognise any built in functions"
.LC605:
	.string	"-fno-builtin"
	.align 4
.LC606:
	.string	"Do not recognise the 'asm' keyword"
.LC607:
	.string	"-fno-asm"
.LC608:
	.string	"-fno-PIE"
.LC609:
	.string	"-fno-PIC"
	.align 4
.LC610:
	.string	"Accept broken MFC extensions without warning"
.LC611:
	.string	"-fms-extensions"
.LC612:
	.string	"-fmove-all-movables"
	.align 4
.LC613:
	.string	"Try to format error messages so that they fit on lines of about n characters."
.LC614:
	.string	"-fmessage-length="
.LC615:
	.string	"-fmessage-length=%d"
.LC616:
	.string	"-flist"
.LC617:
	.string	"-FLIST:=ON"
.LC618:
	.string	"-PHASE:flist"
.LC619:
	.string	"-fleading-underscore"
.LC620:
	.string	"-flang-isoc9x"
	.align 4
.LC621:
	.string	"Generate code for funcs even if they are fully inlined"
.LC622:
	.string	"-fkeep-inline-functions"
	.align 4
.LC623:
	.string	"sets Fortran 90 fixed form source statement formatting"
.LC624:
	.string	"-fixedform"
.LC625:
	.string	"-finline-limit="
.LC626:
	.string	"-finline-limit=%d"
	.align 4
.LC627:
	.string	"Automatically integrate simple functions into their callers"
.LC628:
	.string	"-finline-functions"
.LC629:
	.string	"-finline"
	.align 4
.LC630:
	.string	"Do not generate .size directives"
.LC631:
	.string	"-finhibit-size-directive"
	.align 4
.LC632:
	.string	"-CG:inhibit_size_directive=1:emit_asm_dwarf=0"
	.align 4
.LC633:
	.string	"Emit code for non-inline templates instantiated implicitly"
.LC634:
	.string	"-fimplicit-templates"
	.align 4
.LC635:
	.string	"Emit code for inline templates instantiated implicitly"
.LC636:
	.string	"-fimplicit-inline-templates"
.LC637:
	.string	"-fhosted"
.LC638:
	.string	"Enable exception handling"
.LC639:
	.string	"-fhandle-exceptions"
	.align 4
.LC640:
	.string	"Recognize 'typeof' as a keyword"
.LC641:
	.string	"-fgnu-keywords"
.LC642:
	.string	"-fgcse"
.LC643:
	.string	"-ffunction-sections"
.LC644:
	.string	"-ffreestanding"
.LC645:
	.string	"check bounds"
.LC646:
	.string	"-ffortran-bounds-check"
.LC647:
	.string	"-DEBUG:subscript_check"
.LC648:
	.string	"-fforce-mem"
.LC649:
	.string	"-fforce-addr"
	.align 4
.LC650:
	.string	"Variables declared in a for-init loop are constrained to that scope"
.LC651:
	.string	"-ffor-scope"
	.align 4
.LC652:
	.string	"Do not store floats in registers"
.LC653:
	.string	"-ffloat-store"
	.align 4
.LC654:
	.string	"-CG:x87_store=1:min_spill_loc_size=1"
.LC655:
	.string	"-ffixed-"
	.align 4
.LC656:
	.string	"Use faster versions of some standard library functions, when available"
.LC657:
	.string	"-ffast-stdlib"
.LC658:
	.string	"-OPT:fast_stdlib=on"
.LC659:
	.string	"-ffast-math"
.LC660:
	.string	"-OPT:ffast_math=ON"
.LC661:
	.string	"Allow Fortran 90 constructs"
.LC662:
	.string	"-ff90"
.LC663:
	.string	"Use idiomatic UNIX FORTRAN 77"
.LC664:
	.string	"-ff77"
	.align 4
.LC665:
	.string	"Tell Fortran compiler to use the f2c ABI for symbols in file"
.LC666:
	.string	"-ff2c-abi"
.LC667:
	.string	"-ff2c-abi %s"
.LC668:
	.string	"-fexpensive-optimizations"
.LC669:
	.string	"-fexceptions"
.LC670:
	.string	"-feedback"
	.align 4
.LC671:
	.string	"stop after the front end is run"
.LC672:
	.string	"-fe"
	.align 4
.LC673:
	.string	"Recognize Fortran compiler directives inside comments"
.LC674:
	.string	"-fdirectives"
	.align 4
.LC675:
	.string	"Instructs the diagnostic messages reporter to emit source location information once"
	.align 4
.LC676:
	.string	"-fdiagnostics-show-location=once"
	.align 4
.LC677:
	.string	"Instructs the diagnostic messages reporter to emit source location information on every line"
	.align 4
.LC678:
	.string	"-fdiagnostics-show-location=every-line"
.LC679:
	.string	"-fdelayed-branch"
	.align 4
.LC680:
	.string	"File tells Fortran compiler how to transform ids into linker symbols"
.LC681:
	.string	"-fdecorate"
.LC682:
	.string	"-fdecorate %s"
.LC683:
	.string	"-fdata-sections"
.LC684:
	.string	"-fcse-skip-blocks"
.LC685:
	.string	"-fcse-follow-jumps"
.LC686:
	.string	"-fcond-mismatch"
.LC687:
	.string	"use coco Fortran preprocessor"
.LC688:
	.string	"-fcoco="
.LC689:
	.string	"-fcoco"
	.align 4
.LC690:
	.string	"Check result of operator new for NULL"
.LC691:
	.string	"-fcheck-new"
.LC692:
	.string	"-fcheck-memory-usage"
.LC693:
	.string	"-fcaller-saves"
.LC694:
	.string	"-fcall-used-"
.LC695:
	.string	"-fcall-saved-"
.LC696:
	.string	"-fbuse"
.LC697:
	.string	"-fbuiltin"
.LC698:
	.string	"-fbranch-probabilities"
.LC699:
	.string	"-fbgen"
.LC700:
	.string	"-fbexe"
.LC701:
	.string	"-fb_xdir"
.LC702:
	.string	"-fb_type="
.LC703:
	.string	"-fb_phase="
.LC704:
	.string	"-fb_opt"
.LC705:
	.string	"-fb_create"
.LC706:
	.string	"-fb_cdir"
.LC707:
	.string	"-fb"
.LC708:
	.string	"-fasm"
.LC709:
	.string	"-fargument-noalias-global"
.LC710:
	.string	"-fargument-noalias"
.LC711:
	.string	"-fargument-alias"
.LC712:
	.string	"-fabi-version="
.LC713:
	.string	"-fabi-version=%d"
.LC714:
	.string	"-fPIE"
.LC715:
	.string	"-fPIC"
.LC716:
	.string	"-extend_source"
.LC717:
	.string	"-scan=132"
.LC718:
	.string	"-expand_include"
.LC719:
	.string	"-e"
.LC720:
	.string	"-dz"
.LC721:
	.string	"-dx"
.LC722:
	.string	"-dw"
.LC723:
	.string	"-dv"
	.align 4
.LC724:
	.string	"Show the version of the compiler being used, and nothing else"
.LC725:
	.string	"-dumpversion"
.LC726:
	.string	"-dumpspecs"
	.align 4
.LC727:
	.string	"Print the compiler's target machine"
.LC728:
	.string	"-dumpmachine"
.LC729:
	.string	"-dump_input"
.LC730:
	.string	"-dummy"
.LC731:
	.string	"-dt"
.LC732:
	.string	"-ds"
.LC733:
	.string	"-dr"
.LC734:
	.string	"-dp"
.LC735:
	.string	"-do"
.LC736:
	.string	"-dm"
.LC737:
	.string	"-dl"
.LC738:
	.string	"-dk"
.LC739:
	.string	"-dj"
.LC740:
	.string	"-di"
.LC741:
	.string	"-dh"
.LC742:
	.string	"-dg"
.LC743:
	.string	"-df"
.LC744:
	.string	"-demangle"
	.align 4
.LC745:
	.string	"Cray compatibility mode for F90"
.LC746:
	.string	"-default64"
.LC747:
	.string	"-de"
.LC748:
	.string	"-dd"
.LC749:
	.string	"-dc"
.LC750:
	.string	"-db"
.LC751:
	.string	"-da"
.LC752:
	.string	"-d_lines"
.LC753:
	.string	"-dX"
.LC754:
	.string	"-dS"
.LC755:
	.string	"-dR"
.LC756:
	.string	"-dP"
	.align 4
.LC757:
	.string	"Generate list of all macro names defined"
.LC758:
	.string	"-dN"
	.align 4
.LC759:
	.string	"Generate list of directives for all macros"
.LC760:
	.string	"-dM"
.LC761:
	.string	"-dL"
	.align 4
.LC762:
	.string	"Output #include directives in addition to preprocessor results"
.LC763:
	.string	"-dI"
.LC764:
	.string	"-dG"
.LC765:
	.string	"-dF"
.LC766:
	.string	"-dE"
	.align 4
.LC767:
	.string	"Generate list of non-predefined macro directives"
.LC768:
	.string	"-dD"
.LC769:
	.string	"-dC"
.LC770:
	.string	"-dB"
.LC771:
	.string	"-dA"
.LC772:
	.string	"use double=8 and dcomplex=16"
.LC773:
	.string	"-d8"
.LC774:
	.string	"-cray_directives"
.LC775:
	.string	"-cpp"
.LC776:
	.string	"-cord"
	.align 4
.LC777:
	.string	"Show the copyright for the compiler being used"
.LC778:
	.string	"-copyright"
	.align 4
.LC779:
	.string	"Convert files by swapping bytes during I/O"
.LC780:
	.string	"-convert"
.LC781:
	.string	"-convert %s"
.LC782:
	.string	"-compat-gcc"
	.align 4
.LC783:
	.string	"sets the source statement length to 80 columns"
.LC784:
	.string	"-col80"
.LC785:
	.string	"-scan=80"
	.align 4
.LC786:
	.string	"sets the source statement length to 72 columns"
.LC787:
	.string	"-col72"
	.align 4
.LC788:
	.string	"sets the source statement length to 120 columns"
.LC789:
	.string	"-col120"
.LC790:
	.string	"-scan=120"
.LC791:
	.string	"-clist"
.LC792:
	.string	"-CLIST:=ON"
.LC793:
	.string	"-PHASE:clist"
.LC794:
	.string	"-cif"
.LC795:
	.string	"Set the MP chunksize"
.LC796:
	.string	"-chunk="
.LC797:
	.string	"-chunk=%d"
.LC798:
	.string	"-chararg1"
.LC799:
	.string	"-change_const"
.LC800:
	.string	"produce a .o and stop"
.LC801:
	.string	"-c"
.LC802:
	.string	"Swap bytes during file I/O"
.LC803:
	.string	"-byteswapio"
.LC804:
	.string	"-bytereclen"
.LC805:
	.string	"-bblib"
.LC806:
	.string	"-TARG:processor=sl1_dsp"
.LC807:
	.string	"-CG:dsp_thread=on"
	.align 4
.LC808:
	.string	"treat backslash as normal character rather than an escape"
.LC809:
	.string	"-backslash"
.LC810:
	.string	"-b"
.LC811:
	.string	"-aux-info"
.LC812:
	.string	"-aux-info %s"
.LC813:
	.string	"-automatic"
.LC814:
	.string	"-auto_use"
.LC815:
	.string	"-auto_use=%s"
	.align 4
.LC816:
	.string	"create an archive (instead of a shared object or executable) using ar"
.LC817:
	.string	"-ar"
.LC818:
	.string	"-apolist"
.LC819:
	.string	"-apokeep"
.LC820:
	.string	"-apo"
	.align 4
.LC821:
	.string	"strict ansi and standard intrinsics only"
.LC822:
	.string	"-ansi"
.LC823:
	.string	"-D__STRICT_ANSI__"
.LC824:
	.string	"-all"
.LC825:
	.string	"--whole-archive"
	.align 4
.LC826:
	.string	"align data in common blocks to 8-bit boundaries"
.LC827:
	.string	"-align8"
	.align 4
.LC828:
	.string	"align data in common blocks to 64-bit boundaries"
.LC829:
	.string	"-align64"
	.align 4
.LC830:
	.string	"align data in common blocks to 32-bit boundaries"
.LC831:
	.string	"-align32"
	.align 4
.LC832:
	.string	"align data in common blocks to 16-bit boundaries"
.LC833:
	.string	"-align16"
	.align 4
.LC834:
	.string	"align data in common blocks to 128-bit boundaries"
.LC835:
	.string	"-align128"
	.align 4
.LC836:
	.string	"-Y<phase>,<path> uses path to find phase {p=cpp,f=fe,b=be,a=as,l=ld,i=inline,I=include,S=startup,L=libraries}"
.LC837:
	.string	"-Y"
.LC838:
	.string	"-Y%s"
.LC839:
	.string	"-Xlinker"
	.align 4
.LC840:
	.string	"Mark strings as 'const char *'"
.LC841:
	.string	"-Wwrite-strings"
	.align 4
.LC842:
	.string	"Warn about local and static variables that are not used"
.LC843:
	.string	"-Wunused-variable"
	.align 4
.LC844:
	.string	"Warn about statements whose results are not used"
.LC845:
	.string	"-Wunused-value"
	.align 4
.LC846:
	.string	"Warn about unused function parameters"
.LC847:
	.string	"-Wunused-parameter"
	.align 4
.LC848:
	.string	"Warn about macros defined but not used"
.LC849:
	.string	"-Wunused-macros"
.LC850:
	.string	"Warn about unused labels"
.LC851:
	.string	"-Wunused-label"
	.align 4
.LC852:
	.string	"Warn about unused static and inline functions"
.LC853:
	.string	"-Wunused-function"
	.align 4
.LC854:
	.string	"Warn when a variable is unused"
.LC855:
	.string	"-Wunused"
	.align 4
.LC856:
	.string	"Warn about code that will never be executed"
.LC857:
	.string	"-Wunreachable-code"
	.align 4
.LC858:
	.string	"Warn when an unknown #pragma directive is encountered"
.LC859:
	.string	"-Wunknown-pragmas"
	.align 4
.LC860:
	.string	"Warn about unitialized automatic variables"
.LC861:
	.string	"-Wuninitialized"
.LC862:
	.string	"-WOPT:warn_uninit=on"
	.align 4
.LC863:
	.string	"Warn if an undefined identifier appears in a #if directive"
.LC864:
	.string	"-Wundef"
	.align 4
.LC865:
	.string	"Warn when trigraphs are encountered"
.LC866:
	.string	"-Wtrigraphs"
	.align 4
.LC867:
	.string	"Warn about constructs whoes meaning change in ANSI C"
.LC868:
	.string	"-Wtraditional"
	.align 4
.LC869:
	.string	"Print warnings for constructs in system header files"
.LC870:
	.string	"-Wsystem-headers"
	.align 4
.LC871:
	.string	"Warn about synthesis that is not backwards compatible with cfront"
.LC872:
	.string	"-Wsynth"
	.align 4
.LC873:
	.string	"Warn when a switch statement is missing a case for an enum member"
.LC874:
	.string	"-Wswitch-enum"
	.align 4
.LC875:
	.string	"Warn when a switch statement has no default"
.LC876:
	.string	"-Wswitch-default"
	.align 4
.LC877:
	.string	"Warn when a switch statement is incorrectly indexed with an enum"
.LC878:
	.string	"-Wswitch"
	.align 4
.LC879:
	.string	"Warn about non-prototyped function decls"
.LC880:
	.string	"-Wstrict-prototypes"
	.align 4
.LC881:
	.string	"Warn about code that breaks strict aliasing rules"
.LC882:
	.string	"-Wstrict-aliasing"
	.align 4
.LC883:
	.string	"Warn when overload resolution promotes from unsigned to signed"
.LC884:
	.string	"-Wsign-promo"
	.align 4
.LC885:
	.string	"Warn about signed/unsigned comparisons"
.LC886:
	.string	"-Wsign-compare"
	.align 4
.LC887:
	.string	"Warn when one local variable shadows another"
.LC888:
	.string	"-Wshadow"
	.align 4
.LC889:
	.string	"Warn about code violating sequence point rules"
.LC890:
	.string	"-Wsequence-point"
	.align 4
.LC891:
	.string	"Warn when a function return type defaults to int"
.LC892:
	.string	"-Wreturn-type"
	.align 4
.LC893:
	.string	"Warn when reordering member initializers"
.LC894:
	.string	"-Wreorder"
	.align 4
.LC895:
	.string	"Warn about multiple declarations of the same object"
.LC896:
	.string	"-Wredundant-decls"
	.align 4
.LC897:
	.string	"Warn about function pointer arithmetic"
.LC898:
	.string	"-Wpointer-arith"
	.align 4
.LC899:
	.string	"Warn about possible missing parentheses"
.LC900:
	.string	"-Wparentheses"
	.align 4
.LC901:
	.string	"Warn when padding is included in a struct"
.LC902:
	.string	"-Wpadded"
	.align 4
.LC903:
	.string	"Warn when packed attribute of a struct has no effect"
.LC904:
	.string	"-Wpacked"
	.align 4
.LC905:
	.string	"pass comma-separated opts to preprocessor as individual opts"
.LC906:
	.string	"-Wp,"
.LC907:
	.string	"-Wp,%s"
	.align 4
.LC908:
	.string	"Warn when a function declaration hides virtual functions"
.LC909:
	.string	"-Woverloaded-virtual"
	.align 4
.LC910:
	.string	"Warn when a C-style cast to a non-void type is used"
.LC911:
	.string	"-Wold-style-cast"
	.align 4
.LC912:
	.string	"Warn when passing null to functions requiring non-null pointers"
.LC913:
	.string	"-Wnonnull"
	.align 4
.LC914:
	.string	"Warn when a class declares a dtor that should be virtual"
.LC915:
	.string	"-Wnon-virtual-dtor"
	.align 4
.LC916:
	.string	"Do not mark strings as 'const char *'"
.LC917:
	.string	"-Wno-write-strings"
	.align 4
.LC918:
	.string	"Do not warnarn about local and static variables that are not used"
.LC919:
	.string	"-Wno-unused-variable"
	.align 4
.LC920:
	.string	"Do not warn about statements whose results are not used"
.LC921:
	.string	"-Wno-unused-value"
	.align 4
.LC922:
	.string	"Do not warn about unused function parameters"
.LC923:
	.string	"-Wno-unused-parameter"
	.align 4
.LC924:
	.string	"Do not warn about macros defined but not used"
.LC925:
	.string	"-Wno-unused-macros"
	.align 4
.LC926:
	.string	"Do not warn about unused labels"
.LC927:
	.string	"-Wno-unused-label"
	.align 4
.LC928:
	.string	"Do not warn about unused static and inline functions"
.LC929:
	.string	"-Wno-unused-function"
	.align 4
.LC930:
	.string	"Do not warn when a variable is unused"
.LC931:
	.string	"-Wno-unused"
	.align 4
.LC932:
	.string	"Do not warn about code that will never be executed"
.LC933:
	.string	"-Wno-unreachable-code"
	.align 4
.LC934:
	.string	"Do not warn when an unknown #pragma directive is encountered"
.LC935:
	.string	"-Wno-unknown-pragmas"
	.align 4
.LC936:
	.string	"Do not warn about unitialized automatic variables"
.LC937:
	.string	"-Wno-uninitialized"
	.align 4
.LC938:
	.string	"Do not warn if an undefined identifier appears in a #if directive"
.LC939:
	.string	"-Wno-undef"
	.align 4
.LC940:
	.string	"Do not warn when trigraphs are encountered"
.LC941:
	.string	"-Wno-trigraphs"
	.align 4
.LC942:
	.string	"Do not warn about constructs whoes meaning change in ANSI C"
.LC943:
	.string	"-Wno-traditional"
	.align 4
.LC944:
	.string	"Do not print warnings for constructs in system header files"
.LC945:
	.string	"-Wno-system-headers"
	.align 4
.LC946:
	.string	"Do not warn about synthesis that is not backwards compatible with cfront"
.LC947:
	.string	"-Wno-synth"
	.align 4
.LC948:
	.string	"Do not warn when a switch statement is incorrectly indexed with an enum"
.LC949:
	.string	"-Wno-switch"
	.align 4
.LC950:
	.string	"Do not warn about non-prototyped function decls"
.LC951:
	.string	"-Wno-strict-prototypes"
	.align 4
.LC952:
	.string	"Do not warn about code that breaks strict aliasing rules"
.LC953:
	.string	"-Wno-strict-aliasing"
	.align 4
.LC954:
	.string	"Do not warn when overload resolution promotes from unsigned to signed"
.LC955:
	.string	"-Wno-sign-promo"
	.align 4
.LC956:
	.string	"Do not warn about signed/unsigned comparisons"
.LC957:
	.string	"-Wno-sign-compare"
	.align 4
.LC958:
	.string	"Do not warn when one local variable shadows another"
.LC959:
	.string	"-Wno-shadow"
	.align 4
.LC960:
	.string	"Do not warn about code violating sequence point rules"
.LC961:
	.string	"-Wno-sequence-point"
	.align 4
.LC962:
	.string	"Do not warn when a function return type defaults to int"
.LC963:
	.string	"-Wno-return-type"
	.align 4
.LC964:
	.string	"Do not warn when reordering member initializers"
.LC965:
	.string	"-Wno-reorder"
	.align 4
.LC966:
	.string	"Do not warn about multiple declarations of the same object"
.LC967:
	.string	"-Wno-redundant-decls"
	.align 4
.LC968:
	.string	"Do not warn about function pointer arithmetic"
.LC969:
	.string	"-Wno-pointer-arith"
	.align 4
.LC970:
	.string	"Do not warn about converting PMFs to plain pointers"
.LC971:
	.string	"-Wno-pmf-conversions"
	.align 4
.LC972:
	.string	"Do not warn about possible missing parentheses"
.LC973:
	.string	"-Wno-parentheses"
	.align 4
.LC974:
	.string	"Do not warn when padding is included in a struct"
.LC975:
	.string	"-Wno-padded"
	.align 4
.LC976:
	.string	"Do not warn when packed attribute of a struct has no effect"
.LC977:
	.string	"-Wno-packed"
	.align 4
.LC978:
	.string	"Do not warn when a function declaration hides virtual functions"
.LC979:
	.string	"-Wno-overloaded-virtual"
	.align 4
.LC980:
	.string	"Do not warn when a C-style cast to a non-void type is used"
.LC981:
	.string	"-Wno-old-style-cast"
	.align 4
.LC982:
	.string	"Do not warn when a class declares a dtor that should be virtual"
.LC983:
	.string	"-Wno-non-virtual-dtor"
	.align 4
.LC984:
	.string	"Do not warn about friend functions declared in templates"
.LC985:
	.string	"-Wno-non-template-friend"
	.align 4
.LC986:
	.string	"Do not warn about externs not at file scope level"
.LC987:
	.string	"-Wno-nested-externs"
	.align 4
.LC988:
	.string	"Do not warn if a multicharacter constant is used"
.LC989:
	.string	"-Wno-multichar"
	.align 4
.LC990:
	.string	"Do not warn about global funcs without prototypes"
.LC991:
	.string	"-Wno-missing-prototypes"
	.align 4
.LC992:
	.string	"Do not warn about functions that are candidates for 'noreturn' attribute"
.LC993:
	.string	"-Wno-missing-noreturn"
	.align 4
.LC994:
	.string	"Do not warn on candidates for `format' attributes"
.LC995:
	.string	"-Wno-missing-format-attribute"
	.align 4
.LC996:
	.string	"Do not warn about global funcs without previous declarations"
.LC997:
	.string	"-Wno-missing-declarations"
	.align 4
.LC998:
	.string	"Do not warn about possibly missing braces around initialisers"
.LC999:
	.string	"-Wno-missing-braces"
	.align 4
.LC1000:
	.string	"Do not warn about suspicious declarations of main"
.LC1001:
	.string	"-Wno-main"
	.align 4
.LC1002:
	.string	"Do not warn if the long long type is used"
.LC1003:
	.string	"-Wno-long-long"
	.align 4
.LC1004:
	.string	"Do not warn if an object is larger than <number> bytes"
.LC1005:
	.string	"-Wno-larger-than-"
.LC1006:
	.string	"-Wno-larger-than-%d"
.LC1007:
	.string	"-Wno-invalid-pch"
	.align 4
.LC1008:
	.string	"Do not warn if a function declared as inline cannot be inlined"
.LC1009:
	.string	"-Wno-inline"
	.align 4
.LC1010:
	.string	"Do not warn about the use of the #import directive"
.LC1011:
	.string	"-Wno-import"
	.align 4
.LC1012:
	.string	"Do not warn when a declaration does not specify a type"
.LC1013:
	.string	"-Wno-implicit-int"
	.align 4
.LC1014:
	.string	"Do not warn when a function is used before being declared"
	.align 4
.LC1015:
	.string	"-Wno-implicit-function-declaration"
	.align 4
.LC1016:
	.string	"Do not warn about implicit declarations of functions or variables"
.LC1017:
	.string	"-Wno-implicit"
	.align 4
.LC1018:
	.string	"Do not warn about `strftime' formats that yield two-digit years"
.LC1019:
	.string	"-Wno-format-y2k"
	.align 4
.LC1020:
	.string	"Do not warn on potentially insecure format functions"
.LC1021:
	.string	"-Wno-format-security"
	.align 4
.LC1022:
	.string	"Do not warn if format string is not a string literal"
.LC1023:
	.string	"-Wno-format-nonliteral"
	.align 4
.LC1024:
	.string	"Do not warn about extra arguments to printf-like functions"
.LC1025:
	.string	"-Wno-format-extra-args"
	.align 4
.LC1026:
	.string	"Do not warn about printf format anomalies"
.LC1027:
	.string	"-Wno-format"
	.align 4
.LC1028:
	.string	"Do not warn if floating point values are compared for equality"
.LC1029:
	.string	"-Wno-float-equal"
	.align 4
.LC1030:
	.string	"Do not make all warnings into errors"
.LC1031:
	.string	"-Wno-error"
	.align 4
.LC1032:
	.string	"Do not warn if #if or #endif is followed by text"
.LC1033:
	.string	"-Wno-endif-labels"
	.align 4
.LC1034:
	.string	"Do not warn on `Effective C++' style violations"
.LC1035:
	.string	"-Wno-effc++"
	.align 4
.LC1036:
	.string	"Suppress warnings about compile-time integer division by zero"
.LC1037:
	.string	"-Wno-div-by-zero"
	.align 4
.LC1038:
	.string	"Do not warn if a requested optimization pass is disabled"
.LC1039:
	.string	"-Wno-disabled-optimization"
	.align 4
.LC1040:
	.string	"Do not warn about deprecated code"
.LC1041:
	.string	"-Wno-deprecated-declarations"
	.align 4
.LC1042:
	.string	"Don't announce deprecation of compiler features"
.LC1043:
	.string	"-Wno-deprecated"
	.align 4
.LC1044:
	.string	"Do not warn when all constructors/destructors are private"
.LC1045:
	.string	"-Wno-ctor-dtor-privacy"
	.align 4
.LC1046:
	.string	"Do not warn about possibly confusing type conversions"
.LC1047:
	.string	"-Wno-conversion"
	.align 4
.LC1048:
	.string	"Do not warn if nested comments are detected"
.LC1049:
	.string	"-Wno-comments"
.LC1050:
	.string	"-Wno-comment"
	.align 4
.LC1051:
	.string	"Do not warn about subscripts whose type is 'char'"
.LC1052:
	.string	"-Wno-char-subscripts"
	.align 4
.LC1053:
	.string	"Do not warn about casts which discard qualifiers"
.LC1054:
	.string	"-Wno-cast-qual"
	.align 4
.LC1055:
	.string	"Do not warn about pointer casts which increase alignment"
.LC1056:
	.string	"-Wno-cast-align"
	.align 4
.LC1057:
	.string	"Do not warn when a function call is cast to a non-matching type"
.LC1058:
	.string	"-Wno-bad-function-cast"
	.align 4
.LC1059:
	.string	"Do not warn about returning structures, unions or arrays"
.LC1060:
	.string	"-Wno-aggregate-return"
	.align 4
.LC1061:
	.string	"Warn about externs not at file scope level"
.LC1062:
	.string	"-Wnested-externs"
	.align 4
.LC1063:
	.string	"Warn if a multicharacter constant is used"
.LC1064:
	.string	"-Wmultichar"
	.align 4
.LC1065:
	.string	"Warn about global funcs without prototypes"
.LC1066:
	.string	"-Wmissing-prototypes"
	.align 4
.LC1067:
	.string	"Warn about functions that are candidates for 'noreturn' attribute"
.LC1068:
	.string	"-Wmissing-noreturn"
	.align 4
.LC1069:
	.string	"If -Wformat, warn on candidates for `format' attributes"
.LC1070:
	.string	"-Wmissing-format-attribute"
	.align 4
.LC1071:
	.string	"Warn about global funcs without previous declarations"
.LC1072:
	.string	"-Wmissing-declarations"
	.align 4
.LC1073:
	.string	"Warn about possibly missing braces around initialisers"
.LC1074:
	.string	"-Wmissing-braces"
	.align 4
.LC1075:
	.string	"Warn about suspicious declarations of main"
.LC1076:
	.string	"-Wmain"
	.align 4
.LC1077:
	.string	"Warn if the long long type is used"
.LC1078:
	.string	"-Wlong-long"
	.align 4
.LC1079:
	.string	"Warn if an object is larger than <number> bytes"
.LC1080:
	.string	"-Wlarger-than-"
.LC1081:
	.string	"-Wlarger-than-%d"
	.align 4
.LC1082:
	.string	"pass comma-separated opts to linker as individual opts"
.LC1083:
	.string	"-Wl,%s"
.LC1084:
	.string	"-Winvalid-pch"
	.align 4
.LC1085:
	.string	"Warn if a function declared as inline cannot be inlined"
.LC1086:
	.string	"-Winline"
	.align 4
.LC1087:
	.string	"Warn about the use of the #import directive"
.LC1088:
	.string	"-Wimport"
	.align 4
.LC1089:
	.string	"Warn when a declaration does not specify a type"
.LC1090:
	.string	"-Wimplicit-int"
	.align 4
.LC1091:
	.string	"Warn when a function is used before being declared"
	.align 4
.LC1092:
	.string	"-Wimplicit-function-declaration"
	.align 4
.LC1093:
	.string	"Warn about implicit declarations of functions or variables"
.LC1094:
	.string	"-Wimplicit"
	.align 4
.LC1095:
	.string	"Enable -Wformat plus format checks not included in -Wformat"
.LC1096:
	.string	"-Wformat=2"
.LC1097:
	.string	"-Wformat-security"
.LC1098:
	.string	"-Wformat-nonliteral"
.LC1099:
	.string	"-Wformat"
	.align 4
.LC1100:
	.string	"If -Wformat, warn on potentially insecure format functions"
	.align 4
.LC1101:
	.string	"If -Wformat, warn if format string is not a string literal"
	.align 4
.LC1102:
	.string	"Warn about printf format anomalies"
	.align 4
.LC1103:
	.string	"Warn if floating point values are compared for equality"
.LC1104:
	.string	"-Wfloat-equal"
	.align 4
.LC1105:
	.string	"Give an error when a function is used before being declared"
	.align 4
.LC1106:
	.string	"-Werror-implicit-function-declaration"
.LC1107:
	.string	"Make all warnings into errors"
.LC1108:
	.string	"-Werror"
	.align 4
.LC1109:
	.string	"Warn if #if or #endif is followed by text"
.LC1110:
	.string	"-Wendif-labels"
	.align 4
.LC1111:
	.string	"Warn on `Effective C++' style violations"
.LC1112:
	.string	"-Weffc++"
	.align 4
.LC1113:
	.string	"Warn about compile-time integer division by zero"
.LC1114:
	.string	"-Wdiv-by-zero"
	.align 4
.LC1115:
	.string	"Warn if a requested optimization pass is disabled"
.LC1116:
	.string	"-Wdisabled-optimization"
	.align 4
.LC1117:
	.string	"Announce deprecation of compiler features"
.LC1118:
	.string	"-Wdeprecated"
	.align 4
.LC1119:
	.string	"Warn about declarations after statements (pre-C99)"
.LC1120:
	.string	"-Wdeclaration-after-statement"
	.align 4
.LC1121:
	.string	"Warn when all constructors/destructors are private"
.LC1122:
	.string	"-Wctor-dtor-privacy"
	.align 4
.LC1123:
	.string	"Warn about possibly confusing type conversions"
.LC1124:
	.string	"-Wconversion"
	.align 4
.LC1125:
	.string	"Warn if nested comments are detected"
.LC1126:
	.string	"-Wcomments"
.LC1127:
	.string	"-Wcomment"
	.align 4
.LC1128:
	.string	"Warn about subscripts whose type is 'char'"
.LC1129:
	.string	"-Wchar-subscripts"
	.align 4
.LC1130:
	.string	"Warn about casts which discard qualifiers"
.LC1131:
	.string	"-Wcast-qual"
	.align 4
.LC1132:
	.string	"Warn about pointer casts which increase alignment"
.LC1133:
	.string	"-Wcast-align"
.LC1134:
	.string	"-Wbad-function-cast"
.LC1135:
	.string	"Enable most warning messages"
.LC1136:
	.string	"-Wall"
	.align 4
.LC1137:
	.string	"Warn about returning structures, unions or arrays"
.LC1138:
	.string	"-Waggregate-return"
.LC1139:
	.string	"-Wabi"
	.align 4
.LC1140:
	.string	"pass comma-separated opts to assembler as individual opts"
.LC1141:
	.string	"-Wa,"
.LC1142:
	.string	"-Wa,%s"
	.align 4
.LC1143:
	.string	"option group internal-use WOPT options"
.LC1144:
	.string	"-WOPT:"
.LC1145:
	.string	"-WOPT:%s"
	.align 4
.LC1146:
	.string	"-WB,<arg> passes <arg> to the back-end via ipacom"
.LC1147:
	.string	"-WB,"
.LC1148:
	.string	"-WB,%s"
	.align 4
.LC1149:
	.string	"-W<phase>,<arg> sends arg to phase {p=cpp,f=fe,b=be,a=as,l=ld}"
.LC1150:
	.string	"-W"
.LC1151:
	.string	"Enable extra warnings"
	.align 4
.LC1152:
	.string	"option group to control vho lowering"
.LC1153:
	.string	"-VHO:"
.LC1154:
	.string	"-VHO:%s"
.LC1155:
	.string	"-V"
.LC1156:
	.string	"-U"
.LC1157:
	.string	"undefine the following macro"
.LC1158:
	.string	"-U%s"
	.align 4
.LC1159:
	.string	"option group to control target environment"
.LC1160:
	.string	"-TENV:"
.LC1161:
	.string	"-TENV:%s"
	.align 4
.LC1162:
	.string	"option group to control compilation target"
.LC1163:
	.string	"-TARG:"
.LC1164:
	.string	"-TARG:%s"
.LC1165:
	.string	"-SWP:"
.LC1166:
	.string	"-SWP:%s"
.LC1167:
	.string	"produce a .s and stop"
.LC1168:
	.string	"-S"
.LC1169:
	.string	"pass flags to RATFOR"
.LC1170:
	.string	"-R"
	.align 4
.LC1171:
	.string	"suppress timing information (g++) "
.LC1172:
	.string	"-Q"
	.align 4
.LC1173:
	.string	"option group to control problem isolation slicing tool"
.LC1174:
	.string	"-PURPLE:"
.LC1175:
	.string	"-PURPLE:%s"
.LC1176:
	.string	"-PHASE:purple"
.LC1177:
	.string	"-PROMP:next_id="
.LC1178:
	.string	"-PROMP:next_id=%d"
.LC1179:
	.string	"-PROMP:"
.LC1180:
	.string	"-PROMP:%s"
.LC1181:
	.string	"-PHASE:"
.LC1182:
	.string	"-PHASE:%s"
.LC1183:
	.string	"-P"
.LC1184:
	.string	"Optimize for space"
.LC1185:
	.string	"-Os"
.LC1186:
	.string	"-Olimit"
	.align 4
.LC1187:
	.string	"default fast option configuration"
.LC1188:
	.string	"-Ofast"
	.align 4
.LC1189:
	.string	"option group to control optimization"
.LC1190:
	.string	"-OPT:"
.LC1191:
	.string	"-OPT:%s"
.LC1192:
	.string	"full optimization"
.LC1193:
	.string	"-O3"
.LC1194:
	.string	"-D__OPTIMIZE__"
.LC1195:
	.string	"global optimization"
.LC1196:
	.string	"-O2"
.LC1197:
	.string	"minimal optimization"
.LC1198:
	.string	"-O1"
.LC1199:
	.string	"no optimization"
.LC1200:
	.string	"-O0"
.LC1201:
	.string	"-O"
.LC1202:
	.string	"same as -O2"
	.align 4
.LC1203:
	.string	"set max # of continuation lines"
.LC1204:
	.string	"-NC"
.LC1205:
	.string	"-NC%d"
	.align 4
.LC1206:
	.string	"Change the target of the generated dependency rules"
.LC1207:
	.string	"-MT"
.LC1208:
	.string	"-MT %s"
	.align 4
.LC1209:
	.string	"Same as -MT, but quote characters that are special to Make"
.LC1210:
	.string	"-MQ"
.LC1211:
	.string	"-MQ %s"
	.align 4
.LC1212:
	.string	"With -M or -MM, add phony targets for each dependency"
.LC1213:
	.string	"-MP"
	.align 4
.LC1214:
	.string	"Write user dependencies to .d output file"
.LC1215:
	.string	"-MMD"
	.align 4
.LC1216:
	.string	"Output user dependencies of source file"
.LC1217:
	.string	"-MM"
	.align 4
.LC1218:
	.string	"With -M or -MM, treat missing header files as generated files"
.LC1219:
	.string	"-MG"
	.align 4
.LC1220:
	.string	"Write dependencies to specified output file"
.LC1221:
	.string	"-MF"
.LC1222:
	.string	"-MF %s"
	.align 4
.LC1223:
	.string	"update the following file with make dependencies"
.LC1224:
	.string	"-MDupdate"
.LC1225:
	.string	"-MDupdate %s"
	.align 4
.LC1226:
	.string	"use the following as the target for make dependencies"
.LC1227:
	.string	"-MDtarget"
.LC1228:
	.string	"-MDtarget %s"
.LC1229:
	.string	"-MDignore"
.LC1230:
	.string	"-MDignore %s"
	.align 4
.LC1231:
	.string	"Write dependencies to .d output file"
.LC1232:
	.string	"-MD"
	.align 4
.LC1233:
	.string	"run cpp and print list of make dependencies"
.LC1234:
	.string	"-M"
	.align 4
.LC1235:
	.string	"option group to control loop nest optimization"
.LC1236:
	.string	"-LNO:"
.LC1237:
	.string	"-LNO:%s"
	.align 4
.LC1238:
	.string	"option group to control error/warning messages in ld"
.LC1239:
	.string	"-LMSG:"
.LC1240:
	.string	"-LMSG:%s"
	.align 4
.LC1241:
	.string	"option group to control listing file and contents"
.LC1242:
	.string	"-LIST:"
.LC1243:
	.string	"-LIST:%s"
.LC1244:
	.string	"-LD_"
.LC1245:
	.string	"-LD_%s"
	.align 4
.LC1246:
	.string	"Use ISO/ANSI standard-conforming C++ language and library"
.LC1247:
	.string	"-LANG:std"
	.align 4
.LC1248:
	.string	"option group to control language features"
.LC1249:
	.string	"-LANG:"
.LC1250:
	.string	"-LANG:%s"
	.align 4
.LC1251:
	.string	"add following directory to the library search path list"
.LC1252:
	.string	"-L"
.LC1253:
	.string	"-L%D"
	.align 4
.LC1254:
	.string	"option group to control interprocedural optimizations"
.LC1255:
	.string	"-IPA:"
.LC1256:
	.string	"-IPA:%s"
.LC1257:
	.string	"-IPA"
	.align 4
.LC1258:
	.string	"option group to control features while testing"
.LC1259:
	.string	"-INTERNAL:"
.LC1260:
	.string	"-INTERNAL:%s"
	.align 4
.LC1261:
	.string	"specify inline processing option group"
.LC1262:
	.string	"-INLINE:"
.LC1263:
	.string	"-INLINE:%s"
.LC1264:
	.string	"-I-"
	.align 4
.LC1265:
	.string	"add following directory to the include search path list"
.LC1266:
	.string	"-I"
.LC1267:
	.string	"-I%D"
	.align 4
.LC1268:
	.string	"print name of each header file used"
.LC1269:
	.string	"-H"
.LC1270:
	.string	"-Gspace"
.LC1271:
	.string	"-TENV:Gspace=%d"
	.align 4
.LC1272:
	.string	"option group to control global register allocation"
.LC1273:
	.string	"-GRA:"
.LC1274:
	.string	"-GRA:%s"
.LC1275:
	.string	"-GCM:"
.LC1276:
	.string	"-G"
.LC1277:
	.string	"-G%d"
	.align 4
.LC1278:
	.string	"option group to control Fortran source listing of compiler intermediate"
.LC1279:
	.string	"-FLIST:"
.LC1280:
	.string	"-FLIST:%s"
.LC1281:
	.string	"-FE:"
.LC1282:
	.string	"-FE:%s"
.LC1283:
	.string	"stop after RATFOR (f77 only)"
.LC1284:
	.string	"-F"
	.align 4
.LC1285:
	.string	"run cpp and send result to standard output"
.LC1286:
	.string	"-E"
.LC1287:
	.string	"-DEFAULT:"
	.align 4
.LC1288:
	.string	"option group to debugging options"
.LC1289:
	.string	"-DEBUG:"
.LC1290:
	.string	"-DEBUG:%s"
.LC1291:
	.string	"add following macro define"
.LC1292:
	.string	"-D"
.LC1293:
	.string	"-D%s"
	.align 4
.LC1294:
	.string	"option group to control C source listing of compiler intermediate"
.LC1295:
	.string	"-CLIST:"
.LC1296:
	.string	"-CLIST:%s"
	.align 4
.LC1297:
	.string	"option group to control code generation"
.LC1298:
	.string	"-CG:"
.LC1299:
	.string	"-CG:%s"
	.align 4
.LC1300:
	.string	"C/C++: keep C comments after cpp; Fortran: runtime subscript checking"
.LC1301:
	.string	"-C"
.LC1302:
	.string	"add following cpp assertions"
.LC1303:
	.string	"-A"
.LC1304:
	.string	"-A%s"
	.align 4
.LC1305:
	.string	"issue errors when non-F66 feature used"
.LC1306:
	.string	"-66"
.LC1307:
	.string	"--write-user-dependencies"
.LC1308:
	.string	"--write-dependencies"
.LC1309:
	.string	"--version"
.LC1310:
	.string	"--verbose"
.LC1311:
	.string	"--user-dependencies"
.LC1312:
	.string	"--undefine-macro"
.LC1313:
	.string	"--trigraphs"
.LC1314:
	.string	"--traditional-cpp"
.LC1315:
	.string	"--traditional"
.LC1316:
	.string	"--trace-includes"
.LC1317:
	.string	"--target"
.LC1318:
	.string	"-b%s"
.LC1319:
	.string	"--symbolic"
.LC1320:
	.string	"--static"
.LC1321:
	.string	"--specs="
.LC1322:
	.string	"-specs=%s"
.LC1323:
	.string	"--specs"
.LC1324:
	.string	"--shared"
.LC1325:
	.string	"--save-temps"
.LC1326:
	.string	"--profile"
.LC1327:
	.string	"--print-search-dirs"
.LC1328:
	.string	"--print-prog-name="
.LC1329:
	.string	"-print-prog-name=%s"
.LC1330:
	.string	"--print-prog-name"
.LC1331:
	.string	"--print-multi-lib"
	.align 4
.LC1332:
	.string	"--print-missing-file-dependencies"
.LC1333:
	.string	"--print-libgcc-file-name"
.LC1334:
	.string	"--print-file-name="
.LC1335:
	.string	"-print-file-name=%s"
.LC1336:
	.string	"--print-file-name"
.LC1337:
	.string	"--preprocess"
.LC1338:
	.string	"--pipe"
.LC1339:
	.string	"--pedantic-errors"
.LC1340:
	.string	"--pedantic"
.LC1341:
	.string	"--output"
.LC1342:
	.string	"-o %s"
.LC1343:
	.string	"--optimize"
.LC1344:
	.string	"--no-whole-archive"
.LC1345:
	.string	"--no-warnings"
.LC1346:
	.string	"--no-standard-libraries"
.LC1347:
	.string	"--no-standard-includes"
.LC1348:
	.string	"--no-line-commands"
.LC1349:
	.string	"--library-directory"
.LC1350:
	.string	"--include-with-prefix-before"
.LC1351:
	.string	"--include-with-prefix"
.LC1352:
	.string	"--include-prefix"
.LC1353:
	.string	"--include-directory-after"
.LC1354:
	.string	"--include-directory"
.LC1355:
	.string	"--include-barrier"
.LC1356:
	.string	"--include"
.LC1357:
	.string	"--imacros"
.LC1358:
	.string	"--help"
.LC1359:
	.string	"--force-link"
.LC1360:
	.string	"--extra-warnings"
.LC1361:
	.string	"--dependencies"
.LC1362:
	.string	"--define-macro"
.LC1363:
	.string	"--debug"
.LC1364:
	.string	"--compile"
.LC1365:
	.string	"--comments"
.LC1366:
	.string	"--assert"
.LC1367:
	.string	"--assemble"
.LC1368:
	.string	"--ansi"
.LC1369:
	.string	"--all-warnings"
.LC1370:
	.string	"--"
	.align 4
.LC1371:
	.string	"Like -v, only nothing is run and args are quoted"
.LC1372:
	.string	"-###"
.LC1373:
	.string	"-"
	.text
.globl init_options
	.type	init_options, @function
init_options:
.LFB32:
	.loc 2 76 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$36, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 77 0
	movl	max_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$5, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, options@GOTOFF(%ebx)
	.loc 2 78 0
	movl	$0, 24(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	create_option_info
	.loc 2 79 0
	movl	$0, 24(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$1, (%esp)
	call	create_option_info
	.loc 2 80 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	create_implies_item
	.loc 2 81 0
	movl	$0, 24(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$-2147483642, 4(%esp)
	movl	$0, 8(%esp)
	movl	$2, (%esp)
	call	create_option_info
	.loc 2 82 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	$2, (%esp)
	call	create_implies_item
	.loc 2 83 0
	movl	$0, 24(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$28672, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$3, (%esp)
	call	create_option_info
	.loc 2 84 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$3, (%esp)
	call	create_implies_item
	.loc 2 85 0
	movl	$0, 24(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$-1879048193, 4(%esp)
	movl	$0, 8(%esp)
	movl	$4, (%esp)
	call	create_option_info
	.loc 2 86 0
	movl	$0, 24(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$-1879048193, 4(%esp)
	movl	$0, 8(%esp)
	movl	$5, (%esp)
	call	create_option_info
	.loc 2 87 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5, 4(%esp)
	movl	$5, (%esp)
	call	create_implies_item
	.loc 2 88 0
	movl	$0, 24(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$-1879048193, 4(%esp)
	movl	$0, 8(%esp)
	movl	$6, (%esp)
	call	create_option_info
	.loc 2 89 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6, 4(%esp)
	movl	$6, (%esp)
	call	create_implies_item
	.loc 2 90 0
	movl	$0, 24(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$-1879048193, 4(%esp)
	movl	$0, 8(%esp)
	movl	$7, (%esp)
	call	create_option_info
	.loc 2 91 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7, 4(%esp)
	movl	$7, (%esp)
	call	create_implies_item
	.loc 2 92 0
	movl	$0, 24(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$28672, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$8, (%esp)
	call	create_option_info
	.loc 2 93 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8, 4(%esp)
	movl	$8, (%esp)
	call	create_implies_item
	.loc 2 94 0
	movl	$0, 24(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$-2147483644, 4(%esp)
	movl	$0, 8(%esp)
	movl	$9, (%esp)
	call	create_option_info
	.loc 2 95 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$9, 4(%esp)
	movl	$9, (%esp)
	call	create_implies_item
	.loc 2 96 0
	movl	$0, 24(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$1011712, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$10, (%esp)
	call	create_option_info
	.loc 2 97 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	$10, (%esp)
	call	create_implies_item
	.loc 2 98 0
	movl	$0, 24(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$-2147483644, 4(%esp)
	movl	$0, 8(%esp)
	movl	$11, (%esp)
	call	create_option_info
	.loc 2 99 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$11, 4(%esp)
	movl	$11, (%esp)
	call	create_implies_item
	.loc 2 100 0
	movl	$0, 24(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$12, (%esp)
	call	create_option_info
	.loc 2 101 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$12, 4(%esp)
	movl	$12, (%esp)
	call	create_implies_item
	.loc 2 102 0
	movl	$0, 24(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$13, (%esp)
	call	create_option_info
	.loc 2 103 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$13, 4(%esp)
	movl	$13, (%esp)
	call	create_implies_item
	.loc 2 104 0
	movl	$0, 24(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$14, (%esp)
	call	create_option_info
	.loc 2 105 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$14, (%esp)
	call	create_implies_item
	.loc 2 106 0
	movl	$0, 24(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$15, (%esp)
	call	create_option_info
	.loc 2 107 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$15, 4(%esp)
	movl	$15, (%esp)
	call	create_implies_item
	.loc 2 108 0
	movl	$0, 24(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-1879048193, 4(%esp)
	movl	$0, 8(%esp)
	movl	$16, (%esp)
	call	create_option_info
	.loc 2 109 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$16, (%esp)
	call	create_implies_item
	.loc 2 110 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$16, (%esp)
	call	create_implies_item
	.loc 2 111 0
	movl	$0, 24(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-1879048193, 4(%esp)
	movl	$0, 8(%esp)
	movl	$17, (%esp)
	call	create_option_info
	.loc 2 112 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$17, (%esp)
	call	create_implies_item
	.loc 2 113 0
	movl	$0, 24(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483632, 4(%esp)
	movl	$0, 8(%esp)
	movl	$18, (%esp)
	call	create_option_info
	.loc 2 114 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$18, (%esp)
	call	create_implies_item
	.loc 2 115 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$18, (%esp)
	call	create_implies_item
	.loc 2 116 0
	movl	$0, 24(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483640, 4(%esp)
	movl	$0, 8(%esp)
	movl	$19, (%esp)
	call	create_option_info
	.loc 2 117 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$19, (%esp)
	call	create_implies_item
	.loc 2 118 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$19, (%esp)
	call	create_implies_item
	.loc 2 119 0
	movl	$0, 24(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$20, (%esp)
	call	create_option_info
	.loc 2 120 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$20, (%esp)
	call	create_implies_item
	.loc 2 121 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$26, 4(%esp)
	movl	$20, (%esp)
	call	create_implies_item
	.loc 2 122 0
	movl	$0, 24(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-1879048193, 4(%esp)
	movl	$0, 8(%esp)
	movl	$21, (%esp)
	call	create_option_info
	.loc 2 123 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$21, (%esp)
	call	create_implies_item
	.loc 2 124 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$25, 4(%esp)
	movl	$21, (%esp)
	call	create_implies_item
	.loc 2 125 0
	movl	$0, 24(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483616, 4(%esp)
	movl	$0, 8(%esp)
	movl	$22, (%esp)
	call	create_option_info
	.loc 2 126 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$22, (%esp)
	call	create_implies_item
	.loc 2 127 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$29, 4(%esp)
	movl	$22, (%esp)
	call	create_implies_item
	.loc 2 128 0
	movl	$0, 24(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$32768, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483646, 4(%esp)
	movl	$0, 8(%esp)
	movl	$23, (%esp)
	call	create_option_info
	.loc 2 129 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$23, 4(%esp)
	movl	$23, (%esp)
	call	create_implies_item
	.loc 2 130 0
	movl	$0, 24(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483642, 4(%esp)
	movl	$0, 8(%esp)
	movl	$24, (%esp)
	call	create_option_info
	.loc 2 131 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$24, 4(%esp)
	movl	$24, (%esp)
	call	create_implies_item
	.loc 2 132 0
	movl	$0, 24(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483642, 4(%esp)
	movl	$0, 8(%esp)
	movl	$25, (%esp)
	call	create_option_info
	.loc 2 133 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$25, 4(%esp)
	movl	$25, (%esp)
	call	create_implies_item
	.loc 2 134 0
	movl	$0, 24(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483624, 4(%esp)
	movl	$0, 8(%esp)
	movl	$26, (%esp)
	call	create_option_info
	.loc 2 135 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$26, 4(%esp)
	movl	$26, (%esp)
	call	create_implies_item
	.loc 2 136 0
	movl	$0, 24(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483644, 4(%esp)
	movl	$0, 8(%esp)
	movl	$27, (%esp)
	call	create_option_info
	.loc 2 137 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$27, 4(%esp)
	movl	$27, (%esp)
	call	create_implies_item
	.loc 2 138 0
	movl	$0, 24(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483646, 4(%esp)
	movl	$0, 8(%esp)
	movl	$28, (%esp)
	call	create_option_info
	.loc 2 139 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$28, 4(%esp)
	movl	$28, (%esp)
	call	create_implies_item
	.loc 2 140 0
	movl	$0, 24(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$-2147483616, 4(%esp)
	movl	$0, 8(%esp)
	movl	$29, (%esp)
	call	create_option_info
	.loc 2 141 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$29, 4(%esp)
	movl	$29, (%esp)
	call	create_implies_item
	.loc 2 142 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$30, (%esp)
	call	create_option_info
	.loc 2 143 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$744, 4(%esp)
	movl	$30, (%esp)
	call	create_implies_item
	.loc 2 144 0
	movl	$0, 24(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$31, (%esp)
	call	create_option_info
	.loc 2 145 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$31, 4(%esp)
	movl	$31, (%esp)
	call	create_implies_item
	.loc 2 146 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$32, (%esp)
	call	create_option_info
	.loc 2 147 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$33, (%esp)
	call	create_option_info
	.loc 2 148 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$34, (%esp)
	call	create_option_info
	.loc 2 149 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7, 4(%esp)
	movl	$34, (%esp)
	call	create_implies_item
	.loc 2 150 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$39, 4(%esp)
	movl	$34, (%esp)
	call	create_implies_item
	.loc 2 151 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$1, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$35, (%esp)
	call	create_option_info
	.loc 2 152 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$35, 4(%esp)
	movl	$35, (%esp)
	call	create_implies_item
	.loc 2 153 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$36, (%esp)
	call	create_option_info
	.loc 2 154 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$36, 4(%esp)
	movl	$36, (%esp)
	call	create_implies_item
	.loc 2 155 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$37, (%esp)
	call	create_option_info
	.loc 2 156 0
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$37, 4(%esp)
	movl	$37, (%esp)
	call	create_implies_item
	.loc 2 157 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$38, (%esp)
	call	create_option_info
	.loc 2 158 0
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$38, 4(%esp)
	movl	$38, (%esp)
	call	create_implies_item
	.loc 2 159 0
	movl	$0, 24(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15761392, 12(%esp)
	movl	$48, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$39, (%esp)
	call	create_option_info
	.loc 2 160 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7, 4(%esp)
	movl	$39, (%esp)
	call	create_implies_item
	.loc 2 161 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$39, 4(%esp)
	movl	$39, (%esp)
	call	create_implies_item
	.loc 2 162 0
	movl	$0, 24(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$40, (%esp)
	call	create_option_info
	.loc 2 163 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$40, 4(%esp)
	movl	$40, (%esp)
	call	create_implies_item
	.loc 2 164 0
	movl	$0, 24(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$41, (%esp)
	call	create_option_info
	.loc 2 165 0
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$41, 4(%esp)
	movl	$41, (%esp)
	call	create_implies_item
	.loc 2 166 0
	movl	$0, 24(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$42, (%esp)
	call	create_option_info
	.loc 2 167 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$42, 4(%esp)
	movl	$42, (%esp)
	call	create_implies_item
	.loc 2 168 0
	movl	$0, 24(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$43, (%esp)
	call	create_option_info
	.loc 2 169 0
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$43, 4(%esp)
	movl	$43, (%esp)
	call	create_implies_item
	.loc 2 170 0
	movl	$0, 24(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$44, (%esp)
	call	create_option_info
	.loc 2 171 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$44, 4(%esp)
	movl	$44, (%esp)
	call	create_implies_item
	.loc 2 172 0
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$45, (%esp)
	call	create_option_info
	.loc 2 173 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$46, (%esp)
	call	create_option_info
	.loc 2 174 0
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$46, 4(%esp)
	movl	$46, (%esp)
	call	create_implies_item
	.loc 2 175 0
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$16781104, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$47, (%esp)
	call	create_option_info
	.loc 2 176 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$89, 4(%esp)
	movl	$47, (%esp)
	call	create_implies_item
	.loc 2 177 0
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$47, 4(%esp)
	movl	$47, (%esp)
	call	create_implies_item
	.loc 2 178 0
	movl	$0, 24(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$48, (%esp)
	call	create_option_info
	.loc 2 179 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	movl	$48, (%esp)
	call	create_implies_item
	.loc 2 180 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	movl	$48, (%esp)
	call	create_implies_item
	.loc 2 181 0
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	movl	$48, (%esp)
	call	create_implies_item
	.loc 2 182 0
	movl	$0, 24(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$49, (%esp)
	call	create_option_info
	.loc 2 183 0
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$49, 4(%esp)
	movl	$49, (%esp)
	call	create_implies_item
	.loc 2 184 0
	movl	$0, 24(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$50, (%esp)
	call	create_option_info
	.loc 2 185 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	movl	$50, (%esp)
	call	create_implies_item
	.loc 2 186 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	movl	$50, (%esp)
	call	create_implies_item
	.loc 2 187 0
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	movl	$50, (%esp)
	call	create_implies_item
	.loc 2 188 0
	movl	$0, 24(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$51, (%esp)
	call	create_option_info
	.loc 2 189 0
	movl	$0, 24(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$52, (%esp)
	call	create_option_info
	.loc 2 190 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$52, 4(%esp)
	movl	$52, (%esp)
	call	create_implies_item
	.loc 2 191 0
	movl	$0, 24(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$53, (%esp)
	call	create_option_info
	.loc 2 192 0
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$53, 4(%esp)
	movl	$53, (%esp)
	call	create_implies_item
	.loc 2 193 0
	movl	$0, 24(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$54, (%esp)
	call	create_option_info
	.loc 2 194 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$54, 4(%esp)
	movl	$54, (%esp)
	call	create_implies_item
	.loc 2 195 0
	movl	$0, 24(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$55, (%esp)
	call	create_option_info
	.loc 2 196 0
	movl	$0, 24(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$56, (%esp)
	call	create_option_info
	.loc 2 197 0
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$56, 4(%esp)
	movl	$56, (%esp)
	call	create_implies_item
	.loc 2 198 0
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$57, (%esp)
	call	create_option_info
	.loc 2 199 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$744, 4(%esp)
	movl	$57, (%esp)
	call	create_implies_item
	.loc 2 200 0
	movl	$0, 24(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$58, (%esp)
	call	create_option_info
	.loc 2 201 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$59, 4(%esp)
	movl	$58, (%esp)
	call	create_implies_item
	.loc 2 202 0
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$59, (%esp)
	call	create_option_info
	.loc 2 203 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$59, 4(%esp)
	movl	$59, (%esp)
	call	create_implies_item
	.loc 2 204 0
	movl	$0, 24(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$60, (%esp)
	call	create_option_info
	.loc 2 205 0
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$60, 4(%esp)
	movl	$60, (%esp)
	call	create_implies_item
	.loc 2 206 0
	movl	$0, 24(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$61, (%esp)
	call	create_option_info
	.loc 2 207 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$61, 4(%esp)
	movl	$61, (%esp)
	call	create_implies_item
	.loc 2 208 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$62, (%esp)
	call	create_option_info
	.loc 2 209 0
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$62, 4(%esp)
	movl	$62, (%esp)
	call	create_implies_item
	.loc 2 210 0
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$63, (%esp)
	call	create_option_info
	.loc 2 211 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$64, (%esp)
	call	create_option_info
	.loc 2 212 0
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$64, 4(%esp)
	movl	$64, (%esp)
	call	create_implies_item
	.loc 2 213 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$65, (%esp)
	call	create_option_info
	.loc 2 214 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$65, 4(%esp)
	movl	$65, (%esp)
	call	create_implies_item
	.loc 2 215 0
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$66, (%esp)
	call	create_option_info
	.loc 2 216 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$66, 4(%esp)
	movl	$66, (%esp)
	call	create_implies_item
	.loc 2 217 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$67, (%esp)
	call	create_option_info
	.loc 2 218 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$67, 4(%esp)
	movl	$67, (%esp)
	call	create_implies_item
	.loc 2 219 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$68, (%esp)
	call	create_option_info
	.loc 2 220 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$68, 4(%esp)
	movl	$68, (%esp)
	call	create_implies_item
	.loc 2 221 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$69, (%esp)
	call	create_option_info
	.loc 2 222 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$69, 4(%esp)
	movl	$69, (%esp)
	call	create_implies_item
	.loc 2 223 0
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$70, (%esp)
	call	create_option_info
	.loc 2 224 0
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$70, 4(%esp)
	movl	$70, (%esp)
	call	create_implies_item
	.loc 2 225 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$5, 4(%esp)
	movl	$0, 8(%esp)
	movl	$71, (%esp)
	call	create_option_info
	.loc 2 226 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$71, 4(%esp)
	movl	$71, (%esp)
	call	create_implies_item
	.loc 2 227 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$72, (%esp)
	call	create_option_info
	.loc 2 228 0
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$72, 4(%esp)
	movl	$72, (%esp)
	call	create_implies_item
	.loc 2 229 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$73, (%esp)
	call	create_option_info
	.loc 2 230 0
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$73, 4(%esp)
	movl	$73, (%esp)
	call	create_implies_item
	.loc 2 231 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$74, (%esp)
	call	create_option_info
	.loc 2 232 0
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$74, 4(%esp)
	movl	$74, (%esp)
	call	create_implies_item
	.loc 2 233 0
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$5, 4(%esp)
	movl	$0, 8(%esp)
	movl	$75, (%esp)
	call	create_option_info
	.loc 2 234 0
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$75, 4(%esp)
	movl	$75, (%esp)
	call	create_implies_item
	.loc 2 235 0
	movl	$0, 24(%esp)
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$76, (%esp)
	call	create_option_info
	.loc 2 236 0
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$76, 4(%esp)
	movl	$76, (%esp)
	call	create_implies_item
	.loc 2 237 0
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$78, (%esp)
	call	create_option_info
	.loc 2 238 0
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$78, 4(%esp)
	movl	$78, (%esp)
	call	create_implies_item
	.loc 2 239 0
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$79, (%esp)
	call	create_option_info
	.loc 2 240 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$79, 4(%esp)
	movl	$79, (%esp)
	call	create_implies_item
	.loc 2 241 0
	movl	$0, 24(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$80, (%esp)
	call	create_option_info
	.loc 2 242 0
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$80, 4(%esp)
	movl	$80, (%esp)
	call	create_implies_item
	.loc 2 243 0
	movl	$0, 24(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$81, (%esp)
	call	create_option_info
	.loc 2 244 0
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$81, 4(%esp)
	movl	$81, (%esp)
	call	create_implies_item
	.loc 2 245 0
	movl	$0, 24(%esp)
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$82, (%esp)
	call	create_option_info
	.loc 2 246 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$82, 4(%esp)
	movl	$82, (%esp)
	call	create_implies_item
	.loc 2 247 0
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$83, (%esp)
	call	create_option_info
	.loc 2 248 0
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$83, (%esp)
	call	create_implies_item
	.loc 2 249 0
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$84, (%esp)
	call	create_option_info
	.loc 2 250 0
	movl	$0, 24(%esp)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$85, (%esp)
	call	create_option_info
	.loc 2 251 0
	movl	$0, 24(%esp)
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$86, (%esp)
	call	create_option_info
	.loc 2 252 0
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$87, (%esp)
	call	create_option_info
	.loc 2 253 0
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$88, (%esp)
	call	create_option_info
	.loc 2 254 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$257, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$89, (%esp)
	call	create_option_info
	.loc 2 255 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$89, 4(%esp)
	movl	$89, (%esp)
	call	create_implies_item
	.loc 2 256 0
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$90, (%esp)
	call	create_option_info
	.loc 2 257 0
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$90, 4(%esp)
	movl	$90, (%esp)
	call	create_implies_item
	.loc 2 258 0
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$91, (%esp)
	call	create_option_info
	.loc 2 259 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$91, 4(%esp)
	movl	$91, (%esp)
	call	create_implies_item
	.loc 2 260 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$91, (%esp)
	call	create_implies_item
	.loc 2 261 0
	movl	$0, 24(%esp)
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$92, (%esp)
	call	create_option_info
	.loc 2 262 0
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$93, (%esp)
	call	create_option_info
	.loc 2 263 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$93, 4(%esp)
	movl	$93, (%esp)
	call	create_implies_item
	.loc 2 264 0
	movl	$0, 24(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$94, (%esp)
	call	create_option_info
	.loc 2 265 0
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$94, 4(%esp)
	movl	$94, (%esp)
	call	create_implies_item
	.loc 2 266 0
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$95, (%esp)
	call	create_option_info
	.loc 2 267 0
	movl	$0, 24(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$96, (%esp)
	call	create_option_info
	.loc 2 268 0
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$644, 4(%esp)
	movl	$96, (%esp)
	call	create_implies_item
	.loc 2 269 0
	movl	$0, 24(%esp)
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$97, (%esp)
	call	create_option_info
	.loc 2 270 0
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$97, 4(%esp)
	movl	$97, (%esp)
	call	create_implies_item
	.loc 2 271 0
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$98, (%esp)
	call	create_option_info
	.loc 2 272 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$98, 4(%esp)
	movl	$98, (%esp)
	call	create_implies_item
	.loc 2 273 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$99, (%esp)
	call	create_option_info
	.loc 2 274 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$99, 4(%esp)
	movl	$99, (%esp)
	call	create_implies_item
	.loc 2 275 0
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$100, (%esp)
	call	create_option_info
	.loc 2 276 0
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$100, 4(%esp)
	movl	$100, (%esp)
	call	create_implies_item
	.loc 2 277 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$48, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$101, (%esp)
	call	create_option_info
	.loc 2 278 0
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$101, (%esp)
	call	create_implies_item
	.loc 2 279 0
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$48, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$102, (%esp)
	call	create_option_info
	.loc 2 280 0
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$102, (%esp)
	call	create_implies_item
	.loc 2 281 0
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$103, (%esp)
	call	create_option_info
	.loc 2 282 0
	movl	$0, 24(%esp)
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$104, (%esp)
	call	create_option_info
	.loc 2 283 0
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$693, 4(%esp)
	movl	$104, (%esp)
	call	create_implies_item
	.loc 2 284 0
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$694, 4(%esp)
	movl	$104, (%esp)
	call	create_implies_item
	.loc 2 285 0
	movl	$0, 24(%esp)
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$105, (%esp)
	call	create_option_info
	.loc 2 286 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$105, (%esp)
	call	create_implies_item
	.loc 2 287 0
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$207, 4(%esp)
	movl	$105, (%esp)
	call	create_implies_item
	.loc 2 288 0
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$105, 4(%esp)
	movl	$105, (%esp)
	call	create_implies_item
	.loc 2 289 0
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$106, (%esp)
	call	create_option_info
	.loc 2 290 0
	movl	$0, 24(%esp)
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$107, (%esp)
	call	create_option_info
	.loc 2 291 0
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$108, (%esp)
	call	create_option_info
	.loc 2 292 0
	movl	$0, 24(%esp)
	leal	.LC191@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$109, (%esp)
	call	create_option_info
	.loc 2 293 0
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$110, 4(%esp)
	movl	$109, (%esp)
	call	create_implies_item
	.loc 2 294 0
	movl	$0, 24(%esp)
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$110, (%esp)
	call	create_option_info
	.loc 2 295 0
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$111, (%esp)
	call	create_option_info
	.loc 2 296 0
	movl	$0, 24(%esp)
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$112, (%esp)
	call	create_option_info
	.loc 2 297 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$113, (%esp)
	call	create_option_info
	.loc 2 298 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$113, (%esp)
	call	create_implies_item
	.loc 2 299 0
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$113, 4(%esp)
	movl	$113, (%esp)
	call	create_implies_item
	.loc 2 300 0
	movl	$0, 24(%esp)
	leal	.LC199@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$114, (%esp)
	call	create_option_info
	.loc 2 301 0
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$114, (%esp)
	call	create_implies_item
	.loc 2 302 0
	movl	$0, 24(%esp)
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$115, (%esp)
	call	create_option_info
	.loc 2 303 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$115, (%esp)
	call	create_implies_item
	.loc 2 304 0
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$207, 4(%esp)
	movl	$115, (%esp)
	call	create_implies_item
	.loc 2 305 0
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$115, 4(%esp)
	movl	$115, (%esp)
	call	create_implies_item
	.loc 2 306 0
	movl	$0, 24(%esp)
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$116, (%esp)
	call	create_option_info
	.loc 2 307 0
	movl	$0, 24(%esp)
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$117, (%esp)
	call	create_option_info
	.loc 2 308 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$117, (%esp)
	call	create_implies_item
	.loc 2 309 0
	movl	$0, 24(%esp)
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$118, (%esp)
	call	create_option_info
	.loc 2 310 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$719, 4(%esp)
	movl	$118, (%esp)
	call	create_implies_item
	.loc 2 311 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$118, (%esp)
	call	create_implies_item
	.loc 2 312 0
	movl	$0, 24(%esp)
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$119, (%esp)
	call	create_option_info
	.loc 2 313 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$719, 4(%esp)
	movl	$119, (%esp)
	call	create_implies_item
	.loc 2 314 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$119, (%esp)
	call	create_implies_item
	.loc 2 315 0
	movl	$0, 24(%esp)
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$120, (%esp)
	call	create_option_info
	.loc 2 316 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$120, (%esp)
	call	create_implies_item
	.loc 2 317 0
	leal	.LC208@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$121, (%esp)
	call	create_option_info
	.loc 2 318 0
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$121, 4(%esp)
	movl	$121, (%esp)
	call	create_implies_item
	.loc 2 319 0
	movl	$0, 24(%esp)
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15732720, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$122, (%esp)
	call	create_option_info
	.loc 2 320 0
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$122, 4(%esp)
	movl	$122, (%esp)
	call	create_implies_item
	.loc 2 321 0
	movl	$0, 24(%esp)
	leal	.LC211@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$123, (%esp)
	call	create_option_info
	.loc 2 322 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$123, (%esp)
	call	create_implies_item
	.loc 2 323 0
	movl	$0, 24(%esp)
	leal	.LC212@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$124, (%esp)
	call	create_option_info
	.loc 2 324 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$719, 4(%esp)
	movl	$124, (%esp)
	call	create_implies_item
	.loc 2 325 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$124, (%esp)
	call	create_implies_item
	.loc 2 326 0
	movl	$0, 24(%esp)
	leal	.LC213@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$26, 4(%esp)
	movl	$0, 8(%esp)
	movl	$125, (%esp)
	call	create_option_info
	.loc 2 327 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$719, 4(%esp)
	movl	$125, (%esp)
	call	create_implies_item
	.loc 2 328 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$125, (%esp)
	call	create_implies_item
	.loc 2 329 0
	movl	$0, 24(%esp)
	leal	.LC214@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$126, (%esp)
	call	create_option_info
	.loc 2 330 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$126, (%esp)
	call	create_implies_item
	.loc 2 331 0
	leal	.LC215@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC216@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$127, (%esp)
	call	create_option_info
	.loc 2 332 0
	leal	.LC217@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC218@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$128, (%esp)
	call	create_option_info
	.loc 2 333 0
	movl	$0, 24(%esp)
	leal	.LC219@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$129, (%esp)
	call	create_option_info
	.loc 2 334 0
	leal	.LC219@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$129, 4(%esp)
	movl	$129, (%esp)
	call	create_implies_item
	.loc 2 335 0
	movl	$0, 24(%esp)
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$130, (%esp)
	call	create_option_info
	.loc 2 336 0
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$130, 4(%esp)
	movl	$130, (%esp)
	call	create_implies_item
	.loc 2 337 0
	movl	$0, 24(%esp)
	leal	.LC221@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$132, (%esp)
	call	create_option_info
	.loc 2 338 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$132, (%esp)
	call	create_implies_item
	.loc 2 339 0
	leal	.LC221@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$132, 4(%esp)
	movl	$132, (%esp)
	call	create_implies_item
	.loc 2 340 0
	leal	.LC222@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC223@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$133, (%esp)
	call	create_option_info
	.loc 2 341 0
	leal	.LC224@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$174, 4(%esp)
	movl	$133, (%esp)
	call	create_implies_item
	.loc 2 342 0
	leal	.LC225@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC226@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$134, (%esp)
	call	create_option_info
	.loc 2 343 0
	leal	.LC227@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$751, 4(%esp)
	movl	$134, (%esp)
	call	create_implies_item
	.loc 2 344 0
	movl	$0, 24(%esp)
	leal	.LC228@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$135, (%esp)
	call	create_option_info
	.loc 2 345 0
	leal	.LC228@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$135, 4(%esp)
	movl	$135, (%esp)
	call	create_implies_item
	.loc 2 346 0
	leal	.LC229@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC230@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$136, (%esp)
	call	create_option_info
	.loc 2 347 0
	leal	.LC231@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC232@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$137, (%esp)
	call	create_option_info
	.loc 2 348 0
	leal	.LC232@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$137, 4(%esp)
	movl	$137, (%esp)
	call	create_implies_item
	.loc 2 349 0
	leal	.LC233@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC234@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$5, 4(%esp)
	movl	$0, 8(%esp)
	movl	$138, (%esp)
	call	create_option_info
	.loc 2 350 0
	leal	.LC234@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$138, 4(%esp)
	movl	$138, (%esp)
	call	create_implies_item
	.loc 2 351 0
	leal	.LC235@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC236@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$139, (%esp)
	call	create_option_info
	.loc 2 352 0
	leal	.LC236@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$139, 4(%esp)
	movl	$139, (%esp)
	call	create_implies_item
	.loc 2 353 0
	leal	.LC237@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC238@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$140, (%esp)
	call	create_option_info
	.loc 2 354 0
	leal	.LC238@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$140, 4(%esp)
	movl	$140, (%esp)
	call	create_implies_item
	.loc 2 355 0
	leal	.LC239@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC240@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$141, (%esp)
	call	create_option_info
	.loc 2 356 0
	leal	.LC241@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$730, 4(%esp)
	movl	$141, (%esp)
	call	create_implies_item
	.loc 2 357 0
	leal	.LC242@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC243@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$142, (%esp)
	call	create_option_info
	.loc 2 358 0
	leal	.LC243@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$142, 4(%esp)
	movl	$142, (%esp)
	call	create_implies_item
	.loc 2 359 0
	movl	$0, 24(%esp)
	leal	.LC244@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$143, (%esp)
	call	create_option_info
	.loc 2 360 0
	leal	.LC244@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$143, 4(%esp)
	movl	$143, (%esp)
	call	create_implies_item
	.loc 2 361 0
	movl	$0, 24(%esp)
	leal	.LC245@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$144, (%esp)
	call	create_option_info
	.loc 2 362 0
	leal	.LC246@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$144, (%esp)
	call	create_implies_item
	.loc 2 363 0
	leal	.LC245@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$144, 4(%esp)
	movl	$144, (%esp)
	call	create_implies_item
	.loc 2 364 0
	leal	.LC247@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC248@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$146, (%esp)
	call	create_option_info
	.loc 2 365 0
	leal	.LC249@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$146, (%esp)
	call	create_implies_item
	.loc 2 366 0
	leal	.LC250@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC251@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$147, (%esp)
	call	create_option_info
	.loc 2 367 0
	leal	.LC251@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$147, 4(%esp)
	movl	$147, (%esp)
	call	create_implies_item
	.loc 2 368 0
	leal	.LC252@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC253@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$148, (%esp)
	call	create_option_info
	.loc 2 369 0
	leal	.LC253@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$148, 4(%esp)
	movl	$148, (%esp)
	call	create_implies_item
	.loc 2 370 0
	leal	.LC254@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC255@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$149, (%esp)
	call	create_option_info
	.loc 2 371 0
	leal	.LC255@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$149, 4(%esp)
	movl	$149, (%esp)
	call	create_implies_item
	.loc 2 372 0
	movl	$0, 24(%esp)
	leal	.LC256@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$150, (%esp)
	call	create_option_info
	.loc 2 373 0
	movl	$0, 24(%esp)
	leal	.LC257@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$151, (%esp)
	call	create_option_info
	.loc 2 374 0
	leal	.LC257@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$151, 4(%esp)
	movl	$151, (%esp)
	call	create_implies_item
	.loc 2 375 0
	movl	$0, 24(%esp)
	leal	.LC258@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$152, (%esp)
	call	create_option_info
	.loc 2 376 0
	leal	.LC258@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$152, 4(%esp)
	movl	$152, (%esp)
	call	create_implies_item
	.loc 2 377 0
	leal	.LC259@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC260@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$154, (%esp)
	call	create_option_info
	.loc 2 378 0
	leal	.LC261@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC262@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$155, (%esp)
	call	create_option_info
	.loc 2 379 0
	leal	.LC263@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$155, 4(%esp)
	movl	$155, (%esp)
	call	create_implies_item
	.loc 2 380 0
	leal	.LC264@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC265@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$156, (%esp)
	call	create_option_info
	.loc 2 381 0
	leal	.LC265@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$156, 4(%esp)
	movl	$156, (%esp)
	call	create_implies_item
	.loc 2 382 0
	leal	.LC266@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC267@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$28672, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$157, (%esp)
	call	create_option_info
	.loc 2 383 0
	leal	.LC268@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$157, (%esp)
	call	create_implies_item
	.loc 2 384 0
	leal	.LC267@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$157, 4(%esp)
	movl	$157, (%esp)
	call	create_implies_item
	.loc 2 385 0
	movl	$0, 24(%esp)
	leal	.LC269@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$158, (%esp)
	call	create_option_info
	.loc 2 386 0
	leal	.LC269@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$158, 4(%esp)
	movl	$158, (%esp)
	call	create_implies_item
	.loc 2 387 0
	leal	.LC270@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC271@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$159, (%esp)
	call	create_option_info
	.loc 2 388 0
	leal	.LC272@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$159, (%esp)
	call	create_implies_item
	.loc 2 389 0
	movl	$0, 24(%esp)
	leal	.LC273@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$160, (%esp)
	call	create_option_info
	.loc 2 390 0
	leal	.LC274@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$160, (%esp)
	call	create_implies_item
	.loc 2 391 0
	leal	.LC275@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC276@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$161, (%esp)
	call	create_option_info
	.loc 2 392 0
	leal	.LC277@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC278@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$162, (%esp)
	call	create_option_info
	.loc 2 393 0
	leal	.LC279@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC280@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$163, (%esp)
	call	create_option_info
	.loc 2 394 0
	leal	.LC281@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC282@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$164, (%esp)
	call	create_option_info
	.loc 2 395 0
	leal	.LC282@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$164, 4(%esp)
	movl	$164, (%esp)
	call	create_implies_item
	.loc 2 396 0
	movl	$0, 24(%esp)
	leal	.LC283@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$165, (%esp)
	call	create_option_info
	.loc 2 397 0
	leal	.LC284@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$165, (%esp)
	call	create_implies_item
	.loc 2 398 0
	movl	$0, 24(%esp)
	leal	.LC285@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$166, (%esp)
	call	create_option_info
	.loc 2 399 0
	movl	$0, 24(%esp)
	leal	.LC286@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$26, 4(%esp)
	movl	$0, 8(%esp)
	movl	$167, (%esp)
	call	create_option_info
	.loc 2 400 0
	leal	.LC286@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$167, 4(%esp)
	movl	$167, (%esp)
	call	create_implies_item
	.loc 2 401 0
	movl	$0, 24(%esp)
	leal	.LC287@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$168, (%esp)
	call	create_option_info
	.loc 2 402 0
	leal	.LC287@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$168, 4(%esp)
	movl	$168, (%esp)
	call	create_implies_item
	.loc 2 403 0
	movl	$0, 24(%esp)
	leal	.LC288@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$169, (%esp)
	call	create_option_info
	.loc 2 404 0
	movl	$0, 24(%esp)
	leal	.LC289@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$170, (%esp)
	call	create_option_info
	.loc 2 405 0
	movl	$0, 24(%esp)
	leal	.LC290@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$1011712, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$171, (%esp)
	call	create_option_info
	.loc 2 406 0
	leal	.LC291@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$171, 4(%esp)
	movl	$171, (%esp)
	call	create_implies_item
	.loc 2 407 0
	movl	$0, 24(%esp)
	leal	.LC292@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$26, 4(%esp)
	movl	$0, 8(%esp)
	movl	$172, (%esp)
	call	create_option_info
	.loc 2 408 0
	movl	$0, 24(%esp)
	leal	.LC293@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$173, (%esp)
	call	create_option_info
	.loc 2 409 0
	leal	.LC294@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$173, 4(%esp)
	movl	$173, (%esp)
	call	create_implies_item
	.loc 2 410 0
	leal	.LC295@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC224@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$174, (%esp)
	call	create_option_info
	.loc 2 411 0
	leal	.LC224@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$174, 4(%esp)
	movl	$174, (%esp)
	call	create_implies_item
	.loc 2 412 0
	leal	.LC296@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC297@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$175, (%esp)
	call	create_option_info
	.loc 2 413 0
	leal	.LC298@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC299@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$176, (%esp)
	call	create_option_info
	.loc 2 414 0
	leal	.LC300@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC301@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$177, (%esp)
	call	create_option_info
	.loc 2 415 0
	leal	.LC300@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC302@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$178, (%esp)
	call	create_option_info
	.loc 2 416 0
	movl	$0, 24(%esp)
	leal	.LC303@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$179, (%esp)
	call	create_option_info
	.loc 2 417 0
	movl	$0, 24(%esp)
	leal	.LC304@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$180, (%esp)
	call	create_option_info
	.loc 2 418 0
	leal	.LC305@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$738, 4(%esp)
	movl	$180, (%esp)
	call	create_implies_item
	.loc 2 419 0
	leal	.LC306@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC307@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$181, (%esp)
	call	create_option_info
	.loc 2 420 0
	leal	.LC307@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$181, 4(%esp)
	movl	$181, (%esp)
	call	create_implies_item
	.loc 2 421 0
	leal	.LC308@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC309@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$182, (%esp)
	call	create_option_info
	.loc 2 422 0
	leal	.LC310@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$182, (%esp)
	call	create_implies_item
	.loc 2 423 0
	leal	.LC311@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC312@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$183, (%esp)
	call	create_option_info
	.loc 2 424 0
	leal	.LC313@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC314@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$184, (%esp)
	call	create_option_info
	.loc 2 425 0
	leal	.LC314@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$184, 4(%esp)
	movl	$184, (%esp)
	call	create_implies_item
	.loc 2 426 0
	leal	.LC315@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC316@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$48, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$185, (%esp)
	call	create_option_info
	.loc 2 427 0
	leal	.LC317@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$185, (%esp)
	call	create_implies_item
	.loc 2 428 0
	leal	.LC318@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$205, 4(%esp)
	movl	$185, (%esp)
	call	create_implies_item
	.loc 2 429 0
	leal	.LC319@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC320@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$186, (%esp)
	call	create_option_info
	.loc 2 430 0
	leal	.LC321@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$186, (%esp)
	call	create_implies_item
	.loc 2 431 0
	movl	$0, 24(%esp)
	leal	.LC322@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$187, (%esp)
	call	create_option_info
	.loc 2 432 0
	leal	.LC323@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$187, (%esp)
	call	create_implies_item
	.loc 2 433 0
	movl	$0, 24(%esp)
	leal	.LC324@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$188, (%esp)
	call	create_option_info
	.loc 2 434 0
	leal	.LC325@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$207, 4(%esp)
	movl	$188, (%esp)
	call	create_implies_item
	.loc 2 435 0
	leal	.LC326@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$719, 4(%esp)
	movl	$188, (%esp)
	call	create_implies_item
	.loc 2 436 0
	movl	$0, 24(%esp)
	leal	.LC327@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$189, (%esp)
	call	create_option_info
	.loc 2 437 0
	leal	.LC327@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$189, 4(%esp)
	movl	$189, (%esp)
	call	create_implies_item
	.loc 2 438 0
	leal	.LC275@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC328@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$190, (%esp)
	call	create_option_info
	.loc 2 439 0
	movl	$0, 24(%esp)
	leal	.LC329@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$191, (%esp)
	call	create_option_info
	.loc 2 440 0
	leal	.LC330@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$191, (%esp)
	call	create_implies_item
	.loc 2 441 0
	leal	.LC331@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC332@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$192, (%esp)
	call	create_option_info
	.loc 2 442 0
	leal	.LC333@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$192, (%esp)
	call	create_implies_item
	.loc 2 443 0
	leal	.LC334@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$192, 4(%esp)
	movl	$192, (%esp)
	call	create_implies_item
	.loc 2 444 0
	movl	$0, 24(%esp)
	leal	.LC335@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$193, (%esp)
	call	create_option_info
	.loc 2 445 0
	leal	.LC275@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC336@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$194, (%esp)
	call	create_option_info
	.loc 2 446 0
	movl	$0, 24(%esp)
	leal	.LC337@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$195, (%esp)
	call	create_option_info
	.loc 2 447 0
	leal	.LC337@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$195, 4(%esp)
	movl	$195, (%esp)
	call	create_implies_item
	.loc 2 448 0
	movl	$0, 24(%esp)
	leal	.LC338@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$196, (%esp)
	call	create_option_info
	.loc 2 449 0
	leal	.LC338@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$196, 4(%esp)
	movl	$196, (%esp)
	call	create_implies_item
	.loc 2 450 0
	movl	$0, 24(%esp)
	leal	.LC339@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$197, (%esp)
	call	create_option_info
	.loc 2 451 0
	leal	.LC339@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$197, 4(%esp)
	movl	$197, (%esp)
	call	create_implies_item
	.loc 2 452 0
	movl	$0, 24(%esp)
	leal	.LC340@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$198, (%esp)
	call	create_option_info
	.loc 2 453 0
	movl	$0, 24(%esp)
	leal	.LC341@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$200, (%esp)
	call	create_option_info
	.loc 2 454 0
	leal	.LC335@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$193, 4(%esp)
	movl	$200, (%esp)
	call	create_implies_item
	.loc 2 455 0
	leal	.LC342@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$200, (%esp)
	call	create_implies_item
	.loc 2 456 0
	leal	.LC343@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC344@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$201, (%esp)
	call	create_option_info
	.loc 2 457 0
	leal	.LC345@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$201, (%esp)
	call	create_implies_item
	.loc 2 458 0
	leal	.LC346@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC347@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$202, (%esp)
	call	create_option_info
	.loc 2 459 0
	movl	$0, 24(%esp)
	leal	.LC348@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$203, (%esp)
	call	create_option_info
	.loc 2 460 0
	leal	.LC348@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$203, 4(%esp)
	movl	$203, (%esp)
	call	create_implies_item
	.loc 2 461 0
	leal	.LC266@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC349@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$204, (%esp)
	call	create_option_info
	.loc 2 462 0
	leal	.LC268@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$204, (%esp)
	call	create_implies_item
	.loc 2 463 0
	leal	.LC350@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC351@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$205, (%esp)
	call	create_option_info
	.loc 2 464 0
	leal	.LC352@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$205, 4(%esp)
	movl	$205, (%esp)
	call	create_implies_item
	.loc 2 465 0
	movl	$0, 24(%esp)
	leal	.LC353@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$206, (%esp)
	call	create_option_info
	.loc 2 466 0
	leal	.LC354@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC355@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$207, (%esp)
	call	create_option_info
	.loc 2 467 0
	leal	.LC356@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$207, 4(%esp)
	movl	$207, (%esp)
	call	create_implies_item
	.loc 2 468 0
	leal	.LC357@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC358@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$208, (%esp)
	call	create_option_info
	.loc 2 469 0
	leal	.LC358@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$208, 4(%esp)
	movl	$208, (%esp)
	call	create_implies_item
	.loc 2 470 0
	leal	.LC359@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC360@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$256, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$209, (%esp)
	call	create_option_info
	.loc 2 471 0
	leal	.LC360@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$209, 4(%esp)
	movl	$209, (%esp)
	call	create_implies_item
	.loc 2 472 0
	movl	$0, 24(%esp)
	leal	.LC361@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$210, (%esp)
	call	create_option_info
	.loc 2 473 0
	leal	.LC362@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$210, (%esp)
	call	create_implies_item
	.loc 2 474 0
	movl	$0, 24(%esp)
	leal	.LC363@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$211, (%esp)
	call	create_option_info
	.loc 2 475 0
	leal	.LC364@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$211, 4(%esp)
	movl	$211, (%esp)
	call	create_implies_item
	.loc 2 476 0
	movl	$0, 24(%esp)
	leal	.LC365@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$212, (%esp)
	call	create_option_info
	.loc 2 477 0
	leal	.LC366@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$212, 4(%esp)
	movl	$212, (%esp)
	call	create_implies_item
	.loc 2 478 0
	movl	$0, 24(%esp)
	leal	.LC367@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$63, 4(%esp)
	movl	$0, 8(%esp)
	movl	$213, (%esp)
	call	create_option_info
	.loc 2 479 0
	leal	.LC368@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$213, 4(%esp)
	movl	$213, (%esp)
	call	create_implies_item
	.loc 2 480 0
	movl	$0, 24(%esp)
	leal	.LC369@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$214, (%esp)
	call	create_option_info
	.loc 2 481 0
	leal	.LC370@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$214, 4(%esp)
	movl	$214, (%esp)
	call	create_implies_item
	.loc 2 482 0
	leal	.LC371@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC372@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$256, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$215, (%esp)
	call	create_option_info
	.loc 2 483 0
	leal	.LC372@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$215, 4(%esp)
	movl	$215, (%esp)
	call	create_implies_item
	.loc 2 484 0
	leal	.LC373@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC374@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$216, (%esp)
	call	create_option_info
	.loc 2 485 0
	leal	.LC375@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$216, 4(%esp)
	movl	$216, (%esp)
	call	create_implies_item
	.loc 2 486 0
	leal	.LC376@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC377@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$217, (%esp)
	call	create_option_info
	.loc 2 487 0
	leal	.LC378@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$731, 4(%esp)
	movl	$217, (%esp)
	call	create_implies_item
	.loc 2 488 0
	movl	$0, 24(%esp)
	leal	.LC379@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$218, (%esp)
	call	create_option_info
	.loc 2 489 0
	leal	.LC380@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$218, 4(%esp)
	movl	$218, (%esp)
	call	create_implies_item
	.loc 2 490 0
	movl	$0, 24(%esp)
	leal	.LC381@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$219, (%esp)
	call	create_option_info
	.loc 2 491 0
	leal	.LC382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$219, 4(%esp)
	movl	$219, (%esp)
	call	create_implies_item
	.loc 2 492 0
	movl	$0, 24(%esp)
	leal	.LC383@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$220, (%esp)
	call	create_option_info
	.loc 2 493 0
	movl	$0, 24(%esp)
	leal	.LC384@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$222, (%esp)
	call	create_option_info
	.loc 2 494 0
	leal	.LC385@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$222, 4(%esp)
	movl	$222, (%esp)
	call	create_implies_item
	.loc 2 495 0
	leal	.LC386@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC387@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$223, (%esp)
	call	create_option_info
	.loc 2 496 0
	leal	.LC387@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$223, 4(%esp)
	movl	$223, (%esp)
	call	create_implies_item
	.loc 2 497 0
	leal	.LC388@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC389@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$224, (%esp)
	call	create_option_info
	.loc 2 498 0
	leal	.LC389@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$224, 4(%esp)
	movl	$224, (%esp)
	call	create_implies_item
	.loc 2 499 0
	leal	.LC242@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC390@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$225, (%esp)
	call	create_option_info
	.loc 2 500 0
	leal	.LC390@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$225, 4(%esp)
	movl	$225, (%esp)
	call	create_implies_item
	.loc 2 501 0
	leal	.LC391@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC392@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$226, (%esp)
	call	create_option_info
	.loc 2 502 0
	leal	.LC393@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC394@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$227, (%esp)
	call	create_option_info
	.loc 2 503 0
	movl	$0, 24(%esp)
	leal	.LC395@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$228, (%esp)
	call	create_option_info
	.loc 2 504 0
	leal	.LC396@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$228, (%esp)
	call	create_implies_item
	.loc 2 505 0
	leal	.LC397@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$228, (%esp)
	call	create_implies_item
	.loc 2 506 0
	movl	$0, 24(%esp)
	leal	.LC398@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$229, (%esp)
	call	create_option_info
	.loc 2 507 0
	movl	$0, 24(%esp)
	leal	.LC399@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$230, (%esp)
	call	create_option_info
	.loc 2 508 0
	movl	$0, 24(%esp)
	leal	.LC400@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$231, (%esp)
	call	create_option_info
	.loc 2 509 0
	movl	$0, 24(%esp)
	leal	.LC401@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$232, (%esp)
	call	create_option_info
	.loc 2 510 0
	movl	$0, 24(%esp)
	leal	.LC402@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$233, (%esp)
	call	create_option_info
	.loc 2 511 0
	movl	$0, 24(%esp)
	leal	.LC403@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$234, (%esp)
	call	create_option_info
	.loc 2 512 0
	leal	.LC404@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC405@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$235, (%esp)
	call	create_option_info
	.loc 2 513 0
	leal	.LC406@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$246, 4(%esp)
	movl	$235, (%esp)
	call	create_implies_item
	.loc 2 514 0
	leal	.LC404@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC407@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$236, (%esp)
	call	create_option_info
	.loc 2 515 0
	leal	.LC408@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$247, 4(%esp)
	movl	$236, (%esp)
	call	create_implies_item
	.loc 2 516 0
	leal	.LC409@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC410@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$237, (%esp)
	call	create_option_info
	.loc 2 517 0
	leal	.LC406@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$246, 4(%esp)
	movl	$237, (%esp)
	call	create_implies_item
	.loc 2 518 0
	leal	.LC411@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC412@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$238, (%esp)
	call	create_option_info
	.loc 2 519 0
	leal	.LC408@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$247, 4(%esp)
	movl	$238, (%esp)
	call	create_implies_item
	.loc 2 520 0
	leal	.LC413@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC414@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$239, (%esp)
	call	create_option_info
	.loc 2 521 0
	leal	.LC415@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$248, 4(%esp)
	movl	$239, (%esp)
	call	create_implies_item
	.loc 2 522 0
	leal	.LC416@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC417@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$240, (%esp)
	call	create_option_info
	.loc 2 523 0
	leal	.LC418@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$249, 4(%esp)
	movl	$240, (%esp)
	call	create_implies_item
	.loc 2 524 0
	leal	.LC419@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC420@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$241, (%esp)
	call	create_option_info
	.loc 2 525 0
	leal	.LC408@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$247, 4(%esp)
	movl	$241, (%esp)
	call	create_implies_item
	.loc 2 526 0
	movl	$0, 24(%esp)
	leal	.LC421@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$242, (%esp)
	call	create_option_info
	.loc 2 527 0
	movl	$0, 24(%esp)
	leal	.LC422@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$243, (%esp)
	call	create_option_info
	.loc 2 528 0
	movl	$0, 24(%esp)
	leal	.LC423@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$244, (%esp)
	call	create_option_info
	.loc 2 529 0
	leal	.LC424@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC425@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$245, (%esp)
	call	create_option_info
	.loc 2 530 0
	leal	.LC425@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$245, 4(%esp)
	movl	$245, (%esp)
	call	create_implies_item
	.loc 2 531 0
	leal	.LC426@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC406@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$246, (%esp)
	call	create_option_info
	.loc 2 532 0
	leal	.LC406@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$246, 4(%esp)
	movl	$246, (%esp)
	call	create_implies_item
	.loc 2 533 0
	movl	$0, 24(%esp)
	leal	.LC408@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$247, (%esp)
	call	create_option_info
	.loc 2 534 0
	leal	.LC408@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$247, 4(%esp)
	movl	$247, (%esp)
	call	create_implies_item
	.loc 2 535 0
	movl	$0, 24(%esp)
	leal	.LC415@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$248, (%esp)
	call	create_option_info
	.loc 2 536 0
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$644, 4(%esp)
	movl	$248, (%esp)
	call	create_implies_item
	.loc 2 537 0
	leal	.LC415@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$248, 4(%esp)
	movl	$248, (%esp)
	call	create_implies_item
	.loc 2 538 0
	leal	.LC427@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC418@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$249, (%esp)
	call	create_option_info
	.loc 2 539 0
	leal	.LC418@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$249, 4(%esp)
	movl	$249, (%esp)
	call	create_implies_item
	.loc 2 540 0
	leal	.LC428@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC429@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$250, (%esp)
	call	create_option_info
	.loc 2 541 0
	leal	.LC408@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$247, 4(%esp)
	movl	$250, (%esp)
	call	create_implies_item
	.loc 2 542 0
	leal	.LC430@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC431@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$251, (%esp)
	call	create_option_info
	.loc 2 543 0
	leal	.LC431@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$251, 4(%esp)
	movl	$251, (%esp)
	call	create_implies_item
	.loc 2 544 0
	movl	$0, 24(%esp)
	leal	.LC432@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$252, (%esp)
	call	create_option_info
	.loc 2 545 0
	movl	$0, 24(%esp)
	leal	.LC433@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$253, (%esp)
	call	create_option_info
	.loc 2 546 0
	leal	.LC434@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC435@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$254, (%esp)
	call	create_option_info
	.loc 2 547 0
	leal	.LC436@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC437@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$255, (%esp)
	call	create_option_info
	.loc 2 548 0
	leal	.LC438@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC439@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$256, (%esp)
	call	create_option_info
	.loc 2 549 0
	leal	.LC439@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	movl	$256, (%esp)
	call	create_implies_item
	.loc 2 550 0
	movl	$0, 24(%esp)
	leal	.LC440@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$257, (%esp)
	call	create_option_info
	.loc 2 551 0
	leal	.LC441@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC442@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$258, (%esp)
	call	create_option_info
	.loc 2 552 0
	leal	.LC442@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$258, 4(%esp)
	movl	$258, (%esp)
	call	create_implies_item
	.loc 2 553 0
	movl	$0, 24(%esp)
	leal	.LC443@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$259, (%esp)
	call	create_option_info
	.loc 2 554 0
	leal	.LC444@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$259, (%esp)
	call	create_implies_item
	.loc 2 555 0
	leal	.LC445@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$259, (%esp)
	call	create_implies_item
	.loc 2 556 0
	leal	.LC446@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC447@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$260, (%esp)
	call	create_option_info
	.loc 2 557 0
	leal	.LC448@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$260, (%esp)
	call	create_implies_item
	.loc 2 558 0
	leal	.LC447@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$260, 4(%esp)
	movl	$260, (%esp)
	call	create_implies_item
	.loc 2 559 0
	leal	.LC449@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC450@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$261, (%esp)
	call	create_option_info
	.loc 2 560 0
	leal	.LC450@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$261, 4(%esp)
	movl	$261, (%esp)
	call	create_implies_item
	.loc 2 561 0
	leal	.LC451@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC452@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$262, (%esp)
	call	create_option_info
	.loc 2 562 0
	leal	.LC453@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$336, 4(%esp)
	movl	$262, (%esp)
	call	create_implies_item
	.loc 2 563 0
	leal	.LC454@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$262, (%esp)
	call	create_implies_item
	.loc 2 564 0
	leal	.LC455@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC456@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$263, (%esp)
	call	create_option_info
	.loc 2 565 0
	leal	.LC456@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$263, 4(%esp)
	movl	$263, (%esp)
	call	create_implies_item
	.loc 2 566 0
	leal	.LC457@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC458@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$264, (%esp)
	call	create_option_info
	.loc 2 567 0
	leal	.LC458@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$264, 4(%esp)
	movl	$264, (%esp)
	call	create_implies_item
	.loc 2 568 0
	leal	.LC459@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC460@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$265, (%esp)
	call	create_option_info
	.loc 2 569 0
	leal	.LC460@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$265, 4(%esp)
	movl	$265, (%esp)
	call	create_implies_item
	.loc 2 570 0
	leal	.LC461@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC462@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$266, (%esp)
	call	create_option_info
	.loc 2 571 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5, 4(%esp)
	movl	$266, (%esp)
	call	create_implies_item
	.loc 2 572 0
	movl	$0, 24(%esp)
	leal	.LC463@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$267, (%esp)
	call	create_option_info
	.loc 2 573 0
	leal	.LC463@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$267, 4(%esp)
	movl	$267, (%esp)
	call	create_implies_item
	.loc 2 574 0
	movl	$0, 24(%esp)
	leal	.LC464@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$268, (%esp)
	call	create_option_info
	.loc 2 575 0
	leal	.LC465@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC466@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$269, (%esp)
	call	create_option_info
	.loc 2 576 0
	leal	.LC466@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$269, 4(%esp)
	movl	$269, (%esp)
	call	create_implies_item
	.loc 2 577 0
	leal	.LC467@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC468@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$270, (%esp)
	call	create_option_info
	.loc 2 578 0
	leal	.LC469@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$270, (%esp)
	call	create_implies_item
	.loc 2 579 0
	leal	.LC470@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC471@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$271, (%esp)
	call	create_option_info
	.loc 2 580 0
	leal	.LC472@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$271, 4(%esp)
	movl	$271, (%esp)
	call	create_implies_item
	.loc 2 581 0
	leal	.LC473@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC474@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$272, (%esp)
	call	create_option_info
	.loc 2 582 0
	leal	.LC475@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$272, (%esp)
	call	create_implies_item
	.loc 2 583 0
	leal	.LC474@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$272, 4(%esp)
	movl	$272, (%esp)
	call	create_implies_item
	.loc 2 584 0
	leal	.LC476@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC477@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$273, (%esp)
	call	create_option_info
	.loc 2 585 0
	leal	.LC477@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$273, 4(%esp)
	movl	$273, (%esp)
	call	create_implies_item
	.loc 2 586 0
	movl	$0, 24(%esp)
	leal	.LC478@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$274, (%esp)
	call	create_option_info
	.loc 2 587 0
	movl	$0, 24(%esp)
	leal	.LC479@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$275, (%esp)
	call	create_option_info
	.loc 2 588 0
	movl	$0, 24(%esp)
	leal	.LC480@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$276, (%esp)
	call	create_option_info
	.loc 2 589 0
	movl	$0, 24(%esp)
	leal	.LC481@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$277, (%esp)
	call	create_option_info
	.loc 2 590 0
	leal	.LC482@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC483@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$278, (%esp)
	call	create_option_info
	.loc 2 591 0
	leal	.LC483@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$278, 4(%esp)
	movl	$278, (%esp)
	call	create_implies_item
	.loc 2 592 0
	leal	.LC484@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC485@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$279, (%esp)
	call	create_option_info
	.loc 2 593 0
	leal	.LC485@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$279, 4(%esp)
	movl	$279, (%esp)
	call	create_implies_item
	.loc 2 594 0
	leal	.LC486@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC487@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$280, (%esp)
	call	create_option_info
	.loc 2 595 0
	leal	.LC487@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$280, 4(%esp)
	movl	$280, (%esp)
	call	create_implies_item
	.loc 2 596 0
	leal	.LC488@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC489@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$281, (%esp)
	call	create_option_info
	.loc 2 597 0
	leal	.LC490@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC491@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$282, (%esp)
	call	create_option_info
	.loc 2 598 0
	leal	.LC492@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC493@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$283, (%esp)
	call	create_option_info
	.loc 2 599 0
	leal	.LC494@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC495@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$284, (%esp)
	call	create_option_info
	.loc 2 600 0
	leal	.LC495@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$284, 4(%esp)
	movl	$284, (%esp)
	call	create_implies_item
	.loc 2 601 0
	movl	$0, 24(%esp)
	leal	.LC496@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$285, (%esp)
	call	create_option_info
	.loc 2 602 0
	leal	.LC496@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$285, 4(%esp)
	movl	$285, (%esp)
	call	create_implies_item
	.loc 2 603 0
	movl	$0, 24(%esp)
	leal	.LC497@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$286, (%esp)
	call	create_option_info
	.loc 2 604 0
	leal	.LC497@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$286, 4(%esp)
	movl	$286, (%esp)
	call	create_implies_item
	.loc 2 605 0
	leal	.LC498@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC499@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$287, (%esp)
	call	create_option_info
	.loc 2 606 0
	leal	.LC499@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$287, 4(%esp)
	movl	$287, (%esp)
	call	create_implies_item
	.loc 2 607 0
	movl	$0, 24(%esp)
	leal	.LC500@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$288, (%esp)
	call	create_option_info
	.loc 2 608 0
	leal	.LC500@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$288, 4(%esp)
	movl	$288, (%esp)
	call	create_implies_item
	.loc 2 609 0
	movl	$0, 24(%esp)
	leal	.LC501@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$289, (%esp)
	call	create_option_info
	.loc 2 610 0
	leal	.LC501@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$289, 4(%esp)
	movl	$289, (%esp)
	call	create_implies_item
	.loc 2 611 0
	movl	$0, 24(%esp)
	leal	.LC502@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$290, (%esp)
	call	create_option_info
	.loc 2 612 0
	leal	.LC502@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$290, 4(%esp)
	movl	$290, (%esp)
	call	create_implies_item
	.loc 2 613 0
	movl	$0, 24(%esp)
	leal	.LC503@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$291, (%esp)
	call	create_option_info
	.loc 2 614 0
	leal	.LC504@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC505@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$292, (%esp)
	call	create_option_info
	.loc 2 615 0
	movl	$0, 24(%esp)
	leal	.LC506@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$293, (%esp)
	call	create_option_info
	.loc 2 616 0
	leal	.LC506@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$293, 4(%esp)
	movl	$293, (%esp)
	call	create_implies_item
	.loc 2 617 0
	movl	$0, 24(%esp)
	leal	.LC507@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$294, (%esp)
	call	create_option_info
	.loc 2 618 0
	movl	$0, 24(%esp)
	leal	.LC508@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$295, (%esp)
	call	create_option_info
	.loc 2 619 0
	leal	.LC509@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$295, (%esp)
	call	create_implies_item
	.loc 2 620 0
	leal	.LC510@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC511@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15732720, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$296, (%esp)
	call	create_option_info
	.loc 2 621 0
	leal	.LC511@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$296, 4(%esp)
	movl	$296, (%esp)
	call	create_implies_item
	.loc 2 622 0
	leal	.LC512@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC513@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$297, (%esp)
	call	create_option_info
	.loc 2 623 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC514@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$298, (%esp)
	call	create_option_info
	.loc 2 624 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$298, (%esp)
	call	create_implies_item
	.loc 2 625 0
	leal	.LC514@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$298, 4(%esp)
	movl	$298, (%esp)
	call	create_implies_item
	.loc 2 626 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC515@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$299, (%esp)
	call	create_option_info
	.loc 2 627 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$299, (%esp)
	call	create_implies_item
	.loc 2 628 0
	leal	.LC515@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$299, 4(%esp)
	movl	$299, (%esp)
	call	create_implies_item
	.loc 2 629 0
	leal	.LC516@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC517@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$300, (%esp)
	call	create_option_info
	.loc 2 630 0
	leal	.LC517@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$300, 4(%esp)
	movl	$300, (%esp)
	call	create_implies_item
	.loc 2 631 0
	movl	$0, 24(%esp)
	leal	.LC518@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$301, (%esp)
	call	create_option_info
	.loc 2 632 0
	leal	.LC519@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC520@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$302, (%esp)
	call	create_option_info
	.loc 2 633 0
	movl	$0, 24(%esp)
	leal	.LC521@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$303, (%esp)
	call	create_option_info
	.loc 2 634 0
	movl	$0, 24(%esp)
	leal	.LC522@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$304, (%esp)
	call	create_option_info
	.loc 2 635 0
	leal	.LC522@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$304, 4(%esp)
	movl	$304, (%esp)
	call	create_implies_item
	.loc 2 636 0
	movl	$0, 24(%esp)
	leal	.LC523@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$305, (%esp)
	call	create_option_info
	.loc 2 637 0
	leal	.LC225@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC524@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$306, (%esp)
	call	create_option_info
	.loc 2 638 0
	leal	.LC227@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$751, 4(%esp)
	movl	$306, (%esp)
	call	create_implies_item
	.loc 2 639 0
	leal	.LC525@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC526@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$307, (%esp)
	call	create_option_info
	.loc 2 640 0
	leal	.LC526@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$307, 4(%esp)
	movl	$307, (%esp)
	call	create_implies_item
	.loc 2 641 0
	movl	$0, 24(%esp)
	leal	.LC527@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$308, (%esp)
	call	create_option_info
	.loc 2 642 0
	leal	.LC527@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$308, 4(%esp)
	movl	$308, (%esp)
	call	create_implies_item
	.loc 2 643 0
	movl	$0, 24(%esp)
	leal	.LC528@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$309, (%esp)
	call	create_option_info
	.loc 2 644 0
	leal	.LC528@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$309, 4(%esp)
	movl	$309, (%esp)
	call	create_implies_item
	.loc 2 645 0
	movl	$0, 24(%esp)
	leal	.LC529@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$310, (%esp)
	call	create_option_info
	.loc 2 646 0
	leal	.LC530@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC531@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$311, (%esp)
	call	create_option_info
	.loc 2 647 0
	leal	.LC531@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$311, 4(%esp)
	movl	$311, (%esp)
	call	create_implies_item
	.loc 2 648 0
	movl	$0, 24(%esp)
	leal	.LC532@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$312, (%esp)
	call	create_option_info
	.loc 2 649 0
	leal	.LC533@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$312, (%esp)
	call	create_implies_item
	.loc 2 650 0
	movl	$0, 24(%esp)
	leal	.LC534@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$313, (%esp)
	call	create_option_info
	.loc 2 651 0
	leal	.LC534@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$313, 4(%esp)
	movl	$313, (%esp)
	call	create_implies_item
	.loc 2 652 0
	leal	.LC484@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC535@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$314, (%esp)
	call	create_option_info
	.loc 2 653 0
	leal	.LC535@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$314, 4(%esp)
	movl	$314, (%esp)
	call	create_implies_item
	.loc 2 654 0
	leal	.LC536@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC537@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$315, (%esp)
	call	create_option_info
	.loc 2 655 0
	leal	.LC538@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$364, 4(%esp)
	movl	$315, (%esp)
	call	create_implies_item
	.loc 2 656 0
	leal	.LC539@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$315, (%esp)
	call	create_implies_item
	.loc 2 657 0
	leal	.LC540@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC541@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$316, (%esp)
	call	create_option_info
	.loc 2 658 0
	leal	.LC541@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$316, 4(%esp)
	movl	$316, (%esp)
	call	create_implies_item
	.loc 2 659 0
	movl	$0, 24(%esp)
	leal	.LC542@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$317, (%esp)
	call	create_option_info
	.loc 2 660 0
	leal	.LC542@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$317, 4(%esp)
	movl	$317, (%esp)
	call	create_implies_item
	.loc 2 661 0
	leal	.LC543@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC544@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$318, (%esp)
	call	create_option_info
	.loc 2 662 0
	leal	.LC544@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$318, 4(%esp)
	movl	$318, (%esp)
	call	create_implies_item
	.loc 2 663 0
	movl	$0, 24(%esp)
	leal	.LC545@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$319, (%esp)
	call	create_option_info
	.loc 2 664 0
	leal	.LC545@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$319, 4(%esp)
	movl	$319, (%esp)
	call	create_implies_item
	.loc 2 665 0
	movl	$0, 24(%esp)
	leal	.LC546@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$320, (%esp)
	call	create_option_info
	.loc 2 666 0
	movl	$0, 24(%esp)
	leal	.LC547@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$321, (%esp)
	call	create_option_info
	.loc 2 667 0
	movl	$0, 24(%esp)
	leal	.LC548@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$322, (%esp)
	call	create_option_info
	.loc 2 668 0
	leal	.LC446@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC549@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$323, (%esp)
	call	create_option_info
	.loc 2 669 0
	leal	.LC448@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$323, (%esp)
	call	create_implies_item
	.loc 2 670 0
	leal	.LC549@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$323, 4(%esp)
	movl	$323, (%esp)
	call	create_implies_item
	.loc 2 671 0
	leal	.LC449@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC550@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$324, (%esp)
	call	create_option_info
	.loc 2 672 0
	leal	.LC550@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$324, 4(%esp)
	movl	$324, (%esp)
	call	create_implies_item
	.loc 2 673 0
	leal	.LC551@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC552@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$325, (%esp)
	call	create_option_info
	.loc 2 674 0
	leal	.LC552@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$325, 4(%esp)
	movl	$325, (%esp)
	call	create_implies_item
	.loc 2 675 0
	leal	.LC553@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC554@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$326, (%esp)
	call	create_option_info
	.loc 2 676 0
	leal	.LC554@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$326, 4(%esp)
	movl	$326, (%esp)
	call	create_implies_item
	.loc 2 677 0
	leal	.LC555@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC556@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15732720, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$327, (%esp)
	call	create_option_info
	.loc 2 678 0
	leal	.LC556@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$327, 4(%esp)
	movl	$327, (%esp)
	call	create_implies_item
	.loc 2 679 0
	leal	.LC557@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC558@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$328, (%esp)
	call	create_option_info
	.loc 2 680 0
	leal	.LC558@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$328, 4(%esp)
	movl	$328, (%esp)
	call	create_implies_item
	.loc 2 681 0
	leal	.LC557@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC559@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$329, (%esp)
	call	create_option_info
	.loc 2 682 0
	leal	.LC559@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$329, 4(%esp)
	movl	$329, (%esp)
	call	create_implies_item
	.loc 2 683 0
	leal	.LC560@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC561@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$330, (%esp)
	call	create_option_info
	.loc 2 684 0
	leal	.LC561@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$330, 4(%esp)
	movl	$330, (%esp)
	call	create_implies_item
	.loc 2 685 0
	movl	$0, 24(%esp)
	leal	.LC562@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$331, (%esp)
	call	create_option_info
	.loc 2 686 0
	leal	.LC562@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$331, 4(%esp)
	movl	$331, (%esp)
	call	create_implies_item
	.loc 2 687 0
	movl	$0, 24(%esp)
	leal	.LC563@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$332, (%esp)
	call	create_option_info
	.loc 2 688 0
	movl	$0, 24(%esp)
	leal	.LC564@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$333, (%esp)
	call	create_option_info
	.loc 2 689 0
	leal	.LC565@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC566@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$334, (%esp)
	call	create_option_info
	.loc 2 690 0
	leal	.LC566@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$334, 4(%esp)
	movl	$334, (%esp)
	call	create_implies_item
	.loc 2 691 0
	movl	$0, 24(%esp)
	leal	.LC567@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$335, (%esp)
	call	create_option_info
	.loc 2 692 0
	leal	.LC567@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$335, 4(%esp)
	movl	$335, (%esp)
	call	create_implies_item
	.loc 2 693 0
	leal	.LC568@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC453@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$336, (%esp)
	call	create_option_info
	.loc 2 694 0
	leal	.LC569@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$724, 4(%esp)
	movl	$336, (%esp)
	call	create_implies_item
	.loc 2 695 0
	leal	.LC453@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$336, 4(%esp)
	movl	$336, (%esp)
	call	create_implies_item
	.loc 2 696 0
	leal	.LC570@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC571@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$337, (%esp)
	call	create_option_info
	.loc 2 697 0
	leal	.LC571@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$337, 4(%esp)
	movl	$337, (%esp)
	call	create_implies_item
	.loc 2 698 0
	movl	$0, 24(%esp)
	leal	.LC572@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$338, (%esp)
	call	create_option_info
	.loc 2 699 0
	leal	.LC573@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$730, 4(%esp)
	movl	$338, (%esp)
	call	create_implies_item
	.loc 2 700 0
	leal	.LC572@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$338, 4(%esp)
	movl	$338, (%esp)
	call	create_implies_item
	.loc 2 701 0
	leal	.LC574@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC575@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$339, (%esp)
	call	create_option_info
	.loc 2 702 0
	leal	.LC575@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$339, 4(%esp)
	movl	$339, (%esp)
	call	create_implies_item
	.loc 2 703 0
	leal	.LC576@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC577@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$340, (%esp)
	call	create_option_info
	.loc 2 704 0
	leal	.LC577@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$340, 4(%esp)
	movl	$340, (%esp)
	call	create_implies_item
	.loc 2 705 0
	leal	.LC578@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC579@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$341, (%esp)
	call	create_option_info
	.loc 2 706 0
	leal	.LC579@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$341, 4(%esp)
	movl	$341, (%esp)
	call	create_implies_item
	.loc 2 707 0
	movl	$0, 24(%esp)
	leal	.LC580@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$342, (%esp)
	call	create_option_info
	.loc 2 708 0
	leal	.LC580@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$342, 4(%esp)
	movl	$342, (%esp)
	call	create_implies_item
	.loc 2 709 0
	leal	.LC581@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC582@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$343, (%esp)
	call	create_option_info
	.loc 2 710 0
	leal	.LC582@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$343, 4(%esp)
	movl	$343, (%esp)
	call	create_implies_item
	.loc 2 711 0
	movl	$0, 24(%esp)
	leal	.LC583@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$344, (%esp)
	call	create_option_info
	.loc 2 712 0
	leal	.LC584@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC585@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$345, (%esp)
	call	create_option_info
	.loc 2 713 0
	leal	.LC585@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$345, 4(%esp)
	movl	$345, (%esp)
	call	create_implies_item
	.loc 2 714 0
	movl	$0, 24(%esp)
	leal	.LC586@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$346, (%esp)
	call	create_option_info
	.loc 2 715 0
	leal	.LC586@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$346, 4(%esp)
	movl	$346, (%esp)
	call	create_implies_item
	.loc 2 716 0
	movl	$0, 24(%esp)
	leal	.LC587@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$347, (%esp)
	call	create_option_info
	.loc 2 717 0
	leal	.LC587@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$347, 4(%esp)
	movl	$347, (%esp)
	call	create_implies_item
	.loc 2 718 0
	leal	.LC588@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC589@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$348, (%esp)
	call	create_option_info
	.loc 2 719 0
	leal	.LC589@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$348, 4(%esp)
	movl	$348, (%esp)
	call	create_implies_item
	.loc 2 720 0
	leal	.LC590@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC591@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$349, (%esp)
	call	create_option_info
	.loc 2 721 0
	leal	.LC592@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$349, (%esp)
	call	create_implies_item
	.loc 2 722 0
	leal	.LC536@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC593@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$350, (%esp)
	call	create_option_info
	.loc 2 723 0
	leal	.LC538@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$364, 4(%esp)
	movl	$350, (%esp)
	call	create_implies_item
	.loc 2 724 0
	leal	.LC594@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$350, (%esp)
	call	create_implies_item
	.loc 2 725 0
	leal	.LC581@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC595@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$351, (%esp)
	call	create_option_info
	.loc 2 726 0
	leal	.LC595@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$351, 4(%esp)
	movl	$351, (%esp)
	call	create_implies_item
	.loc 2 727 0
	leal	.LC596@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC597@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$352, (%esp)
	call	create_option_info
	.loc 2 728 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$352, (%esp)
	call	create_implies_item
	.loc 2 729 0
	movl	$0, 24(%esp)
	leal	.LC598@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$353, (%esp)
	call	create_option_info
	.loc 2 730 0
	leal	.LC598@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$353, 4(%esp)
	movl	$353, (%esp)
	call	create_implies_item
	.loc 2 731 0
	movl	$0, 24(%esp)
	leal	.LC599@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$354, (%esp)
	call	create_option_info
	.loc 2 732 0
	leal	.LC599@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$354, 4(%esp)
	movl	$354, (%esp)
	call	create_implies_item
	.loc 2 733 0
	leal	.LC600@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC601@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$355, (%esp)
	call	create_option_info
	.loc 2 734 0
	leal	.LC601@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$355, 4(%esp)
	movl	$355, (%esp)
	call	create_implies_item
	.loc 2 735 0
	leal	.LC602@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC603@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$356, (%esp)
	call	create_option_info
	.loc 2 736 0
	leal	.LC603@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$356, 4(%esp)
	movl	$356, (%esp)
	call	create_implies_item
	.loc 2 737 0
	leal	.LC604@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC605@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$357, (%esp)
	call	create_option_info
	.loc 2 738 0
	leal	.LC605@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$357, 4(%esp)
	movl	$357, (%esp)
	call	create_implies_item
	.loc 2 739 0
	leal	.LC606@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC607@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$358, (%esp)
	call	create_option_info
	.loc 2 740 0
	leal	.LC607@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$358, 4(%esp)
	movl	$358, (%esp)
	call	create_implies_item
	.loc 2 741 0
	leal	.LC557@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC608@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$359, (%esp)
	call	create_option_info
	.loc 2 742 0
	leal	.LC608@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$359, 4(%esp)
	movl	$359, (%esp)
	call	create_implies_item
	.loc 2 743 0
	leal	.LC557@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC609@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$360, (%esp)
	call	create_option_info
	.loc 2 744 0
	leal	.LC609@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$360, 4(%esp)
	movl	$360, (%esp)
	call	create_implies_item
	.loc 2 745 0
	leal	.LC610@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC611@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$361, (%esp)
	call	create_option_info
	.loc 2 746 0
	leal	.LC611@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$361, 4(%esp)
	movl	$361, (%esp)
	call	create_implies_item
	.loc 2 747 0
	movl	$0, 24(%esp)
	leal	.LC612@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$362, (%esp)
	call	create_option_info
	.loc 2 748 0
	leal	.LC612@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$362, 4(%esp)
	movl	$362, (%esp)
	call	create_implies_item
	.loc 2 749 0
	leal	.LC613@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC614@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$363, (%esp)
	call	create_option_info
	.loc 2 750 0
	leal	.LC615@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$363, 4(%esp)
	movl	$363, (%esp)
	call	create_implies_item
	.loc 2 751 0
	movl	$0, 24(%esp)
	leal	.LC538@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$364, (%esp)
	call	create_option_info
	.loc 2 752 0
	leal	.LC538@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$364, 4(%esp)
	movl	$364, (%esp)
	call	create_implies_item
	.loc 2 753 0
	movl	$0, 24(%esp)
	leal	.LC616@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$365, (%esp)
	call	create_option_info
	.loc 2 754 0
	leal	.LC617@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$739, 4(%esp)
	movl	$365, (%esp)
	call	create_implies_item
	.loc 2 755 0
	leal	.LC618@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$694, 4(%esp)
	movl	$365, (%esp)
	call	create_implies_item
	.loc 2 756 0
	movl	$0, 24(%esp)
	leal	.LC619@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$366, (%esp)
	call	create_option_info
	.loc 2 757 0
	movl	$0, 24(%esp)
	leal	.LC620@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$367, (%esp)
	call	create_option_info
	.loc 2 758 0
	leal	.LC620@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$367, 4(%esp)
	movl	$367, (%esp)
	call	create_implies_item
	.loc 2 759 0
	leal	.LC621@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC622@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$368, (%esp)
	call	create_option_info
	.loc 2 760 0
	leal	.LC622@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$368, 4(%esp)
	movl	$368, (%esp)
	call	create_implies_item
	.loc 2 761 0
	leal	.LC623@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC624@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$369, (%esp)
	call	create_option_info
	.loc 2 762 0
	movl	$0, 24(%esp)
	leal	.LC625@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$370, (%esp)
	call	create_option_info
	.loc 2 763 0
	leal	.LC626@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$370, 4(%esp)
	movl	$370, (%esp)
	call	create_implies_item
	.loc 2 764 0
	leal	.LC627@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC628@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$371, (%esp)
	call	create_option_info
	.loc 2 765 0
	leal	.LC628@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$371, 4(%esp)
	movl	$371, (%esp)
	call	create_implies_item
	.loc 2 766 0
	movl	$0, 24(%esp)
	leal	.LC629@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$372, (%esp)
	call	create_option_info
	.loc 2 767 0
	leal	.LC629@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$372, 4(%esp)
	movl	$372, (%esp)
	call	create_implies_item
	.loc 2 768 0
	leal	.LC630@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC631@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$373, (%esp)
	call	create_option_info
	.loc 2 769 0
	leal	.LC632@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$373, (%esp)
	call	create_implies_item
	.loc 2 770 0
	leal	.LC633@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC634@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$374, (%esp)
	call	create_option_info
	.loc 2 771 0
	leal	.LC634@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$374, 4(%esp)
	movl	$374, (%esp)
	call	create_implies_item
	.loc 2 772 0
	leal	.LC635@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC636@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$375, (%esp)
	call	create_option_info
	.loc 2 773 0
	leal	.LC636@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$375, 4(%esp)
	movl	$375, (%esp)
	call	create_implies_item
	.loc 2 774 0
	movl	$0, 24(%esp)
	leal	.LC637@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$376, (%esp)
	call	create_option_info
	.loc 2 775 0
	leal	.LC637@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$376, 4(%esp)
	movl	$376, (%esp)
	call	create_implies_item
	.loc 2 776 0
	leal	.LC638@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC639@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$377, (%esp)
	call	create_option_info
	.loc 2 777 0
	leal	.LC639@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$377, 4(%esp)
	movl	$377, (%esp)
	call	create_implies_item
	.loc 2 778 0
	leal	.LC640@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC641@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$378, (%esp)
	call	create_option_info
	.loc 2 779 0
	leal	.LC641@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$378, 4(%esp)
	movl	$378, (%esp)
	call	create_implies_item
	.loc 2 780 0
	movl	$0, 24(%esp)
	leal	.LC642@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$379, (%esp)
	call	create_option_info
	.loc 2 781 0
	leal	.LC642@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$379, 4(%esp)
	movl	$379, (%esp)
	call	create_implies_item
	.loc 2 782 0
	movl	$0, 24(%esp)
	leal	.LC643@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$380, (%esp)
	call	create_option_info
	.loc 2 783 0
	leal	.LC643@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$380, 4(%esp)
	movl	$380, (%esp)
	call	create_implies_item
	.loc 2 784 0
	movl	$0, 24(%esp)
	leal	.LC644@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$381, (%esp)
	call	create_option_info
	.loc 2 785 0
	leal	.LC644@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$381, 4(%esp)
	movl	$381, (%esp)
	call	create_implies_item
	.loc 2 786 0
	leal	.LC645@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC646@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$382, (%esp)
	call	create_option_info
	.loc 2 787 0
	leal	.LC647@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$744, 4(%esp)
	movl	$382, (%esp)
	call	create_implies_item
	.loc 2 788 0
	movl	$0, 24(%esp)
	leal	.LC648@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$383, (%esp)
	call	create_option_info
	.loc 2 789 0
	leal	.LC648@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$383, 4(%esp)
	movl	$383, (%esp)
	call	create_implies_item
	.loc 2 790 0
	movl	$0, 24(%esp)
	leal	.LC649@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$384, (%esp)
	call	create_option_info
	.loc 2 791 0
	leal	.LC649@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$384, 4(%esp)
	movl	$384, (%esp)
	call	create_implies_item
	.loc 2 792 0
	leal	.LC650@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC651@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$385, (%esp)
	call	create_option_info
	.loc 2 793 0
	leal	.LC651@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$385, 4(%esp)
	movl	$385, (%esp)
	call	create_implies_item
	.loc 2 794 0
	leal	.LC652@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC653@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$386, (%esp)
	call	create_option_info
	.loc 2 795 0
	leal	.LC654@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$386, (%esp)
	call	create_implies_item
	.loc 2 796 0
	movl	$0, 24(%esp)
	leal	.LC655@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$387, (%esp)
	call	create_option_info
	.loc 2 797 0
	leal	.LC323@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$387, (%esp)
	call	create_implies_item
	.loc 2 798 0
	leal	.LC656@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC657@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$388, (%esp)
	call	create_option_info
	.loc 2 799 0
	leal	.LC658@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$388, (%esp)
	call	create_implies_item
	.loc 2 800 0
	leal	.LC451@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC659@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$389, (%esp)
	call	create_option_info
	.loc 2 801 0
	leal	.LC453@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$336, 4(%esp)
	movl	$389, (%esp)
	call	create_implies_item
	.loc 2 802 0
	leal	.LC660@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$389, (%esp)
	call	create_implies_item
	.loc 2 803 0
	leal	.LC661@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC662@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$390, (%esp)
	call	create_option_info
	.loc 2 804 0
	leal	.LC663@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC664@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$391, (%esp)
	call	create_option_info
	.loc 2 805 0
	leal	.LC665@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC666@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$392, (%esp)
	call	create_option_info
	.loc 2 806 0
	leal	.LC667@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$392, 4(%esp)
	movl	$392, (%esp)
	call	create_implies_item
	.loc 2 807 0
	movl	$0, 24(%esp)
	leal	.LC668@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$393, (%esp)
	call	create_option_info
	.loc 2 808 0
	leal	.LC668@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$393, 4(%esp)
	movl	$393, (%esp)
	call	create_implies_item
	.loc 2 809 0
	leal	.LC638@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC669@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$394, (%esp)
	call	create_option_info
	.loc 2 810 0
	leal	.LC444@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$394, (%esp)
	call	create_implies_item
	.loc 2 811 0
	leal	.LC669@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$394, 4(%esp)
	movl	$394, (%esp)
	call	create_implies_item
	.loc 2 812 0
	movl	$0, 24(%esp)
	leal	.LC670@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$395, (%esp)
	call	create_option_info
	.loc 2 813 0
	leal	.LC671@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC672@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$396, (%esp)
	call	create_option_info
	.loc 2 814 0
	leal	.LC673@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC674@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$397, (%esp)
	call	create_option_info
	.loc 2 815 0
	leal	.LC675@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC676@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$398, (%esp)
	call	create_option_info
	.loc 2 816 0
	leal	.LC676@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$398, 4(%esp)
	movl	$398, (%esp)
	call	create_implies_item
	.loc 2 817 0
	leal	.LC677@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC678@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$399, (%esp)
	call	create_option_info
	.loc 2 818 0
	leal	.LC678@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$399, 4(%esp)
	movl	$399, (%esp)
	call	create_implies_item
	.loc 2 819 0
	movl	$0, 24(%esp)
	leal	.LC679@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$400, (%esp)
	call	create_option_info
	.loc 2 820 0
	leal	.LC679@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$400, 4(%esp)
	movl	$400, (%esp)
	call	create_implies_item
	.loc 2 821 0
	leal	.LC680@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC681@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$401, (%esp)
	call	create_option_info
	.loc 2 822 0
	leal	.LC682@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$401, 4(%esp)
	movl	$401, (%esp)
	call	create_implies_item
	.loc 2 823 0
	movl	$0, 24(%esp)
	leal	.LC683@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$402, (%esp)
	call	create_option_info
	.loc 2 824 0
	leal	.LC683@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$402, 4(%esp)
	movl	$402, (%esp)
	call	create_implies_item
	.loc 2 825 0
	movl	$0, 24(%esp)
	leal	.LC684@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$403, (%esp)
	call	create_option_info
	.loc 2 826 0
	leal	.LC684@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$403, 4(%esp)
	movl	$403, (%esp)
	call	create_implies_item
	.loc 2 827 0
	movl	$0, 24(%esp)
	leal	.LC685@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$404, (%esp)
	call	create_option_info
	.loc 2 828 0
	leal	.LC685@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$404, 4(%esp)
	movl	$404, (%esp)
	call	create_implies_item
	.loc 2 829 0
	movl	$0, 24(%esp)
	leal	.LC686@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$405, (%esp)
	call	create_option_info
	.loc 2 830 0
	leal	.LC686@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$405, 4(%esp)
	movl	$405, (%esp)
	call	create_implies_item
	.loc 2 831 0
	leal	.LC687@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC688@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$406, (%esp)
	call	create_option_info
	.loc 2 832 0
	leal	.LC687@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC689@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$407, (%esp)
	call	create_option_info
	.loc 2 833 0
	leal	.LC690@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC691@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$408, (%esp)
	call	create_option_info
	.loc 2 834 0
	leal	.LC691@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$408, 4(%esp)
	movl	$408, (%esp)
	call	create_implies_item
	.loc 2 835 0
	movl	$0, 24(%esp)
	leal	.LC692@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$409, (%esp)
	call	create_option_info
	.loc 2 836 0
	movl	$0, 24(%esp)
	leal	.LC693@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$410, (%esp)
	call	create_option_info
	.loc 2 837 0
	leal	.LC693@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$410, 4(%esp)
	movl	$410, (%esp)
	call	create_implies_item
	.loc 2 838 0
	movl	$0, 24(%esp)
	leal	.LC694@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$411, (%esp)
	call	create_option_info
	.loc 2 839 0
	movl	$0, 24(%esp)
	leal	.LC695@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$412, (%esp)
	call	create_option_info
	.loc 2 840 0
	movl	$0, 24(%esp)
	leal	.LC696@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$413, (%esp)
	call	create_option_info
	.loc 2 841 0
	movl	$0, 24(%esp)
	leal	.LC697@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$414, (%esp)
	call	create_option_info
	.loc 2 842 0
	leal	.LC697@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$414, 4(%esp)
	movl	$414, (%esp)
	call	create_implies_item
	.loc 2 843 0
	movl	$0, 24(%esp)
	leal	.LC698@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$415, (%esp)
	call	create_option_info
	.loc 2 844 0
	leal	.LC698@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$415, 4(%esp)
	movl	$415, (%esp)
	call	create_implies_item
	.loc 2 845 0
	movl	$0, 24(%esp)
	leal	.LC699@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$416, (%esp)
	call	create_option_info
	.loc 2 846 0
	movl	$0, 24(%esp)
	leal	.LC700@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$417, (%esp)
	call	create_option_info
	.loc 2 847 0
	movl	$0, 24(%esp)
	leal	.LC701@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$418, (%esp)
	call	create_option_info
	.loc 2 848 0
	movl	$0, 24(%esp)
	leal	.LC702@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$419, (%esp)
	call	create_option_info
	.loc 2 849 0
	movl	$0, 24(%esp)
	leal	.LC703@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$420, (%esp)
	call	create_option_info
	.loc 2 850 0
	movl	$0, 24(%esp)
	leal	.LC704@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$421, (%esp)
	call	create_option_info
	.loc 2 851 0
	movl	$0, 24(%esp)
	leal	.LC705@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$422, (%esp)
	call	create_option_info
	.loc 2 852 0
	movl	$0, 24(%esp)
	leal	.LC706@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$423, (%esp)
	call	create_option_info
	.loc 2 853 0
	movl	$0, 24(%esp)
	leal	.LC707@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$428, (%esp)
	call	create_option_info
	.loc 2 854 0
	movl	$0, 24(%esp)
	leal	.LC708@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$429, (%esp)
	call	create_option_info
	.loc 2 855 0
	leal	.LC708@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$429, 4(%esp)
	movl	$429, (%esp)
	call	create_implies_item
	.loc 2 856 0
	movl	$0, 24(%esp)
	leal	.LC709@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$430, (%esp)
	call	create_option_info
	.loc 2 857 0
	movl	$0, 24(%esp)
	leal	.LC710@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$431, (%esp)
	call	create_option_info
	.loc 2 858 0
	movl	$0, 24(%esp)
	leal	.LC711@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$432, (%esp)
	call	create_option_info
	.loc 2 859 0
	movl	$0, 24(%esp)
	leal	.LC712@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$433, (%esp)
	call	create_option_info
	.loc 2 860 0
	leal	.LC713@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$433, 4(%esp)
	movl	$433, (%esp)
	call	create_implies_item
	.loc 2 861 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC714@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$434, (%esp)
	call	create_option_info
	.loc 2 862 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$434, (%esp)
	call	create_implies_item
	.loc 2 863 0
	leal	.LC714@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$434, 4(%esp)
	movl	$434, (%esp)
	call	create_implies_item
	.loc 2 864 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC715@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$435, (%esp)
	call	create_option_info
	.loc 2 865 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$435, (%esp)
	call	create_implies_item
	.loc 2 866 0
	leal	.LC715@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$435, 4(%esp)
	movl	$435, (%esp)
	call	create_implies_item
	.loc 2 867 0
	movl	$0, 24(%esp)
	leal	.LC716@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$436, (%esp)
	call	create_option_info
	.loc 2 868 0
	leal	.LC717@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$436, (%esp)
	call	create_implies_item
	.loc 2 869 0
	leal	.LC716@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$436, 4(%esp)
	movl	$436, (%esp)
	call	create_implies_item
	.loc 2 870 0
	movl	$0, 24(%esp)
	leal	.LC718@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$438, (%esp)
	call	create_option_info
	.loc 2 871 0
	leal	.LC718@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$438, 4(%esp)
	movl	$438, (%esp)
	call	create_implies_item
	.loc 2 872 0
	movl	$0, 24(%esp)
	leal	.LC719@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$439, (%esp)
	call	create_option_info
	.loc 2 873 0
	movl	$0, 24(%esp)
	leal	.LC720@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$440, (%esp)
	call	create_option_info
	.loc 2 874 0
	leal	.LC720@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$440, 4(%esp)
	movl	$440, (%esp)
	call	create_implies_item
	.loc 2 875 0
	movl	$0, 24(%esp)
	leal	.LC721@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$441, (%esp)
	call	create_option_info
	.loc 2 876 0
	leal	.LC721@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$441, 4(%esp)
	movl	$441, (%esp)
	call	create_implies_item
	.loc 2 877 0
	movl	$0, 24(%esp)
	leal	.LC722@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$442, (%esp)
	call	create_option_info
	.loc 2 878 0
	leal	.LC722@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$442, 4(%esp)
	movl	$442, (%esp)
	call	create_implies_item
	.loc 2 879 0
	movl	$0, 24(%esp)
	leal	.LC723@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$443, (%esp)
	call	create_option_info
	.loc 2 880 0
	leal	.LC723@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$443, 4(%esp)
	movl	$443, (%esp)
	call	create_implies_item
	.loc 2 881 0
	leal	.LC724@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC725@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$444, (%esp)
	call	create_option_info
	.loc 2 882 0
	movl	$0, 24(%esp)
	leal	.LC726@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$445, (%esp)
	call	create_option_info
	.loc 2 883 0
	leal	.LC726@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$445, 4(%esp)
	movl	$445, (%esp)
	call	create_implies_item
	.loc 2 884 0
	leal	.LC727@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC728@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$446, (%esp)
	call	create_option_info
	.loc 2 885 0
	movl	$0, 24(%esp)
	leal	.LC729@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$447, (%esp)
	call	create_option_info
	.loc 2 886 0
	leal	.LC729@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$447, 4(%esp)
	movl	$447, (%esp)
	call	create_implies_item
	.loc 2 887 0
	movl	$0, 24(%esp)
	leal	.LC730@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$448, (%esp)
	call	create_option_info
	.loc 2 888 0
	movl	$0, 24(%esp)
	leal	.LC731@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$449, (%esp)
	call	create_option_info
	.loc 2 889 0
	leal	.LC731@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$449, 4(%esp)
	movl	$449, (%esp)
	call	create_implies_item
	.loc 2 890 0
	movl	$0, 24(%esp)
	leal	.LC732@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$450, (%esp)
	call	create_option_info
	.loc 2 891 0
	leal	.LC732@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$450, 4(%esp)
	movl	$450, (%esp)
	call	create_implies_item
	.loc 2 892 0
	movl	$0, 24(%esp)
	leal	.LC733@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$451, (%esp)
	call	create_option_info
	.loc 2 893 0
	leal	.LC733@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$451, 4(%esp)
	movl	$451, (%esp)
	call	create_implies_item
	.loc 2 894 0
	movl	$0, 24(%esp)
	leal	.LC734@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$452, (%esp)
	call	create_option_info
	.loc 2 895 0
	leal	.LC734@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$452, 4(%esp)
	movl	$452, (%esp)
	call	create_implies_item
	.loc 2 896 0
	movl	$0, 24(%esp)
	leal	.LC735@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$453, (%esp)
	call	create_option_info
	.loc 2 897 0
	leal	.LC735@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$453, 4(%esp)
	movl	$453, (%esp)
	call	create_implies_item
	.loc 2 898 0
	movl	$0, 24(%esp)
	leal	.LC736@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$454, (%esp)
	call	create_option_info
	.loc 2 899 0
	leal	.LC736@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$454, 4(%esp)
	movl	$454, (%esp)
	call	create_implies_item
	.loc 2 900 0
	movl	$0, 24(%esp)
	leal	.LC737@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$455, (%esp)
	call	create_option_info
	.loc 2 901 0
	leal	.LC737@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$455, 4(%esp)
	movl	$455, (%esp)
	call	create_implies_item
	.loc 2 902 0
	movl	$0, 24(%esp)
	leal	.LC738@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$456, (%esp)
	call	create_option_info
	.loc 2 903 0
	leal	.LC738@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$456, 4(%esp)
	movl	$456, (%esp)
	call	create_implies_item
	.loc 2 904 0
	movl	$0, 24(%esp)
	leal	.LC739@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$457, (%esp)
	call	create_option_info
	.loc 2 905 0
	leal	.LC739@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$457, 4(%esp)
	movl	$457, (%esp)
	call	create_implies_item
	.loc 2 906 0
	movl	$0, 24(%esp)
	leal	.LC740@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$458, (%esp)
	call	create_option_info
	.loc 2 907 0
	leal	.LC740@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$458, 4(%esp)
	movl	$458, (%esp)
	call	create_implies_item
	.loc 2 908 0
	movl	$0, 24(%esp)
	leal	.LC741@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$459, (%esp)
	call	create_option_info
	.loc 2 909 0
	leal	.LC741@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$459, 4(%esp)
	movl	$459, (%esp)
	call	create_implies_item
	.loc 2 910 0
	movl	$0, 24(%esp)
	leal	.LC742@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$460, (%esp)
	call	create_option_info
	.loc 2 911 0
	leal	.LC742@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$460, 4(%esp)
	movl	$460, (%esp)
	call	create_implies_item
	.loc 2 912 0
	movl	$0, 24(%esp)
	leal	.LC743@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$461, (%esp)
	call	create_option_info
	.loc 2 913 0
	leal	.LC743@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$461, 4(%esp)
	movl	$461, (%esp)
	call	create_implies_item
	.loc 2 914 0
	movl	$0, 24(%esp)
	leal	.LC744@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$462, (%esp)
	call	create_option_info
	.loc 2 915 0
	leal	.LC744@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$462, 4(%esp)
	movl	$462, (%esp)
	call	create_implies_item
	.loc 2 916 0
	leal	.LC745@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC746@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$463, (%esp)
	call	create_option_info
	.loc 2 917 0
	leal	.LC746@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$463, 4(%esp)
	movl	$463, (%esp)
	call	create_implies_item
	.loc 2 918 0
	movl	$0, 24(%esp)
	leal	.LC747@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$464, (%esp)
	call	create_option_info
	.loc 2 919 0
	leal	.LC747@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$464, 4(%esp)
	movl	$464, (%esp)
	call	create_implies_item
	.loc 2 920 0
	movl	$0, 24(%esp)
	leal	.LC748@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$465, (%esp)
	call	create_option_info
	.loc 2 921 0
	leal	.LC748@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$465, 4(%esp)
	movl	$465, (%esp)
	call	create_implies_item
	.loc 2 922 0
	movl	$0, 24(%esp)
	leal	.LC749@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$466, (%esp)
	call	create_option_info
	.loc 2 923 0
	leal	.LC749@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$466, 4(%esp)
	movl	$466, (%esp)
	call	create_implies_item
	.loc 2 924 0
	movl	$0, 24(%esp)
	leal	.LC750@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$467, (%esp)
	call	create_option_info
	.loc 2 925 0
	leal	.LC750@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$467, 4(%esp)
	movl	$467, (%esp)
	call	create_implies_item
	.loc 2 926 0
	movl	$0, 24(%esp)
	leal	.LC751@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$468, (%esp)
	call	create_option_info
	.loc 2 927 0
	leal	.LC751@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$468, 4(%esp)
	movl	$468, (%esp)
	call	create_implies_item
	.loc 2 928 0
	movl	$0, 24(%esp)
	leal	.LC752@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$469, (%esp)
	call	create_option_info
	.loc 2 929 0
	leal	.LC752@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$469, 4(%esp)
	movl	$469, (%esp)
	call	create_implies_item
	.loc 2 930 0
	movl	$0, 24(%esp)
	leal	.LC753@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$470, (%esp)
	call	create_option_info
	.loc 2 931 0
	leal	.LC753@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$470, 4(%esp)
	movl	$470, (%esp)
	call	create_implies_item
	.loc 2 932 0
	movl	$0, 24(%esp)
	leal	.LC754@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$471, (%esp)
	call	create_option_info
	.loc 2 933 0
	leal	.LC754@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$471, 4(%esp)
	movl	$471, (%esp)
	call	create_implies_item
	.loc 2 934 0
	movl	$0, 24(%esp)
	leal	.LC755@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$472, (%esp)
	call	create_option_info
	.loc 2 935 0
	leal	.LC755@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$472, 4(%esp)
	movl	$472, (%esp)
	call	create_implies_item
	.loc 2 936 0
	movl	$0, 24(%esp)
	leal	.LC756@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$473, (%esp)
	call	create_option_info
	.loc 2 937 0
	leal	.LC756@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$473, 4(%esp)
	movl	$473, (%esp)
	call	create_implies_item
	.loc 2 938 0
	leal	.LC757@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC758@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$474, (%esp)
	call	create_option_info
	.loc 2 939 0
	leal	.LC758@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$474, 4(%esp)
	movl	$474, (%esp)
	call	create_implies_item
	.loc 2 940 0
	leal	.LC759@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC760@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$475, (%esp)
	call	create_option_info
	.loc 2 941 0
	leal	.LC760@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$475, 4(%esp)
	movl	$475, (%esp)
	call	create_implies_item
	.loc 2 942 0
	movl	$0, 24(%esp)
	leal	.LC761@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$476, (%esp)
	call	create_option_info
	.loc 2 943 0
	leal	.LC761@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$476, 4(%esp)
	movl	$476, (%esp)
	call	create_implies_item
	.loc 2 944 0
	leal	.LC762@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC763@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$477, (%esp)
	call	create_option_info
	.loc 2 945 0
	leal	.LC763@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$477, 4(%esp)
	movl	$477, (%esp)
	call	create_implies_item
	.loc 2 946 0
	movl	$0, 24(%esp)
	leal	.LC764@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$478, (%esp)
	call	create_option_info
	.loc 2 947 0
	leal	.LC764@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$478, 4(%esp)
	movl	$478, (%esp)
	call	create_implies_item
	.loc 2 948 0
	movl	$0, 24(%esp)
	leal	.LC765@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$479, (%esp)
	call	create_option_info
	.loc 2 949 0
	leal	.LC765@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$479, 4(%esp)
	movl	$479, (%esp)
	call	create_implies_item
	.loc 2 950 0
	movl	$0, 24(%esp)
	leal	.LC766@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$480, (%esp)
	call	create_option_info
	.loc 2 951 0
	leal	.LC766@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$480, 4(%esp)
	movl	$480, (%esp)
	call	create_implies_item
	.loc 2 952 0
	leal	.LC767@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC768@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$481, (%esp)
	call	create_option_info
	.loc 2 953 0
	leal	.LC768@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$481, 4(%esp)
	movl	$481, (%esp)
	call	create_implies_item
	.loc 2 954 0
	movl	$0, 24(%esp)
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$482, (%esp)
	call	create_option_info
	.loc 2 955 0
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$482, 4(%esp)
	movl	$482, (%esp)
	call	create_implies_item
	.loc 2 956 0
	movl	$0, 24(%esp)
	leal	.LC770@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$483, (%esp)
	call	create_option_info
	.loc 2 957 0
	leal	.LC770@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$483, 4(%esp)
	movl	$483, (%esp)
	call	create_implies_item
	.loc 2 958 0
	movl	$0, 24(%esp)
	leal	.LC771@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$484, (%esp)
	call	create_option_info
	.loc 2 959 0
	leal	.LC771@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$484, 4(%esp)
	movl	$484, (%esp)
	call	create_implies_item
	.loc 2 960 0
	leal	.LC772@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC773@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$485, (%esp)
	call	create_option_info
	.loc 2 961 0
	leal	.LC773@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$485, 4(%esp)
	movl	$485, (%esp)
	call	create_implies_item
	.loc 2 962 0
	movl	$0, 24(%esp)
	leal	.LC774@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$487, (%esp)
	call	create_option_info
	.loc 2 963 0
	leal	.LC774@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$487, 4(%esp)
	movl	$487, (%esp)
	call	create_implies_item
	.loc 2 964 0
	movl	$0, 24(%esp)
	leal	.LC775@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$488, (%esp)
	call	create_option_info
	.loc 2 965 0
	movl	$0, 24(%esp)
	leal	.LC776@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$489, (%esp)
	call	create_option_info
	.loc 2 966 0
	leal	.LC777@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC778@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$490, (%esp)
	call	create_option_info
	.loc 2 967 0
	leal	.LC779@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC780@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$491, (%esp)
	call	create_option_info
	.loc 2 968 0
	leal	.LC781@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$491, 4(%esp)
	movl	$491, (%esp)
	call	create_implies_item
	.loc 2 969 0
	movl	$0, 24(%esp)
	leal	.LC782@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$492, (%esp)
	call	create_option_info
	.loc 2 970 0
	leal	.LC783@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC784@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$493, (%esp)
	call	create_option_info
	.loc 2 971 0
	leal	.LC785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$493, (%esp)
	call	create_implies_item
	.loc 2 972 0
	leal	.LC784@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$493, 4(%esp)
	movl	$493, (%esp)
	call	create_implies_item
	.loc 2 973 0
	leal	.LC786@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC787@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$494, (%esp)
	call	create_option_info
	.loc 2 974 0
	leal	.LC246@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$494, (%esp)
	call	create_implies_item
	.loc 2 975 0
	leal	.LC787@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$494, 4(%esp)
	movl	$494, (%esp)
	call	create_implies_item
	.loc 2 976 0
	leal	.LC788@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC789@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$495, (%esp)
	call	create_option_info
	.loc 2 977 0
	leal	.LC790@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$495, (%esp)
	call	create_implies_item
	.loc 2 978 0
	leal	.LC789@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$495, 4(%esp)
	movl	$495, (%esp)
	call	create_implies_item
	.loc 2 979 0
	movl	$0, 24(%esp)
	leal	.LC791@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$2, 4(%esp)
	movl	$0, 8(%esp)
	movl	$496, (%esp)
	call	create_option_info
	.loc 2 980 0
	leal	.LC792@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$746, 4(%esp)
	movl	$496, (%esp)
	call	create_implies_item
	.loc 2 981 0
	leal	.LC793@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$694, 4(%esp)
	movl	$496, (%esp)
	call	create_implies_item
	.loc 2 982 0
	movl	$0, 24(%esp)
	leal	.LC794@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$497, (%esp)
	call	create_option_info
	.loc 2 983 0
	leal	.LC794@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$497, 4(%esp)
	movl	$497, (%esp)
	call	create_implies_item
	.loc 2 984 0
	leal	.LC795@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC796@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$1011712, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$498, (%esp)
	call	create_option_info
	.loc 2 985 0
	leal	.LC797@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$498, 4(%esp)
	movl	$498, (%esp)
	call	create_implies_item
	.loc 2 986 0
	movl	$0, 24(%esp)
	leal	.LC798@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$499, (%esp)
	call	create_option_info
	.loc 2 987 0
	leal	.LC798@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$499, 4(%esp)
	movl	$499, (%esp)
	call	create_implies_item
	.loc 2 988 0
	movl	$0, 24(%esp)
	leal	.LC799@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$500, (%esp)
	call	create_option_info
	.loc 2 989 0
	leal	.LC800@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC801@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$501, (%esp)
	call	create_option_info
	.loc 2 990 0
	leal	.LC802@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC803@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$502, (%esp)
	call	create_option_info
	.loc 2 991 0
	leal	.LC803@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$502, 4(%esp)
	movl	$502, (%esp)
	call	create_implies_item
	.loc 2 992 0
	movl	$0, 24(%esp)
	leal	.LC804@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$503, (%esp)
	call	create_option_info
	.loc 2 993 0
	leal	.LC228@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$135, 4(%esp)
	movl	$503, (%esp)
	call	create_implies_item
	.loc 2 994 0
	movl	$0, 24(%esp)
	leal	.LC805@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$504, (%esp)
	call	create_option_info
	.loc 2 995 0
	leal	.LC806@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$504, (%esp)
	call	create_implies_item
	.loc 2 996 0
	leal	.LC807@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$504, (%esp)
	call	create_implies_item
	.loc 2 997 0
	leal	.LC808@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC809@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$505, (%esp)
	call	create_option_info
	.loc 2 998 0
	leal	.LC809@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$505, 4(%esp)
	movl	$505, (%esp)
	call	create_implies_item
	.loc 2 999 0
	movl	$0, 24(%esp)
	leal	.LC810@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$506, (%esp)
	call	create_option_info
	.loc 2 1000 0
	leal	.LC810@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$506, 4(%esp)
	movl	$506, (%esp)
	call	create_implies_item
	.loc 2 1001 0
	movl	$0, 24(%esp)
	leal	.LC811@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$32, 4(%esp)
	movl	$0, 8(%esp)
	movl	$507, (%esp)
	call	create_option_info
	.loc 2 1002 0
	leal	.LC812@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$507, 4(%esp)
	movl	$507, (%esp)
	call	create_implies_item
	.loc 2 1003 0
	movl	$0, 24(%esp)
	leal	.LC813@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$508, (%esp)
	call	create_option_info
	.loc 2 1004 0
	movl	$0, 24(%esp)
	leal	.LC814@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$16, 4(%esp)
	movl	$0, 8(%esp)
	movl	$509, (%esp)
	call	create_option_info
	.loc 2 1005 0
	leal	.LC815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$509, 4(%esp)
	movl	$509, (%esp)
	call	create_implies_item
	.loc 2 1006 0
	leal	.LC816@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC817@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$511, (%esp)
	call	create_option_info
	.loc 2 1007 0
	movl	$0, 24(%esp)
	leal	.LC818@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$512, (%esp)
	call	create_option_info
	.loc 2 1008 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$719, 4(%esp)
	movl	$512, (%esp)
	call	create_implies_item
	.loc 2 1009 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$512, (%esp)
	call	create_implies_item
	.loc 2 1010 0
	movl	$0, 24(%esp)
	leal	.LC819@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$513, (%esp)
	call	create_option_info
	.loc 2 1011 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$719, 4(%esp)
	movl	$513, (%esp)
	call	create_implies_item
	.loc 2 1012 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$513, (%esp)
	call	create_implies_item
	.loc 2 1013 0
	movl	$0, 24(%esp)
	leal	.LC820@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$514, (%esp)
	call	create_option_info
	.loc 2 1014 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$120, 4(%esp)
	movl	$514, (%esp)
	call	create_implies_item
	.loc 2 1015 0
	leal	.LC821@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC822@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$2, 4(%esp)
	movl	$0, 8(%esp)
	movl	$515, (%esp)
	call	create_option_info
	.loc 2 1016 0
	leal	.LC823@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$515, (%esp)
	call	create_implies_item
	.loc 2 1017 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$23, 4(%esp)
	movl	$515, (%esp)
	call	create_implies_item
	.loc 2 1018 0
	leal	.LC822@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$515, 4(%esp)
	movl	$515, (%esp)
	call	create_implies_item
	.loc 2 1019 0
	movl	$0, 24(%esp)
	leal	.LC824@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$516, (%esp)
	call	create_option_info
	.loc 2 1020 0
	leal	.LC825@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$754, 4(%esp)
	movl	$516, (%esp)
	call	create_implies_item
	.loc 2 1021 0
	leal	.LC826@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC827@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$1, 16(%esp)
	movl	$14, 4(%esp)
	movl	$0, 8(%esp)
	movl	$517, (%esp)
	call	create_option_info
	.loc 2 1022 0
	leal	.LC827@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$517, 4(%esp)
	movl	$517, (%esp)
	call	create_implies_item
	.loc 2 1023 0
	leal	.LC828@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC829@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$518, (%esp)
	call	create_option_info
	.loc 2 1024 0
	leal	.LC829@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$518, 4(%esp)
	movl	$518, (%esp)
	call	create_implies_item
	.loc 2 1025 0
	leal	.LC830@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC831@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$519, (%esp)
	call	create_option_info
	.loc 2 1026 0
	leal	.LC831@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$519, 4(%esp)
	movl	$519, (%esp)
	call	create_implies_item
	.loc 2 1027 0
	leal	.LC832@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC833@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$1, 16(%esp)
	movl	$14, 4(%esp)
	movl	$0, 8(%esp)
	movl	$520, (%esp)
	call	create_option_info
	.loc 2 1028 0
	leal	.LC833@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$520, 4(%esp)
	movl	$520, (%esp)
	call	create_implies_item
	.loc 2 1029 0
	leal	.LC834@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC835@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$1, 16(%esp)
	movl	$14, 4(%esp)
	movl	$0, 8(%esp)
	movl	$521, (%esp)
	call	create_option_info
	.loc 2 1030 0
	leal	.LC835@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$521, 4(%esp)
	movl	$521, (%esp)
	call	create_implies_item
	.loc 2 1031 0
	leal	.LC836@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC837@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$256, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$522, (%esp)
	call	create_option_info
	.loc 2 1032 0
	leal	.LC838@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$522, 4(%esp)
	movl	$522, (%esp)
	call	create_implies_item
	.loc 2 1033 0
	movl	$0, 24(%esp)
	leal	.LC839@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$523, (%esp)
	call	create_option_info
	.loc 2 1034 0
	leal	.LC840@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC841@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$524, (%esp)
	call	create_option_info
	.loc 2 1035 0
	leal	.LC841@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$524, 4(%esp)
	movl	$524, (%esp)
	call	create_implies_item
	.loc 2 1036 0
	leal	.LC842@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC843@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$525, (%esp)
	call	create_option_info
	.loc 2 1037 0
	leal	.LC843@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$525, 4(%esp)
	movl	$525, (%esp)
	call	create_implies_item
	.loc 2 1038 0
	leal	.LC844@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC845@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$526, (%esp)
	call	create_option_info
	.loc 2 1039 0
	leal	.LC845@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$526, 4(%esp)
	movl	$526, (%esp)
	call	create_implies_item
	.loc 2 1040 0
	leal	.LC846@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC847@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$527, (%esp)
	call	create_option_info
	.loc 2 1041 0
	leal	.LC847@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$527, 4(%esp)
	movl	$527, (%esp)
	call	create_implies_item
	.loc 2 1042 0
	leal	.LC848@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC849@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$528, (%esp)
	call	create_option_info
	.loc 2 1043 0
	leal	.LC849@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$528, 4(%esp)
	movl	$528, (%esp)
	call	create_implies_item
	.loc 2 1044 0
	leal	.LC850@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC851@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$529, (%esp)
	call	create_option_info
	.loc 2 1045 0
	leal	.LC851@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$529, 4(%esp)
	movl	$529, (%esp)
	call	create_implies_item
	.loc 2 1046 0
	leal	.LC852@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC853@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$530, (%esp)
	call	create_option_info
	.loc 2 1047 0
	leal	.LC853@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$530, 4(%esp)
	movl	$530, (%esp)
	call	create_implies_item
	.loc 2 1048 0
	leal	.LC854@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC855@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$531, (%esp)
	call	create_option_info
	.loc 2 1049 0
	leal	.LC855@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$531, 4(%esp)
	movl	$531, (%esp)
	call	create_implies_item
	.loc 2 1050 0
	leal	.LC856@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC857@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$532, (%esp)
	call	create_option_info
	.loc 2 1051 0
	leal	.LC857@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$532, 4(%esp)
	movl	$532, (%esp)
	call	create_implies_item
	.loc 2 1052 0
	leal	.LC858@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC859@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$533, (%esp)
	call	create_option_info
	.loc 2 1053 0
	leal	.LC859@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$533, 4(%esp)
	movl	$533, (%esp)
	call	create_implies_item
	.loc 2 1054 0
	leal	.LC860@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC861@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$534, (%esp)
	call	create_option_info
	.loc 2 1055 0
	leal	.LC862@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$676, 4(%esp)
	movl	$534, (%esp)
	call	create_implies_item
	.loc 2 1056 0
	leal	.LC863@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC864@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$535, (%esp)
	call	create_option_info
	.loc 2 1057 0
	leal	.LC864@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$535, 4(%esp)
	movl	$535, (%esp)
	call	create_implies_item
	.loc 2 1058 0
	leal	.LC865@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC866@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$536, (%esp)
	call	create_option_info
	.loc 2 1059 0
	leal	.LC866@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$536, 4(%esp)
	movl	$536, (%esp)
	call	create_implies_item
	.loc 2 1060 0
	leal	.LC867@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC868@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$537, (%esp)
	call	create_option_info
	.loc 2 1061 0
	leal	.LC868@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$537, 4(%esp)
	movl	$537, (%esp)
	call	create_implies_item
	.loc 2 1062 0
	leal	.LC869@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC870@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$538, (%esp)
	call	create_option_info
	.loc 2 1063 0
	leal	.LC870@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$538, 4(%esp)
	movl	$538, (%esp)
	call	create_implies_item
	.loc 2 1064 0
	leal	.LC871@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC872@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$539, (%esp)
	call	create_option_info
	.loc 2 1065 0
	leal	.LC872@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$539, 4(%esp)
	movl	$539, (%esp)
	call	create_implies_item
	.loc 2 1066 0
	leal	.LC873@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC874@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$540, (%esp)
	call	create_option_info
	.loc 2 1067 0
	leal	.LC874@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$540, 4(%esp)
	movl	$540, (%esp)
	call	create_implies_item
	.loc 2 1068 0
	leal	.LC875@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC876@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$541, (%esp)
	call	create_option_info
	.loc 2 1069 0
	leal	.LC876@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$541, 4(%esp)
	movl	$541, (%esp)
	call	create_implies_item
	.loc 2 1070 0
	leal	.LC877@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC878@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$542, (%esp)
	call	create_option_info
	.loc 2 1071 0
	leal	.LC878@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$542, 4(%esp)
	movl	$542, (%esp)
	call	create_implies_item
	.loc 2 1072 0
	leal	.LC879@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC880@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$543, (%esp)
	call	create_option_info
	.loc 2 1073 0
	leal	.LC880@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$543, 4(%esp)
	movl	$543, (%esp)
	call	create_implies_item
	.loc 2 1074 0
	leal	.LC881@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC882@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$544, (%esp)
	call	create_option_info
	.loc 2 1075 0
	leal	.LC882@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$544, 4(%esp)
	movl	$544, (%esp)
	call	create_implies_item
	.loc 2 1076 0
	leal	.LC883@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC884@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$545, (%esp)
	call	create_option_info
	.loc 2 1077 0
	leal	.LC884@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$545, 4(%esp)
	movl	$545, (%esp)
	call	create_implies_item
	.loc 2 1078 0
	leal	.LC885@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC886@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$546, (%esp)
	call	create_option_info
	.loc 2 1079 0
	leal	.LC886@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$546, 4(%esp)
	movl	$546, (%esp)
	call	create_implies_item
	.loc 2 1080 0
	leal	.LC887@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC888@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$547, (%esp)
	call	create_option_info
	.loc 2 1081 0
	leal	.LC888@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$547, 4(%esp)
	movl	$547, (%esp)
	call	create_implies_item
	.loc 2 1082 0
	leal	.LC889@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC890@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$548, (%esp)
	call	create_option_info
	.loc 2 1083 0
	leal	.LC890@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$548, 4(%esp)
	movl	$548, (%esp)
	call	create_implies_item
	.loc 2 1084 0
	leal	.LC891@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC892@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$549, (%esp)
	call	create_option_info
	.loc 2 1085 0
	leal	.LC892@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$549, 4(%esp)
	movl	$549, (%esp)
	call	create_implies_item
	.loc 2 1086 0
	leal	.LC893@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC894@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$550, (%esp)
	call	create_option_info
	.loc 2 1087 0
	leal	.LC894@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$550, 4(%esp)
	movl	$550, (%esp)
	call	create_implies_item
	.loc 2 1088 0
	leal	.LC895@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC896@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$551, (%esp)
	call	create_option_info
	.loc 2 1089 0
	leal	.LC896@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$551, 4(%esp)
	movl	$551, (%esp)
	call	create_implies_item
	.loc 2 1090 0
	leal	.LC897@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC898@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$552, (%esp)
	call	create_option_info
	.loc 2 1091 0
	leal	.LC898@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$552, 4(%esp)
	movl	$552, (%esp)
	call	create_implies_item
	.loc 2 1092 0
	leal	.LC899@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC900@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$553, (%esp)
	call	create_option_info
	.loc 2 1093 0
	leal	.LC900@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$553, 4(%esp)
	movl	$553, (%esp)
	call	create_implies_item
	.loc 2 1094 0
	leal	.LC901@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC902@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$554, (%esp)
	call	create_option_info
	.loc 2 1095 0
	leal	.LC902@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$554, 4(%esp)
	movl	$554, (%esp)
	call	create_implies_item
	.loc 2 1096 0
	leal	.LC903@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC904@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$555, (%esp)
	call	create_option_info
	.loc 2 1097 0
	leal	.LC904@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$555, 4(%esp)
	movl	$555, (%esp)
	call	create_implies_item
	.loc 2 1098 0
	leal	.LC905@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC906@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$556, (%esp)
	call	create_option_info
	.loc 2 1099 0
	leal	.LC907@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$556, 4(%esp)
	movl	$556, (%esp)
	call	create_implies_item
	.loc 2 1100 0
	leal	.LC908@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC909@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$557, (%esp)
	call	create_option_info
	.loc 2 1101 0
	leal	.LC909@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$557, 4(%esp)
	movl	$557, (%esp)
	call	create_implies_item
	.loc 2 1102 0
	leal	.LC910@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC911@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$558, (%esp)
	call	create_option_info
	.loc 2 1103 0
	leal	.LC911@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$558, 4(%esp)
	movl	$558, (%esp)
	call	create_implies_item
	.loc 2 1104 0
	leal	.LC912@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC913@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$559, (%esp)
	call	create_option_info
	.loc 2 1105 0
	leal	.LC913@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$559, 4(%esp)
	movl	$559, (%esp)
	call	create_implies_item
	.loc 2 1106 0
	leal	.LC914@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC915@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$560, (%esp)
	call	create_option_info
	.loc 2 1107 0
	leal	.LC915@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$560, 4(%esp)
	movl	$560, (%esp)
	call	create_implies_item
	.loc 2 1108 0
	leal	.LC916@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC917@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$561, (%esp)
	call	create_option_info
	.loc 2 1109 0
	leal	.LC917@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$561, 4(%esp)
	movl	$561, (%esp)
	call	create_implies_item
	.loc 2 1110 0
	leal	.LC918@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC919@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$562, (%esp)
	call	create_option_info
	.loc 2 1111 0
	leal	.LC919@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$562, 4(%esp)
	movl	$562, (%esp)
	call	create_implies_item
	.loc 2 1112 0
	leal	.LC920@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC921@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$563, (%esp)
	call	create_option_info
	.loc 2 1113 0
	leal	.LC921@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$563, 4(%esp)
	movl	$563, (%esp)
	call	create_implies_item
	.loc 2 1114 0
	leal	.LC922@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC923@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$564, (%esp)
	call	create_option_info
	.loc 2 1115 0
	leal	.LC923@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$564, 4(%esp)
	movl	$564, (%esp)
	call	create_implies_item
	.loc 2 1116 0
	leal	.LC924@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC925@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$565, (%esp)
	call	create_option_info
	.loc 2 1117 0
	leal	.LC925@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$565, 4(%esp)
	movl	$565, (%esp)
	call	create_implies_item
	.loc 2 1118 0
	leal	.LC926@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC927@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$566, (%esp)
	call	create_option_info
	.loc 2 1119 0
	leal	.LC927@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$566, 4(%esp)
	movl	$566, (%esp)
	call	create_implies_item
	.loc 2 1120 0
	leal	.LC928@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC929@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$567, (%esp)
	call	create_option_info
	.loc 2 1121 0
	leal	.LC929@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$567, 4(%esp)
	movl	$567, (%esp)
	call	create_implies_item
	.loc 2 1122 0
	leal	.LC930@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC931@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$568, (%esp)
	call	create_option_info
	.loc 2 1123 0
	leal	.LC931@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$568, 4(%esp)
	movl	$568, (%esp)
	call	create_implies_item
	.loc 2 1124 0
	leal	.LC932@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC933@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$569, (%esp)
	call	create_option_info
	.loc 2 1125 0
	leal	.LC933@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$569, 4(%esp)
	movl	$569, (%esp)
	call	create_implies_item
	.loc 2 1126 0
	leal	.LC934@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC935@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$570, (%esp)
	call	create_option_info
	.loc 2 1127 0
	leal	.LC935@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$570, 4(%esp)
	movl	$570, (%esp)
	call	create_implies_item
	.loc 2 1128 0
	leal	.LC936@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC937@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$571, (%esp)
	call	create_option_info
	.loc 2 1129 0
	leal	.LC937@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$571, 4(%esp)
	movl	$571, (%esp)
	call	create_implies_item
	.loc 2 1130 0
	leal	.LC938@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC939@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$572, (%esp)
	call	create_option_info
	.loc 2 1131 0
	leal	.LC939@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$572, 4(%esp)
	movl	$572, (%esp)
	call	create_implies_item
	.loc 2 1132 0
	leal	.LC940@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC941@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$573, (%esp)
	call	create_option_info
	.loc 2 1133 0
	leal	.LC941@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$573, 4(%esp)
	movl	$573, (%esp)
	call	create_implies_item
	.loc 2 1134 0
	leal	.LC942@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC943@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$574, (%esp)
	call	create_option_info
	.loc 2 1135 0
	leal	.LC943@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$574, 4(%esp)
	movl	$574, (%esp)
	call	create_implies_item
	.loc 2 1136 0
	leal	.LC944@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC945@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$575, (%esp)
	call	create_option_info
	.loc 2 1137 0
	leal	.LC945@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$575, 4(%esp)
	movl	$575, (%esp)
	call	create_implies_item
	.loc 2 1138 0
	leal	.LC946@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC947@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$576, (%esp)
	call	create_option_info
	.loc 2 1139 0
	leal	.LC947@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$576, 4(%esp)
	movl	$576, (%esp)
	call	create_implies_item
	.loc 2 1140 0
	leal	.LC948@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC949@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$577, (%esp)
	call	create_option_info
	.loc 2 1141 0
	leal	.LC949@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$577, 4(%esp)
	movl	$577, (%esp)
	call	create_implies_item
	.loc 2 1142 0
	leal	.LC950@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC951@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$578, (%esp)
	call	create_option_info
	.loc 2 1143 0
	leal	.LC951@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$578, 4(%esp)
	movl	$578, (%esp)
	call	create_implies_item
	.loc 2 1144 0
	leal	.LC952@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC953@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$579, (%esp)
	call	create_option_info
	.loc 2 1145 0
	leal	.LC953@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$579, 4(%esp)
	movl	$579, (%esp)
	call	create_implies_item
	.loc 2 1146 0
	leal	.LC954@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC955@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$580, (%esp)
	call	create_option_info
	.loc 2 1147 0
	leal	.LC955@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$580, 4(%esp)
	movl	$580, (%esp)
	call	create_implies_item
	.loc 2 1148 0
	leal	.LC956@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC957@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$581, (%esp)
	call	create_option_info
	.loc 2 1149 0
	leal	.LC957@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$581, 4(%esp)
	movl	$581, (%esp)
	call	create_implies_item
	.loc 2 1150 0
	leal	.LC958@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC959@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$582, (%esp)
	call	create_option_info
	.loc 2 1151 0
	leal	.LC959@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$582, 4(%esp)
	movl	$582, (%esp)
	call	create_implies_item
	.loc 2 1152 0
	leal	.LC960@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC961@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$583, (%esp)
	call	create_option_info
	.loc 2 1153 0
	leal	.LC961@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$583, 4(%esp)
	movl	$583, (%esp)
	call	create_implies_item
	.loc 2 1154 0
	leal	.LC962@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC963@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$584, (%esp)
	call	create_option_info
	.loc 2 1155 0
	leal	.LC963@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$584, 4(%esp)
	movl	$584, (%esp)
	call	create_implies_item
	.loc 2 1156 0
	leal	.LC964@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC965@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$585, (%esp)
	call	create_option_info
	.loc 2 1157 0
	leal	.LC965@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$585, 4(%esp)
	movl	$585, (%esp)
	call	create_implies_item
	.loc 2 1158 0
	leal	.LC966@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC967@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$586, (%esp)
	call	create_option_info
	.loc 2 1159 0
	leal	.LC967@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$586, 4(%esp)
	movl	$586, (%esp)
	call	create_implies_item
	.loc 2 1160 0
	leal	.LC968@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC969@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$587, (%esp)
	call	create_option_info
	.loc 2 1161 0
	leal	.LC969@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$587, 4(%esp)
	movl	$587, (%esp)
	call	create_implies_item
	.loc 2 1162 0
	leal	.LC970@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC971@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$588, (%esp)
	call	create_option_info
	.loc 2 1163 0
	leal	.LC971@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$588, 4(%esp)
	movl	$588, (%esp)
	call	create_implies_item
	.loc 2 1164 0
	leal	.LC972@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC973@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$589, (%esp)
	call	create_option_info
	.loc 2 1165 0
	leal	.LC973@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$589, 4(%esp)
	movl	$589, (%esp)
	call	create_implies_item
	.loc 2 1166 0
	leal	.LC974@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC975@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$590, (%esp)
	call	create_option_info
	.loc 2 1167 0
	leal	.LC975@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$590, 4(%esp)
	movl	$590, (%esp)
	call	create_implies_item
	.loc 2 1168 0
	leal	.LC976@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC977@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$591, (%esp)
	call	create_option_info
	.loc 2 1169 0
	leal	.LC977@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$591, 4(%esp)
	movl	$591, (%esp)
	call	create_implies_item
	.loc 2 1170 0
	leal	.LC978@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC979@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$592, (%esp)
	call	create_option_info
	.loc 2 1171 0
	leal	.LC979@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$592, 4(%esp)
	movl	$592, (%esp)
	call	create_implies_item
	.loc 2 1172 0
	leal	.LC980@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC981@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$593, (%esp)
	call	create_option_info
	.loc 2 1173 0
	leal	.LC981@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$593, 4(%esp)
	movl	$593, (%esp)
	call	create_implies_item
	.loc 2 1174 0
	leal	.LC982@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC983@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$594, (%esp)
	call	create_option_info
	.loc 2 1175 0
	leal	.LC983@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$594, 4(%esp)
	movl	$594, (%esp)
	call	create_implies_item
	.loc 2 1176 0
	leal	.LC984@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC985@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$595, (%esp)
	call	create_option_info
	.loc 2 1177 0
	leal	.LC985@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$595, 4(%esp)
	movl	$595, (%esp)
	call	create_implies_item
	.loc 2 1178 0
	leal	.LC986@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC987@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$596, (%esp)
	call	create_option_info
	.loc 2 1179 0
	leal	.LC987@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$596, 4(%esp)
	movl	$596, (%esp)
	call	create_implies_item
	.loc 2 1180 0
	leal	.LC988@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC989@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$597, (%esp)
	call	create_option_info
	.loc 2 1181 0
	leal	.LC989@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$597, 4(%esp)
	movl	$597, (%esp)
	call	create_implies_item
	.loc 2 1182 0
	leal	.LC990@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC991@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$598, (%esp)
	call	create_option_info
	.loc 2 1183 0
	leal	.LC991@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$598, 4(%esp)
	movl	$598, (%esp)
	call	create_implies_item
	.loc 2 1184 0
	leal	.LC992@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC993@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$599, (%esp)
	call	create_option_info
	.loc 2 1185 0
	leal	.LC993@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$599, 4(%esp)
	movl	$599, (%esp)
	call	create_implies_item
	.loc 2 1186 0
	leal	.LC994@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC995@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$600, (%esp)
	call	create_option_info
	.loc 2 1187 0
	leal	.LC995@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$600, 4(%esp)
	movl	$600, (%esp)
	call	create_implies_item
	.loc 2 1188 0
	leal	.LC996@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC997@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$601, (%esp)
	call	create_option_info
	.loc 2 1189 0
	leal	.LC997@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$601, 4(%esp)
	movl	$601, (%esp)
	call	create_implies_item
	.loc 2 1190 0
	leal	.LC998@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC999@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$602, (%esp)
	call	create_option_info
	.loc 2 1191 0
	leal	.LC999@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$602, 4(%esp)
	movl	$602, (%esp)
	call	create_implies_item
	.loc 2 1192 0
	leal	.LC1000@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1001@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$603, (%esp)
	call	create_option_info
	.loc 2 1193 0
	leal	.LC1001@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$603, 4(%esp)
	movl	$603, (%esp)
	call	create_implies_item
	.loc 2 1194 0
	leal	.LC1002@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1003@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$604, (%esp)
	call	create_option_info
	.loc 2 1195 0
	leal	.LC1003@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$604, 4(%esp)
	movl	$604, (%esp)
	call	create_implies_item
	.loc 2 1196 0
	leal	.LC1004@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1005@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$605, (%esp)
	call	create_option_info
	.loc 2 1197 0
	leal	.LC1006@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$605, 4(%esp)
	movl	$605, (%esp)
	call	create_implies_item
	.loc 2 1198 0
	movl	$0, 24(%esp)
	leal	.LC1007@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$606, (%esp)
	call	create_option_info
	.loc 2 1199 0
	leal	.LC1008@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1009@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$607, (%esp)
	call	create_option_info
	.loc 2 1200 0
	leal	.LC1009@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$607, 4(%esp)
	movl	$607, (%esp)
	call	create_implies_item
	.loc 2 1201 0
	leal	.LC1010@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1011@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$608, (%esp)
	call	create_option_info
	.loc 2 1202 0
	leal	.LC1011@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$608, 4(%esp)
	movl	$608, (%esp)
	call	create_implies_item
	.loc 2 1203 0
	leal	.LC1012@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1013@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$609, (%esp)
	call	create_option_info
	.loc 2 1204 0
	leal	.LC1013@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$609, 4(%esp)
	movl	$609, (%esp)
	call	create_implies_item
	.loc 2 1205 0
	leal	.LC1014@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1015@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$610, (%esp)
	call	create_option_info
	.loc 2 1206 0
	leal	.LC1015@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$610, 4(%esp)
	movl	$610, (%esp)
	call	create_implies_item
	.loc 2 1207 0
	leal	.LC1016@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1017@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$611, (%esp)
	call	create_option_info
	.loc 2 1208 0
	leal	.LC1017@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$611, 4(%esp)
	movl	$611, (%esp)
	call	create_implies_item
	.loc 2 1209 0
	leal	.LC1018@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1019@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$612, (%esp)
	call	create_option_info
	.loc 2 1210 0
	leal	.LC1019@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$612, 4(%esp)
	movl	$612, (%esp)
	call	create_implies_item
	.loc 2 1211 0
	leal	.LC1020@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1021@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$613, (%esp)
	call	create_option_info
	.loc 2 1212 0
	leal	.LC1021@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$613, 4(%esp)
	movl	$613, (%esp)
	call	create_implies_item
	.loc 2 1213 0
	leal	.LC1022@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1023@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$614, (%esp)
	call	create_option_info
	.loc 2 1214 0
	leal	.LC1023@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$614, 4(%esp)
	movl	$614, (%esp)
	call	create_implies_item
	.loc 2 1215 0
	leal	.LC1024@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1025@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$615, (%esp)
	call	create_option_info
	.loc 2 1216 0
	leal	.LC1025@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$615, 4(%esp)
	movl	$615, (%esp)
	call	create_implies_item
	.loc 2 1217 0
	leal	.LC1026@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1027@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$616, (%esp)
	call	create_option_info
	.loc 2 1218 0
	leal	.LC1027@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$616, 4(%esp)
	movl	$616, (%esp)
	call	create_implies_item
	.loc 2 1219 0
	leal	.LC1028@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1029@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$617, (%esp)
	call	create_option_info
	.loc 2 1220 0
	leal	.LC1029@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$617, 4(%esp)
	movl	$617, (%esp)
	call	create_implies_item
	.loc 2 1221 0
	leal	.LC1030@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1031@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$618, (%esp)
	call	create_option_info
	.loc 2 1222 0
	leal	.LC1031@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$618, 4(%esp)
	movl	$618, (%esp)
	call	create_implies_item
	.loc 2 1223 0
	leal	.LC1032@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1033@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$15, 4(%esp)
	movl	$0, 8(%esp)
	movl	$619, (%esp)
	call	create_option_info
	.loc 2 1224 0
	leal	.LC1033@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$619, 4(%esp)
	movl	$619, (%esp)
	call	create_implies_item
	.loc 2 1225 0
	leal	.LC1034@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1035@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$620, (%esp)
	call	create_option_info
	.loc 2 1226 0
	leal	.LC1035@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$620, 4(%esp)
	movl	$620, (%esp)
	call	create_implies_item
	.loc 2 1227 0
	leal	.LC1036@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1037@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$621, (%esp)
	call	create_option_info
	.loc 2 1228 0
	leal	.LC1037@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$621, 4(%esp)
	movl	$621, (%esp)
	call	create_implies_item
	.loc 2 1229 0
	leal	.LC1038@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1039@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$622, (%esp)
	call	create_option_info
	.loc 2 1230 0
	leal	.LC1039@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$622, 4(%esp)
	movl	$622, (%esp)
	call	create_implies_item
	.loc 2 1231 0
	leal	.LC1040@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1041@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$623, (%esp)
	call	create_option_info
	.loc 2 1232 0
	leal	.LC1041@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$623, 4(%esp)
	movl	$623, (%esp)
	call	create_implies_item
	.loc 2 1233 0
	leal	.LC1042@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1043@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$14, 4(%esp)
	movl	$0, 8(%esp)
	movl	$624, (%esp)
	call	create_option_info
	.loc 2 1234 0
	leal	.LC1043@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$624, 4(%esp)
	movl	$624, (%esp)
	call	create_implies_item
	.loc 2 1235 0
	leal	.LC1044@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1045@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$625, (%esp)
	call	create_option_info
	.loc 2 1236 0
	leal	.LC1045@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$625, 4(%esp)
	movl	$625, (%esp)
	call	create_implies_item
	.loc 2 1237 0
	leal	.LC1046@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1047@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$626, (%esp)
	call	create_option_info
	.loc 2 1238 0
	leal	.LC1047@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$626, 4(%esp)
	movl	$626, (%esp)
	call	create_implies_item
	.loc 2 1239 0
	leal	.LC1048@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1049@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$627, (%esp)
	call	create_option_info
	.loc 2 1240 0
	leal	.LC1049@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$627, 4(%esp)
	movl	$627, (%esp)
	call	create_implies_item
	.loc 2 1241 0
	leal	.LC1048@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1050@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$628, (%esp)
	call	create_option_info
	.loc 2 1242 0
	leal	.LC1050@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$628, 4(%esp)
	movl	$628, (%esp)
	call	create_implies_item
	.loc 2 1243 0
	leal	.LC1051@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1052@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$629, (%esp)
	call	create_option_info
	.loc 2 1244 0
	leal	.LC1052@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$629, 4(%esp)
	movl	$629, (%esp)
	call	create_implies_item
	.loc 2 1245 0
	leal	.LC1053@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1054@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$630, (%esp)
	call	create_option_info
	.loc 2 1246 0
	leal	.LC1054@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$630, 4(%esp)
	movl	$630, (%esp)
	call	create_implies_item
	.loc 2 1247 0
	leal	.LC1055@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1056@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$631, (%esp)
	call	create_option_info
	.loc 2 1248 0
	leal	.LC1056@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$631, 4(%esp)
	movl	$631, (%esp)
	call	create_implies_item
	.loc 2 1249 0
	leal	.LC1057@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1058@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$632, (%esp)
	call	create_option_info
	.loc 2 1250 0
	leal	.LC1058@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$632, 4(%esp)
	movl	$632, (%esp)
	call	create_implies_item
	.loc 2 1251 0
	leal	.LC1059@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1060@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$633, (%esp)
	call	create_option_info
	.loc 2 1252 0
	leal	.LC1060@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$633, 4(%esp)
	movl	$633, (%esp)
	call	create_implies_item
	.loc 2 1253 0
	leal	.LC1061@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1062@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$634, (%esp)
	call	create_option_info
	.loc 2 1254 0
	leal	.LC1062@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$634, 4(%esp)
	movl	$634, (%esp)
	call	create_implies_item
	.loc 2 1255 0
	leal	.LC1063@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1064@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$635, (%esp)
	call	create_option_info
	.loc 2 1256 0
	leal	.LC1064@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$635, 4(%esp)
	movl	$635, (%esp)
	call	create_implies_item
	.loc 2 1257 0
	leal	.LC1065@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1066@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$636, (%esp)
	call	create_option_info
	.loc 2 1258 0
	leal	.LC1066@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$636, 4(%esp)
	movl	$636, (%esp)
	call	create_implies_item
	.loc 2 1259 0
	leal	.LC1067@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1068@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$637, (%esp)
	call	create_option_info
	.loc 2 1260 0
	leal	.LC1068@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$637, 4(%esp)
	movl	$637, (%esp)
	call	create_implies_item
	.loc 2 1261 0
	leal	.LC1069@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1070@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$638, (%esp)
	call	create_option_info
	.loc 2 1262 0
	leal	.LC1070@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$638, 4(%esp)
	movl	$638, (%esp)
	call	create_implies_item
	.loc 2 1263 0
	leal	.LC1071@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1072@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$639, (%esp)
	call	create_option_info
	.loc 2 1264 0
	leal	.LC1072@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$639, 4(%esp)
	movl	$639, (%esp)
	call	create_implies_item
	.loc 2 1265 0
	leal	.LC1073@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1074@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$640, (%esp)
	call	create_option_info
	.loc 2 1266 0
	leal	.LC1074@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$640, 4(%esp)
	movl	$640, (%esp)
	call	create_implies_item
	.loc 2 1267 0
	leal	.LC1075@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1076@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$641, (%esp)
	call	create_option_info
	.loc 2 1268 0
	leal	.LC1076@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$641, 4(%esp)
	movl	$641, (%esp)
	call	create_implies_item
	.loc 2 1269 0
	leal	.LC1077@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1078@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$642, (%esp)
	call	create_option_info
	.loc 2 1270 0
	leal	.LC1078@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$642, 4(%esp)
	movl	$642, (%esp)
	call	create_implies_item
	.loc 2 1271 0
	leal	.LC1079@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1080@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$643, (%esp)
	call	create_option_info
	.loc 2 1272 0
	leal	.LC1081@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$643, 4(%esp)
	movl	$643, (%esp)
	call	create_implies_item
	.loc 2 1273 0
	leal	.LC1082@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$644, (%esp)
	call	create_option_info
	.loc 2 1274 0
	leal	.LC1083@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$644, 4(%esp)
	movl	$644, (%esp)
	call	create_implies_item
	.loc 2 1275 0
	movl	$0, 24(%esp)
	leal	.LC1084@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$645, (%esp)
	call	create_option_info
	.loc 2 1276 0
	leal	.LC1085@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1086@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$646, (%esp)
	call	create_option_info
	.loc 2 1277 0
	leal	.LC1086@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$646, 4(%esp)
	movl	$646, (%esp)
	call	create_implies_item
	.loc 2 1278 0
	leal	.LC1087@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1088@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$647, (%esp)
	call	create_option_info
	.loc 2 1279 0
	leal	.LC1088@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$647, 4(%esp)
	movl	$647, (%esp)
	call	create_implies_item
	.loc 2 1280 0
	leal	.LC1089@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1090@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$648, (%esp)
	call	create_option_info
	.loc 2 1281 0
	leal	.LC1090@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$648, 4(%esp)
	movl	$648, (%esp)
	call	create_implies_item
	.loc 2 1282 0
	leal	.LC1091@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1092@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$649, (%esp)
	call	create_option_info
	.loc 2 1283 0
	leal	.LC1092@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$649, 4(%esp)
	movl	$649, (%esp)
	call	create_implies_item
	.loc 2 1284 0
	leal	.LC1093@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1094@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$650, (%esp)
	call	create_option_info
	.loc 2 1285 0
	leal	.LC1094@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$650, 4(%esp)
	movl	$650, (%esp)
	call	create_implies_item
	.loc 2 1286 0
	leal	.LC1095@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1096@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$651, (%esp)
	call	create_option_info
	.loc 2 1287 0
	leal	.LC1097@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$652, 4(%esp)
	movl	$651, (%esp)
	call	create_implies_item
	.loc 2 1288 0
	leal	.LC1098@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$653, 4(%esp)
	movl	$651, (%esp)
	call	create_implies_item
	.loc 2 1289 0
	leal	.LC1099@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$654, 4(%esp)
	movl	$651, (%esp)
	call	create_implies_item
	.loc 2 1290 0
	leal	.LC1100@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1097@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$652, (%esp)
	call	create_option_info
	.loc 2 1291 0
	leal	.LC1097@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$652, 4(%esp)
	movl	$652, (%esp)
	call	create_implies_item
	.loc 2 1292 0
	leal	.LC1101@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1098@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$653, (%esp)
	call	create_option_info
	.loc 2 1293 0
	leal	.LC1098@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$653, 4(%esp)
	movl	$653, (%esp)
	call	create_implies_item
	.loc 2 1294 0
	leal	.LC1102@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1099@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$654, (%esp)
	call	create_option_info
	.loc 2 1295 0
	leal	.LC1099@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$654, 4(%esp)
	movl	$654, (%esp)
	call	create_implies_item
	.loc 2 1296 0
	leal	.LC1103@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1104@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$655, (%esp)
	call	create_option_info
	.loc 2 1297 0
	leal	.LC1104@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$655, 4(%esp)
	movl	$655, (%esp)
	call	create_implies_item
	.loc 2 1298 0
	leal	.LC1105@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1106@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$656, (%esp)
	call	create_option_info
	.loc 2 1299 0
	leal	.LC1106@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$656, 4(%esp)
	movl	$656, (%esp)
	call	create_implies_item
	.loc 2 1300 0
	leal	.LC1107@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1108@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$657, (%esp)
	call	create_option_info
	.loc 2 1301 0
	leal	.LC1108@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$657, 4(%esp)
	movl	$657, (%esp)
	call	create_implies_item
	.loc 2 1302 0
	leal	.LC1109@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1110@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$15, 4(%esp)
	movl	$0, 8(%esp)
	movl	$658, (%esp)
	call	create_option_info
	.loc 2 1303 0
	leal	.LC1110@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$658, 4(%esp)
	movl	$658, (%esp)
	call	create_implies_item
	.loc 2 1304 0
	leal	.LC1111@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1112@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$659, (%esp)
	call	create_option_info
	.loc 2 1305 0
	leal	.LC1112@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$659, 4(%esp)
	movl	$659, (%esp)
	call	create_implies_item
	.loc 2 1306 0
	leal	.LC1113@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1114@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$660, (%esp)
	call	create_option_info
	.loc 2 1307 0
	leal	.LC1114@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$660, 4(%esp)
	movl	$660, (%esp)
	call	create_implies_item
	.loc 2 1308 0
	leal	.LC1115@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1116@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$661, (%esp)
	call	create_option_info
	.loc 2 1309 0
	leal	.LC1117@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1118@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$14, 4(%esp)
	movl	$0, 8(%esp)
	movl	$662, (%esp)
	call	create_option_info
	.loc 2 1310 0
	leal	.LC1118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$662, 4(%esp)
	movl	$662, (%esp)
	call	create_implies_item
	.loc 2 1311 0
	leal	.LC1119@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1120@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$2, 4(%esp)
	movl	$0, 8(%esp)
	movl	$663, (%esp)
	call	create_option_info
	.loc 2 1312 0
	leal	.LC1120@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$663, 4(%esp)
	movl	$663, (%esp)
	call	create_implies_item
	.loc 2 1313 0
	leal	.LC1121@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1122@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$664, (%esp)
	call	create_option_info
	.loc 2 1314 0
	leal	.LC1122@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$664, 4(%esp)
	movl	$664, (%esp)
	call	create_implies_item
	.loc 2 1315 0
	leal	.LC1123@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1124@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$665, (%esp)
	call	create_option_info
	.loc 2 1316 0
	leal	.LC1124@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$665, 4(%esp)
	movl	$665, (%esp)
	call	create_implies_item
	.loc 2 1317 0
	leal	.LC1125@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1126@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$666, (%esp)
	call	create_option_info
	.loc 2 1318 0
	leal	.LC1126@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$666, 4(%esp)
	movl	$666, (%esp)
	call	create_implies_item
	.loc 2 1319 0
	leal	.LC1125@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1127@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$667, (%esp)
	call	create_option_info
	.loc 2 1320 0
	leal	.LC1127@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$667, 4(%esp)
	movl	$667, (%esp)
	call	create_implies_item
	.loc 2 1321 0
	leal	.LC1128@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1129@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$668, (%esp)
	call	create_option_info
	.loc 2 1322 0
	leal	.LC1129@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$668, 4(%esp)
	movl	$668, (%esp)
	call	create_implies_item
	.loc 2 1323 0
	leal	.LC1130@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1131@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$669, (%esp)
	call	create_option_info
	.loc 2 1324 0
	leal	.LC1131@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$669, 4(%esp)
	movl	$669, (%esp)
	call	create_implies_item
	.loc 2 1325 0
	leal	.LC1132@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1133@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$670, (%esp)
	call	create_option_info
	.loc 2 1326 0
	leal	.LC1133@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$670, 4(%esp)
	movl	$670, (%esp)
	call	create_implies_item
	.loc 2 1327 0
	leal	.LC430@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1134@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$671, (%esp)
	call	create_option_info
	.loc 2 1328 0
	leal	.LC1134@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$671, 4(%esp)
	movl	$671, (%esp)
	call	create_implies_item
	.loc 2 1329 0
	leal	.LC1135@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1136@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16715760, 12(%esp)
	movl	$0, 16(%esp)
	movl	$7, 4(%esp)
	movl	$0, 8(%esp)
	movl	$672, (%esp)
	call	create_option_info
	.loc 2 1330 0
	leal	.LC1136@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$672, 4(%esp)
	movl	$672, (%esp)
	call	create_implies_item
	.loc 2 1331 0
	leal	.LC1137@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1138@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$673, (%esp)
	call	create_option_info
	.loc 2 1332 0
	leal	.LC1138@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$673, 4(%esp)
	movl	$673, (%esp)
	call	create_implies_item
	.loc 2 1333 0
	movl	$0, 24(%esp)
	leal	.LC1139@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$15728640, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$674, (%esp)
	call	create_option_info
	.loc 2 1334 0
	leal	.LC1139@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$674, 4(%esp)
	movl	$674, (%esp)
	call	create_implies_item
	.loc 2 1335 0
	leal	.LC1140@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1141@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$48, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$675, (%esp)
	call	create_option_info
	.loc 2 1336 0
	leal	.LC1142@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$675, 4(%esp)
	movl	$675, (%esp)
	call	create_implies_item
	.loc 2 1337 0
	leal	.LC1143@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1144@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-268435456, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$676, (%esp)
	call	create_option_info
	.loc 2 1338 0
	leal	.LC1145@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$676, 4(%esp)
	movl	$676, (%esp)
	call	create_implies_item
	.loc 2 1339 0
	leal	.LC1146@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1147@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$677, (%esp)
	call	create_option_info
	.loc 2 1340 0
	leal	.LC1148@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$677, 4(%esp)
	movl	$677, (%esp)
	call	create_implies_item
	.loc 2 1341 0
	leal	.LC1149@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1150@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$678, (%esp)
	call	create_option_info
	.loc 2 1342 0
	leal	.LC1151@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1150@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$16711680, 12(%esp)
	movl	$0, 16(%esp)
	movl	$6, 4(%esp)
	movl	$0, 8(%esp)
	movl	$679, (%esp)
	call	create_option_info
	.loc 2 1343 0
	leal	.LC1150@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$679, 4(%esp)
	movl	$679, (%esp)
	call	create_implies_item
	.loc 2 1344 0
	leal	.LC1152@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1153@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$680, (%esp)
	call	create_option_info
	.loc 2 1345 0
	leal	.LC1154@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$680, 4(%esp)
	movl	$680, (%esp)
	call	create_implies_item
	.loc 2 1346 0
	movl	$0, 24(%esp)
	leal	.LC1155@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$16781057, 16(%esp)
	movl	$2, 4(%esp)
	movl	$0, 8(%esp)
	movl	$681, (%esp)
	call	create_option_info
	.loc 2 1347 0
	movl	$0, 24(%esp)
	leal	.LC1155@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$16781057, 16(%esp)
	movl	$2, 4(%esp)
	movl	$0, 8(%esp)
	movl	$682, (%esp)
	call	create_option_info
	.loc 2 1348 0
	movl	$0, 24(%esp)
	leal	.LC1156@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$683, (%esp)
	call	create_option_info
	.loc 2 1349 0
	leal	.LC1157@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1156@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$684, (%esp)
	call	create_option_info
	.loc 2 1350 0
	leal	.LC1158@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$684, 4(%esp)
	movl	$684, (%esp)
	call	create_implies_item
	.loc 2 1351 0
	leal	.LC1159@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1160@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$685, (%esp)
	call	create_option_info
	.loc 2 1352 0
	leal	.LC1161@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$685, (%esp)
	call	create_implies_item
	.loc 2 1353 0
	leal	.LC1162@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1163@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$686, (%esp)
	call	create_option_info
	.loc 2 1354 0
	leal	.LC1164@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$686, 4(%esp)
	movl	$686, (%esp)
	call	create_implies_item
	.loc 2 1355 0
	movl	$0, 24(%esp)
	leal	.LC1165@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$687, (%esp)
	call	create_option_info
	.loc 2 1356 0
	leal	.LC1166@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$687, 4(%esp)
	movl	$687, (%esp)
	call	create_implies_item
	.loc 2 1357 0
	leal	.LC1167@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1168@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$688, (%esp)
	call	create_option_info
	.loc 2 1358 0
	leal	.LC1169@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1170@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$689, (%esp)
	call	create_option_info
	.loc 2 1359 0
	leal	.LC1171@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1172@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$690, (%esp)
	call	create_option_info
	.loc 2 1360 0
	leal	.LC1173@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1174@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$691, (%esp)
	call	create_option_info
	.loc 2 1361 0
	leal	.LC1175@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$691, 4(%esp)
	movl	$691, (%esp)
	call	create_implies_item
	.loc 2 1362 0
	leal	.LC1176@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$694, 4(%esp)
	movl	$691, (%esp)
	call	create_implies_item
	.loc 2 1363 0
	movl	$0, 24(%esp)
	leal	.LC1177@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$692, (%esp)
	call	create_option_info
	.loc 2 1364 0
	leal	.LC1178@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$692, 4(%esp)
	movl	$692, (%esp)
	call	create_implies_item
	.loc 2 1365 0
	movl	$0, 24(%esp)
	leal	.LC1179@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$693, (%esp)
	call	create_option_info
	.loc 2 1366 0
	leal	.LC1180@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$693, 4(%esp)
	movl	$693, (%esp)
	call	create_implies_item
	.loc 2 1367 0
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$694, 4(%esp)
	movl	$693, (%esp)
	call	create_implies_item
	.loc 2 1368 0
	movl	$0, 24(%esp)
	leal	.LC1181@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-268435456, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$694, (%esp)
	call	create_option_info
	.loc 2 1369 0
	leal	.LC1182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$694, 4(%esp)
	movl	$694, (%esp)
	call	create_implies_item
	.loc 2 1370 0
	movl	$0, 24(%esp)
	leal	.LC1183@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$695, (%esp)
	call	create_option_info
	.loc 2 1371 0
	leal	.LC1183@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$695, 4(%esp)
	movl	$695, (%esp)
	call	create_implies_item
	.loc 2 1372 0
	leal	.LC1184@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1185@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$696, (%esp)
	call	create_option_info
	.loc 2 1373 0
	leal	.LC284@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$696, (%esp)
	call	create_implies_item
	.loc 2 1374 0
	movl	$0, 24(%esp)
	leal	.LC1186@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$697, (%esp)
	call	create_option_info
	.loc 2 1375 0
	leal	.LC1186@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$697, 4(%esp)
	movl	$697, (%esp)
	call	create_implies_item
	.loc 2 1376 0
	leal	.LC1187@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1188@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$698, (%esp)
	call	create_option_info
	.loc 2 1377 0
	leal	.LC1189@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1190@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251723776, 12(%esp)
	movl	$257, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$699, (%esp)
	call	create_option_info
	.loc 2 1378 0
	leal	.LC1191@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$699, 4(%esp)
	movl	$699, (%esp)
	call	create_implies_item
	.loc 2 1379 0
	leal	.LC1192@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1193@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$700, (%esp)
	call	create_option_info
	.loc 2 1380 0
	leal	.LC1194@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$700, (%esp)
	call	create_implies_item
	.loc 2 1381 0
	leal	.LC1193@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$700, 4(%esp)
	movl	$700, (%esp)
	call	create_implies_item
	.loc 2 1382 0
	leal	.LC1195@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1196@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$701, (%esp)
	call	create_option_info
	.loc 2 1383 0
	leal	.LC1194@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$701, (%esp)
	call	create_implies_item
	.loc 2 1384 0
	leal	.LC1196@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$701, 4(%esp)
	movl	$701, (%esp)
	call	create_implies_item
	.loc 2 1385 0
	leal	.LC1197@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1198@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$702, (%esp)
	call	create_option_info
	.loc 2 1386 0
	leal	.LC1194@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$702, (%esp)
	call	create_implies_item
	.loc 2 1387 0
	leal	.LC1198@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$702, 4(%esp)
	movl	$702, (%esp)
	call	create_implies_item
	.loc 2 1388 0
	leal	.LC1199@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1200@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$703, (%esp)
	call	create_option_info
	.loc 2 1389 0
	leal	.LC1200@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$703, 4(%esp)
	movl	$703, (%esp)
	call	create_implies_item
	.loc 2 1390 0
	leal	.LC1192@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1201@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$704, (%esp)
	call	create_option_info
	.loc 2 1391 0
	leal	.LC1193@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$700, 4(%esp)
	movl	$704, (%esp)
	call	create_implies_item
	.loc 2 1392 0
	leal	.LC1202@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1201@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-251719696, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$705, (%esp)
	call	create_option_info
	.loc 2 1393 0
	leal	.LC1194@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$705, (%esp)
	call	create_implies_item
	.loc 2 1394 0
	leal	.LC1196@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$701, 4(%esp)
	movl	$705, (%esp)
	call	create_implies_item
	.loc 2 1395 0
	leal	.LC1203@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1204@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$706, (%esp)
	call	create_option_info
	.loc 2 1396 0
	leal	.LC1205@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$706, 4(%esp)
	movl	$706, (%esp)
	call	create_implies_item
	.loc 2 1397 0
	leal	.LC1206@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1207@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$707, (%esp)
	call	create_option_info
	.loc 2 1398 0
	leal	.LC1208@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$707, 4(%esp)
	movl	$707, (%esp)
	call	create_implies_item
	.loc 2 1399 0
	leal	.LC1209@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1210@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$708, (%esp)
	call	create_option_info
	.loc 2 1400 0
	leal	.LC1211@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$708, 4(%esp)
	movl	$708, (%esp)
	call	create_implies_item
	.loc 2 1401 0
	leal	.LC1212@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1213@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$709, (%esp)
	call	create_option_info
	.loc 2 1402 0
	leal	.LC1213@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$709, 4(%esp)
	movl	$709, (%esp)
	call	create_implies_item
	.loc 2 1403 0
	leal	.LC1214@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1215@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$710, (%esp)
	call	create_option_info
	.loc 2 1404 0
	leal	.LC1215@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$710, 4(%esp)
	movl	$710, (%esp)
	call	create_implies_item
	.loc 2 1405 0
	leal	.LC1216@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1217@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$711, (%esp)
	call	create_option_info
	.loc 2 1406 0
	leal	.LC1217@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$711, 4(%esp)
	movl	$711, (%esp)
	call	create_implies_item
	.loc 2 1407 0
	leal	.LC1218@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1219@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$712, (%esp)
	call	create_option_info
	.loc 2 1408 0
	leal	.LC1219@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$712, 4(%esp)
	movl	$712, (%esp)
	call	create_implies_item
	.loc 2 1409 0
	leal	.LC1220@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1221@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$713, (%esp)
	call	create_option_info
	.loc 2 1410 0
	leal	.LC1222@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$713, 4(%esp)
	movl	$713, (%esp)
	call	create_implies_item
	.loc 2 1411 0
	leal	.LC1223@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1224@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$714, (%esp)
	call	create_option_info
	.loc 2 1412 0
	leal	.LC1225@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$714, 4(%esp)
	movl	$714, (%esp)
	call	create_implies_item
	.loc 2 1413 0
	leal	.LC1226@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1227@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$715, (%esp)
	call	create_option_info
	.loc 2 1414 0
	leal	.LC1228@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$715, 4(%esp)
	movl	$715, (%esp)
	call	create_implies_item
	.loc 2 1415 0
	movl	$0, 24(%esp)
	leal	.LC1229@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$716, (%esp)
	call	create_option_info
	.loc 2 1416 0
	leal	.LC1230@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$716, 4(%esp)
	movl	$716, (%esp)
	call	create_implies_item
	.loc 2 1417 0
	leal	.LC1231@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1232@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$717, (%esp)
	call	create_option_info
	.loc 2 1418 0
	leal	.LC1232@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$717, 4(%esp)
	movl	$717, (%esp)
	call	create_implies_item
	.loc 2 1419 0
	leal	.LC1233@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1234@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$718, (%esp)
	call	create_option_info
	.loc 2 1420 0
	leal	.LC1234@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$718, 4(%esp)
	movl	$718, (%esp)
	call	create_implies_item
	.loc 2 1421 0
	leal	.LC1235@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1236@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781057, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$719, (%esp)
	call	create_option_info
	.loc 2 1422 0
	leal	.LC1237@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$719, 4(%esp)
	movl	$719, (%esp)
	call	create_implies_item
	.loc 2 1423 0
	leal	.LC1238@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1239@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$720, (%esp)
	call	create_option_info
	.loc 2 1424 0
	leal	.LC1240@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$720, 4(%esp)
	movl	$720, (%esp)
	call	create_implies_item
	.loc 2 1425 0
	leal	.LC1241@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1242@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-268435456, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$721, (%esp)
	call	create_option_info
	.loc 2 1426 0
	leal	.LC1243@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$721, 4(%esp)
	movl	$721, (%esp)
	call	create_implies_item
	.loc 2 1427 0
	movl	$0, 24(%esp)
	leal	.LC1244@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$722, (%esp)
	call	create_option_info
	.loc 2 1428 0
	leal	.LC1245@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$722, 4(%esp)
	movl	$722, (%esp)
	call	create_implies_item
	.loc 2 1429 0
	leal	.LC1246@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1247@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$4, 4(%esp)
	movl	$0, 8(%esp)
	movl	$723, (%esp)
	call	create_option_info
	.loc 2 1430 0
	leal	.LC1247@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$723, 4(%esp)
	movl	$723, (%esp)
	call	create_implies_item
	.loc 2 1431 0
	leal	.LC1248@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1249@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$724, (%esp)
	call	create_option_info
	.loc 2 1432 0
	leal	.LC1250@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$724, 4(%esp)
	movl	$724, (%esp)
	call	create_implies_item
	.loc 2 1433 0
	leal	.LC1251@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1252@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$725, (%esp)
	call	create_option_info
	.loc 2 1434 0
	leal	.LC1253@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$725, 4(%esp)
	movl	$725, (%esp)
	call	create_implies_item
	.loc 2 1435 0
	movl	$0, 24(%esp)
	leal	.LC1252@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$726, (%esp)
	call	create_option_info
	.loc 2 1436 0
	leal	.LC1252@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$726, 4(%esp)
	movl	$726, (%esp)
	call	create_implies_item
	.loc 2 1437 0
	leal	.LC1254@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1255@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-268435456, 12(%esp)
	movl	$256, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$727, (%esp)
	call	create_option_info
	.loc 2 1438 0
	leal	.LC1256@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$727, 4(%esp)
	movl	$727, (%esp)
	call	create_implies_item
	.loc 2 1439 0
	leal	.LC371@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1257@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$728, (%esp)
	call	create_option_info
	.loc 2 1440 0
	leal	.LC372@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$215, 4(%esp)
	movl	$728, (%esp)
	call	create_implies_item
	.loc 2 1441 0
	leal	.LC1258@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1259@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$257, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$729, (%esp)
	call	create_option_info
	.loc 2 1442 0
	leal	.LC1260@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	movl	$729, (%esp)
	call	create_implies_item
	.loc 2 1443 0
	leal	.LC1261@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1262@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$256, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$730, (%esp)
	call	create_option_info
	.loc 2 1444 0
	leal	.LC1263@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$730, 4(%esp)
	movl	$730, (%esp)
	call	create_implies_item
	.loc 2 1445 0
	leal	.LC376@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC378@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$731, (%esp)
	call	create_option_info
	.loc 2 1446 0
	movl	$0, 24(%esp)
	leal	.LC1264@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$732, (%esp)
	call	create_option_info
	.loc 2 1447 0
	leal	.LC1264@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$732, 4(%esp)
	movl	$732, (%esp)
	call	create_implies_item
	.loc 2 1448 0
	leal	.LC1265@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1266@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$733, (%esp)
	call	create_option_info
	.loc 2 1449 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	$733, (%esp)
	call	create_implies_item
	.loc 2 1450 0
	leal	.LC1267@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$733, 4(%esp)
	movl	$733, (%esp)
	call	create_implies_item
	.loc 2 1451 0
	leal	.LC1268@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1269@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$39, 4(%esp)
	movl	$0, 8(%esp)
	movl	$734, (%esp)
	call	create_option_info
	.loc 2 1452 0
	leal	.LC1269@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$734, 4(%esp)
	movl	$734, (%esp)
	call	create_implies_item
	.loc 2 1453 0
	movl	$0, 24(%esp)
	leal	.LC1270@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$735, (%esp)
	call	create_option_info
	.loc 2 1454 0
	leal	.LC1271@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	movl	$735, (%esp)
	call	create_implies_item
	.loc 2 1455 0
	leal	.LC1272@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1273@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$736, (%esp)
	call	create_option_info
	.loc 2 1456 0
	leal	.LC1274@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$736, 4(%esp)
	movl	$736, (%esp)
	call	create_implies_item
	.loc 2 1457 0
	movl	$0, 24(%esp)
	leal	.LC1275@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	$737, (%esp)
	call	create_option_info
	.loc 2 1458 0
	movl	$0, 24(%esp)
	leal	.LC1276@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$738, (%esp)
	call	create_option_info
	.loc 2 1459 0
	leal	.LC1277@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$738, 4(%esp)
	movl	$738, (%esp)
	call	create_implies_item
	.loc 2 1460 0
	leal	.LC1278@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1279@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$24, 4(%esp)
	movl	$0, 8(%esp)
	movl	$739, (%esp)
	call	create_option_info
	.loc 2 1461 0
	leal	.LC1280@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$739, 4(%esp)
	movl	$739, (%esp)
	call	create_implies_item
	.loc 2 1462 0
	leal	.LC618@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$694, 4(%esp)
	movl	$739, (%esp)
	call	create_implies_item
	.loc 2 1463 0
	movl	$0, 24(%esp)
	leal	.LC1281@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$740, (%esp)
	call	create_option_info
	.loc 2 1464 0
	leal	.LC1282@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$740, 4(%esp)
	movl	$740, (%esp)
	call	create_implies_item
	.loc 2 1465 0
	leal	.LC1283@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1284@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$741, (%esp)
	call	create_option_info
	.loc 2 1466 0
	leal	.LC1285@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1286@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$742, (%esp)
	call	create_option_info
	.loc 2 1467 0
	leal	.LC1286@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$742, 4(%esp)
	movl	$742, (%esp)
	call	create_implies_item
	.loc 2 1468 0
	movl	$0, 24(%esp)
	leal	.LC1287@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$743, (%esp)
	call	create_option_info
	.loc 2 1469 0
	leal	.LC1288@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1289@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$-267452416, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$744, (%esp)
	call	create_option_info
	.loc 2 1470 0
	leal	.LC1290@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$744, 4(%esp)
	movl	$744, (%esp)
	call	create_implies_item
	.loc 2 1471 0
	leal	.LC1291@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1292@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$745, (%esp)
	call	create_option_info
	.loc 2 1472 0
	leal	.LC1293@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$745, (%esp)
	call	create_implies_item
	.loc 2 1473 0
	leal	.LC1294@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1295@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$2, 4(%esp)
	movl	$0, 8(%esp)
	movl	$746, (%esp)
	call	create_option_info
	.loc 2 1474 0
	leal	.LC1296@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$746, 4(%esp)
	movl	$746, (%esp)
	call	create_implies_item
	.loc 2 1475 0
	leal	.LC793@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$694, 4(%esp)
	movl	$746, (%esp)
	call	create_implies_item
	.loc 2 1476 0
	leal	.LC1297@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1298@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$747, (%esp)
	call	create_option_info
	.loc 2 1477 0
	leal	.LC1299@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$747, 4(%esp)
	movl	$747, (%esp)
	call	create_implies_item
	.loc 2 1478 0
	leal	.LC1300@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1301@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$748, (%esp)
	call	create_option_info
	.loc 2 1479 0
	leal	.LC1302@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1303@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$749, (%esp)
	call	create_option_info
	.loc 2 1480 0
	leal	.LC1304@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$749, 4(%esp)
	movl	$749, (%esp)
	call	create_implies_item
	.loc 2 1481 0
	leal	.LC1305@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1306@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$750, (%esp)
	call	create_option_info
	.loc 2 1482 0
	leal	.LC1306@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$750, 4(%esp)
	movl	$750, (%esp)
	call	create_implies_item
	.loc 2 1483 0
	leal	.LC225@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC227@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$983040, 12(%esp)
	movl	$0, 16(%esp)
	movl	$8, 4(%esp)
	movl	$0, 8(%esp)
	movl	$751, (%esp)
	call	create_option_info
	.loc 2 1484 0
	leal	.LC227@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$751, 4(%esp)
	movl	$751, (%esp)
	call	create_implies_item
	.loc 2 1485 0
	movl	$0, 24(%esp)
	leal	.LC1307@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$752, (%esp)
	call	create_option_info
	.loc 2 1486 0
	leal	.LC1215@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$710, 4(%esp)
	movl	$752, (%esp)
	call	create_implies_item
	.loc 2 1487 0
	movl	$0, 24(%esp)
	leal	.LC1308@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$753, (%esp)
	call	create_option_info
	.loc 2 1488 0
	leal	.LC1232@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$717, 4(%esp)
	movl	$753, (%esp)
	call	create_implies_item
	.loc 2 1489 0
	movl	$0, 24(%esp)
	leal	.LC825@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$754, (%esp)
	call	create_option_info
	.loc 2 1490 0
	leal	.LC825@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$754, 4(%esp)
	movl	$754, (%esp)
	call	create_implies_item
	.loc 2 1491 0
	movl	$0, 24(%esp)
	leal	.LC1309@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$755, (%esp)
	call	create_option_info
	.loc 2 1492 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$45, 4(%esp)
	movl	$755, (%esp)
	call	create_implies_item
	.loc 2 1493 0
	movl	$0, 24(%esp)
	leal	.LC1310@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$756, (%esp)
	call	create_option_info
	.loc 2 1494 0
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$47, 4(%esp)
	movl	$756, (%esp)
	call	create_implies_item
	.loc 2 1495 0
	movl	$0, 24(%esp)
	leal	.LC1311@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$757, (%esp)
	call	create_option_info
	.loc 2 1496 0
	leal	.LC1217@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$711, 4(%esp)
	movl	$757, (%esp)
	call	create_implies_item
	.loc 2 1497 0
	movl	$0, 24(%esp)
	leal	.LC1312@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$758, (%esp)
	call	create_option_info
	.loc 2 1498 0
	leal	.LC1158@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$684, 4(%esp)
	movl	$758, (%esp)
	call	create_implies_item
	.loc 2 1499 0
	movl	$0, 24(%esp)
	leal	.LC1313@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$759, (%esp)
	call	create_option_info
	.loc 2 1500 0
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$56, 4(%esp)
	movl	$759, (%esp)
	call	create_implies_item
	.loc 2 1501 0
	movl	$0, 24(%esp)
	leal	.LC1314@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$760, (%esp)
	call	create_option_info
	.loc 2 1502 0
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$58, 4(%esp)
	movl	$760, (%esp)
	call	create_implies_item
	.loc 2 1503 0
	movl	$0, 24(%esp)
	leal	.LC1315@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$761, (%esp)
	call	create_option_info
	.loc 2 1504 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$59, 4(%esp)
	movl	$761, (%esp)
	call	create_implies_item
	.loc 2 1505 0
	movl	$0, 24(%esp)
	leal	.LC1316@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$762, (%esp)
	call	create_option_info
	.loc 2 1506 0
	leal	.LC1269@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$734, 4(%esp)
	movl	$762, (%esp)
	call	create_implies_item
	.loc 2 1507 0
	movl	$0, 24(%esp)
	leal	.LC1317@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$763, (%esp)
	call	create_option_info
	.loc 2 1508 0
	leal	.LC1318@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$506, 4(%esp)
	movl	$763, (%esp)
	call	create_implies_item
	.loc 2 1509 0
	movl	$0, 24(%esp)
	leal	.LC1319@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$764, (%esp)
	call	create_option_info
	.loc 2 1510 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$61, 4(%esp)
	movl	$764, (%esp)
	call	create_implies_item
	.loc 2 1511 0
	movl	$0, 24(%esp)
	leal	.LC1320@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$765, (%esp)
	call	create_option_info
	.loc 2 1512 0
	leal	.LC1320@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$765, 4(%esp)
	movl	$765, (%esp)
	call	create_implies_item
	.loc 2 1513 0
	movl	$0, 24(%esp)
	leal	.LC1321@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$766, (%esp)
	call	create_option_info
	.loc 2 1514 0
	leal	.LC1322@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$81, 4(%esp)
	movl	$766, (%esp)
	call	create_implies_item
	.loc 2 1515 0
	movl	$0, 24(%esp)
	leal	.LC1323@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$767, (%esp)
	call	create_option_info
	.loc 2 1516 0
	leal	.LC1322@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$81, 4(%esp)
	movl	$767, (%esp)
	call	create_implies_item
	.loc 2 1517 0
	movl	$0, 24(%esp)
	leal	.LC1324@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$768, (%esp)
	call	create_option_info
	.loc 2 1518 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$91, 4(%esp)
	movl	$768, (%esp)
	call	create_implies_item
	.loc 2 1519 0
	movl	$0, 24(%esp)
	leal	.LC1325@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$769, (%esp)
	call	create_option_info
	.loc 2 1520 0
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$92, 4(%esp)
	movl	$769, (%esp)
	call	create_implies_item
	.loc 2 1521 0
	movl	$0, 24(%esp)
	leal	.LC1326@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$770, (%esp)
	call	create_option_info
	.loc 2 1522 0
	leal	.LC221@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$132, 4(%esp)
	movl	$770, (%esp)
	call	create_implies_item
	.loc 2 1523 0
	movl	$0, 24(%esp)
	leal	.LC1327@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$771, (%esp)
	call	create_option_info
	.loc 2 1524 0
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$106, 4(%esp)
	movl	$771, (%esp)
	call	create_implies_item
	.loc 2 1525 0
	movl	$0, 24(%esp)
	leal	.LC1328@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$772, (%esp)
	call	create_option_info
	.loc 2 1526 0
	leal	.LC1329@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$107, 4(%esp)
	movl	$772, (%esp)
	call	create_implies_item
	.loc 2 1527 0
	movl	$0, 24(%esp)
	leal	.LC1330@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$773, (%esp)
	call	create_option_info
	.loc 2 1528 0
	leal	.LC1329@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$107, 4(%esp)
	movl	$773, (%esp)
	call	create_implies_item
	.loc 2 1529 0
	movl	$0, 24(%esp)
	leal	.LC1331@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$774, (%esp)
	call	create_option_info
	.loc 2 1530 0
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$108, 4(%esp)
	movl	$774, (%esp)
	call	create_implies_item
	.loc 2 1531 0
	movl	$0, 24(%esp)
	leal	.LC1332@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$775, (%esp)
	call	create_option_info
	.loc 2 1532 0
	leal	.LC1219@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$712, 4(%esp)
	movl	$775, (%esp)
	call	create_implies_item
	.loc 2 1533 0
	movl	$0, 24(%esp)
	leal	.LC1333@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$776, (%esp)
	call	create_option_info
	.loc 2 1534 0
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$110, 4(%esp)
	movl	$776, (%esp)
	call	create_implies_item
	.loc 2 1535 0
	movl	$0, 24(%esp)
	leal	.LC1334@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$777, (%esp)
	call	create_option_info
	.loc 2 1536 0
	leal	.LC1335@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$110, 4(%esp)
	movl	$777, (%esp)
	call	create_implies_item
	.loc 2 1537 0
	movl	$0, 24(%esp)
	leal	.LC1336@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$778, (%esp)
	call	create_option_info
	.loc 2 1538 0
	leal	.LC1335@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$110, 4(%esp)
	movl	$778, (%esp)
	call	create_implies_item
	.loc 2 1539 0
	movl	$0, 24(%esp)
	leal	.LC1337@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$779, (%esp)
	call	create_option_info
	.loc 2 1540 0
	leal	.LC1286@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$742, 4(%esp)
	movl	$779, (%esp)
	call	create_implies_item
	.loc 2 1541 0
	movl	$0, 24(%esp)
	leal	.LC1338@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$780, (%esp)
	call	create_option_info
	.loc 2 1542 0
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$112, 4(%esp)
	movl	$780, (%esp)
	call	create_implies_item
	.loc 2 1543 0
	movl	$0, 24(%esp)
	leal	.LC1339@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$781, (%esp)
	call	create_option_info
	.loc 2 1544 0
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$121, 4(%esp)
	movl	$781, (%esp)
	call	create_implies_item
	.loc 2 1545 0
	movl	$0, 24(%esp)
	leal	.LC1340@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$782, (%esp)
	call	create_option_info
	.loc 2 1546 0
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$122, 4(%esp)
	movl	$782, (%esp)
	call	create_implies_item
	.loc 2 1547 0
	movl	$0, 24(%esp)
	leal	.LC1341@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$783, (%esp)
	call	create_option_info
	.loc 2 1548 0
	leal	.LC1342@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$136, 4(%esp)
	movl	$783, (%esp)
	call	create_implies_item
	.loc 2 1549 0
	movl	$0, 24(%esp)
	leal	.LC1343@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$784, (%esp)
	call	create_option_info
	.loc 2 1550 0
	leal	.LC1201@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$705, 4(%esp)
	movl	$784, (%esp)
	call	create_implies_item
	.loc 2 1551 0
	movl	$0, 24(%esp)
	leal	.LC1344@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$16781056, 16(%esp)
	movl	$30, 4(%esp)
	movl	$0, 8(%esp)
	movl	$785, (%esp)
	call	create_option_info
	.loc 2 1552 0
	leal	.LC1344@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$785, 4(%esp)
	movl	$785, (%esp)
	call	create_implies_item
	.loc 2 1553 0
	movl	$0, 24(%esp)
	leal	.LC1345@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$786, (%esp)
	call	create_option_info
	.loc 2 1554 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$39, 4(%esp)
	movl	$786, (%esp)
	call	create_implies_item
	.loc 2 1555 0
	movl	$0, 24(%esp)
	leal	.LC1346@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$787, (%esp)
	call	create_option_info
	.loc 2 1556 0
	leal	.LC232@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$137, 4(%esp)
	movl	$787, (%esp)
	call	create_implies_item
	.loc 2 1557 0
	movl	$0, 24(%esp)
	leal	.LC1347@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$788, (%esp)
	call	create_option_info
	.loc 2 1558 0
	leal	.LC236@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$139, 4(%esp)
	movl	$788, (%esp)
	call	create_implies_item
	.loc 2 1559 0
	movl	$0, 24(%esp)
	leal	.LC1348@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$789, (%esp)
	call	create_option_info
	.loc 2 1560 0
	leal	.LC1183@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$695, 4(%esp)
	movl	$789, (%esp)
	call	create_implies_item
	.loc 2 1561 0
	movl	$0, 24(%esp)
	leal	.LC1349@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$790, (%esp)
	call	create_option_info
	.loc 2 1562 0
	leal	.LC1253@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$725, 4(%esp)
	movl	$790, (%esp)
	call	create_implies_item
	.loc 2 1563 0
	movl	$0, 24(%esp)
	leal	.LC1350@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$791, (%esp)
	call	create_option_info
	.loc 2 1564 0
	leal	.LC364@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$211, 4(%esp)
	movl	$791, (%esp)
	call	create_implies_item
	.loc 2 1565 0
	movl	$0, 24(%esp)
	leal	.LC1351@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$792, (%esp)
	call	create_option_info
	.loc 2 1566 0
	leal	.LC366@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$212, 4(%esp)
	movl	$792, (%esp)
	call	create_implies_item
	.loc 2 1567 0
	movl	$0, 24(%esp)
	leal	.LC1352@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$793, (%esp)
	call	create_option_info
	.loc 2 1568 0
	leal	.LC370@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$214, 4(%esp)
	movl	$793, (%esp)
	call	create_implies_item
	.loc 2 1569 0
	movl	$0, 24(%esp)
	leal	.LC1353@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$794, (%esp)
	call	create_option_info
	.loc 2 1570 0
	leal	.LC385@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$222, 4(%esp)
	movl	$794, (%esp)
	call	create_implies_item
	.loc 2 1571 0
	movl	$0, 24(%esp)
	leal	.LC1354@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$795, (%esp)
	call	create_option_info
	.loc 2 1572 0
	leal	.LC1267@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$733, 4(%esp)
	movl	$795, (%esp)
	call	create_implies_item
	.loc 2 1573 0
	movl	$0, 24(%esp)
	leal	.LC1355@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$796, (%esp)
	call	create_option_info
	.loc 2 1574 0
	leal	.LC1264@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$732, 4(%esp)
	movl	$796, (%esp)
	call	create_implies_item
	.loc 2 1575 0
	movl	$0, 24(%esp)
	leal	.LC1356@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$797, (%esp)
	call	create_option_info
	.loc 2 1576 0
	leal	.LC380@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$218, 4(%esp)
	movl	$797, (%esp)
	call	create_implies_item
	.loc 2 1577 0
	movl	$0, 24(%esp)
	leal	.LC1357@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$798, (%esp)
	call	create_option_info
	.loc 2 1578 0
	leal	.LC382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$219, 4(%esp)
	movl	$798, (%esp)
	call	create_implies_item
	.loc 2 1579 0
	leal	.LC393@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1358@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$799, (%esp)
	call	create_option_info
	.loc 2 1580 0
	movl	$0, 24(%esp)
	leal	.LC1359@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$800, (%esp)
	call	create_option_info
	.loc 2 1581 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	$800, (%esp)
	call	create_implies_item
	.loc 2 1582 0
	movl	$0, 24(%esp)
	leal	.LC1360@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$801, (%esp)
	call	create_option_info
	.loc 2 1583 0
	leal	.LC1150@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$678, 4(%esp)
	movl	$801, (%esp)
	call	create_implies_item
	.loc 2 1584 0
	movl	$0, 24(%esp)
	leal	.LC1361@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$802, (%esp)
	call	create_option_info
	.loc 2 1585 0
	leal	.LC1234@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$718, 4(%esp)
	movl	$802, (%esp)
	call	create_implies_item
	.loc 2 1586 0
	movl	$0, 24(%esp)
	leal	.LC1362@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$803, (%esp)
	call	create_option_info
	.loc 2 1587 0
	leal	.LC1293@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$745, 4(%esp)
	movl	$803, (%esp)
	call	create_implies_item
	.loc 2 1588 0
	movl	$0, 24(%esp)
	leal	.LC1363@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$804, (%esp)
	call	create_option_info
	.loc 2 1589 0
	leal	.LC429@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$250, 4(%esp)
	movl	$804, (%esp)
	call	create_implies_item
	.loc 2 1590 0
	movl	$0, 24(%esp)
	leal	.LC1364@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$805, (%esp)
	call	create_option_info
	.loc 2 1591 0
	leal	.LC801@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$501, 4(%esp)
	movl	$805, (%esp)
	call	create_implies_item
	.loc 2 1592 0
	movl	$0, 24(%esp)
	leal	.LC1365@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$806, (%esp)
	call	create_option_info
	.loc 2 1593 0
	leal	.LC1301@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$748, 4(%esp)
	movl	$806, (%esp)
	call	create_implies_item
	.loc 2 1594 0
	movl	$0, 24(%esp)
	leal	.LC1366@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$807, (%esp)
	call	create_option_info
	.loc 2 1595 0
	leal	.LC1304@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$749, 4(%esp)
	movl	$807, (%esp)
	call	create_implies_item
	.loc 2 1596 0
	movl	$0, 24(%esp)
	leal	.LC1367@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$808, (%esp)
	call	create_option_info
	.loc 2 1597 0
	leal	.LC1168@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$688, 4(%esp)
	movl	$808, (%esp)
	call	create_implies_item
	.loc 2 1598 0
	movl	$0, 24(%esp)
	leal	.LC1368@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$809, (%esp)
	call	create_option_info
	.loc 2 1599 0
	leal	.LC822@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$515, 4(%esp)
	movl	$809, (%esp)
	call	create_implies_item
	.loc 2 1600 0
	movl	$0, 24(%esp)
	leal	.LC1369@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$810, (%esp)
	call	create_option_info
	.loc 2 1601 0
	leal	.LC1136@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$672, 4(%esp)
	movl	$810, (%esp)
	call	create_implies_item
	.loc 2 1602 0
	movl	$0, 24(%esp)
	leal	.LC1370@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$811, (%esp)
	call	create_option_info
	.loc 2 1603 0
	leal	.LC1371@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	.LC1372@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$812, (%esp)
	call	create_option_info
	.loc 2 1604 0
	leal	.LC1372@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$812, 4(%esp)
	movl	$812, (%esp)
	call	create_implies_item
	.loc 2 1605 0
	movl	$0, 24(%esp)
	leal	.LC1373@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	$4080, 12(%esp)
	movl	$0, 16(%esp)
	movl	$268435455, 4(%esp)
	movl	$0, 8(%esp)
	movl	$813, (%esp)
	call	create_option_info
	.loc 2 1606 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	init_options, .-init_options
	.local	options
	.comm	options,4,4
	.local	current_option
	.comm	current_option,4,4
	.local	current_combo
	.comm	current_combo,4,4
	.local	current_implied
	.comm	current_implied,4,4
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI3-.LFB3
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
	.long	.LFB4
	.long	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI5-.LFB4
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI9-.LFB5
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
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI14-.LFB6
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI20-.LFB7
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI24-.LFB8
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI28-.LFB9
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI32-.LFB10
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI36-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI37
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
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI42-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI43
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI48-.LFB13
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI52-.LFB14
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
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI57-.LFB15
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
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI63-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI65-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI67-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI69-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI71-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI73-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI76-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI79-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI81-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI84-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI87-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI89-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI91-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI92
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI97-.LFB29
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
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI102-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI103
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI106-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI107
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI110-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI111
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE60:
	.file 3 "../../driver/basic.h"
	.file 4 "../../driver/lang_defs.h"
	.file 5 "../../driver/phases.h"
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
	.long	.LFE3-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB4-.Ltext0
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
	.long	.LFE4-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB17-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI65-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI66-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB21-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI73-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI74-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB23-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI79-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI80-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB27-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI90-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB28-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI92-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB31-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB32-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI110-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI111-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x10f9
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/options.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"boolean"
	.byte	0x3
	.byte	0x2c
	.long	0x85
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.long	0x115
	.byte	0x4
	.byte	0x4
	.byte	0x2f
	.uleb128 0x6
	.string	"L_NONE"
	.sleb128 0
	.uleb128 0x6
	.string	"L_ALL"
	.sleb128 1
	.uleb128 0x6
	.string	"L_cpp"
	.sleb128 2
	.uleb128 0x6
	.string	"L_cc"
	.sleb128 3
	.uleb128 0x6
	.string	"L_CC"
	.sleb128 4
	.uleb128 0x6
	.string	"L_f77"
	.sleb128 5
	.uleb128 0x6
	.string	"L_f90"
	.sleb128 6
	.uleb128 0x6
	.string	"L_as"
	.sleb128 7
	.uleb128 0x6
	.string	"L_ld"
	.sleb128 8
	.uleb128 0x6
	.string	"L_internal"
	.sleb128 9
	.uleb128 0x6
	.string	"L_LAST"
	.sleb128 10
	.byte	0x0
	.uleb128 0x4
	.string	"languages_t"
	.byte	0x4
	.byte	0x3b
	.long	0xb1
	.uleb128 0x5
	.long	0x34f
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.uleb128 0x6
	.string	"P_NONE"
	.sleb128 0
	.uleb128 0x6
	.string	"P_All"
	.sleb128 1
	.uleb128 0x6
	.string	"P_m4"
	.sleb128 2
	.uleb128 0x6
	.string	"P_ratfor"
	.sleb128 3
	.uleb128 0x6
	.string	"P_cpp"
	.sleb128 4
	.uleb128 0x6
	.string	"P_gcpp"
	.sleb128 5
	.uleb128 0x6
	.string	"P_gcpp_plus"
	.sleb128 6
	.uleb128 0x6
	.string	"P_c_cpp"
	.sleb128 7
	.uleb128 0x6
	.string	"P_cplus_cpp"
	.sleb128 8
	.uleb128 0x6
	.string	"P_f_cpp"
	.sleb128 9
	.uleb128 0x6
	.string	"P_f90_cpp"
	.sleb128 10
	.uleb128 0x6
	.string	"P_f_coco"
	.sleb128 11
	.uleb128 0x6
	.string	"P_any_cpp"
	.sleb128 12
	.uleb128 0x6
	.string	"P_pfa"
	.sleb128 13
	.uleb128 0x6
	.string	"P_pca"
	.sleb128 14
	.uleb128 0x6
	.string	"P_mpc"
	.sleb128 15
	.uleb128 0x6
	.string	"P_any_optfe"
	.sleb128 16
	.uleb128 0x6
	.string	"P_f_fe"
	.sleb128 17
	.uleb128 0x6
	.string	"P_cppf_fe"
	.sleb128 18
	.uleb128 0x6
	.string	"P_f90_fe"
	.sleb128 19
	.uleb128 0x6
	.string	"P_cppf90_fe"
	.sleb128 20
	.uleb128 0x6
	.string	"P_c_gfe"
	.sleb128 21
	.uleb128 0x6
	.string	"P_cplus_gfe"
	.sleb128 22
	.uleb128 0x6
	.string	"P_any_fe"
	.sleb128 23
	.uleb128 0x6
	.string	"P_pseudo_f_fe"
	.sleb128 24
	.uleb128 0x6
	.string	"P_pseudo_c_fe"
	.sleb128 25
	.uleb128 0x6
	.string	"P_lister"
	.sleb128 26
	.uleb128 0x6
	.string	"P_inline"
	.sleb128 27
	.uleb128 0x6
	.string	"P_ipl"
	.sleb128 28
	.uleb128 0x6
	.string	"p_any_ipl"
	.sleb128 29
	.uleb128 0x6
	.string	"P_be"
	.sleb128 30
	.uleb128 0x6
	.string	"P_as"
	.sleb128 31
	.uleb128 0x6
	.string	"P_gas"
	.sleb128 32
	.uleb128 0x6
	.string	"P_any_as"
	.sleb128 33
	.uleb128 0x6
	.string	"P_dsm_prelink"
	.sleb128 34
	.uleb128 0x6
	.string	"P_ipa_link"
	.sleb128 35
	.uleb128 0x6
	.string	"P_collect"
	.sleb128 36
	.uleb128 0x6
	.string	"P_ld"
	.sleb128 37
	.uleb128 0x6
	.string	"P_ldplus"
	.sleb128 38
	.uleb128 0x6
	.string	"P_any_ld"
	.sleb128 39
	.uleb128 0x6
	.string	"P_cord"
	.sleb128 40
	.uleb128 0x6
	.string	"P_pixie"
	.sleb128 41
	.uleb128 0x6
	.string	"P_prof"
	.sleb128 42
	.uleb128 0x6
	.string	"P_ar"
	.sleb128 43
	.uleb128 0x6
	.string	"P_startup"
	.sleb128 44
	.uleb128 0x6
	.string	"P_include"
	.sleb128 45
	.uleb128 0x6
	.string	"P_library"
	.sleb128 46
	.uleb128 0x6
	.string	"P_alt_library"
	.sleb128 47
	.uleb128 0x6
	.string	"P_sl2startup"
	.sleb128 48
	.uleb128 0x6
	.string	"P_LAST"
	.sleb128 49
	.byte	0x0
	.uleb128 0x4
	.string	"phases_t"
	.byte	0x4
	.byte	0x97
	.long	0x128
	.uleb128 0x4
	.string	"mask_t"
	.byte	0x4
	.byte	0xad
	.long	0x36d
	.uleb128 0x2
	.string	"long long int"
	.byte	0x8
	.byte	0x5
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
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.byte	0x4
	.long	0xa9
	.uleb128 0x8
	.long	0x447
	.string	"option_list_rec"
	.byte	0xc
	.byte	0x1
	.byte	0x37
	.uleb128 0x9
	.long	.LASF1
	.byte	0x1
	.byte	0x38
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"name"
	.byte	0x1
	.byte	0x39
	.long	0x3fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"next"
	.byte	0x1
	.byte	0x3a
	.long	0x447
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x402
	.uleb128 0x4
	.string	"option_list_t"
	.byte	0x1
	.byte	0x3b
	.long	0x402
	.uleb128 0x8
	.long	0x497
	.string	"index_list_rec"
	.byte	0x8
	.byte	0x1
	.byte	0x3d
	.uleb128 0x9
	.long	.LASF1
	.byte	0x1
	.byte	0x3e
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"next"
	.byte	0x1
	.byte	0x3f
	.long	0x497
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x462
	.uleb128 0x4
	.string	"index_list_t"
	.byte	0x1
	.byte	0x40
	.long	0x462
	.uleb128 0x8
	.long	0x53b
	.string	"option_info_rec"
	.byte	0x20
	.byte	0x1
	.byte	0x42
	.uleb128 0xa
	.string	"valid_langs"
	.byte	0x1
	.byte	0x43
	.long	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"valid_phases"
	.byte	0x1
	.byte	0x44
	.long	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"combo_list"
	.byte	0x1
	.byte	0x45
	.long	0x53b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"implies"
	.byte	0x1
	.byte	0x46
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"name"
	.byte	0x1
	.byte	0x47
	.long	0x3fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF2
	.byte	0x1
	.byte	0x48
	.long	0x3fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.long	0x49d
	.uleb128 0x7
	.byte	0x4
	.long	0x44d
	.uleb128 0x4
	.string	"option_info_t"
	.byte	0x1
	.byte	0x49
	.long	0x4b1
	.uleb128 0xb
	.long	0x594
	.byte	0x1
	.string	"get_option_name"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x3fc
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x57
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xb
	.long	0x5cc
	.byte	0x1
	.string	"get_option_help"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	0x3fc
	.long	.LFB3
	.long	.LFE3
	.long	.LLST1
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x63
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xb
	.long	0x605
	.byte	0x1
	.string	"option_has_blank"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	0x93
	.long	.LFB4
	.long	.LFE4
	.long	.LLST2
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x6b
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xd
	.long	0x64d
	.byte	0x1
	.string	"set_language_for_option"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST3
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x73
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0x73
	.long	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xd
	.long	0x695
	.byte	0x1
	.string	"add_language_for_option"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST4
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x79
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0x79
	.long	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xb
	.long	0x6e1
	.byte	0x1
	.string	"option_matches_language"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	0x93
	.long	.LFB7
	.long	.LFE7
	.long	.LLST5
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x80
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0x80
	.long	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xb
	.long	0x71c
	.byte	0x1
	.string	"is_internal_option"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.long	0x93
	.long	.LFB8
	.long	.LFE8
	.long	.LLST6
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x87
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xd
	.long	0x754
	.byte	0x1
	.string	"set_internal_option"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST7
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x8e
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xb
	.long	0x79d
	.byte	0x1
	.string	"option_matches_phase"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.long	0x93
	.long	.LFB10
	.long	.LFE10
	.long	.LLST8
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x95
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x95
	.long	0x34f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xd
	.long	0x7e2
	.byte	0x1
	.string	"add_phase_for_option"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST9
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x9c
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x9c
	.long	0x34f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xd
	.long	0x82a
	.byte	0x1
	.string	"remove_phase_for_option"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST10
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0xa3
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0xa3
	.long	0x34f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.string	"double_max_options"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST11
	.uleb128 0xb
	.long	0x890
	.byte	0x1
	.string	"add_new_option"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.long	0x85
	.long	.LFB14
	.long	.LFE14
	.long	.LLST12
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0xb3
	.long	0x3fc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0xb5
	.long	0x541
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xb
	.long	0x912
	.byte	0x1
	.string	"add_derived_option"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	0x85
	.long	.LFB15
	.long	.LFE15
	.long	.LLST13
	.uleb128 0xe
	.string	"parent"
	.byte	0x1
	.byte	0xcd
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0xcd
	.long	0x3fc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"pi"
	.byte	0x1
	.byte	0xcf
	.long	0x541
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"ni"
	.byte	0x1
	.byte	0xd0
	.long	0x541
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"loc"
	.byte	0x1
	.byte	0xd1
	.long	0x3fc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"new"
	.byte	0x1
	.byte	0xd2
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xb
	.long	0x94c
	.byte	0x1
	.string	"is_derived_option"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	0x93
	.long	.LFB16
	.long	.LFE16
	.long	.LLST14
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0xf4
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xb
	.long	0x987
	.byte	0x1
	.string	"get_derived_parent"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	0x85
	.long	.LFB17
	.long	.LFE17
	.long	.LLST15
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0xfb
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.string	"first_option"
	.byte	0x1
	.value	0x10d
	.byte	0x1
	.long	0x85
	.long	.LFB18
	.long	.LFE18
	.long	.LLST16
	.uleb128 0x11
	.byte	0x1
	.string	"next_option"
	.byte	0x1
	.value	0x114
	.byte	0x1
	.long	0x85
	.long	.LFB19
	.long	.LFE19
	.long	.LLST17
	.uleb128 0x11
	.byte	0x1
	.string	"no_more_options"
	.byte	0x1
	.value	0x11b
	.byte	0x1
	.long	0x93
	.long	.LFB20
	.long	.LFE20
	.long	.LLST18
	.uleb128 0x12
	.long	0xa2d
	.byte	0x1
	.string	"first_combo_item"
	.byte	0x1
	.value	0x128
	.byte	0x1
	.long	0x85
	.long	.LFB21
	.long	.LFE21
	.long	.LLST19
	.uleb128 0x13
	.long	.LASF4
	.byte	0x1
	.value	0x127
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0xa67
	.byte	0x1
	.string	"next_combo_item"
	.byte	0x1
	.value	0x132
	.byte	0x1
	.long	0x85
	.long	.LFB22
	.long	.LFE22
	.long	.LLST20
	.uleb128 0x13
	.long	.LASF4
	.byte	0x1
	.value	0x131
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0xaa5
	.byte	0x1
	.string	"no_more_combo_items"
	.byte	0x1
	.value	0x13c
	.byte	0x1
	.long	0x93
	.long	.LFB23
	.long	.LFE23
	.long	.LLST21
	.uleb128 0x13
	.long	.LASF4
	.byte	0x1
	.value	0x13b
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0xae4
	.byte	0x1
	.string	"first_implied_option"
	.byte	0x1
	.value	0x149
	.byte	0x1
	.long	0x85
	.long	.LFB24
	.long	.LFE24
	.long	.LLST22
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x148
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0xb22
	.byte	0x1
	.string	"next_implied_option"
	.byte	0x1
	.value	0x153
	.byte	0x1
	.long	0x85
	.long	.LFB25
	.long	.LFE25
	.long	.LLST23
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x152
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0xb64
	.byte	0x1
	.string	"no_more_implied_options"
	.byte	0x1
	.value	0x15d
	.byte	0x1
	.long	0x93
	.long	.LFB26
	.long	.LFE26
	.long	.LLST24
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x15c
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.string	"get_current_implied_name"
	.byte	0x1
	.value	0x165
	.byte	0x1
	.long	0x3fc
	.long	.LFB27
	.long	.LFE27
	.long	.LLST25
	.uleb128 0x14
	.long	0xbe1
	.byte	0x1
	.string	"dump_option"
	.byte	0x1
	.value	0x16b
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST26
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x16a
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"pi"
	.byte	0x1
	.value	0x16c
	.long	0x541
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"pc"
	.byte	0x1
	.value	0x16d
	.long	0x53b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x16
	.long	0xc5d
	.string	"create_option_info"
	.byte	0x2
	.byte	0x2b
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST27
	.uleb128 0xc
	.long	.LASF3
	.byte	0x2
	.byte	0x2a
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"lang_mask"
	.byte	0x2
	.byte	0x2a
	.long	0x35f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"phase_mask"
	.byte	0x2
	.byte	0x2a
	.long	0x35f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"name"
	.byte	0x2
	.byte	0x2a
	.long	0x3fc
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0xc
	.long	.LASF2
	.byte	0x2
	.byte	0x2a
	.long	0x3fc
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x16
	.long	0xcbf
	.string	"create_implies_item"
	.byte	0x2
	.byte	0x36
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST28
	.uleb128 0xe
	.string	"key"
	.byte	0x2
	.byte	0x35
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"index"
	.byte	0x2
	.byte	0x35
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"name"
	.byte	0x2
	.byte	0x35
	.long	0x3fc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.string	"p"
	.byte	0x2
	.byte	0x37
	.long	0x541
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0xd10
	.string	"create_combo_item"
	.byte	0x2
	.byte	0x41
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST29
	.uleb128 0xe
	.string	"key"
	.byte	0x2
	.byte	0x40
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"index"
	.byte	0x2
	.byte	0x40
	.long	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"p"
	.byte	0x2
	.byte	0x42
	.long	0x53b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.string	"init_options"
	.byte	0x2
	.byte	0x4c
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST30
	.uleb128 0x10
	.string	"options"
	.byte	0x1
	.byte	0x4c
	.long	0xd43
	.byte	0x5
	.byte	0x3
	.long	options
	.uleb128 0x7
	.byte	0x4
	.long	0x547
	.uleb128 0x10
	.string	"last_option"
	.byte	0x1
	.byte	0x53
	.long	0x85
	.byte	0x5
	.byte	0x3
	.long	last_option
	.uleb128 0x15
	.string	"current_option"
	.byte	0x1
	.value	0x109
	.long	0x85
	.byte	0x5
	.byte	0x3
	.long	current_option
	.uleb128 0x15
	.string	"current_combo"
	.byte	0x1
	.value	0x124
	.long	0x53b
	.byte	0x5
	.byte	0x3
	.long	current_combo
	.uleb128 0x15
	.string	"current_implied"
	.byte	0x1
	.value	0x145
	.long	0x541
	.byte	0x5
	.byte	0x3
	.long	current_implied
	.uleb128 0x18
	.string	"roundoff"
	.byte	0x5
	.byte	0x4b
	.long	0xa9
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"dump_outfile_to_stdout"
	.byte	0x5
	.byte	0x57
	.long	0x93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_outfile_to_stdout
	.uleb128 0x19
	.string	"max_options"
	.byte	0x1
	.byte	0x4d
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	max_options
	.uleb128 0x19
	.string	"msglevel"
	.byte	0x2
	.byte	0x6
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	msglevel
	.uleb128 0x19
	.string	"skip_as"
	.byte	0x2
	.byte	0x7
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	skip_as
	.uleb128 0x19
	.string	"shared"
	.byte	0x2
	.byte	0x8
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	shared
	.uleb128 0x19
	.string	"rflag"
	.byte	0x2
	.byte	0x9
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rflag
	.uleb128 0x19
	.string	"qwalign2"
	.byte	0x2
	.byte	0xa
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	qwalign2
	.uleb128 0x19
	.string	"qwalign1"
	.byte	0x2
	.byte	0xb
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	qwalign1
	.uleb128 0x19
	.string	"iflag"
	.byte	0x2
	.byte	0xc
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	iflag
	.uleb128 0x19
	.string	"abi"
	.byte	0x2
	.byte	0xd
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	abi
	.uleb128 0x19
	.string	"sse2"
	.byte	0x2
	.byte	0xe
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sse2
	.uleb128 0x19
	.string	"ospace"
	.byte	0x2
	.byte	0xf
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ospace
	.uleb128 0x19
	.string	"mpkind"
	.byte	0x2
	.byte	0x10
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	mpkind
	.uleb128 0x19
	.string	"sse3"
	.byte	0x2
	.byte	0x11
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sse3
	.uleb128 0x19
	.string	"m3dnow"
	.byte	0x2
	.byte	0x12
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	m3dnow
	.uleb128 0x19
	.string	"isa"
	.byte	0x2
	.byte	0x13
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	isa
	.uleb128 0x19
	.string	"ipa"
	.byte	0x2
	.byte	0x14
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ipa
	.uleb128 0x19
	.string	"use_h264libs"
	.byte	0x2
	.byte	0x15
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use_h264libs
	.uleb128 0x19
	.string	"glevel"
	.byte	0x2
	.byte	0x16
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	glevel
	.uleb128 0x19
	.string	"use_ftpp"
	.byte	0x2
	.byte	0x17
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use_ftpp
	.uleb128 0x19
	.string	"fortran_form"
	.byte	0x2
	.byte	0x18
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fortran_form
	.uleb128 0x19
	.string	"pic"
	.byte	0x2
	.byte	0x19
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pic
	.uleb128 0x19
	.string	"fmath_errno"
	.byte	0x2
	.byte	0x1a
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fmath_errno
	.uleb128 0x19
	.string	"ffast_math"
	.byte	0x2
	.byte	0x1b
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ffast_math
	.uleb128 0x19
	.string	"fbuiltin"
	.byte	0x2
	.byte	0x1c
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fbuiltin
	.uleb128 0x19
	.string	"use_coco"
	.byte	0x2
	.byte	0x1d
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use_coco
	.uleb128 0x19
	.string	"dflag"
	.byte	0x2
	.byte	0x1e
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dflag
	.uleb128 0x19
	.string	"cordflag"
	.byte	0x2
	.byte	0x1f
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cordflag
	.uleb128 0x19
	.string	"io_byteswap"
	.byte	0x2
	.byte	0x20
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	io_byteswap
	.uleb128 0x19
	.string	"compat_gcc"
	.byte	0x2
	.byte	0x21
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	compat_gcc
	.uleb128 0x19
	.string	"use_bblibs"
	.byte	0x2
	.byte	0x22
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use_bblibs
	.uleb128 0x19
	.string	"isstatic"
	.byte	0x2
	.byte	0x23
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	isstatic
	.uleb128 0x19
	.string	"ansi"
	.byte	0x2
	.byte	0x24
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ansi
	.uleb128 0x19
	.string	"olevel"
	.byte	0x2
	.byte	0x25
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	olevel
	.uleb128 0x19
	.string	"standard_cplusplus"
	.byte	0x2
	.byte	0x26
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	standard_cplusplus
	.uleb128 0x19
	.string	"gnum"
	.byte	0x2
	.byte	0x27
	.long	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gnum
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.long	0x43d
	.value	0x2
	.long	.Ldebug_info0
	.long	0x10fd
	.long	0x55c
	.string	"get_option_name"
	.long	0x594
	.string	"get_option_help"
	.long	0x5cc
	.string	"option_has_blank"
	.long	0x605
	.string	"set_language_for_option"
	.long	0x64d
	.string	"add_language_for_option"
	.long	0x695
	.string	"option_matches_language"
	.long	0x6e1
	.string	"is_internal_option"
	.long	0x71c
	.string	"set_internal_option"
	.long	0x754
	.string	"option_matches_phase"
	.long	0x79d
	.string	"add_phase_for_option"
	.long	0x7e2
	.string	"remove_phase_for_option"
	.long	0x84d
	.string	"add_new_option"
	.long	0x890
	.string	"add_derived_option"
	.long	0x912
	.string	"is_derived_option"
	.long	0x94c
	.string	"get_derived_parent"
	.long	0x987
	.string	"first_option"
	.long	0x9aa
	.string	"next_option"
	.long	0x9cc
	.string	"no_more_options"
	.long	0x9f2
	.string	"first_combo_item"
	.long	0xa2d
	.string	"next_combo_item"
	.long	0xa67
	.string	"no_more_combo_items"
	.long	0xaa5
	.string	"first_implied_option"
	.long	0xae4
	.string	"next_implied_option"
	.long	0xb22
	.string	"no_more_implied_options"
	.long	0xb64
	.string	"get_current_implied_name"
	.long	0xb93
	.string	"dump_option"
	.long	0xd10
	.string	"init_options"
	.long	0xdcb
	.string	"dump_outfile_to_stdout"
	.long	0xdf0
	.string	"max_options"
	.long	0xe0a
	.string	"msglevel"
	.long	0xe21
	.string	"skip_as"
	.long	0xe37
	.string	"shared"
	.long	0xe4c
	.string	"rflag"
	.long	0xe60
	.string	"qwalign2"
	.long	0xe77
	.string	"qwalign1"
	.long	0xe8e
	.string	"iflag"
	.long	0xea2
	.string	"abi"
	.long	0xeb4
	.string	"sse2"
	.long	0xec7
	.string	"ospace"
	.long	0xedc
	.string	"mpkind"
	.long	0xef1
	.string	"sse3"
	.long	0xf04
	.string	"m3dnow"
	.long	0xf19
	.string	"isa"
	.long	0xf2b
	.string	"ipa"
	.long	0xf3d
	.string	"use_h264libs"
	.long	0xf58
	.string	"glevel"
	.long	0xf6d
	.string	"use_ftpp"
	.long	0xf84
	.string	"fortran_form"
	.long	0xf9f
	.string	"pic"
	.long	0xfb1
	.string	"fmath_errno"
	.long	0xfcb
	.string	"ffast_math"
	.long	0xfe4
	.string	"fbuiltin"
	.long	0xffb
	.string	"use_coco"
	.long	0x1012
	.string	"dflag"
	.long	0x1026
	.string	"cordflag"
	.long	0x103d
	.string	"io_byteswap"
	.long	0x1057
	.string	"compat_gcc"
	.long	0x1070
	.string	"use_bblibs"
	.long	0x1089
	.string	"isstatic"
	.long	0x10a0
	.string	"ansi"
	.long	0x10b3
	.string	"olevel"
	.long	0x10c8
	.string	"standard_cplusplus"
	.long	0x10e9
	.string	"gnum"
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
	.string	"info_index"
.LASF2:
	.string	"help_msg"
.LASF3:
	.string	"flag"
.LASF4:
	.string	"combo_flag"
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
