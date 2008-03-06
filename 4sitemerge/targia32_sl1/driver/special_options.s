	.file	"special_options.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.type	compiler_version, @object
	.size	compiler_version, 5
compiler_version:
	.string	"7.40"
	.section	.rodata
.LC0:
	.string	"OPEN64_CC"
.LC1:
	.string	"-ansi"
	.align 4
.LC2:
	.string	"XPG compiles must specify explicit optlevel rather than -O"
.LC3:
	.string	"COMPILER_IR_VERSION_CHECK"
.LC4:
	.string	"off"
.LC5:
	.string	"ir_version_check=off"
	.text
.globl set_defaults
	.type	set_defaults, @function
set_defaults:
.LFB5:
	.file 1 "../../driver/special_options.c"
	.loc 1 63 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$60, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 69 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -20(%ebp)
	.loc 1 71 0
	cmpl	$0, -20(%ebp)
	je	.L2
	movl	ansi@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	is_toggled@PLT
	testl	%eax, %eax
	jne	.L2
	.loc 1 82 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$6, -40(%ebp)
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
	jne	.L2
	.loc 1 83 0
	movl	$2, 4(%esp)
	movl	ansi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 84 0
	movl	$515, (%esp)
	call	prepend_option_seen@PLT
.L2:
	.loc 1 89 0
	movl	xpg_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L6
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L6
	movl	$705, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L6
	.loc 1 90 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L6:
.LBB2:
	.loc 1 94 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -16(%ebp)
	.loc 1 95 0
	cmpl	$0, -16(%ebp)
	je	.L10
	.loc 1 96 0
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -48(%ebp)
	movl	$4, -52(%ebp)
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
	jne	.L10
	.loc 1 97 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$744, (%esp)
	call	add_string_option@PLT
	movl	%eax, -24(%ebp)
	.loc 1 99 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	prepend_option_seen@PLT
.L10:
.LBE2:
	.loc 1 127 0
	movl	$48, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 128 0
	movl	$50, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 130 0
	movl	ansi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L13
	.loc 1 131 0
	movl	$0, 4(%esp)
	movl	ansi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L13:
	.loc 1 154 0
	movl	$18, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 155 0
	movl	$19, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 156 0
	movl	$20, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 157 0
	movl	$22, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 158 0
	movl	$111, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 159 0
	movl	$462, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 160 0
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L15
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L15
	.loc 1 161 0
	movl	$1, 4(%esp)
	movl	shared@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L15:
	.loc 1 167 0
	movl	isstatic@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	is_toggled@PLT
	testl	%eax, %eax
	jne	.L18
	.loc 1 168 0
	movl	$1, 4(%esp)
	movl	isstatic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 169 0
	movl	$508, (%esp)
	call	prepend_option_seen@PLT
.L18:
	.loc 1 173 0
	movl	use_ftpp@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	is_toggled@PLT
	testl	%eax, %eax
	jne	.L22
	.loc 1 174 0
	movl	$0, 4(%esp)
	movl	use_ftpp@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L22:
	.loc 1 177 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	set_defaults, .-set_defaults
	.type	get_olevel_flag, @function
get_olevel_flag:
.LFB6:
	.loc 1 182 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	subl	$8, %esp
.LCFI8:
	.loc 1 183 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$1, -8(%ebp)
	je	.L26
	cmpl	$1, -8(%ebp)
	jg	.L29
	cmpl	$0, -8(%ebp)
	je	.L25
	jmp	.L24
.L29:
	cmpl	$2, -8(%ebp)
	je	.L27
	cmpl	$3, -8(%ebp)
	je	.L28
	jmp	.L24
.L25:
	.loc 1 184 0
	movl	$703, -4(%ebp)
	jmp	.L30
.L26:
	.loc 1 185 0
	movl	$702, -4(%ebp)
	jmp	.L30
.L27:
	.loc 1 186 0
	movl	$701, -4(%ebp)
	jmp	.L30
.L28:
	.loc 1 187 0
	movl	$700, -4(%ebp)
	jmp	.L30
.L24:
	.loc 1 188 0
	movl	$0, -4(%ebp)
.L30:
	movl	-4(%ebp), %eax
	.loc 1 190 0
	leave
	ret
.LFE6:
	.size	get_olevel_flag, .-get_olevel_flag
	.section	.rodata
.LC6:
	.string	"driver didn't find -O flag"
	.text
.globl turn_down_opt_level
	.type	turn_down_opt_level, @function
turn_down_opt_level:
.LFB7:
	.loc 1 195 0
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
	.loc 1 198 0
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L33
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L33:
	.loc 1 199 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_olevel_flag
	movl	%eax, -12(%ebp)
	.loc 1 200 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_olevel_flag
	movl	%eax, -8(%ebp)
	.loc 1 201 0
	movl	$705, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L35
	.loc 1 202 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$705, (%esp)
	call	replace_option_seen@PLT
	jmp	.L37
.L35:
	.loc 1 203 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L38
	.loc 1 204 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_option_seen@PLT
	jmp	.L37
.L38:
	.loc 1 206 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L37:
	.loc 1 207 0
	movl	olevel@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 208 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	turn_down_opt_level, .-turn_down_opt_level
	.type	turn_off_ipa, @function
turn_off_ipa:
.LFB8:
	.loc 1 212 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$20, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 214 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 215 0
	movl	ipa@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 217 0
	call	first_option_seen@PLT
	movl	%eax, -8(%ebp)
	jmp	.L42
.L43:
	.loc 1 218 0
	cmpl	$215, -8(%ebp)
	jne	.L44
	.loc 1 219 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_option_unseen@PLT
	jmp	.L46
.L44:
	.loc 1 220 0
	cmpl	$728, -8(%ebp)
	jne	.L47
	.loc 1 221 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_option_unseen@PLT
	jmp	.L46
.L47:
	.loc 1 222 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_derived_option@PLT
	testl	%eax, %eax
	je	.L46
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_derived_parent@PLT
	cmpl	$727, %eax
	jne	.L46
	.loc 1 224 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_option_unseen@PLT
.L46:
	.loc 1 217 0
	call	next_option_seen@PLT
	movl	%eax, -8(%ebp)
.L42:
	call	more_option_seen@PLT
	testl	%eax, %eax
	jne	.L43
	.loc 1 226 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	turn_off_ipa, .-turn_off_ipa
	.section	.rodata
.LC7:
	.string	"_LITTLE_ENDIAN"
	.align 4
.LC8:
	.string	"__LONG_MAX__=9223372036854775807L"
.LC9:
	.string	"_OPENMP=199810"
.LC10:
	.string	"/CC"
.LC11:
	.string	"%d"
	.align 4
.LC12:
	.string	"-g changes optimization to -O0 since no optimization level is specified"
	.align 4
.LC13:
	.string	"-IPA -S combination not allowed, replaced with -S"
	.align 4
.LC14:
	.string	"-fbgen conflicts with -O; changing to -O0"
	.align 4
.LC15:
	.string	"-IPA -fbgen combination not allowed, replaced with -fbgen"
	.align 4
.LC16:
	.string	"-IPA -g combination not allowed, replaced with -g"
	.align 4
.LC17:
	.string	"IPA not supported with -fprofile-arcs"
	.align 4
.LC18:
	.string	"IPA not supported with -ftest-coverage"
.LC19:
	.string	"i"
.LC20:
	.string	"p:i"
	.align 4
.LC21:
	.string	"compiles of WOPT-generated .O files will usually fail due to missing state information"
.LC22:
	.string	"c"
.LC23:
	.string	"w:c"
.LC24:
	.string	"l:w:c"
	.align 4
.LC25:
	.string	"-ar option requires archive name to be specified with -o option"
.LC26:
	.string	"source=off:notes=off"
	.align 4
.LC27:
	.string	"Under Linux, -static is a linker option for using static libraries; if you wanted to put local data in static area, use -static-data instead"
	.text
.globl add_special_options
	.type	add_special_options, @function
add_special_options:
.LFB9:
	.loc 1 230 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$548, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 230 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 235 0
	movl	$0, -524(%ebp)
	.loc 1 243 0
	movl	$19, 4(%esp)
	movl	$714, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 244 0
	movl	$19, 4(%esp)
	movl	$715, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 245 0
	movl	$10, 4(%esp)
	movl	$714, (%esp)
	call	remove_phase_for_option@PLT
	.loc 1 246 0
	movl	$10, 4(%esp)
	movl	$715, (%esp)
	call	remove_phase_for_option@PLT
	.loc 1 248 0
	movl	$20, 4(%esp)
	movl	$745, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 249 0
	movl	$20, 4(%esp)
	movl	$684, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 250 0
	movl	$20, 4(%esp)
	movl	$742, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 251 0
	movl	$20, 4(%esp)
	movl	$695, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 253 0
	movl	use_ftpp@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L54
	.loc 1 260 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$745, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 265 0
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 266 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$745, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 267 0
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 268 0
	movl	$17, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 269 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L54
	.loc 1 270 0
	movl	$20, 4(%esp)
	movl	$209, (%esp)
	call	add_phase_for_option@PLT
.L54:
	.loc 1 274 0
	movl	$59, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L57
	movl	$58, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L57
	.loc 1 278 0
	movl	$21, 4(%esp)
	movl	$59, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 279 0
	movl	$22, 4(%esp)
	movl	$59, (%esp)
	call	add_phase_for_option@PLT
.L57:
	.loc 1 313 0
	movl	mpkind@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L60
	movl	Disable_open_mp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L60
	.loc 1 318 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$745, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 319 0
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	prepend_option_seen@PLT
.L60:
	.loc 1 322 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L63
	.loc 1 323 0
	movl	default_olevel@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	olevel@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 324 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L65
	.loc 1 326 0
	movl	olevel@GOT(%ebx), %eax
	movl	$0, (%eax)
.L65:
	.loc 1 328 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_olevel_flag
	movl	%eax, -532(%ebp)
	.loc 1 329 0
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 331 0
	movl	$1, -524(%ebp)
.L63:
	.loc 1 362 0
	movl	nostdinc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L67
	.loc 1 364 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L67
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L67
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L67
	.loc 1 365 0
	movl	$45, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, %edx
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	$733, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 367 0
	movl	$4, 4(%esp)
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	set_language_for_option@PLT
	.loc 1 368 0
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
.L67:
	.loc 1 371 0
	movl	gnum@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	is_toggled@PLT
	testl	%eax, %eax
	jne	.L72
	.loc 1 373 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L74
	.loc 1 375 0
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L76
	.loc 1 376 0
	movl	$8, 4(%esp)
	movl	gnum@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	jmp	.L79
.L76:
	.loc 1 378 0
	movl	$0, 4(%esp)
	movl	gnum@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	jmp	.L79
.L74:
	.loc 1 381 0
	movl	$8, 4(%esp)
	movl	gnum@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L79:
	.loc 1 383 0
	movl	gnum@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 384 0
	leal	-520(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$738, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 385 0
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	prepend_option_seen@PLT
.L72:
	.loc 1 392 0
	cmpl	$1, -524(%ebp)
	jne	.L80
	movl	glevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L80
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L80
	.loc 1 393 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	turn_down_opt_level@PLT
.L80:
	.loc 1 401 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L84
	movl	inline_t@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L84
	.loc 1 402 0
	movl	inline_t@GOT(%ebx), %eax
	movl	$0, (%eax)
.L84:
	.loc 1 412 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L87
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L89
.L87:
	movl	$246, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L89
	.loc 1 414 0
	movl	glevel@GOT(%ebx), %eax
	movl	$2, (%eax)
	.loc 1 415 0
	movl	$247, 4(%esp)
	movl	$246, (%esp)
	call	replace_option_seen@PLT
.L89:
	.loc 1 428 0
	movl	$688, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L91
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L91
	.loc 1 429 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	turn_off_ipa
.L91:
	.loc 1 441 0
	movl	Gen_feedback@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L94
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L94
	.loc 1 442 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	turn_down_opt_level@PLT
.L94:
	.loc 1 444 0
	movl	Gen_feedback@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L97
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L97
	.loc 1 445 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	turn_off_ipa
.L97:
	.loc 1 449 0
	movl	glevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L100
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L100
	.loc 1 450 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	turn_off_ipa
.L100:
	.loc 1 453 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L103
	.loc 1 455 0
	movl	$295, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L105
	.loc 1 456 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L105:
	.loc 1 457 0
	movl	$270, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L107
	.loc 1 458 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L107:
	.loc 1 460 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L109
	.loc 1 461 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$694, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	jmp	.L112
.L109:
	.loc 1 463 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$694, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	jmp	.L112
.L103:
	.loc 1 474 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$15, %eax
	jne	.L113
	.loc 1 475 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L113:
	.loc 1 476 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L115
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$15, %eax
	jne	.L117
.L115:
	.loc 1 477 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$694, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 476 0
	jmp	.L112
.L117:
	.loc 1 478 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L118
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$14, %eax
	jne	.L120
.L118:
	.loc 1 479 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$694, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 478 0
	jmp	.L112
.L120:
	.loc 1 481 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$694, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
.L112:
	.loc 1 483 0
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	prepend_option_seen@PLT
	.loc 1 491 0
	movl	$511, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L123
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L123
	.loc 1 492 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L123:
	.loc 1 495 0
	movl	skip_as@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L126
	.loc 1 496 0
	movl	skip_as@GOT(%ebx), %eax
	movl	$0, (%eax)
.L126:
	.loc 1 498 0
	movl	skip_as@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L128
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L128
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$30, %eax
	je	.L128
	.loc 1 501 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$721, (%esp)
	call	add_string_option@PLT
	movl	%eax, -532(%ebp)
	.loc 1 502 0
	movl	-532(%ebp), %eax
	movl	%eax, (%esp)
	call	prepend_option_seen@PLT
.L128:
	.loc 1 505 0
	movl	$80, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L135
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L135
	.loc 1 509 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L135:
	.loc 1 511 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L136
	call	__stack_chk_fail_local
.L136:
	addl	$548, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	add_special_options, .-add_special_options
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
	.byte	0x4
	.long	.LCFI5-.LCFI1
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
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
	.long	.LCFI9-.LFB7
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI13-.LFB8
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI17-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI18
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
	.file 2 "../../driver/basic.h"
	.file 3 "../../driver/lang_defs.h"
	.file 4 "./option_names.h"
	.file 5 "../../driver/errors.h"
	.file 6 "../../driver/opt_actions.h"
	.file 7 "../../driver/file_names.h"
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x871
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/special_options.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.byte	0x4
	.long	0xb8
	.uleb128 0x5
	.string	"boolean"
	.byte	0x2
	.byte	0x2c
	.long	0xb1
	.uleb128 0x5
	.string	"buffer_t"
	.byte	0x2
	.byte	0x2f
	.long	0x15e
	.uleb128 0x6
	.long	0x16f
	.long	0xb8
	.uleb128 0x7
	.long	0x94
	.value	0x1ff
	.byte	0x0
	.uleb128 0x8
	.long	0x1d3
	.byte	0x4
	.byte	0x3
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
	.uleb128 0x5
	.string	"languages_t"
	.byte	0x3
	.byte	0x3b
	.long	0x16f
	.uleb128 0x8
	.long	0x266
	.byte	0x4
	.byte	0x3
	.byte	0x3e
	.uleb128 0x9
	.string	"S_NONE"
	.sleb128 0
	.uleb128 0x9
	.string	"S_c"
	.sleb128 1
	.uleb128 0x9
	.string	"S_C"
	.sleb128 2
	.uleb128 0x9
	.string	"S_f"
	.sleb128 3
	.uleb128 0x9
	.string	"S_F"
	.sleb128 4
	.uleb128 0x9
	.string	"S_f90"
	.sleb128 5
	.uleb128 0x9
	.string	"S_F90"
	.sleb128 6
	.uleb128 0x9
	.string	"S_r"
	.sleb128 7
	.uleb128 0x9
	.string	"S_i"
	.sleb128 8
	.uleb128 0x9
	.string	"S_ii"
	.sleb128 9
	.uleb128 0x9
	.string	"S_s"
	.sleb128 10
	.uleb128 0x9
	.string	"S_S"
	.sleb128 11
	.uleb128 0x9
	.string	"S_I"
	.sleb128 12
	.uleb128 0x9
	.string	"S_B"
	.sleb128 13
	.uleb128 0x9
	.string	"S_N"
	.sleb128 14
	.uleb128 0x9
	.string	"S_O"
	.sleb128 15
	.uleb128 0x9
	.string	"S_o"
	.sleb128 16
	.uleb128 0x9
	.string	"S_LAST"
	.sleb128 17
	.byte	0x0
	.uleb128 0x5
	.string	"source_kind_t"
	.byte	0x3
	.byte	0x51
	.long	0x1e6
	.uleb128 0x8
	.long	0x4a2
	.byte	0x4
	.byte	0x3
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
	.uleb128 0x5
	.string	"phases_t"
	.byte	0x3
	.byte	0x97
	.long	0x27b
	.uleb128 0xa
	.long	0x51a
	.byte	0x1
	.string	"set_defaults"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xb
	.string	"flag"
	.byte	0x1
	.byte	0x40
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"psc_cc"
	.byte	0x1
	.byte	0x45
	.long	0x139
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xb
	.string	"ir_version_check"
	.byte	0x1
	.byte	0x5e
	.long	0x139
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x554
	.string	"get_olevel_flag"
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	0xb1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0xe
	.string	"olevel"
	.byte	0x1
	.byte	0xb5
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.long	0x5c3
	.byte	0x1
	.string	"turn_down_opt_level"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0xe
	.string	"new_olevel"
	.byte	0x1
	.byte	0xc2
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"msg"
	.byte	0x1
	.byte	0xc2
	.long	0x139
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.string	"flag"
	.byte	0x1
	.byte	0xc4
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"new_flag"
	.byte	0x1
	.byte	0xc5
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.long	0x602
	.string	"turn_off_ipa"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0xe
	.string	"msg"
	.byte	0x1
	.byte	0xd3
	.long	0x139
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"flag"
	.byte	0x1
	.byte	0xd5
	.long	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xa
	.long	0x679
	.byte	0x1
	.string	"add_special_options"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0xb
	.string	"flag"
	.byte	0x1
	.byte	0xe7
	.long	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0xe8
	.long	0x14e
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.byte	0xe9
	.long	0x139
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0xb
	.string	"undefined_olevel_flag"
	.byte	0x1
	.byte	0xeb
	.long	0x13f
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.byte	0x0
	.uleb128 0x6
	.long	0x689
	.long	0xb8
	.uleb128 0x10
	.long	0x94
	.byte	0x4
	.byte	0x0
	.uleb128 0xb
	.string	"compiler_version"
	.byte	0x1
	.byte	0x3b
	.long	0x679
	.byte	0x5
	.byte	0x3
	.long	compiler_version
	.uleb128 0x11
	.string	"invoked_lang"
	.byte	0x3
	.byte	0x99
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"source_kind"
	.byte	0x3
	.byte	0x9c
	.long	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"last_phase"
	.byte	0x3
	.byte	0xa0
	.long	0x4a2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"skip_as"
	.byte	0x4
	.value	0x328
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"shared"
	.byte	0x4
	.value	0x329
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"abi"
	.byte	0x4
	.value	0x32e
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"mpkind"
	.byte	0x4
	.value	0x331
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"ipa"
	.byte	0x4
	.value	0x335
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"glevel"
	.byte	0x4
	.value	0x337
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"use_ftpp"
	.byte	0x4
	.value	0x338
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"isstatic"
	.byte	0x4
	.value	0x344
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"ansi"
	.byte	0x4
	.value	0x345
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"olevel"
	.byte	0x4
	.value	0x346
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"gnum"
	.byte	0x4
	.value	0x348
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"fullwarn"
	.byte	0x5
	.byte	0x32
	.long	0x13f
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"nostdinc"
	.byte	0x6
	.byte	0x66
	.long	0x13f
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"inline_t"
	.byte	0x6
	.byte	0x6a
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"xpg_flag"
	.byte	0x6
	.byte	0x71
	.long	0x13f
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"default_olevel"
	.byte	0x6
	.byte	0x73
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"keep_flag"
	.byte	0x7
	.byte	0x2b
	.long	0x13f
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"outfile"
	.byte	0x8
	.byte	0x2d
	.long	0x139
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"Gen_feedback"
	.byte	0x8
	.byte	0x47
	.long	0x13f
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"Disable_open_mp"
	.byte	0x8
	.byte	0x49
	.long	0x13f
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.string	"dump_outfile_to_stdout"
	.byte	0x8
	.byte	0x57
	.long	0x13f
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x13
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
	.long	0x6a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x875
	.long	0x4b2
	.string	"set_defaults"
	.long	0x554
	.string	"turn_down_opt_level"
	.long	0x602
	.string	"add_special_options"
	.long	0x84f
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
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
