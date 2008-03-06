	.file	"opt_actions.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	last_toggle_index
	.comm	last_toggle_index,4,4
	.local	inline_on_seen
	.comm	inline_on_seen,4,4
.globl inline_t
	.data
	.align 4
	.type	inline_t, @object
	.size	inline_t, 4
inline_t:
	.long	-1
.globl dashdash_flag
	.bss
	.align 4
	.type	dashdash_flag, @object
	.size	dashdash_flag, 4
dashdash_flag:
	.zero	4
.globl read_stdin
	.align 4
	.type	read_stdin, @object
	.size	read_stdin, 4
read_stdin:
	.zero	4
.globl xpg_flag
	.align 4
	.type	xpg_flag, @object
	.size	xpg_flag, 4
xpg_flag:
	.zero	4
.globl default_olevel
	.data
	.align 4
	.type	default_olevel, @object
	.size	default_olevel, 4
default_olevel:
	.long	2
	.align 4
	.type	default_isa, @object
	.size	default_isa, 4
default_isa:
	.long	-1
	.align 4
	.type	default_proc, @object
	.size	default_proc, 4
default_proc:
	.long	-1
.globl instrumentation_invoked
	.align 4
	.type	instrumentation_invoked, @object
	.size	instrumentation_invoked, 4
instrumentation_invoked:
	.long	-1
.globl profile_type
	.bss
	.align 4
	.type	profile_type, @object
	.size	profile_type, 4
profile_type:
	.zero	4
.globl ftz_crt
	.align 4
	.type	ftz_crt, @object
	.size	ftz_crt, 4
ftz_crt:
	.zero	4
.globl proc
	.data
	.align 4
	.type	proc, @object
	.size	proc, 4
proc:
	.long	-1
	.align 4
	.type	target_supported_abi, @object
	.size	target_supported_abi, 4
target_supported_abi:
	.long	-1
	.local	target_supports_sse2
	.comm	target_supports_sse2,4,4
	.local	target_prefers_sse3
	.comm	target_prefers_sse3,4,4
	.align 32
	.type	P_to_I_Map, @object
	.size	P_to_I_Map, 36
P_to_I_Map:
	.long	20
	.long	11
	.long	0
	.long	30
	.long	14
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC0:
	.string	"r4000"
.LC1:
	.string	"r4k"
.LC2:
	.string	"r5000"
.LC3:
	.string	"r5k"
.LC4:
	.string	"r8000"
.LC5:
	.string	"r8k"
.LC6:
	.string	"r10000"
.LC7:
	.string	"r10k"
.LC8:
	.string	"r12000"
.LC9:
	.string	"r12k"
.LC10:
	.string	"r14000"
.LC11:
	.string	"r14k"
.LC12:
	.string	"r16000"
.LC13:
	.string	"r16k"
.LC14:
	.string	"itanium"
.LC15:
	.string	"sl1"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	Proc_Map, @object
	.size	Proc_Map, 136
Proc_Map:
	.long	.LC0
	.long	4
	.long	.LC1
	.long	4
	.long	.LC2
	.long	5
	.long	.LC3
	.long	5
	.long	.LC4
	.long	8
	.long	.LC5
	.long	8
	.long	.LC6
	.long	10
	.long	.LC7
	.long	10
	.long	.LC8
	.long	10
	.long	.LC9
	.long	10
	.long	.LC10
	.long	10
	.long	.LC11
	.long	10
	.long	.LC12
	.long	10
	.long	.LC13
	.long	10
	.long	.LC14
	.long	20
	.long	.LC15
	.long	30
	.long	0
	.long	0
.globl ofast
	.data
	.align 4
	.type	ofast, @object
	.size	ofast, 4
ofast:
	.long	-1
.globl Ofast_Name
	.bss
	.align 4
	.type	Ofast_Name, @object
	.size	Ofast_Name, 4
Ofast_Name:
	.zero	4
	.section	.rodata
.LC16:
	.string	"too many toggle names\n"
	.text
	.type	add_toggle_name, @function
add_toggle_name:
.LFB5:
	.file 1 "../../driver/opt_actions.c"
	.loc 1 171 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$32, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 173 0
	movl	$0, -12(%ebp)
	jmp	.L2
.L3:
	.loc 1 174 0
	movl	-12(%ebp), %eax
	movl	toggled_names@GOTOFF(%ebx,%eax,8), %eax
	cmpl	8(%ebp), %eax
	je	.L4
	.loc 1 173 0
	addl	$1, -12(%ebp)
.L2:
	movl	last_toggle_index@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L3
.L4:
	.loc 1 178 0
	movl	last_toggle_index@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L6
	.loc 1 179 0
	movl	last_toggle_index@GOTOFF(%ebx), %eax
	cmpl	$49, %eax
	jle	.L8
	.loc 1 180 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	jmp	.L6
.L8:
	.loc 1 182 0
	movl	last_toggle_index@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, last_toggle_index@GOTOFF(%ebx)
.L6:
	.loc 1 185 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, toggled_names@GOTOFF(%ebx,%edx,8)
	.loc 1 186 0
	movl	-12(%ebp), %esi
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, 4+toggled_names@GOTOFF(%ebx,%esi,8)
	.loc 1 187 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE5:
	.size	add_toggle_name, .-add_toggle_name
	.section	.rodata
.LC17:
	.string	"no previously toggled name?"
.LC18:
	.string	"<unknown>"
	.text
	.type	get_toggle_name, @function
get_toggle_name:
.LFB6:
	.loc 1 191 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$36, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 193 0
	movl	$0, -8(%ebp)
	jmp	.L12
.L13:
	.loc 1 194 0
	movl	-8(%ebp), %eax
	movl	toggled_names@GOTOFF(%ebx,%eax,8), %eax
	cmpl	8(%ebp), %eax
	jne	.L14
	.loc 1 195 0
	movl	-8(%ebp), %eax
	movl	4+toggled_names@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -24(%ebp)
	jmp	.L16
.L14:
	.loc 1 193 0
	addl	$1, -8(%ebp)
.L12:
	movl	last_toggle_index@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L13
	.loc 1 198 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 199 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L16:
	movl	-24(%ebp), %eax
	.loc 1 200 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	get_toggle_name, .-get_toggle_name
.globl is_toggled
	.type	is_toggled, @function
is_toggled:
.LFB7:
	.loc 1 205 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	.loc 1 206 0
	cmpl	$-1, 8(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 207 0
	popl	%ebp
	ret
.LFE7:
	.size	is_toggled, .-is_toggled
	.section	.rodata
	.align 4
.LC19:
	.string	"%s conflicts with %s; using latter value (%s)"
	.text
.globl toggle
	.type	toggle, @function
toggle:
.LFB8:
	.loc 1 212 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%edi
.LCFI13:
	pushl	%esi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$28, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 215 0
	movl	parsing_default_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L22
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	is_toggled@PLT
	testl	%eax, %eax
	je	.L22
	.loc 1 217 0
	movl	drop_option@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 218 0
	jmp	.L29
.L22:
	.loc 1 221 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L26
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L26
	.loc 1 222 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_toggle_name
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L26:
	.loc 1 225 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 226 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_toggle_name
.L29:
	.loc 1 227 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE8:
	.size	toggle, .-toggle
	.section	.rodata
.LC20:
	.string	":="
.LC21:
	.string	""
	.text
	.type	Get_Group_Option_Value, @function
Get_Group_Option_Value:
.LFB9:
	.loc 1 245 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%edi
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$48, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 246 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L31:
	.loc 1 250 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcspn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 251 0
	movl	16(%ebp), %eax
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
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncasecmp@PLT
	testl	%eax, %eax
	jne	.L32
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncasecmp@PLT
	testl	%eax, %eax
	jne	.L32
	.loc 1 254 0
	movl	-16(%ebp), %eax
	addl	%eax, -20(%ebp)
	.loc 1 255 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L35
.LBB2:
	.loc 1 257 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	strdup@PLT
	movl	%eax, -12(%ebp)
	.loc 1 259 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcspn@PLT
	addl	-12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 260 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L37
.L35:
.LBE2:
	.loc 1 263 0
	leal	.LC21@GOTOFF(%ebx), %edi
	movl	%edi, -28(%ebp)
	jmp	.L37
.L32:
	.loc 1 266 0
	movl	$58, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L38
	movl	$0, -28(%ebp)
	jmp	.L37
.L38:
	.loc 1 267 0
	addl	$1, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 268 0
	jmp	.L31
.L37:
	movl	-28(%ebp), %eax
	.loc 1 272 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE9:
	.size	Get_Group_Option_Value, .-Get_Group_Option_Value
	.section	.rodata
.LC22:
	.string	"OFF"
.LC23:
	.string	"NO"
.LC24:
	.string	"FALSE"
.LC25:
	.string	"0"
	.text
	.type	Bool_Group_Value, @function
Bool_Group_Value:
.LFB10:
	.loc 1 286 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$20, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 287 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L42
	.loc 1 289 0
	movl	$1, -8(%ebp)
	jmp	.L44
.L42:
	.loc 1 292 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	je	.L45
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	je	.L45
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	je	.L45
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	jne	.L49
.L45:
	.loc 1 297 0
	movl	$0, -8(%ebp)
	jmp	.L44
.L49:
	.loc 1 299 0
	movl	$1, -8(%ebp)
.L44:
	movl	-8(%ebp), %eax
	.loc 1 301 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	Bool_Group_Value, .-Bool_Group_Value
.globl f90_module_dir
	.bss
	.align 4
	.type	f90_module_dir, @object
	.size	f90_module_dir, 4
f90_module_dir:
	.zero	4
	.section	.rodata
	.align 4
.LC26:
	.string	"Only one -module option allowed"
	.text
.globl Process_module
	.type	Process_module, @function
Process_module:
.LFB11:
	.loc 1 316 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%edi
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$16, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 317 0
	movl	f90_module_dir@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L52
	.loc 1 319 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L52:
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -12(%ebp)
	movl	$0, %eax
	cld
	movl	-12(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$3, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	f90_module_dir@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	f90_module_dir@GOT(%ebx), %eax
	movl	(%eax), %eax
	movw	$18989, (%eax)
	movb	$0, 2(%eax)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcat@PLT
	.loc 1 326 0
	addl	$16, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE11:
	.size	Process_module, .-Process_module
	.section	.rodata
.LC27:
	.string	"Ofast="
.LC28:
	.string	"platform="
	.text
.globl Process_Ofast
	.type	Process_Ofast, @function
Process_Ofast:
.LFB12:
	.loc 1 341 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$36, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 347 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	Ofast_Name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 351 0
	movl	Gen_feedback@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L56
	.loc 1 352 0
	movl	O3_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 353 0
	movl	$3, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 354 0
	movl	$700, (%esp)
	call	add_option_seen@PLT
	.loc 1 361 0
	movl	$0, 4(%esp)
	movl	fmath_errno@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 362 0
	movl	$336, (%esp)
	call	add_option_seen@PLT
	.loc 1 365 0
	movl	$1, 4(%esp)
	movl	ffast_math@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 366 0
	movl	$389, (%esp)
	call	add_option_seen@PLT
	.loc 1 370 0
	movl	$1, 4(%esp)
	movl	ipa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 371 0
	movl	$728, (%esp)
	call	add_option_seen@PLT
	.loc 1 378 0
	movl	$1, 4(%esp)
	movl	ofast@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 379 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -8(%ebp)
	.loc 1 380 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$699, (%esp)
	call	add_string_option@PLT
	movl	%eax, -12(%ebp)
	.loc 1 381 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	jmp	.L59
.L56:
	.loc 1 383 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -8(%ebp)
	.loc 1 384 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$686, (%esp)
	call	add_string_option@PLT
	movl	%eax, -12(%ebp)
	.loc 1 385 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
.L59:
	.loc 1 387 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE12:
	.size	Process_Ofast, .-Process_Ofast
	.section	.rodata
.LC29:
	.string	"Process_Opt_Group: %s\n"
.LC30:
	.string	"instr"
.LC31:
	.string	"instrument"
.LC32:
	.string	"reorg"
.LC33:
	.string	"reorg_common"
	.text
.globl Process_Opt_Group
	.type	Process_Opt_Group, @function
Process_Opt_Group:
.LFB13:
	.loc 1 404 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$36, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 405 0
	movl	$0, -8(%ebp)
	.loc 1 407 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L61
	.loc 1 408 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L61:
	.loc 1 412 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	Get_Group_Option_Value
	movl	%eax, -8(%ebp)
	.loc 1 413 0
	cmpl	$0, -8(%ebp)
	je	.L63
	.loc 1 414 0
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	$1, (%eax)
.L63:
	.loc 1 418 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	Get_Group_Option_Value
	movl	%eax, -8(%ebp)
	.loc 1 419 0
	cmpl	$0, -8(%ebp)
	je	.L67
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	Bool_Group_Value
.L67:
	.loc 1 426 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	Process_Opt_Group, .-Process_Opt_Group
	.section	.rodata
.LC34:
	.string	"Process_Default_Group: %s\n"
.LC35:
	.string	"isa"
.LC36:
	.string	"mips"
.LC37:
	.string	"proc"
.LC38:
	.string	"opt"
.LC39:
	.string	"arith"
.LC40:
	.string	"IEEE_arith="
	.text
.globl Process_Default_Group
	.type	Process_Default_Group, @function
Process_Default_Group:
.LFB14:
	.loc 1 430 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%edi
.LCFI41:
	pushl	%esi
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$44, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 434 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L69
	.loc 1 435 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L69:
	.loc 1 439 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	Get_Group_Option_Value
	movl	%eax, -20(%ebp)
	.loc 1 440 0
	cmpl	$0, -20(%ebp)
	je	.L71
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	.LC36@GOTOFF(%ebx), %eax
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
	jne	.L71
	.loc 1 441 0
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, default_isa@GOTOFF(%ebx)
.L71:
	.loc 1 445 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	Get_Group_Option_Value
	movl	%eax, -20(%ebp)
	.loc 1 446 0
	cmpl	$0, -20(%ebp)
	je	.L74
	.loc 1 447 0
	movl	$0, -16(%ebp)
	jmp	.L76
.L77:
	.loc 1 448 0
	movl	-16(%ebp), %eax
	movl	Proc_Map@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L78
	.loc 1 449 0
	movl	-16(%ebp), %eax
	movl	4+Proc_Map@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, default_proc@GOTOFF(%ebx)
.L78:
	.loc 1 447 0
	addl	$1, -16(%ebp)
.L76:
	movl	-16(%ebp), %eax
	movl	Proc_Map@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L77
.L74:
	.loc 1 456 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	Get_Group_Option_Value
	movl	%eax, -20(%ebp)
	.loc 1 457 0
	cmpl	$0, -20(%ebp)
	je	.L80
	.loc 1 458 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, %edx
	movl	default_olevel@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L80:
	.loc 1 461 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	Get_Group_Option_Value
	movl	%eax, -20(%ebp)
	.loc 1 462 0
	cmpl	$0, -20(%ebp)
	je	.L84
	.loc 1 463 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	$699, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	.loc 1 464 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
.L84:
	.loc 1 466 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE14:
	.size	Process_Default_Group, .-Process_Default_Group
	.section	.rodata
.LC41:
	.string	"Process_Targ_Group: %s\n"
.LC42:
	.string	"flush_to_zero"
.LC43:
	.string	"abi"
.LC44:
	.string	"n32"
.LC45:
	.string	"processor"
	.text
.globl Process_Targ_Group
	.type	Process_Targ_Group, @function
Process_Targ_Group:
.LFB15:
	.loc 1 493 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$36, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 494 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 498 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L86
	.loc 1 499 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L86:
	.loc 1 502 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	Get_Group_Option_Value
	movl	%eax, -12(%ebp)
	.loc 1 503 0
	cmpl	$0, -12(%ebp)
	je	.L121
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	Bool_Group_Value
	testl	%eax, %eax
	je	.L121
	.loc 1 505 0
	movl	ftz_crt@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 508 0
	jmp	.L121
.L92:
	.loc 1 509 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$105, -24(%ebp)
	je	.L95
	cmpl	$105, -24(%ebp)
	jg	.L98
	cmpl	$97, -24(%ebp)
	je	.L94
	jmp	.L114
.L98:
	cmpl	$109, -24(%ebp)
	je	.L96
	cmpl	$112, -24(%ebp)
	je	.L97
	jmp	.L114
.L94:
	.loc 1 511 0
	movl	$3, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strncasecmp@PLT
	testl	%eax, %eax
	jne	.L114
	movl	-20(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L114
	.loc 1 513 0
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	$3, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncasecmp@PLT
	.loc 1 537 0
	jmp	.L114
.L95:
	.loc 1 544 0
	movl	$3, 8(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strncasecmp@PLT
	testl	%eax, %eax
	jne	.L114
	movl	-20(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L114
	.loc 1 547 0
	addl	$4, -20(%ebp)
.L96:
	.loc 1 553 0
	movl	$4, 8(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strncasecmp@PLT
	testl	%eax, %eax
	jne	.L114
	.loc 1 554 0
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	jbe	.L114
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$54, %al
	ja	.L114
	.loc 1 555 0
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 573 0
	jmp	.L114
.L97:
	.loc 1 599 0
	movl	$61, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 600 0
	cmpl	$0, -16(%ebp)
	je	.L114
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strncasecmp@PLT
	testl	%eax, %eax
	jne	.L114
.LBB3:
	.loc 1 608 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 609 0
	movl	$0, -8(%ebp)
	jmp	.L110
.L111:
	.loc 1 610 0
	movl	-8(%ebp), %eax
	movl	Proc_Map@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L112
	.loc 1 611 0
	movl	-8(%ebp), %eax
	movl	4+Proc_Map@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	proc@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L112:
	.loc 1 609 0
	addl	$1, -8(%ebp)
.L110:
	movl	-8(%ebp), %eax
	movl	Proc_Map@GOTOFF(%ebx,%eax,8), %eax
	testl	%eax, %eax
	jne	.L111
	.loc 1 620 0
	jmp	.L114
.L115:
.LBE3:
	addl	$1, -20(%ebp)
.L114:
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L116
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	.L115
.L116:
	.loc 1 621 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	.L91
	addl	$1, -20(%ebp)
.L91:
.L121:
	.loc 1 508 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L92
	.loc 1 623 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	Process_Targ_Group, .-Process_Targ_Group
	.section	.rodata
	.align 4
.LC46:
	.string	"Unrecognized -Ofast value '%s': defaulting to '%s' (%s)"
	.align 4
.LC47:
	.string	"Ofast_Target -Ofast=%s: '%s' (%s) r%dk mips%d\n"
	.text
	.type	Ofast_Target, @function
Ofast_Target:
.LFB16:
	.loc 1 641 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%edi
.LCFI51:
	pushl	%esi
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$60, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 655 0
	movl	Ofast_Name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Get_Platform_Options@PLT
	movl	%eax, -16(%ebp)
	.loc 1 661 0
	movl	proc@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L123
	.loc 1 662 0
	movl	Ofast_Name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L125
	movl	Ofast_Name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L125
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L125
	.loc 1 666 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	Ofast_Name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L125:
	.loc 1 669 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	proc@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L123:
	.loc 1 673 0
	movl	isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L129
	.loc 1 674 0
	movl	$0, -20(%ebp)
	.loc 1 675 0
	jmp	.L131
.L132:
	.loc 1 676 0
	addl	$1, -20(%ebp)
.L131:
	.loc 1 675 0
	movl	-20(%ebp), %edx
	leal	P_to_I_Map@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %edx
	movl	proc@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L133
	movl	-20(%ebp), %edx
	leal	P_to_I_Map@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	testl	%eax, %eax
	jne	.L132
.L133:
	.loc 1 678 0
	movl	-20(%ebp), %edx
	leal	P_to_I_Map@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	.loc 1 679 0
	movl	-20(%ebp), %edx
	leal	P_to_I_Map@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 680 0
	movl	-20(%ebp), %edx
	leal	P_to_I_Map@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L129:
	.loc 1 683 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L137
	.loc 1 684 0
	movl	isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	proc@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	4(%eax), %esi
	movl	Ofast_Name@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L137:
	.loc 1 688 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	Ofast_Target, .-Ofast_Target
	.section	.rodata
	.align 4
.LC48:
	.string	"Check_Target ABI=%d ISA=%d Processor=%d\n"
	.align 4
.LC49:
	.string	"ABI specification %s conflicts with ISA specification %s: defaulting ISA to mips%d"
	.align 4
.LC50:
	.string	"isa should have been defined by now"
	.align 4
.LC51:
	.string	"Check_Target done; ABI=%d ISA=%d Processor=%d\n"
	.text
.globl Check_Target
	.type	Check_Target, @function
Check_Target:
.LFB17:
	.loc 1 702 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%edi
.LCFI57:
	pushl	%esi
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$44, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 706 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L139
	.loc 1 707 0
	movl	proc@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	isa@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
.L139:
	.loc 1 722 0
	movl	ofast@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L141
	movl	Gen_feedback@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L143
.L141:
	.loc 1 723 0
	call	Ofast_Target
.L143:
	.loc 1 727 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L144
	.loc 1 736 0
	movl	$1, 4(%esp)
	movl	abi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 737 0
	movl	$157, (%esp)
	call	add_option_seen@PLT
.L144:
	.loc 1 772 0
	movl	isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L146
	.loc 1 773 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$1, -36(%ebp)
	je	.L149
	cmpl	$2, -36(%ebp)
	je	.L150
	jmp	.L156
.L149:
	.loc 1 776 0
	movl	isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jg	.L156
	.loc 1 785 0
	movl	isa@GOT(%ebx), %eax
	movl	$-1, (%eax)
	.loc 1 786 0
	movl	$3, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 788 0
	jmp	.L156
.L150:
	.loc 1 791 0
	movl	isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jg	.L156
	.loc 1 805 0
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	get_toggle_name
	movl	%eax, %esi
	movl	abi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	get_toggle_name
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 810 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 811 0
	movl	isa@GOT(%ebx), %eax
	movl	$-1, (%eax)
	.loc 1 812 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	jmp	.L156
.L146:
	.loc 1 821 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$5, -32(%ebp)
	ja	.L156
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L160@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L160:
	.long	.L156@GOTOFF
	.long	.L157@GOTOFF
	.long	.L157@GOTOFF
	.long	.L158@GOTOFF
	.long	.L158@GOTOFF
	.long	.L159@GOTOFF
	.text
.L157:
	.loc 1 825 0
	movl	default_isa@GOTOFF(%ebx), %eax
	cmpl	$3, %eax
	jne	.L161
	.loc 1 826 0
	movl	$3, -16(%ebp)
	jmp	.L163
.L161:
	.loc 1 831 0
	movl	default_isa@GOTOFF(%ebx), %eax
	cmpl	$4, %eax
	jne	.L164
	.loc 1 832 0
	movl	$4, -16(%ebp)
	.loc 1 833 0
	movl	$185, -20(%ebp)
	jmp	.L163
.L164:
	.loc 1 837 0
	movl	$4, -16(%ebp)
	.loc 1 838 0
	movl	$185, -20(%ebp)
.L163:
	.loc 1 844 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 845 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	.loc 1 846 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 847 0
	jmp	.L156
.L158:
	.loc 1 857 0
	movl	$11, -16(%ebp)
	.loc 1 858 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 859 0
	jmp	.L156
.L159:
	.loc 1 862 0
	movl	$14, -16(%ebp)
	.loc 1 866 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L156:
	.loc 1 870 0
	movl	isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L166
	.loc 1 871 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L166:
	.loc 1 898 0
	movl	proc@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L170
	.loc 1 899 0
	jmp	.L172
.L170:
	.loc 1 935 0
	movl	default_proc@GOTOFF(%ebx), %eax
	cmpl	$-1, %eax
	je	.L172
	.loc 1 937 0
	movl	$0, -20(%ebp)
	.loc 1 959 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L174
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L176
.L174:
	.loc 1 960 0
	movl	$0, -20(%ebp)
.L176:
	.loc 1 962 0
	cmpl	$0, -20(%ebp)
	je	.L172
	.loc 1 963 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	.loc 1 964 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 965 0
	movl	default_proc@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	proc@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
.L172:
	.loc 1 969 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L180
	.loc 1 970 0
	movl	proc@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	isa@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
.L180:
	.loc 1 973 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	Check_Target, .-Check_Target
	.type	toggle_inline_normal, @function
toggle_inline_normal:
.LFB18:
	.loc 1 986 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 987 0
	movl	inline_t@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L184
	.loc 1 988 0
	movl	inline_t@GOT(%ecx), %eax
	movl	$1, (%eax)
.L184:
	.loc 1 989 0
	popl	%ebp
	ret
.LFE18:
	.size	toggle_inline_normal, .-toggle_inline_normal
	.section	.rodata
	.align 4
.LC52:
	.string	"-noinline or -INLINE:=off has been seen, %s ignored"
	.text
	.type	toggle_inline_on, @function
toggle_inline_on:
.LFB19:
	.loc 1 995 0
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
	.loc 1 996 0
	movl	inline_t@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L186
	.loc 1 997 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L189
.L186:
	.loc 1 1002 0
	movl	inline_t@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 1003 0
	movl	$1, inline_on_seen@GOTOFF(%ebx)
.L189:
	.loc 1 1005 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	toggle_inline_on, .-toggle_inline_on
	.section	.rodata
	.align 4
.LC53:
	.string	"Earlier request for inline processing has been overridden by %s"
	.text
	.type	toggle_inline_off, @function
toggle_inline_off:
.LFB20:
	.loc 1 1011 0
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
	.loc 1 1012 0
	movl	inline_on_seen@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L191
	.loc 1 1013 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L191:
	.loc 1 1016 0
	movl	inline_t@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1017 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	toggle_inline_off, .-toggle_inline_off
	.section	.rodata
.LC54:
	.string	"-fprofile-arcs"
.LC55:
	.string	"profile_arcs=true"
	.text
.globl Process_Profile_Arcs
	.type	Process_Profile_Arcs, @function
Process_Profile_Arcs:
.LFB21:
	.loc 1 1021 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%edi
.LCFI73:
	pushl	%esi
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$28, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1022 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$14, -24(%ebp)
	cld
	movl	-16(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	-24(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L197
	.loc 1 1023 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$699, (%esp)
	call	add_string_option@PLT
.L197:
	.loc 1 1024 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	Process_Profile_Arcs, .-Process_Profile_Arcs
	.section	.rodata
.LC56:
	.string	"-ftest-coverage"
.LC57:
	.string	"test_coverage=true"
	.text
.globl Process_Test_Coverage
	.type	Process_Test_Coverage, @function
Process_Test_Coverage:
.LFB22:
	.loc 1 1028 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%edi
.LCFI79:
	pushl	%esi
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$28, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1029 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$15, -24(%ebp)
	cld
	movl	-16(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	-24(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L201
	.loc 1 1030 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$747, (%esp)
	call	add_string_option@PLT
.L201:
	.loc 1 1031 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	Process_Test_Coverage, .-Process_Test_Coverage
	.section	.rodata
.LC58:
	.string	"-noinline"
.LC59:
	.string	"=off"
.LC60:
	.string	"=on"
	.text
.globl Process_Inline
	.type	Process_Inline, @function
Process_Inline:
.LFB23:
	.loc 1 1036 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%edi
.LCFI85:
	pushl	%esi
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$44, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1037 0
	movl	$1, -24(%ebp)
	.loc 1 1038 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$7, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1040 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$9, -40(%ebp)
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
	jne	.L203
	.loc 1 1041 0
	call	toggle_inline_off
	jmp	.L216
.L203:
	.loc 1 1042 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L206
	.loc 1 1044 0
	call	toggle_inline_on
	jmp	.L216
.L206:
.LBB4:
	.loc 1 1047 0
	movl	-20(%ebp), %eax
	movb	$58, (%eax)
	.loc 1 1048 0
	addl	$1, -20(%ebp)
	movl	$58, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L208
	.loc 1 1049 0
	movl	$0, -24(%ebp)
	jmp	.L210
.L208:
	.loc 1 1051 0
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
.L210:
	.loc 1 1052 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	jne	.L211
	.loc 1 1053 0
	call	toggle_inline_off
	jmp	.L213
.L211:
	.loc 1 1054 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	jne	.L214
	.loc 1 1055 0
	call	toggle_inline_on
	jmp	.L213
.L214:
	.loc 1 1057 0
	call	toggle_inline_normal
.L213:
	.loc 1 1058 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.LBE4:
	.loc 1 1060 0
	cmpl	$0, -24(%ebp)
	jne	.L206
.L216:
	.loc 1 1061 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	Process_Inline, .-Process_Inline
	.section	.rodata
	.align 4
.LC61:
	.string	"-F is not supported: cannot generate intermediate C code"
.LC62:
	.string	"unknown flag"
.LC63:
	.string	"-F"
	.text
.globl dash_F_option
	.type	dash_F_option, @function
dash_F_option:
.LFB24:
	.loc 1 1068 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$20, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1069 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L218
	.loc 1 1070 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	earliest_phase@PLT
	movl	%eax, %edx
	movl	last_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L223
.L218:
	.loc 1 1071 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L221
	.loc 1 1072 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L223
.L221:
	.loc 1 1074 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	parse_error@PLT
.L223:
	.loc 1 1076 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	dash_F_option, .-dash_F_option
.globl untoggle
	.type	untoggle, @function
untoggle:
.LFB25:
	.loc 1 1082 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	.loc 1 1083 0
	movl	8(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 1084 0
	popl	%ebp
	ret
.LFE25:
	.size	untoggle, .-untoggle
	.section	.rodata
.LC64:
	.string	"bad syntax for -Y option"
.LC65:
	.string	"HOME"
.LC66:
	.string	"not a directory"
.LC67:
	.string	"bad phase for -Y option"
	.text
	.type	change_phase_path, @function
change_phase_path:
.LFB26:
	.loc 1 1089 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$36, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1092 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L227
.L228:
	addl	$1, -12(%ebp)
.L227:
	cmpl	$0, -12(%ebp)
	je	.L229
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L229
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L228
.L229:
	.loc 1 1094 0
	cmpl	$0, -12(%ebp)
	je	.L232
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L234
.L232:
	.loc 1 1095 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	.loc 1 1096 0
	jmp	.L248
.L234:
	.loc 1 1098 0
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1099 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$126, %al
	jne	.L236
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L238
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L236
.L238:
.LBB5:
	.loc 1 1100 0
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1101 0
	cmpl	$0, -8(%ebp)
	je	.L236
	.loc 1 1102 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -16(%ebp)
.L236:
.LBE5:
	.loc 1 1104 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	is_directory@PLT
	testl	%eax, %eax
	jne	.L241
	.loc 1 1105 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
.L241:
	.loc 1 1106 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L243
.L244:
	.loc 1 1108 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_phase@PLT
	testl	%eax, %eax
	jne	.L245
	.loc 1 1109 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	jmp	.L247
.L245:
	.loc 1 1111 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_phase@PLT
	movl	%eax, (%esp)
	call	get_phase_mask@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	set_phase_dir@PLT
.L247:
	.loc 1 1106 0
	addl	$1, -12(%ebp)
.L243:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L244
.L248:
	.loc 1 1114 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	change_phase_path, .-change_phase_path
	.section	.rodata
.LC68:
	.string	"-H"
.LC69:
	.string	"bad syntax for -H option"
.LC70:
	.string	"bad phase for -H option"
	.text
	.type	change_last_phase, @function
change_last_phase:
.LFB27:
	.loc 1 1120 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$36, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1122 0
	cmpl	$0, 8(%ebp)
	je	.L250
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L252
.L250:
	.loc 1 1123 0
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 1 1122 0
	jmp	.L258
.L252:
	.loc 1 1124 0
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L254
	.loc 1 1125 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	jmp	.L258
.L254:
	.loc 1 1126 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	get_phase@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L256
	.loc 1 1127 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	jmp	.L258
.L256:
	.loc 1 1129 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	earliest_phase@PLT
	movl	%eax, %edx
	movl	last_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L258:
	.loc 1 1131 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	change_last_phase, .-change_last_phase
.globl save_name
	.type	save_name, @function
save_name:
.LFB28:
	.loc 1 1135 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$4, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1136 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1137 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	save_name, .-save_name
	.section	.rodata
	.align 4
.LC71:
	.string	"%s %s will overwrite a file that has a source-file suffix"
	.text
	.type	check_output_name, @function
check_output_name:
.LFB29:
	.loc 1 1141 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$20, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1142 0
	cmpl	$0, 8(%ebp)
	je	.L266
	.loc 1 1143 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_source_kind@PLT
	cmpl	$16, %eax
	je	.L266
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	je	.L266
	.loc 1 1144 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L266:
	.loc 1 1146 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	check_output_name, .-check_output_name
	.section	.rodata
.LC72:
	.string	"big_endian"
.LC73:
	.string	"big-endian"
.LC74:
	.string	"little_endian"
.LC75:
	.string	"little-endian"
.LC76:
	.string	"native"
	.section	.data.rel.local
	.align 4
	.type	legal_names.4786, @object
	.size	legal_names.4786, 20
legal_names.4786:
	.long	.LC72
	.long	.LC73
	.long	.LC74
	.long	.LC75
	.long	.LC76
	.section	.rodata
.LC77:
	.string	"bad conversion name"
	.text
.globl check_convert_name
	.type	check_convert_name, @function
check_convert_name:
.LFB30:
	.loc 1 1151 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$36, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB6:
	.loc 1 1159 0
	movl	$0, -8(%ebp)
	jmp	.L268
.L269:
	.loc 1 1161 0
	movl	-8(%ebp), %eax
	movl	legal_names.4786@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L273
	.loc 1 1160 0
	addl	$1, -8(%ebp)
.L268:
	.loc 1 1159 0
	movl	-8(%ebp), %eax
	cmpl	$4, %eax
	jbe	.L269
.LBE6:
	.loc 1 1165 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
.L273:
	.loc 1 1166 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	check_convert_name, .-check_convert_name
.globl check_dashdash
	.type	check_dashdash, @function
check_dashdash:
.LFB31:
	.loc 1 1171 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	.loc 1 1180 0
	popl	%ebp
	ret
.LFE31:
	.size	check_dashdash, .-check_dashdash
	.section	.rodata
.LC78:
	.string	".x.Counts"
	.text
	.type	Get_Binary_Name, @function
Get_Binary_Name:
.LFB32:
	.loc 1 1184 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%edi
.LCFI119:
	pushl	%esi
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$44, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1187 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1188 0
	movl	-24(%ebp), %eax
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
	.loc 1 1189 0
	movl	$0, -16(%ebp)
	jmp	.L277
.L278:
	.loc 1 1190 0
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	.LC78@GOTOFF(%ebx), %eax
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
	jne	.L279
	.loc 1 1191 0
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1192 0
	jmp	.L281
.L279:
	.loc 1 1189 0
	addl	$1, -16(%ebp)
.L277:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L278
.L281:
	.loc 1 1195 0
	movl	-24(%ebp), %eax
	.loc 1 1196 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	Get_Binary_Name, .-Get_Binary_Name
	.data
	.align 4
	.type	is_first_count_file.4826, @object
	.size	is_first_count_file.4826, 4
is_first_count_file.4826:
	.long	1
	.text
.globl Process_fbuse
	.type	Process_fbuse, @function
Process_fbuse:
.LFB33:
	.loc 1 1200 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$20, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1202 0
	movl	Use_feedback@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 1203 0
	movl	count_files@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 1204 0
	movl	is_first_count_file.4826@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L284
	movl	prof_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L284
	.loc 1 1205 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, (%esp)
	call	Get_Binary_Name
	movl	%eax, %edx
	movl	prof_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L284:
	.loc 1 1206 0
	movl	$0, is_first_count_file.4826@GOTOFF(%ebx)
	.loc 1 1207 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	Process_fbuse, .-Process_fbuse
	.section	.rodata
.LC79:
	.string	"fb_type=%s"
.LC80:
	.string	"%d"
	.text
.globl Process_fb_type
	.type	Process_fb_type, @function
Process_fb_type:
.LFB34:
	.loc 1 1211 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$52, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1211 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1214 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	fb_type@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1215 0
	movl	fb_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1216 0
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$699, (%esp)
	call	add_string_option@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1217 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	.loc 1 1219 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sscanf@PLT
	.loc 1 1220 0
	movl	profile_type@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	orl	%eax, %edx
	movl	profile_type@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1221 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L290
	call	__stack_chk_fail_local
.L290:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	Process_fb_type, .-Process_fb_type
	.section	.rodata
.LC81:
	.string	"instr_unique_output=on"
	.align 4
.LC82:
	.string	"instr=on:instr_unique_output=on"
	.text
.globl Process_fb_create
	.type	Process_fb_create, @function
Process_fb_create:
.LFB35:
	.loc 1 1226 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$36, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1228 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	fb_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1230 0
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L292
	.loc 1 1232 0
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$699, (%esp)
	call	add_string_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L294
.L292:
	.loc 1 1235 0
	movl	$1, 4(%esp)
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 1236 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$699, (%esp)
	call	add_string_option@PLT
	movl	%eax, -8(%ebp)
.L294:
	.loc 1 1238 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	.loc 1 1239 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	Process_fb_create, .-Process_fb_create
	.section	.rodata
.LC83:
	.string	"fb_phase=%s"
	.text
.globl Process_fb_phase
	.type	Process_fb_phase, @function
Process_fb_phase:
.LFB36:
	.loc 1 1244 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$52, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1244 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1247 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	fb_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1248 0
	movl	fb_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1249 0
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$699, (%esp)
	call	add_string_option@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1250 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	.loc 1 1251 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L298
	call	__stack_chk_fail_local
.L298:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	Process_fb_phase, .-Process_fb_phase
.globl Process_fb_opt
	.type	Process_fb_opt, @function
Process_fb_opt:
.LFB37:
	.loc 1 1256 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$20, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1257 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	opt_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1258 0
	movl	$0, 4(%esp)
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 1 1259 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	Process_fb_opt, .-Process_fb_opt
.globl Process_fbexe
	.type	Process_fbexe, @function
Process_fbexe:
.LFB38:
	.loc 1 1264 0
	pushl	%ebp
.LCFI143:
	movl	%esp, %ebp
.LCFI144:
	pushl	%ebx
.LCFI145:
	subl	$4, %esp
.LCFI146:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1265 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	prof_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1266 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	Process_fbexe, .-Process_fbexe
.globl Process_fb_xdir
	.type	Process_fb_xdir, @function
Process_fb_xdir:
.LFB39:
	.loc 1 1270 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$4, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1271 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	fb_xdir@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1272 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	Process_fb_xdir, .-Process_fb_xdir
.globl Process_fb_cdir
	.type	Process_fb_cdir, @function
Process_fb_cdir:
.LFB40:
	.loc 1 1276 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$4, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1277 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	fb_cdir@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1278 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	Process_fb_cdir, .-Process_fb_cdir
	.section	.rodata
.LC84:
	.string	"Process_Promp\n"
.LC85:
	.string	"endloop_marker=1"
.LC86:
	.string	"Process_Promp done\n"
	.text
.globl Process_Promp
	.type	Process_Promp, @function
Process_Promp:
.LFB41:
	.loc 1 1463 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$20, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1465 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L308
	.loc 1 1466 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L308:
	.loc 1 1472 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L310
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L312
.L310:
	.loc 1 1473 0
	movl	$104, (%esp)
	call	add_option_seen@PLT
	.loc 1 1474 0
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$740, (%esp)
	call	add_string_option@PLT
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	.loc 1 1472 0
	jmp	.L313
.L312:
	.loc 1 1475 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L313
	.loc 1 1477 0
	movl	$104, (%esp)
	call	add_option_seen@PLT
.L313:
	.loc 1 1479 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L317
	.loc 1 1480 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$19, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L317:
	.loc 1 1482 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	Process_Promp, .-Process_Promp
	.section	.rodata
.LC87:
	.string	"Process_TENV_Group: %s\n"
	.text
.globl Process_Tenv_Group
	.type	Process_Tenv_Group, @function
Process_Tenv_Group:
.LFB42:
	.loc 1 1486 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$20, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1487 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L321
	.loc 1 1488 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L321:
	.loc 1 1497 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	Process_Tenv_Group, .-Process_Tenv_Group
	.section	.rodata
.LC88:
	.string	"-m32"
.LC89:
	.string	"%s/32/%s"
.LC90:
	.string	"/lib64"
.LC91:
	.string	"%.*s/%s"
.LC92:
	.string	"a"
.LC93:
	.string	"o"
.LC94:
	.string	"so"
.LC95:
	.string	".so."
.LC96:
	.string	"%s/%s"
	.text
	.type	print_magic_path, @function
print_magic_path:
.LFB43:
	.loc 1 1501 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	pushl	%edi
.LCFI165:
	pushl	%ebx
.LCFI166:
	subl	$48, %esp
.LCFI167:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1502 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	check_for_saved_option@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1506 0
	cmpl	$0, -20(%ebp)
	je	.L323
.LBB7:
	.loc 1 1509 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1511 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L325
	.loc 1 1514 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ends_with@PLT
	testl	%eax, %eax
	je	.L327
	.loc 1 1515 0
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
	leal	-2(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1517 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L325
.L327:
	.loc 1 1521 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_suffix@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1523 0
	cmpl	$0, -12(%ebp)
	je	.L329
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L331
.L329:
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L331
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L331
	.loc 1 1527 0
	movl	-24(%ebp), %eax
	movl	$47, 4(%esp)
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L323
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	jne	.L331
.L323:
.LBE7:
	.loc 1 1531 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1533 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L325
.L331:
	.loc 1 1537 0
	movl	$0, -28(%ebp)
	jmp	.L335
.L325:
	.loc 1 1540 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1541 0
	movl	$1, -28(%ebp)
.L335:
	movl	-28(%ebp), %eax
	.loc 1 1542 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	print_magic_path, .-print_magic_path
	.type	print_phase_path, @function
print_phase_path:
.LFB44:
	.loc 1 1546 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$20, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1547 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_magic_path
	.loc 1 1548 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	print_phase_path, .-print_phase_path
	.type	print_relative_path, @function
print_relative_path:
.LFB45:
	.loc 1 1551 0
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$36, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1552 0
	call	get_executable_dir@PLT
	movl	%eax, (%esp)
	call	directory_path@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1555 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1556 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_magic_path
	.loc 1 1557 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	print_relative_path, .-print_relative_path
	.section	.rodata
.LC97:
	.string	"lib/gcc-lib//3.2"
.LC98:
	.string	"lib/gcc-lib//lib64"
.LC99:
	.string	"lib/"
.LC100:
	.string	"/usr/lib64"
	.text
.globl print_file_path
	.type	print_file_path, @function
print_file_path:
.LFB46:
	.loc 1 1563 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%ebx
.LCFI178:
	subl	$20, %esp
.LCFI179:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1570 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_relative_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1573 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_relative_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1576 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_relative_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1579 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_relative_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1582 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_magic_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1585 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	print_magic_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1588 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$30, (%esp)
	call	print_phase_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1591 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$46, (%esp)
	call	print_phase_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1594 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	print_phase_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1597 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	print_phase_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1600 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	print_phase_path
	testl	%eax, %eax
	jne	.L354
	.loc 1 1616 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L354:
	.loc 1 1618 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	print_file_path, .-print_file_path
	.section	.rodata
.LC101:
	.string	"gcc"
.LC102:
	.string	"-print-multi-lib"
.LC103:
	.string	"could not execute %s: %m\n"
	.text
.globl print_multi_lib
	.type	print_multi_lib, @function
print_multi_lib:
.LFB47:
	.loc 1 1622 0
	pushl	%ebp
.LCFI180:
	movl	%esp, %ebp
.LCFI181:
	pushl	%ebx
.LCFI182:
	subl	$36, %esp
.LCFI183:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1624 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1625 0
	leal	-16(%ebp), %eax
	leal	4(%eax), %edx
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	asprintf@PLT
	.loc 1 1626 0
	movl	$0, -8(%ebp)
	.loc 1 1627 0
	movl	-16(%ebp), %edx
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	execvp@PLT
	.loc 1 1628 0
	movl	-16(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1629 0
	movl	$1, (%esp)
	call	exit@PLT
.LFE47:
	.size	print_multi_lib, .-print_multi_lib
	.section	.rodata
.LC104:
	.string	"small"
.LC105:
	.string	"medium"
.LC106:
	.string	"large"
.LC107:
	.string	"kernel"
.LC108:
	.string	"unknown memory model \"%s\""
	.align 4
.LC109:
	.string	"code model \"%s\" not supported in 32-bit mode"
	.text
.globl set_memory_model
	.type	set_memory_model, @function
set_memory_model:
.LFB48:
	.loc 1 1636 0
	pushl	%ebp
.LCFI184:
	movl	%esp, %ebp
.LCFI185:
	pushl	%ebx
.LCFI186:
	subl	$20, %esp
.LCFI187:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1637 0
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L358
	.loc 1 1638 0
	movl	mem_model@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L360
.L358:
	.loc 1 1640 0
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L361
	.loc 1 1641 0
	movl	mem_model@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L360
.L361:
	.loc 1 1643 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L363
	.loc 1 1644 0
	movl	mem_model@GOT(%ebx), %eax
	movl	$2, (%eax)
	jmp	.L360
.L363:
	.loc 1 1646 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L365
	.loc 1 1647 0
	movl	mem_model@GOT(%ebx), %eax
	movl	$3, (%eax)
	jmp	.L360
.L365:
	.loc 1 1649 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L360:
	.loc 1 1652 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L369
	.loc 1 1653 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1654 0
	movl	$2, (%esp)
	call	do_exit@PLT
.L369:
	.loc 1 1656 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	set_memory_model, .-set_memory_model
	.section	.rodata
.LC110:
	.string	"any_64bit_x86"
.LC111:
	.string	"anyx86"
.LC112:
	.string	"any_32bit_x86"
.LC113:
	.string	"i386"
.LC114:
	.string	"i486"
.LC115:
	.string	"i586"
.LC116:
	.string	"athlon"
.LC117:
	.string	"athlon-mp"
.LC118:
	.string	"athlon-xp"
.LC119:
	.string	"athlon64"
.LC120:
	.string	"athlon64fx"
.LC121:
	.string	"opteron"
.LC122:
	.string	"i686"
.LC123:
	.string	"pentium4"
.LC124:
	.string	"ia32"
.LC125:
	.string	"k7"
.LC126:
	.string	"k8"
.LC127:
	.string	"xeon"
.LC128:
	.string	"em64t"
	.section	.data.rel.local
	.align 32
	.type	supported_cpu_types, @object
	.size	supported_cpu_types, 380
supported_cpu_types:
	.long	.LC110
	.long	.LC111
	.long	2
	.long	1
	.long	0
	.long	.LC112
	.long	.LC111
	.long	1
	.long	0
	.long	0
	.long	.LC113
	.long	.LC111
	.long	1
	.long	0
	.long	0
	.long	.LC114
	.long	.LC111
	.long	1
	.long	0
	.long	0
	.long	.LC115
	.long	.LC111
	.long	1
	.long	0
	.long	0
	.long	.LC116
	.long	.LC116
	.long	1
	.long	0
	.long	0
	.long	.LC117
	.long	.LC116
	.long	1
	.long	0
	.long	0
	.long	.LC118
	.long	.LC116
	.long	1
	.long	0
	.long	0
	.long	.LC119
	.long	.LC119
	.long	2
	.long	1
	.long	0
	.long	.LC120
	.long	.LC121
	.long	2
	.long	1
	.long	0
	.long	.LC122
	.long	.LC123
	.long	1
	.long	0
	.long	0
	.long	.LC124
	.long	.LC123
	.long	1
	.long	1
	.long	0
	.long	.LC125
	.long	.LC116
	.long	1
	.long	0
	.long	0
	.long	.LC126
	.long	.LC121
	.long	2
	.long	1
	.long	0
	.long	.LC121
	.long	.LC121
	.long	2
	.long	1
	.long	0
	.long	.LC123
	.long	.LC123
	.long	1
	.long	1
	.long	0
	.long	.LC127
	.long	.LC127
	.long	1
	.long	1
	.long	0
	.long	.LC128
	.long	.LC128
	.long	2
	.long	1
	.long	1
	.long	0
	.long	0
	.zero	12
.globl target_cpu
	.bss
	.align 4
	.type	target_cpu, @object
	.size	target_cpu, 4
target_cpu:
	.zero	4
	.section	.rodata
.LC129:
	.string	"x86_64"
	.text
	.type	get_platform_abi, @function
get_platform_abi:
.LFB49:
	.loc 1 1692 0
	pushl	%ebp
.LCFI188:
	movl	%esp, %ebp
.LCFI189:
	pushl	%ebx
.LCFI190:
	subl	$420, %esp
.LCFI191:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1692 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1695 0
	leal	-398(%ebp), %eax
	movl	%eax, (%esp)
	call	uname@PLT
	.loc 1 1696 0
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-398(%ebp), %eax
	addl	$260, %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L371
	.loc 1 1697 0
	movl	$2, -408(%ebp)
	jmp	.L373
.L371:
	.loc 1 1698 0
	movl	$1, -408(%ebp)
.L373:
	movl	-408(%ebp), %eax
	.loc 1 1699 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L375
	call	__stack_chk_fail_local
.L375:
	addl	$420, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	get_platform_abi, .-get_platform_abi
	.section	.rodata
.LC130:
	.string	"r"
.LC131:
	.string	"/proc/cpuinfo"
.LC132:
	.string	"cannot read /proc/cpuinfo"
.LC133:
	.string	"model name"
.LC134:
	.string	"AMD Athlon(tm) 64 "
.LC135:
	.string	"AMD Athlon(tm) MP "
.LC136:
	.string	"AMD Athlon(tm) Processor"
.LC137:
	.string	"AMD Opteron(tm) "
.LC138:
	.string	"Intel(R) Pentium(R) 4 "
.LC139:
	.string	"Intel(R) Xeon(TM) "
.LC140:
	.string	"unknown"
.LC141:
	.string	"64-bit"
.LC142:
	.string	"32-bit"
	.align 4
.LC143:
	.string	"CPU model name in /proc/cpuinfo is \"unknown\".  Defaulting to basic %s x86."
	.align 4
.LC144:
	.string	"/proc/cpuinfo contains unknown CPU model name"
	.align 4
.LC145:
	.string	"cannot find CPU model name in /proc/cpuinfo"
	.text
.globl get_auto_cpu_name
	.type	get_auto_cpu_name, @function
get_auto_cpu_name:
.LFB50:
	.loc 1 1704 0
	pushl	%ebp
.LCFI192:
	movl	%esp, %ebp
.LCFI193:
	pushl	%edi
.LCFI194:
	pushl	%esi
.LCFI195:
	pushl	%ebx
.LCFI196:
	subl	$316, %esp
.LCFI197:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1704 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1707 0
	movl	$0, -284(%ebp)
	.loc 1 1708 0
	movl	$0, -280(%ebp)
	.loc 1 1710 0
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -288(%ebp)
	.loc 1 1711 0
	cmpl	$0, -288(%ebp)
	jne	.L380
	.loc 1 1712 0
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1713 0
	movl	$0, -304(%ebp)
	jmp	.L379
.L381:
	.loc 1 1716 0
	leal	-272(%ebp), %eax
	leal	.LC133@GOTOFF(%ebx), %edx
	movl	%edx, -308(%ebp)
	movl	%eax, -312(%ebp)
	movl	$10, -316(%ebp)
	cld
	movl	-308(%ebp), %esi
	movl	-312(%ebp), %edi
	movl	-316(%ebp), %ecx
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
	.loc 1 1717 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L383
	.loc 1 1718 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, -284(%ebp)
	jmp	.L401
.L383:
	.loc 1 1719 0
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L386
	.loc 1 1720 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, -284(%ebp)
	jmp	.L401
.L386:
	.loc 1 1721 0
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L388
	.loc 1 1722 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, -284(%ebp)
	jmp	.L401
.L388:
	.loc 1 1723 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L390
	.loc 1 1724 0
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, -284(%ebp)
	jmp	.L401
.L390:
	.loc 1 1725 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L392
	.loc 1 1726 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, -284(%ebp)
	jmp	.L401
.L392:
	.loc 1 1727 0
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L394
	.loc 1 1728 0
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, -284(%ebp)
	.loc 1 1729 0
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, -280(%ebp)
	jmp	.L401
.L394:
	.loc 1 1730 0
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L396
.LBB8:
	.loc 1 1732 0
	call	get_platform_abi
	cmpl	$2, %eax
	jne	.L398
	.loc 1 1733 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, -284(%ebp)
	.loc 1 1734 0
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, -276(%ebp)
	jmp	.L400
.L398:
	.loc 1 1736 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, -284(%ebp)
	.loc 1 1737 0
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, -276(%ebp)
.L400:
	.loc 1 1739 0
	movl	-276(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L401
.L396:
.LBE8:
	.loc 1 1742 0
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1743 0
	movl	$0, -304(%ebp)
	jmp	.L379
.L380:
	.loc 1 1715 0
	movl	-288(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	testl	%eax, %eax
	jne	.L381
.L401:
	.loc 1 1748 0
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 1749 0
	cmpl	$0, -284(%ebp)
	jne	.L402
	.loc 1 1750 0
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1751 0
	movl	$0, -304(%ebp)
	jmp	.L379
.L402:
	.loc 1 1755 0
	cmpl	$0, -280(%ebp)
	je	.L404
	.loc 1 1756 0
	call	get_platform_abi
	cmpl	$2, %eax
	jne	.L404
	.loc 1 1757 0
	movl	-280(%ebp), %eax
	movl	%eax, -284(%ebp)
.L404:
	.loc 1 1761 0
	movl	-284(%ebp), %esi
	movl	%esi, -304(%ebp)
.L379:
	movl	-304(%ebp), %eax
	.loc 1 1762 0
	movl	-16(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L408
	call	__stack_chk_fail_local
.L408:
	addl	$316, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE50:
	.size	get_auto_cpu_name, .-get_auto_cpu_name
	.section	.rodata
	.align 4
.LC146:
	.string	"CPU target %s conflicts with %s; using latter (%s)"
	.text
	.type	set_cpu, @function
set_cpu:
.LFB51:
	.loc 1 1767 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$20, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1770 0
	movl	parsing_default_options@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L410
	movl	target_cpu@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L410
	.loc 1 1772 0
	movl	drop_option@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 1773 0
	jmp	.L417
.L410:
	.loc 1 1779 0
	movl	target_cpu@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L414
	movl	target_cpu@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L414
	.loc 1 1781 0
	movl	target_cpu@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	get_toggle_name
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 1785 0
	movl	target_cpu@GOT(%ebx), %eax
	movl	$0, (%eax)
.L414:
	.loc 1 1787 0
	movl	target_cpu@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1788 0
	movl	target_cpu@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_toggle_name
.L417:
	.loc 1 1789 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	set_cpu, .-set_cpu
	.section	.rodata
.LC147:
	.string	"-vms_cc"
.LC148:
	.string	"-pfa"
	.align 4
.LC149:
	.string	"options after -pfa, are ignored; should just use -pfa"
	.align 4
.LC150:
	.string	"options after -pca, are ignored; should just use -pca"
.LC151:
	.string	"-CLIST/-FLIST"
.LC152:
	.string	"-TENV:large_stack"
.LC153:
	.string	"-V <version>"
.LC154:
	.string	"-V"
.LC155:
	.string	"-OPT:Olimit=n"
	.align 4
.LC156:
	.string	"-GCM group no longer supported"
	.text
.globl opt_action
	.type	opt_action, @function
opt_action:
.LFB52:
	.file 2 "./opt_action.i"
	.loc 2 10 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	pushl	%ebx
.LCFI204:
	subl	$20, %esp
.LCFI205:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 11 0
	movl	8(%ebp), %eax
	subl	$32, %eax
	movl	%eax, -12(%ebp)
	cmpl	$781, -12(%ebp)
	ja	.L667
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L662@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L662:
	.long	.L420@GOTOFF
	.long	.L667@GOTOFF
	.long	.L421@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L422@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L423@GOTOFF
	.long	.L424@GOTOFF
	.long	.L667@GOTOFF
	.long	.L425@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L426@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L427@GOTOFF
	.long	.L428@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L429@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L430@GOTOFF
	.long	.L431@GOTOFF
	.long	.L432@GOTOFF
	.long	.L433@GOTOFF
	.long	.L434@GOTOFF
	.long	.L435@GOTOFF
	.long	.L667@GOTOFF
	.long	.L436@GOTOFF
	.long	.L437@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L438@GOTOFF
	.long	.L439@GOTOFF
	.long	.L440@GOTOFF
	.long	.L441@GOTOFF
	.long	.L442@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L443@GOTOFF
	.long	.L444@GOTOFF
	.long	.L445@GOTOFF
	.long	.L667@GOTOFF
	.long	.L446@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L447@GOTOFF
	.long	.L448@GOTOFF
	.long	.L449@GOTOFF
	.long	.L450@GOTOFF
	.long	.L451@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L452@GOTOFF
	.long	.L453@GOTOFF
	.long	.L454@GOTOFF
	.long	.L455@GOTOFF
	.long	.L667@GOTOFF
	.long	.L456@GOTOFF
	.long	.L457@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L458@GOTOFF
	.long	.L667@GOTOFF
	.long	.L459@GOTOFF
	.long	.L460@GOTOFF
	.long	.L667@GOTOFF
	.long	.L461@GOTOFF
	.long	.L462@GOTOFF
	.long	.L667@GOTOFF
	.long	.L463@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L464@GOTOFF
	.long	.L667@GOTOFF
	.long	.L465@GOTOFF
	.long	.L466@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L467@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L468@GOTOFF
	.long	.L469@GOTOFF
	.long	.L470@GOTOFF
	.long	.L667@GOTOFF
	.long	.L471@GOTOFF
	.long	.L472@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L473@GOTOFF
	.long	.L474@GOTOFF
	.long	.L667@GOTOFF
	.long	.L475@GOTOFF
	.long	.L667@GOTOFF
	.long	.L476@GOTOFF
	.long	.L477@GOTOFF
	.long	.L478@GOTOFF
	.long	.L479@GOTOFF
	.long	.L480@GOTOFF
	.long	.L481@GOTOFF
	.long	.L667@GOTOFF
	.long	.L482@GOTOFF
	.long	.L667@GOTOFF
	.long	.L483@GOTOFF
	.long	.L667@GOTOFF
	.long	.L484@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L485@GOTOFF
	.long	.L667@GOTOFF
	.long	.L486@GOTOFF
	.long	.L667@GOTOFF
	.long	.L487@GOTOFF
	.long	.L488@GOTOFF
	.long	.L489@GOTOFF
	.long	.L490@GOTOFF
	.long	.L491@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L492@GOTOFF
	.long	.L493@GOTOFF
	.long	.L494@GOTOFF
	.long	.L495@GOTOFF
	.long	.L667@GOTOFF
	.long	.L496@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L497@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L498@GOTOFF
	.long	.L667@GOTOFF
	.long	.L499@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L500@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L501@GOTOFF
	.long	.L502@GOTOFF
	.long	.L503@GOTOFF
	.long	.L504@GOTOFF
	.long	.L667@GOTOFF
	.long	.L505@GOTOFF
	.long	.L506@GOTOFF
	.long	.L507@GOTOFF
	.long	.L508@GOTOFF
	.long	.L509@GOTOFF
	.long	.L510@GOTOFF
	.long	.L511@GOTOFF
	.long	.L512@GOTOFF
	.long	.L513@GOTOFF
	.long	.L514@GOTOFF
	.long	.L515@GOTOFF
	.long	.L516@GOTOFF
	.long	.L517@GOTOFF
	.long	.L518@GOTOFF
	.long	.L519@GOTOFF
	.long	.L520@GOTOFF
	.long	.L521@GOTOFF
	.long	.L667@GOTOFF
	.long	.L522@GOTOFF
	.long	.L523@GOTOFF
	.long	.L524@GOTOFF
	.long	.L525@GOTOFF
	.long	.L526@GOTOFF
	.long	.L667@GOTOFF
	.long	.L527@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L528@GOTOFF
	.long	.L667@GOTOFF
	.long	.L529@GOTOFF
	.long	.L667@GOTOFF
	.long	.L530@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L531@GOTOFF
	.long	.L532@GOTOFF
	.long	.L533@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L534@GOTOFF
	.long	.L667@GOTOFF
	.long	.L535@GOTOFF
	.long	.L536@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L537@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L538@GOTOFF
	.long	.L667@GOTOFF
	.long	.L539@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L540@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L541@GOTOFF
	.long	.L542@GOTOFF
	.long	.L543@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L544@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L545@GOTOFF
	.long	.L546@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L547@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L548@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L549@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L550@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L551@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L552@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L553@GOTOFF
	.long	.L667@GOTOFF
	.long	.L554@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L555@GOTOFF
	.long	.L556@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L557@GOTOFF
	.long	.L558@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L559@GOTOFF
	.long	.L560@GOTOFF
	.long	.L667@GOTOFF
	.long	.L561@GOTOFF
	.long	.L562@GOTOFF
	.long	.L563@GOTOFF
	.long	.L564@GOTOFF
	.long	.L565@GOTOFF
	.long	.L566@GOTOFF
	.long	.L567@GOTOFF
	.long	.L568@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L569@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L570@GOTOFF
	.long	.L571@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L572@GOTOFF
	.long	.L573@GOTOFF
	.long	.L574@GOTOFF
	.long	.L575@GOTOFF
	.long	.L576@GOTOFF
	.long	.L577@GOTOFF
	.long	.L578@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L579@GOTOFF
	.long	.L580@GOTOFF
	.long	.L581@GOTOFF
	.long	.L582@GOTOFF
	.long	.L583@GOTOFF
	.long	.L584@GOTOFF
	.long	.L585@GOTOFF
	.long	.L586@GOTOFF
	.long	.L587@GOTOFF
	.long	.L588@GOTOFF
	.long	.L589@GOTOFF
	.long	.L590@GOTOFF
	.long	.L591@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L592@GOTOFF
	.long	.L593@GOTOFF
	.long	.L594@GOTOFF
	.long	.L595@GOTOFF
	.long	.L596@GOTOFF
	.long	.L667@GOTOFF
	.long	.L597@GOTOFF
	.long	.L598@GOTOFF
	.long	.L599@GOTOFF
	.long	.L600@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L601@GOTOFF
	.long	.L667@GOTOFF
	.long	.L602@GOTOFF
	.long	.L603@GOTOFF
	.long	.L604@GOTOFF
	.long	.L667@GOTOFF
	.long	.L605@GOTOFF
	.long	.L606@GOTOFF
	.long	.L607@GOTOFF
	.long	.L608@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L609@GOTOFF
	.long	.L610@GOTOFF
	.long	.L611@GOTOFF
	.long	.L612@GOTOFF
	.long	.L613@GOTOFF
	.long	.L614@GOTOFF
	.long	.L615@GOTOFF
	.long	.L616@GOTOFF
	.long	.L667@GOTOFF
	.long	.L617@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L618@GOTOFF
	.long	.L619@GOTOFF
	.long	.L667@GOTOFF
	.long	.L620@GOTOFF
	.long	.L621@GOTOFF
	.long	.L622@GOTOFF
	.long	.L667@GOTOFF
	.long	.L623@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L624@GOTOFF
	.long	.L625@GOTOFF
	.long	.L626@GOTOFF
	.long	.L627@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L628@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L629@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L630@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L631@GOTOFF
	.long	.L632@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L633@GOTOFF
	.long	.L634@GOTOFF
	.long	.L667@GOTOFF
	.long	.L635@GOTOFF
	.long	.L667@GOTOFF
	.long	.L636@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L637@GOTOFF
	.long	.L638@GOTOFF
	.long	.L639@GOTOFF
	.long	.L640@GOTOFF
	.long	.L641@GOTOFF
	.long	.L642@GOTOFF
	.long	.L643@GOTOFF
	.long	.L644@GOTOFF
	.long	.L667@GOTOFF
	.long	.L645@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L646@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L647@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L648@GOTOFF
	.long	.L667@GOTOFF
	.long	.L649@GOTOFF
	.long	.L667@GOTOFF
	.long	.L650@GOTOFF
	.long	.L651@GOTOFF
	.long	.L667@GOTOFF
	.long	.L652@GOTOFF
	.long	.L653@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L654@GOTOFF
	.long	.L655@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L656@GOTOFF
	.long	.L657@GOTOFF
	.long	.L658@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L667@GOTOFF
	.long	.L659@GOTOFF
	.long	.L660@GOTOFF
	.long	.L661@GOTOFF
	.text
.L420:
	.loc 2 13 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	set_explicit_lang@PLT
	.loc 2 14 0
	jmp	.L667
.L421:
	.loc 2 16 0
	movl	$0, 4(%esp)
	movl	msglevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 17 0
	jmp	.L667
.L422:
	.loc 2 19 0
	movl	$0, 4(%esp)
	movl	msglevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 20 0
	jmp	.L667
.L423:
	.loc 2 22 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warn_no_longer_supported2@PLT
	.loc 2 23 0
	jmp	.L667
.L424:
	.loc 2 25 0
	movl	show_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	show_version@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	show_copyright@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 26 0
	jmp	.L667
.L425:
	.loc 2 28 0
	movl	show_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	show_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	show_version@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 29 0
	jmp	.L667
.L426:
	.loc 2 31 0
	movl	$0, 4(%esp)
	movl	skip_as@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 32 0
	jmp	.L667
.L427:
	.loc 2 34 0
	movl	subverbose@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 35 0
	jmp	.L667
.L428:
	.loc 2 37 0
	movl	nostdinc@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 38 0
	jmp	.L667
.L429:
	.loc 2 40 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 41 0
	jmp	.L667
.L430:
	.loc 2 43 0
	movl	time_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 44 0
	jmp	.L667
.L431:
	.loc 2 46 0
	movl	debug@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	show_flag@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 47 0
	jmp	.L667
.L432:
	.loc 2 49 0
	movl	show_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 50 0
	jmp	.L667
.L433:
	.loc 2 52 0
	movl	show_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 53 0
	jmp	.L667
.L434:
	.loc 2 55 0
	movl	show_defaults@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 56 0
	jmp	.L667
.L435:
	.loc 2 58 0
	movl	show_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 59 0
	jmp	.L667
.L436:
	.loc 2 61 0
	movl	$2, 4(%esp)
	movl	shared@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 62 0
	jmp	.L667
.L437:
	.loc 2 64 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 65 0
	jmp	.L667
.L438:
	.loc 2 67 0
	movl	$2, 4(%esp)
	movl	rflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 68 0
	jmp	.L667
.L439:
	.loc 2 70 0
	movl	$1, 4(%esp)
	movl	rflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 71 0
	jmp	.L667
.L440:
	.loc 2 73 0
	movl	$4, 4(%esp)
	movl	shared@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	last_phase@GOT(%ebx), %eax
	movl	$39, (%eax)
	.loc 2 74 0
	jmp	.L667
.L441:
	.loc 2 76 0
	movl	$1, 4(%esp)
	movl	qwalign2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	qwalign1@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 77 0
	jmp	.L667
.L442:
	.loc 2 79 0
	movl	$1, 4(%esp)
	movl	qwalign1@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	qwalign2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 80 0
	jmp	.L667
.L443:
	.loc 2 82 0
	movl	show_search_path@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 83 0
	jmp	.L667
.L444:
	.loc 2 85 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	print_file_path@PLT
	.loc 2 86 0
	jmp	.L667
.L445:
	.loc 2 88 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	call	print_multi_lib@PLT
	.loc 2 89 0
	jmp	.L667
.L446:
	.loc 2 91 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	print_file_path@PLT
	.loc 2 92 0
	jmp	.L667
.L447:
	.loc 2 94 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warn_no_longer_supported2@PLT
	.loc 2 95 0
	jmp	.L667
.L448:
	.loc 2 97 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 2 98 0
	jmp	.L667
.L449:
	.loc 2 100 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_list@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 101 0
	jmp	.L667
.L450:
	.loc 2 103 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_mp@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_mp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	keep_list@GOT(%ebx), %eax
	movl	%edx, (%eax)
	call	Process_Promp@PLT
	.loc 2 104 0
	jmp	.L667
.L451:
	.loc 2 106 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 107 0
	jmp	.L667
.L452:
	.loc 2 109 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 2 110 0
	jmp	.L667
.L453:
	.loc 2 112 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_list@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 113 0
	jmp	.L667
.L454:
	.loc 2 115 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_mp@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_mp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	keep_list@GOT(%ebx), %eax
	movl	%edx, (%eax)
	call	Process_Promp@PLT
	.loc 2 116 0
	jmp	.L667
.L455:
	.loc 2 118 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 119 0
	jmp	.L667
.L456:
	.loc 2 121 0
	movl	pass_exit_codes@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 122 0
	jmp	.L667
.L457:
	.loc 2 124 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$23, (%esp)
	call	earliest_phase@PLT
	movl	%eax, %edx
	movl	last_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 125 0
	jmp	.L667
.L458:
	.loc 2 127 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	outfile@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	save_name@PLT
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	check_output_name
	movl	$2, (%esp)
	call	cancel_saved_arg@PLT
	.loc 2 128 0
	jmp	.L667
.L459:
	.loc 2 130 0
	movl	nostdinc@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 131 0
	jmp	.L667
.L460:
	.loc 2 133 0
	movl	nostdinc@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 134 0
	jmp	.L667
.L461:
	.loc 2 136 0
	call	Process_Inline@PLT
	.loc 2 137 0
	jmp	.L667
.L462:
	.loc 2 139 0
	movl	$1, 4(%esp)
	movl	iflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 140 0
	jmp	.L667
.L463:
	.loc 2 142 0
	movl	fortran_line_length@GOT(%ebx), %eax
	movl	$72, (%eax)
	.loc 2 143 0
	jmp	.L667
.L464:
	.loc 2 145 0
	movl	nocpp_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	first_phase@GOT(%ebx), %eax
	movl	$23, (%eax)
	.loc 2 146 0
	jmp	.L667
.L465:
	.loc 2 148 0
	movl	$1, 4(%esp)
	movl	skip_as@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 149 0
	jmp	.L667
.L466:
	.loc 2 151 0
	movl	prelink_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 152 0
	jmp	.L667
.L467:
	.loc 2 154 0
	movl	$1, 4(%esp)
	movl	abi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 155 0
	jmp	.L667
.L468:
	.loc 2 157 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	set_cpu
	.loc 2 158 0
	jmp	.L667
.L469:
	.loc 2 160 0
	movl	$1, 4(%esp)
	movl	sse2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$1, 4(%esp)
	movl	sse3@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 161 0
	jmp	.L667
.L470:
	.loc 2 163 0
	movl	$1, 4(%esp)
	movl	sse2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 164 0
	jmp	.L667
.L471:
	.loc 2 166 0
	movl	$1, 4(%esp)
	movl	ospace@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 167 0
	jmp	.L667
.L472:
	.loc 2 169 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 170 0
	jmp	.L667
.L473:
	.loc 2 172 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_needed@PLT
	.loc 2 173 0
	jmp	.L667
.L474:
	.loc 2 175 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_needed@PLT
	.loc 2 176 0
	jmp	.L667
.L475:
	.loc 2 178 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warn_no_longer_supported2@PLT
	.loc 2 179 0
	jmp	.L667
.L476:
	.loc 2 181 0
	movl	$0, 4(%esp)
	movl	mpkind@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 182 0
	jmp	.L667
.L477:
	.loc 2 184 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_module@PLT
	.loc 2 185 0
	jmp	.L667
.L478:
	.loc 2 187 0
	movl	$0, 4(%esp)
	movl	sse3@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 188 0
	jmp	.L667
.L479:
	.loc 2 190 0
	movl	$0, 4(%esp)
	movl	sse2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	sse3@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 191 0
	jmp	.L667
.L480:
	.loc 2 193 0
	movl	$0, 4(%esp)
	movl	sse2@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	sse3@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 194 0
	jmp	.L667
.L481:
	.loc 2 196 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 197 0
	jmp	.L667
.L482:
	.loc 2 199 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 200 0
	jmp	.L667
.L483:
	.loc 2 202 0
	movl	$0, 4(%esp)
	movl	m3dnow@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 203 0
	jmp	.L667
.L484:
	.loc 2 205 0
	movl	$4, 4(%esp)
	movl	isa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 206 0
	jmp	.L667
.L485:
	.loc 2 208 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	set_cpu
	.loc 2 209 0
	jmp	.L667
.L486:
	.loc 2 211 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	set_memory_model@PLT
	.loc 2 212 0
	jmp	.L667
.L487:
	.loc 2 214 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	set_cpu
	.loc 2 215 0
	jmp	.L667
.L488:
	.loc 2 217 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 218 0
	jmp	.L667
.L489:
	.loc 2 220 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 221 0
	jmp	.L667
.L490:
	.loc 2 223 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 224 0
	jmp	.L667
.L491:
	.loc 2 226 0
	movl	expand_ftpp_macros@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 227 0
	jmp	.L667
.L492:
	.loc 2 229 0
	movl	$2, 4(%esp)
	movl	abi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 230 0
	jmp	.L667
.L493:
	.loc 2 232 0
	movl	$1, 4(%esp)
	movl	m3dnow@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 233 0
	jmp	.L667
.L494:
	.loc 2 235 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 236 0
	jmp	.L667
.L495:
	.loc 2 238 0
	movl	$1, 4(%esp)
	movl	abi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 239 0
	jmp	.L667
.L496:
	.loc 2 241 0
	movl	ldscript_file@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 242 0
	jmp	.L667
.L497:
	.loc 2 244 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 245 0
	jmp	.L667
.L498:
	.loc 2 247 0
	movl	$1, 4(%esp)
	movl	ipa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 248 0
	jmp	.L667
.L499:
	.loc 2 250 0
	call	Process_Inline@PLT
	.loc 2 251 0
	jmp	.L667
.L500:
	.loc 2 253 0
	movl	ignore_suffix@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 254 0
	jmp	.L667
.L501:
	.loc 2 256 0
	movl	$3, 4(%esp)
	movl	iflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 257 0
	jmp	.L667
.L502:
	.loc 2 259 0
	movl	$2, 4(%esp)
	movl	iflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 260 0
	jmp	.L667
.L503:
	.loc 2 262 0
	movl	$1, 4(%esp)
	movl	iflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 263 0
	jmp	.L667
.L504:
	.loc 2 265 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	help_pattern@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	save_name@PLT
	.loc 2 266 0
	jmp	.L667
.L505:
	.loc 2 268 0
	movl	$1, 4(%esp)
	movl	use_h264libs@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	use_bblibs@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 269 0
	jmp	.L667
.L506:
	.loc 2 271 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 272 0
	jmp	.L667
.L507:
	.loc 2 274 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 275 0
	jmp	.L667
.L508:
	.loc 2 277 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 278 0
	jmp	.L667
.L509:
	.loc 2 280 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 281 0
	jmp	.L667
.L510:
	.loc 2 283 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 284 0
	jmp	.L667
.L511:
	.loc 2 286 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 287 0
	jmp	.L667
.L512:
	.loc 2 289 0
	movl	$3, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 290 0
	jmp	.L667
.L513:
	.loc 2 292 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 293 0
	jmp	.L667
.L514:
	.loc 2 295 0
	movl	$3, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 296 0
	jmp	.L667
.L515:
	.loc 2 298 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 299 0
	jmp	.L667
.L516:
	.loc 2 301 0
	movl	$1, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 302 0
	jmp	.L667
.L517:
	.loc 2 304 0
	movl	$0, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 305 0
	jmp	.L667
.L518:
	.loc 2 307 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 308 0
	jmp	.L667
.L519:
	.loc 2 310 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 311 0
	jmp	.L667
.L520:
	.loc 2 313 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 314 0
	jmp	.L667
.L521:
	.loc 2 316 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 317 0
	jmp	.L667
.L522:
	.loc 2 319 0
	movl	$3, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 320 0
	jmp	.L667
.L523:
	.loc 2 322 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 323 0
	jmp	.L667
.L524:
	.loc 2 325 0
	movl	$1, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 326 0
	jmp	.L667
.L525:
	.loc 2 328 0
	movl	$0, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 329 0
	jmp	.L667
.L526:
	.loc 2 331 0
	movl	$2, 4(%esp)
	movl	glevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 332 0
	jmp	.L667
.L527:
	.loc 2 334 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 335 0
	jmp	.L667
.L528:
	.loc 2 337 0
	movl	$2, 4(%esp)
	movl	msglevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 338 0
	jmp	.L667
.L529:
	.loc 2 340 0
	movl	$1, 4(%esp)
	movl	use_ftpp@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 341 0
	jmp	.L667
.L530:
	.loc 2 343 0
	call	Process_Test_Coverage@PLT
	.loc 2 344 0
	jmp	.L667
.L531:
	.loc 2 346 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 347 0
	jmp	.L667
.L532:
	.loc 2 349 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 350 0
	jmp	.L667
.L533:
	.loc 2 352 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 353 0
	jmp	.L667
.L534:
	.loc 2 355 0
	movl	$2, 4(%esp)
	movl	fortran_form@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 356 0
	jmp	.L667
.L535:
	.loc 2 358 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warn_no_longer_supported2@PLT
	.loc 2 359 0
	jmp	.L667
.L536:
	.loc 2 361 0
	call	Process_Profile_Arcs@PLT
	.loc 2 362 0
	jmp	.L667
.L537:
	.loc 2 364 0
	movl	$1, 4(%esp)
	movl	pic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 365 0
	jmp	.L667
.L538:
	.loc 2 367 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 368 0
	jmp	.L667
.L539:
	.loc 2 370 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 371 0
	jmp	.L667
.L540:
	.loc 2 373 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 374 0
	jmp	.L667
.L541:
	.loc 2 376 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 377 0
	jmp	.L667
.L542:
	.loc 2 379 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 380 0
	jmp	.L667
.L543:
	.loc 2 382 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 383 0
	jmp	.L667
.L544:
	.loc 2 385 0
	movl	$0, 4(%esp)
	movl	pic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 386 0
	jmp	.L667
.L545:
	.loc 2 388 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 389 0
	jmp	.L667
.L546:
	.loc 2 391 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 392 0
	jmp	.L667
.L547:
	.loc 2 394 0
	movl	$0, 4(%esp)
	movl	fmath_errno@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 395 0
	jmp	.L667
.L548:
	.loc 2 397 0
	movl	$0, 4(%esp)
	movl	ffast_math@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 398 0
	jmp	.L667
.L549:
	.loc 2 400 0
	movl	$0, 4(%esp)
	movl	fbuiltin@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 401 0
	jmp	.L667
.L550:
	.loc 2 403 0
	movl	$0, 4(%esp)
	movl	pic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 404 0
	jmp	.L667
.L551:
	.loc 2 406 0
	movl	$1, 4(%esp)
	movl	fmath_errno@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 407 0
	jmp	.L667
.L552:
	.loc 2 409 0
	movl	$1, 4(%esp)
	movl	fortran_form@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 410 0
	jmp	.L667
.L553:
	.loc 2 412 0
	movl	$1, 4(%esp)
	movl	ffast_math@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 413 0
	jmp	.L667
.L554:
	.loc 2 415 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 416 0
	jmp	.L667
.L555:
	.loc 2 418 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	feedback_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 2 419 0
	jmp	.L667
.L556:
	.loc 2 421 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$23, (%esp)
	call	earliest_phase@PLT
	movl	%eax, %edx
	movl	last_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 422 0
	jmp	.L667
.L557:
	.loc 2 424 0
	movl	$1, 4(%esp)
	movl	use_coco@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	coco_setfile@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	save_name@PLT
	.loc 2 425 0
	jmp	.L667
.L558:
	.loc 2 427 0
	movl	$1, 4(%esp)
	movl	use_coco@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 428 0
	jmp	.L667
.L559:
	.loc 2 430 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_fbuse@PLT
	.loc 2 431 0
	jmp	.L667
.L560:
	.loc 2 433 0
	movl	$1, 4(%esp)
	movl	fbuiltin@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 434 0
	jmp	.L667
.L561:
	.loc 2 436 0
	movl	Gen_feedback@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 437 0
	jmp	.L667
.L562:
	.loc 2 439 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_fbexe@PLT
	.loc 2 440 0
	jmp	.L667
.L563:
	.loc 2 442 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_fb_xdir@PLT
	.loc 2 443 0
	jmp	.L667
.L564:
	.loc 2 445 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_fb_type@PLT
	.loc 2 446 0
	jmp	.L667
.L565:
	.loc 2 448 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_fb_phase@PLT
	.loc 2 449 0
	jmp	.L667
.L566:
	.loc 2 451 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_fb_opt@PLT
	.loc 2 452 0
	jmp	.L667
.L567:
	.loc 2 454 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_fb_create@PLT
	.loc 2 455 0
	jmp	.L667
.L568:
	.loc 2 457 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_fb_cdir@PLT
	.loc 2 458 0
	jmp	.L667
.L569:
	.loc 2 460 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	internal_fb_file@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	save_name@PLT
	.loc 2 461 0
	jmp	.L667
.L570:
	.loc 2 463 0
	movl	$1, 4(%esp)
	movl	pic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 464 0
	jmp	.L667
.L571:
	.loc 2 466 0
	movl	fortran_line_length@GOT(%ebx), %eax
	movl	$132, (%eax)
	.loc 2 467 0
	jmp	.L667
.L572:
	.loc 2 469 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 470 0
	jmp	.L667
.L573:
	.loc 2 472 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 473 0
	jmp	.L667
.L574:
	.loc 2 475 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 476 0
	jmp	.L667
.L575:
	.loc 2 478 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 479 0
	jmp	.L667
.L576:
	.loc 2 481 0
	movl	dump_version@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 482 0
	jmp	.L667
.L577:
	.loc 2 484 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 485 0
	jmp	.L667
.L578:
	.loc 2 487 0
	movl	$10, (%esp)
	call	putchar@PLT
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 488 0
	jmp	.L667
.L579:
	.loc 2 490 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 491 0
	jmp	.L667
.L580:
	.loc 2 493 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 494 0
	jmp	.L667
.L581:
	.loc 2 496 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 497 0
	jmp	.L667
.L582:
	.loc 2 499 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 500 0
	jmp	.L667
.L583:
	.loc 2 502 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 503 0
	jmp	.L667
.L584:
	.loc 2 505 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 506 0
	jmp	.L667
.L585:
	.loc 2 508 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 509 0
	jmp	.L667
.L586:
	.loc 2 511 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 512 0
	jmp	.L667
.L587:
	.loc 2 514 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 515 0
	jmp	.L667
.L588:
	.loc 2 517 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 518 0
	jmp	.L667
.L589:
	.loc 2 520 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 521 0
	jmp	.L667
.L590:
	.loc 2 523 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 524 0
	jmp	.L667
.L591:
	.loc 2 526 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 527 0
	jmp	.L667
.L592:
	.loc 2 529 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 530 0
	jmp	.L667
.L593:
	.loc 2 532 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 533 0
	jmp	.L667
.L594:
	.loc 2 535 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 536 0
	jmp	.L667
.L595:
	.loc 2 538 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 539 0
	jmp	.L667
.L596:
	.loc 2 541 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 542 0
	jmp	.L667
.L597:
	.loc 2 544 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 545 0
	jmp	.L667
.L598:
	.loc 2 547 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 548 0
	jmp	.L667
.L599:
	.loc 2 550 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 551 0
	jmp	.L667
.L600:
	.loc 2 553 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 554 0
	jmp	.L667
.L601:
	.loc 2 556 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 557 0
	jmp	.L667
.L602:
	.loc 2 559 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 560 0
	jmp	.L667
.L603:
	.loc 2 562 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 563 0
	jmp	.L667
.L604:
	.loc 2 565 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 566 0
	jmp	.L667
.L605:
	.loc 2 568 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 569 0
	jmp	.L667
.L606:
	.loc 2 571 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 572 0
	jmp	.L667
.L607:
	.loc 2 574 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 575 0
	jmp	.L667
.L608:
	.loc 2 577 0
	movl	$1, 4(%esp)
	movl	dflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 578 0
	jmp	.L667
.L609:
	.loc 2 580 0
	movl	$0, 4(%esp)
	movl	use_ftpp@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	first_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
	.loc 2 581 0
	jmp	.L667
.L610:
	.loc 2 583 0
	movl	$1, 4(%esp)
	movl	cordflag@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 584 0
	jmp	.L667
.L611:
	.loc 2 586 0
	movl	show_copyright@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	execute_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 587 0
	jmp	.L667
.L612:
	.loc 2 589 0
	movl	$2, 4(%esp)
	movl	io_byteswap@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	check_convert_name@PLT
	.loc 2 590 0
	jmp	.L667
.L613:
	.loc 2 592 0
	movl	$1, 4(%esp)
	movl	compat_gcc@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 593 0
	jmp	.L667
.L614:
	.loc 2 595 0
	movl	fortran_line_length@GOT(%ebx), %eax
	movl	$80, (%eax)
	.loc 2 596 0
	jmp	.L667
.L615:
	.loc 2 598 0
	movl	fortran_line_length@GOT(%ebx), %eax
	movl	$72, (%eax)
	.loc 2 599 0
	jmp	.L667
.L616:
	.loc 2 601 0
	movl	fortran_line_length@GOT(%ebx), %eax
	movl	$120, (%eax)
	.loc 2 602 0
	jmp	.L667
.L617:
	.loc 2 604 0
	movl	keep_cif@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 605 0
	jmp	.L667
.L618:
	.loc 2 607 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L663
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L665
.L663:
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$33, (%esp)
	call	earliest_phase@PLT
	movl	%eax, -8(%ebp)
	jmp	.L666
.L665:
	movl	$39, -8(%ebp)
.L666:
	movl	last_phase@GOT(%ebx), %eax
	movl	-8(%ebp), %edx
	movl	%edx, (%eax)
	.loc 2 608 0
	jmp	.L667
.L619:
	.loc 2 610 0
	movl	$1, 4(%esp)
	movl	io_byteswap@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 611 0
	jmp	.L667
.L620:
	.loc 2 613 0
	movl	$1, 4(%esp)
	movl	use_bblibs@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	movl	$0, 4(%esp)
	movl	use_h264libs@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 614 0
	jmp	.L667
.L621:
	.loc 2 616 0
	movl	first_phase@GOT(%ebx), %eax
	movl	$23, (%eax)
	.loc 2 617 0
	jmp	.L667
.L622:
	.loc 2 619 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 620 0
	jmp	.L667
.L623:
	.loc 2 622 0
	movl	$1, 4(%esp)
	movl	isstatic@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 623 0
	jmp	.L667
.L624:
	.loc 2 625 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_list@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 626 0
	jmp	.L667
.L625:
	.loc 2 628 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_mp@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	keep_mp@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	keep_list@GOT(%ebx), %eax
	movl	%edx, (%eax)
	call	Process_Promp@PLT
	.loc 2 629 0
	jmp	.L667
.L626:
	.loc 2 631 0
	movl	auto_parallelize@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 632 0
	jmp	.L667
.L627:
	.loc 2 634 0
	movl	$2, 4(%esp)
	movl	ansi@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 635 0
	jmp	.L667
.L628:
	.loc 2 637 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	change_phase_path
	.loc 2 638 0
	jmp	.L667
.L629:
	.loc 2 640 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 641 0
	jmp	.L667
.L630:
	.loc 2 643 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 644 0
	jmp	.L667
.L631:
	.loc 2 646 0
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 647 0
	jmp	.L667
.L632:
	.loc 2 649 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 2 650 0
	jmp	.L667
.L633:
	.loc 2 652 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_Tenv_Group@PLT
	.loc 2 653 0
	jmp	.L667
.L634:
	.loc 2 655 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_Targ_Group@PLT
	.loc 2 656 0
	jmp	.L667
.L635:
	.loc 2 658 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$30, (%esp)
	call	earliest_phase@PLT
	movl	%eax, %edx
	movl	last_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 2 659 0
	jmp	.L667
.L636:
	.loc 2 661 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 2 662 0
	jmp	.L667
.L637:
	.loc 2 664 0
	movl	$1, 4(%esp)
	movl	ospace@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 665 0
	jmp	.L667
.L638:
	.loc 2 667 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	warn_no_longer_supported2@PLT
	.loc 2 668 0
	jmp	.L667
.L639:
	.loc 2 670 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	Process_Ofast@PLT
	.loc 2 671 0
	jmp	.L667
.L640:
	.loc 2 673 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_Opt_Group@PLT
	.loc 2 674 0
	jmp	.L667
.L641:
	.loc 2 676 0
	movl	O3_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	$3, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 677 0
	jmp	.L667
.L642:
	.loc 2 679 0
	movl	$2, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 680 0
	jmp	.L667
.L643:
	.loc 2 682 0
	movl	$1, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 683 0
	jmp	.L667
.L644:
	.loc 2 685 0
	movl	$0, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 686 0
	jmp	.L667
.L645:
	.loc 2 688 0
	movl	$2, 4(%esp)
	movl	olevel@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 689 0
	jmp	.L667
.L646:
	.loc 2 691 0
	movl	last_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
	.loc 2 692 0
	jmp	.L667
.L647:
	.loc 2 694 0
	movl	last_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
	.loc 2 695 0
	jmp	.L667
.L648:
	.loc 2 697 0
	movl	$1, 4(%esp)
	movl	standard_cplusplus@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 698 0
	jmp	.L667
.L649:
	.loc 2 700 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	add_library_dir@PLT
	.loc 2 701 0
	jmp	.L667
.L650:
	.loc 2 703 0
	movl	$1, 4(%esp)
	movl	ipa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 704 0
	jmp	.L667
.L651:
	.loc 2 706 0
	movl	$1, 4(%esp)
	movl	ipa@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 707 0
	jmp	.L667
.L652:
	.loc 2 709 0
	call	Process_Inline@PLT
	.loc 2 710 0
	jmp	.L667
.L653:
	.loc 2 712 0
	call	Process_Inline@PLT
	.loc 2 713 0
	jmp	.L667
.L654:
	.loc 2 715 0
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 2 716 0
	jmp	.L667
.L655:
	.loc 2 718 0
	movl	optargd@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	gnum@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	toggle@PLT
	.loc 2 719 0
	jmp	.L667
.L656:
	.loc 2 721 0
	call	dash_F_option@PLT
	.loc 2 722 0
	jmp	.L667
.L657:
	.loc 2 724 0
	movl	last_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
	.loc 2 725 0
	jmp	.L667
.L658:
	.loc 2 727 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	Process_Default_Group@PLT
	.loc 2 728 0
	jmp	.L667
.L659:
	.loc 2 730 0
	call	check_dashdash@PLT
	.loc 2 731 0
	jmp	.L667
.L660:
	.loc 2 733 0
	movl	show_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	show_version@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	show_but_not_run@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 2 734 0
	jmp	.L667
.L661:
	.loc 2 736 0
	movl	read_stdin@GOT(%ebx), %eax
	movl	$1, (%eax)
.L667:
	.loc 2 739 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	opt_action, .-opt_action
.globl flag_is_superceded
	.type	flag_is_superceded, @function
flag_is_superceded:
.LFB53:
	.loc 2 744 0
	pushl	%ebp
.LCFI206:
	movl	%esp, %ebp
.LCFI207:
	subl	$8, %esp
.LCFI208:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 2 745 0
	movl	8(%ebp), %eax
	subl	$34, %eax
	movl	%eax, -8(%ebp)
	cmpl	$704, -8(%ebp)
	ja	.L669
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	.L745@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L745:
	.long	.L670@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L671@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L672@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L673@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L674@GOTOFF
	.long	.L675@GOTOFF
	.long	.L676@GOTOFF
	.long	.L677@GOTOFF
	.long	.L678@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L679@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L680@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L681@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L682@GOTOFF
	.long	.L683@GOTOFF
	.long	.L669@GOTOFF
	.long	.L684@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L685@GOTOFF
	.long	.L669@GOTOFF
	.long	.L686@GOTOFF
	.long	.L687@GOTOFF
	.long	.L688@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L689@GOTOFF
	.long	.L669@GOTOFF
	.long	.L690@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L691@GOTOFF
	.long	.L692@GOTOFF
	.long	.L669@GOTOFF
	.long	.L693@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L694@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L695@GOTOFF
	.long	.L696@GOTOFF
	.long	.L697@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L698@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L699@GOTOFF
	.long	.L700@GOTOFF
	.long	.L701@GOTOFF
	.long	.L702@GOTOFF
	.long	.L703@GOTOFF
	.long	.L704@GOTOFF
	.long	.L705@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L706@GOTOFF
	.long	.L707@GOTOFF
	.long	.L708@GOTOFF
	.long	.L709@GOTOFF
	.long	.L710@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L711@GOTOFF
	.long	.L669@GOTOFF
	.long	.L712@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L713@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L714@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L715@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L716@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L717@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L718@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L719@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L720@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L721@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L722@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L723@GOTOFF
	.long	.L724@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L725@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L726@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L727@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L728@GOTOFF
	.long	.L729@GOTOFF
	.long	.L669@GOTOFF
	.long	.L730@GOTOFF
	.long	.L731@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L732@GOTOFF
	.long	.L669@GOTOFF
	.long	.L733@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L734@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L735@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L736@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L737@GOTOFF
	.long	.L738@GOTOFF
	.long	.L739@GOTOFF
	.long	.L669@GOTOFF
	.long	.L740@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L741@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L742@GOTOFF
	.long	.L743@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L744@GOTOFF
	.text
.L670:
	.loc 2 747 0
	movl	msglevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L671:
	.loc 2 750 0
	movl	msglevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L672:
	.loc 2 753 0
	movl	skip_as@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L673:
	.loc 2 756 0
	movl	shared@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L674:
	.loc 2 759 0
	movl	rflag@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L675:
	.loc 2 762 0
	movl	rflag@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L676:
	.loc 2 765 0
	movl	shared@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L677:
	.loc 2 768 0
	movl	qwalign2@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L678:
	.loc 2 771 0
	movl	qwalign1@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L679:
	.loc 2 774 0
	movl	iflag@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L680:
	.loc 2 777 0
	movl	skip_as@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L681:
	.loc 2 780 0
	movl	abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L682:
	.loc 2 783 0
	movl	sse2@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L683:
	.loc 2 786 0
	movl	sse2@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L684:
	.loc 2 789 0
	movl	ospace@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L685:
	.loc 2 792 0
	movl	mpkind@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L686:
	.loc 2 795 0
	movl	sse3@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L687:
	.loc 2 798 0
	movl	sse2@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L688:
	.loc 2 801 0
	movl	sse2@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L689:
	.loc 2 804 0
	movl	m3dnow@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L690:
	.loc 2 807 0
	movl	isa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L691:
	.loc 2 810 0
	movl	abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L692:
	.loc 2 813 0
	movl	m3dnow@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L693:
	.loc 2 816 0
	movl	abi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L694:
	.loc 2 819 0
	movl	ipa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L695:
	.loc 2 822 0
	movl	iflag@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L696:
	.loc 2 825 0
	movl	iflag@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L697:
	.loc 2 828 0
	movl	iflag@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L698:
	.loc 2 831 0
	movl	use_h264libs@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L699:
	.loc 2 834 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L700:
	.loc 2 837 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L701:
	.loc 2 840 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L702:
	.loc 2 843 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L703:
	.loc 2 846 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L704:
	.loc 2 849 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L705:
	.loc 2 852 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L706:
	.loc 2 855 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L707:
	.loc 2 858 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L708:
	.loc 2 861 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L709:
	.loc 2 864 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L710:
	.loc 2 867 0
	movl	glevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L711:
	.loc 2 870 0
	movl	msglevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L712:
	.loc 2 873 0
	movl	use_ftpp@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L713:
	.loc 2 876 0
	movl	fortran_form@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L714:
	.loc 2 879 0
	movl	pic@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L715:
	.loc 2 882 0
	movl	pic@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L716:
	.loc 2 885 0
	movl	fmath_errno@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L717:
	.loc 2 888 0
	movl	ffast_math@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L718:
	.loc 2 891 0
	movl	fbuiltin@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L719:
	.loc 2 894 0
	movl	pic@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L720:
	.loc 2 897 0
	movl	fmath_errno@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L721:
	.loc 2 900 0
	movl	fortran_form@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L722:
	.loc 2 903 0
	movl	ffast_math@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L723:
	.loc 2 906 0
	movl	use_coco@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L724:
	.loc 2 909 0
	movl	use_coco@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L725:
	.loc 2 912 0
	movl	fbuiltin@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L726:
	.loc 2 915 0
	movl	pic@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L727:
	.loc 2 918 0
	movl	dflag@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L728:
	.loc 2 921 0
	movl	use_ftpp@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L729:
	.loc 2 924 0
	movl	cordflag@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L730:
	.loc 2 927 0
	movl	io_byteswap@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L731:
	.loc 2 930 0
	movl	compat_gcc@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L732:
	.loc 2 933 0
	movl	io_byteswap@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L733:
	.loc 2 936 0
	movl	use_bblibs@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L734:
	.loc 2 939 0
	movl	isstatic@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L735:
	.loc 2 942 0
	movl	ansi@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L736:
	.loc 2 945 0
	movl	ospace@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L737:
	.loc 2 948 0
	movl	olevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L738:
	.loc 2 951 0
	movl	olevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L739:
	.loc 2 954 0
	movl	olevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L740:
	.loc 2 957 0
	movl	olevel@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L741:
	.loc 2 960 0
	movl	standard_cplusplus@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L742:
	.loc 2 963 0
	movl	ipa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L743:
	.loc 2 966 0
	movl	ipa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L744:
	.loc 2 969 0
	movl	gnum@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	optargd@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L669
	movl	$1, -4(%ebp)
	jmp	.L748
.L669:
	.loc 2 972 0
	movl	$0, -4(%ebp)
.L748:
	movl	-4(%ebp), %eax
	.loc 2 973 0
	leave
	ret
.LFE53:
	.size	flag_is_superceded, .-flag_is_superceded
	.local	toggled_names
	.comm	toggled_names,400,32
	.comm	mem_model,4,4
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI5-.LFB6
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
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI11-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI12
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
	.long	.LCFI21-.LCFI18
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
	.long	.LCFI22-.LFB10
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
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI26-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI27
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
	.long	.LCFI31-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
	.byte	0x83
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
	.long	.LCFI35-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI38-.LCFI36
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
	.long	.LCFI39-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI40
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
	.long	.LCFI45-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI46
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
	.long	.LCFI49-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI50
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI55-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI56
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI61-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI63-.LFB19
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI67-.LFB20
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI71-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI72
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI77-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI78
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI83-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI84
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI89-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI90
	.byte	0x83
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
	.long	.LCFI93-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI95-.LFB26
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI99-.LFB27
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI103-.LFB28
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI107-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI108
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI111-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI114-.LCFI112
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI115-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI117-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI118
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI123-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI126-.LCFI124
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI127-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI128
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI131-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI132
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI135-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI138-.LCFI136
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI139-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI142-.LCFI140
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI143-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI146-.LCFI144
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI147-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI150-.LCFI148
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI151-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI154-.LCFI152
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI155-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI158-.LCFI156
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI159-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI162-.LCFI160
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI163-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI167-.LCFI164
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI168-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI171-.LCFI169
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI172-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI173
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI176-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI179-.LCFI177
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI180-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI181-.LCFI180
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI183-.LCFI181
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI184-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI185-.LCFI184
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI187-.LCFI185
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI188-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI189-.LCFI188
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI191-.LCFI189
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI192-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI193-.LCFI192
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI197-.LCFI193
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI198-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI199-.LCFI198
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI201-.LCFI199
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI202-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI205-.LCFI203
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI206-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI207-.LCFI206
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE96:
	.file 3 "../../driver/basic.h"
	.file 4 "../../driver/config_platform.h"
	.file 5 "../../driver/lang_defs.h"
	.file 6 "/usr/include/sys/utsname.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "../../driver/opt_actions.h"
	.file 12 "./option_names.h"
	.file 13 "../../driver/errors.h"
	.file 14 "../../driver/file_names.h"
	.file 15 "../../driver/string_utils.h"
	.file 16 "../../driver/get_options.h"
	.file 17 "../../driver/phases.h"
	.file 18 "../../driver/run.h"
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
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI12-.Ltext0
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
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI32-.Ltext0
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
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
.LLST10:
	.long	.LFB15-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI55-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI56-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI62-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI93-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI94-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB30-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI111-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI112-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB31-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI115-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI116-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB33-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI123-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI124-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB34-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI127-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI128-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB35-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI131-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI132-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB36-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI135-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI136-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB37-.Ltext0
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI139-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI140-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB39-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI147-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI148-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB40-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI151-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI152-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB41-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI155-.Ltext0
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI156-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB42-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI159-.Ltext0
	.long	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI160-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB43-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI163-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI164-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB44-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI168-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI169-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB45-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI172-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI173-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB46-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI176-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI177-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB47-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI180-.Ltext0
	.long	.LCFI181-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI181-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB48-.Ltext0
	.long	.LCFI184-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI184-.Ltext0
	.long	.LCFI185-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI185-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB49-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI188-.Ltext0
	.long	.LCFI189-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI189-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB50-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI192-.Ltext0
	.long	.LCFI193-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI193-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB51-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI198-.Ltext0
	.long	.LCFI199-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI199-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB52-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI202-.Ltext0
	.long	.LCFI203-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI203-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB53-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI206-.Ltext0
	.long	.LCFI207-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI207-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x2422
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/opt_actions.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"size_t"
	.byte	0xa
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
	.uleb128 0x5
	.byte	0x4
	.long	0xc8
	.uleb128 0x6
	.long	0xcd
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.byte	0x4
	.long	0xbb
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
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
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x9
	.byte	0x3b
	.long	0xe7
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x9
	.byte	0x90
	.long	0xdb
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x9
	.byte	0x91
	.long	0x154
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0xcd
	.uleb128 0x8
	.long	0x212
	.string	"utsname"
	.value	0x186
	.byte	0x6
	.byte	0x32
	.uleb128 0x9
	.string	"sysname"
	.byte	0x6
	.byte	0x34
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"nodename"
	.byte	0x6
	.byte	0x37
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.string	"release"
	.byte	0x6
	.byte	0x3a
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.string	"version"
	.byte	0x6
	.byte	0x3c
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0xc3
	.uleb128 0x9
	.string	"machine"
	.byte	0x6
	.byte	0x3f
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.string	"domainname"
	.byte	0x6
	.byte	0x44
	.long	0x212
	.byte	0x3
	.byte	0x23
	.uleb128 0x145
	.byte	0x0
	.uleb128 0xa
	.long	0x222
	.long	0xcd
	.uleb128 0xb
	.long	0x9e
	.byte	0x40
	.byte	0x0
	.uleb128 0xc
	.long	0x2a2
	.byte	0x4
	.byte	0x4
	.byte	0x50
	.uleb128 0xd
	.string	"IP0"
	.sleb128 0
	.uleb128 0xd
	.string	"IP19"
	.sleb128 1
	.uleb128 0xd
	.string	"IP20"
	.sleb128 2
	.uleb128 0xd
	.string	"IP21"
	.sleb128 3
	.uleb128 0xd
	.string	"IP22_4K"
	.sleb128 4
	.uleb128 0xd
	.string	"IP22_5K"
	.sleb128 5
	.uleb128 0xd
	.string	"IP24"
	.sleb128 6
	.uleb128 0xd
	.string	"IP25"
	.sleb128 7
	.uleb128 0xd
	.string	"IP26"
	.sleb128 8
	.uleb128 0xd
	.string	"IP27"
	.sleb128 9
	.uleb128 0xd
	.string	"IP28"
	.sleb128 10
	.uleb128 0xd
	.string	"IP30"
	.sleb128 11
	.uleb128 0xd
	.string	"IP32_5K"
	.sleb128 12
	.uleb128 0xd
	.string	"IP32_10K"
	.sleb128 13
	.uleb128 0xd
	.string	"IP_END"
	.sleb128 14
	.byte	0x0
	.uleb128 0x2
	.string	"PLATFORM"
	.byte	0x4
	.byte	0x60
	.long	0x222
	.uleb128 0xc
	.long	0x32b
	.byte	0x4
	.byte	0x4
	.byte	0x63
	.uleb128 0xd
	.string	"PROC_NONE"
	.sleb128 0
	.uleb128 0xd
	.string	"PROC_R3K"
	.sleb128 3
	.uleb128 0xd
	.string	"PROC_R4K"
	.sleb128 4
	.uleb128 0xd
	.string	"PROC_R5K"
	.sleb128 5
	.uleb128 0xd
	.string	"PROC_R8K"
	.sleb128 8
	.uleb128 0xd
	.string	"PROC_R10K"
	.sleb128 10
	.uleb128 0xd
	.string	"PROC_R12K"
	.sleb128 12
	.uleb128 0xd
	.string	"PROC_ITANIUM"
	.sleb128 20
	.uleb128 0xd
	.string	"PROC_SIMPLIGHT"
	.sleb128 30
	.byte	0x0
	.uleb128 0x2
	.string	"PROCESSOR"
	.byte	0x4
	.byte	0x6d
	.long	0x2b2
	.uleb128 0xe
	.long	0x397
	.byte	0x14
	.byte	0x4
	.byte	0x72
	.uleb128 0x9
	.string	"id"
	.byte	0x4
	.byte	0x73
	.long	0x2a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x4
	.byte	0x74
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"pname"
	.byte	0x4
	.byte	0x75
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"processor"
	.byte	0x4
	.byte	0x76
	.long	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"nickname"
	.byte	0x4
	.byte	0x78
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"PLATFORM_OPTIONS"
	.byte	0x4
	.byte	0x79
	.long	0x33c
	.uleb128 0x2
	.string	"boolean"
	.byte	0x3
	.byte	0x2c
	.long	0xbb
	.uleb128 0xc
	.long	0x3e1
	.byte	0x4
	.byte	0xb
	.byte	0x3e
	.uleb128 0xd
	.string	"M_CPU"
	.sleb128 0
	.uleb128 0xd
	.string	"M_ARCH"
	.sleb128 1
	.uleb128 0xd
	.string	"M_TUNE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"m_flag"
	.byte	0xb
	.byte	0x42
	.long	0x3be
	.uleb128 0xc
	.long	0x490
	.byte	0x4
	.byte	0xb
	.byte	0x4c
	.uleb128 0xd
	.string	"ISA_NONE"
	.sleb128 0
	.uleb128 0xd
	.string	"ISA_MIPS1"
	.sleb128 1
	.uleb128 0xd
	.string	"ISA_MIPS2"
	.sleb128 2
	.uleb128 0xd
	.string	"ISA_MIPS3"
	.sleb128 3
	.uleb128 0xd
	.string	"ISA_MIPS4"
	.sleb128 4
	.uleb128 0xd
	.string	"ISA_MIPS5"
	.sleb128 5
	.uleb128 0xd
	.string	"ISA_MIPS6"
	.sleb128 6
	.uleb128 0xd
	.string	"ISA_MIPSX"
	.sleb128 9
	.uleb128 0xd
	.string	"ISA_MIPS64"
	.sleb128 10
	.uleb128 0xd
	.string	"ISA_IA641"
	.sleb128 11
	.uleb128 0xd
	.string	"ISA_IA32"
	.sleb128 12
	.uleb128 0xd
	.string	"ISA_X8664"
	.sleb128 13
	.uleb128 0xd
	.string	"ISA_SL"
	.sleb128 14
	.byte	0x0
	.uleb128 0x2
	.string	"ISA"
	.byte	0xb
	.byte	0x5a
	.long	0x3ef
	.uleb128 0xc
	.long	0x4ff
	.byte	0x4
	.byte	0x5
	.byte	0x2f
	.uleb128 0xd
	.string	"L_NONE"
	.sleb128 0
	.uleb128 0xd
	.string	"L_ALL"
	.sleb128 1
	.uleb128 0xd
	.string	"L_cpp"
	.sleb128 2
	.uleb128 0xd
	.string	"L_cc"
	.sleb128 3
	.uleb128 0xd
	.string	"L_CC"
	.sleb128 4
	.uleb128 0xd
	.string	"L_f77"
	.sleb128 5
	.uleb128 0xd
	.string	"L_f90"
	.sleb128 6
	.uleb128 0xd
	.string	"L_as"
	.sleb128 7
	.uleb128 0xd
	.string	"L_ld"
	.sleb128 8
	.uleb128 0xd
	.string	"L_internal"
	.sleb128 9
	.uleb128 0xd
	.string	"L_LAST"
	.sleb128 10
	.byte	0x0
	.uleb128 0x2
	.string	"languages_t"
	.byte	0x5
	.byte	0x3b
	.long	0x49b
	.uleb128 0xc
	.long	0x739
	.byte	0x4
	.byte	0x5
	.byte	0x54
	.uleb128 0xd
	.string	"P_NONE"
	.sleb128 0
	.uleb128 0xd
	.string	"P_All"
	.sleb128 1
	.uleb128 0xd
	.string	"P_m4"
	.sleb128 2
	.uleb128 0xd
	.string	"P_ratfor"
	.sleb128 3
	.uleb128 0xd
	.string	"P_cpp"
	.sleb128 4
	.uleb128 0xd
	.string	"P_gcpp"
	.sleb128 5
	.uleb128 0xd
	.string	"P_gcpp_plus"
	.sleb128 6
	.uleb128 0xd
	.string	"P_c_cpp"
	.sleb128 7
	.uleb128 0xd
	.string	"P_cplus_cpp"
	.sleb128 8
	.uleb128 0xd
	.string	"P_f_cpp"
	.sleb128 9
	.uleb128 0xd
	.string	"P_f90_cpp"
	.sleb128 10
	.uleb128 0xd
	.string	"P_f_coco"
	.sleb128 11
	.uleb128 0xd
	.string	"P_any_cpp"
	.sleb128 12
	.uleb128 0xd
	.string	"P_pfa"
	.sleb128 13
	.uleb128 0xd
	.string	"P_pca"
	.sleb128 14
	.uleb128 0xd
	.string	"P_mpc"
	.sleb128 15
	.uleb128 0xd
	.string	"P_any_optfe"
	.sleb128 16
	.uleb128 0xd
	.string	"P_f_fe"
	.sleb128 17
	.uleb128 0xd
	.string	"P_cppf_fe"
	.sleb128 18
	.uleb128 0xd
	.string	"P_f90_fe"
	.sleb128 19
	.uleb128 0xd
	.string	"P_cppf90_fe"
	.sleb128 20
	.uleb128 0xd
	.string	"P_c_gfe"
	.sleb128 21
	.uleb128 0xd
	.string	"P_cplus_gfe"
	.sleb128 22
	.uleb128 0xd
	.string	"P_any_fe"
	.sleb128 23
	.uleb128 0xd
	.string	"P_pseudo_f_fe"
	.sleb128 24
	.uleb128 0xd
	.string	"P_pseudo_c_fe"
	.sleb128 25
	.uleb128 0xd
	.string	"P_lister"
	.sleb128 26
	.uleb128 0xd
	.string	"P_inline"
	.sleb128 27
	.uleb128 0xd
	.string	"P_ipl"
	.sleb128 28
	.uleb128 0xd
	.string	"p_any_ipl"
	.sleb128 29
	.uleb128 0xd
	.string	"P_be"
	.sleb128 30
	.uleb128 0xd
	.string	"P_as"
	.sleb128 31
	.uleb128 0xd
	.string	"P_gas"
	.sleb128 32
	.uleb128 0xd
	.string	"P_any_as"
	.sleb128 33
	.uleb128 0xd
	.string	"P_dsm_prelink"
	.sleb128 34
	.uleb128 0xd
	.string	"P_ipa_link"
	.sleb128 35
	.uleb128 0xd
	.string	"P_collect"
	.sleb128 36
	.uleb128 0xd
	.string	"P_ld"
	.sleb128 37
	.uleb128 0xd
	.string	"P_ldplus"
	.sleb128 38
	.uleb128 0xd
	.string	"P_any_ld"
	.sleb128 39
	.uleb128 0xd
	.string	"P_cord"
	.sleb128 40
	.uleb128 0xd
	.string	"P_pixie"
	.sleb128 41
	.uleb128 0xd
	.string	"P_prof"
	.sleb128 42
	.uleb128 0xd
	.string	"P_ar"
	.sleb128 43
	.uleb128 0xd
	.string	"P_startup"
	.sleb128 44
	.uleb128 0xd
	.string	"P_include"
	.sleb128 45
	.uleb128 0xd
	.string	"P_library"
	.sleb128 46
	.uleb128 0xd
	.string	"P_alt_library"
	.sleb128 47
	.uleb128 0xd
	.string	"P_sl2startup"
	.sleb128 48
	.uleb128 0xd
	.string	"P_LAST"
	.sleb128 49
	.byte	0x0
	.uleb128 0x2
	.string	"phases_t"
	.byte	0x5
	.byte	0x97
	.long	0x512
	.uleb128 0xc
	.long	0x785
	.byte	0x4
	.byte	0x5
	.byte	0xe1
	.uleb128 0xd
	.string	"M_SMALL"
	.sleb128 0
	.uleb128 0xd
	.string	"M_MEDIUM"
	.sleb128 1
	.uleb128 0xd
	.string	"M_LARGE"
	.sleb128 2
	.uleb128 0xd
	.string	"M_KERNEL"
	.sleb128 3
	.uleb128 0xd
	.string	"M_LAST"
	.sleb128 4
	.byte	0x0
	.uleb128 0x2
	.string	"mem_model_t"
	.byte	0x5
	.byte	0xe7
	.long	0x749
	.uleb128 0x2
	.string	"FILE"
	.byte	0x7
	.byte	0x2e
	.long	0x7a4
	.uleb128 0x10
	.long	0xa1f
	.long	.LASF2
	.byte	0x94
	.byte	0x7
	.byte	0x2e
	.uleb128 0x11
	.string	"_flags"
	.byte	0x8
	.value	0x10c
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"_IO_read_ptr"
	.byte	0x8
	.value	0x111
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"_IO_read_end"
	.byte	0x8
	.value	0x112
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"_IO_read_base"
	.byte	0x8
	.value	0x113
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"_IO_write_base"
	.byte	0x8
	.value	0x114
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"_IO_write_ptr"
	.byte	0x8
	.value	0x115
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"_IO_write_end"
	.byte	0x8
	.value	0x116
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.string	"_IO_buf_base"
	.byte	0x8
	.value	0x117
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.string	"_IO_buf_end"
	.byte	0x8
	.value	0x118
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.string	"_IO_save_base"
	.byte	0x8
	.value	0x11a
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"_IO_backup_base"
	.byte	0x8
	.value	0x11b
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"_IO_save_end"
	.byte	0x8
	.value	0x11c
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.string	"_markers"
	.byte	0x8
	.value	0x11e
	.long	0xa70
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.string	"_chain"
	.byte	0x8
	.value	0x120
	.long	0xa76
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.string	"_fileno"
	.byte	0x8
	.value	0x122
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.string	"_flags2"
	.byte	0x8
	.value	0x126
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.string	"_old_offset"
	.byte	0x8
	.value	0x128
	.long	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.string	"_cur_column"
	.byte	0x8
	.value	0x12c
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.string	"_vtable_offset"
	.byte	0x8
	.value	0x12d
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.string	"_shortbuf"
	.byte	0x8
	.value	0x12e
	.long	0xa7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.string	"_lock"
	.byte	0x8
	.value	0x132
	.long	0xa8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"_offset"
	.byte	0x8
	.value	0x13b
	.long	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.string	"__pad1"
	.byte	0x8
	.value	0x144
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.string	"__pad2"
	.byte	0x8
	.value	0x145
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.string	"__pad3"
	.byte	0x8
	.value	0x146
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.string	"__pad4"
	.byte	0x8
	.value	0x147
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.string	"__pad5"
	.byte	0x8
	.value	0x148
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.string	"_mode"
	.byte	0x8
	.value	0x14a
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.string	"_unused2"
	.byte	0x8
	.value	0x14c
	.long	0xa92
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x12
	.string	"_IO_lock_t"
	.byte	0x8
	.byte	0xb0
	.uleb128 0x13
	.long	0xa70
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x8
	.byte	0xb6
	.uleb128 0x9
	.string	"_next"
	.byte	0x8
	.byte	0xb7
	.long	0xa70
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_sbuf"
	.byte	0x8
	.byte	0xb8
	.long	0xa76
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_pos"
	.byte	0x8
	.byte	0xbc
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xa2d
	.uleb128 0x5
	.byte	0x4
	.long	0x7a4
	.uleb128 0xa
	.long	0xa8c
	.long	0xcd
	.uleb128 0xb
	.long	0x9e
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xa1f
	.uleb128 0xa
	.long	0xaa2
	.long	0xcd
	.uleb128 0xb
	.long	0x9e
	.byte	0x27
	.byte	0x0
	.uleb128 0x13
	.long	0xad8
	.string	"string_item_rec"
	.byte	0x8
	.byte	0xf
	.byte	0x50
	.uleb128 0xf
	.long	.LASF1
	.byte	0xf
	.byte	0x51
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"next"
	.byte	0xf
	.byte	0x52
	.long	0xad8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xaa2
	.uleb128 0x2
	.string	"string_item_t"
	.byte	0xf
	.byte	0x53
	.long	0xaa2
	.uleb128 0x13
	.long	0xb2a
	.string	"string_list_rec"
	.byte	0x8
	.byte	0xf
	.byte	0x54
	.uleb128 0x9
	.string	"head"
	.byte	0xf
	.byte	0x55
	.long	0xb2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"tail"
	.byte	0xf
	.byte	0x56
	.long	0xb2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xade
	.uleb128 0x2
	.string	"string_list_t"
	.byte	0xf
	.byte	0x57
	.long	0xaf3
	.uleb128 0x13
	.long	0xb81
	.string	"toggle_name_struct"
	.byte	0x8
	.byte	0x1
	.byte	0x40
	.uleb128 0x9
	.string	"address"
	.byte	0x1
	.byte	0x41
	.long	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x1
	.byte	0x42
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"toggle_name"
	.byte	0x1
	.byte	0x43
	.long	0xb45
	.uleb128 0xe
	.long	0xbc5
	.byte	0xc
	.byte	0x1
	.byte	0x7b
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x7c
	.long	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"isa"
	.byte	0x1
	.byte	0x7d
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"opt"
	.byte	0x1
	.byte	0x7e
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xe
	.long	0xbec
	.byte	0x8
	.byte	0x1
	.byte	0x8c
	.uleb128 0x9
	.string	"pname"
	.byte	0x1
	.byte	0x8d
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"pid"
	.byte	0x1
	.byte	0x8e
	.long	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x14
	.long	0xc39
	.string	"add_toggle_name"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x15
	.string	"obj"
	.byte	0x1
	.byte	0xaa
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF1
	.byte	0x1
	.byte	0xaa
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xac
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x18
	.long	0xc7c
	.string	"get_toggle_name"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0x186
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x15
	.string	"obj"
	.byte	0x1
	.byte	0xbe
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	0xcaf
	.byte	0x1
	.string	"is_toggled"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.long	0x3af
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x15
	.string	"obj"
	.byte	0x1
	.byte	0xcc
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1a
	.long	0xcea
	.byte	0x1
	.string	"toggle"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x15
	.string	"obj"
	.byte	0x1
	.byte	0xd3
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"value"
	.byte	0x1
	.byte	0xd3
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x18
	.long	0xd7e
	.string	"Get_Group_Option_Value"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	0x186
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x15
	.string	"arg"
	.byte	0x1
	.byte	0xf2
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF1
	.byte	0x1
	.byte	0xf3
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"abbrev"
	.byte	0x1
	.byte	0xf4
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"endc"
	.byte	0x1
	.byte	0xf6
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0xf7
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1c
	.string	"result"
	.byte	0x1
	.value	0x101
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0xdb8
	.string	"Bool_Group_Value"
	.byte	0x1
	.value	0x11e
	.byte	0x1
	.long	0x3af
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x11d
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1f
	.long	0xdf1
	.byte	0x1
	.string	"Process_module"
	.byte	0x1
	.value	0x13c
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x1e
	.string	"dirname"
	.byte	0x1
	.value	0x13b
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1f
	.long	0xe4d
	.byte	0x1
	.string	"Process_Ofast"
	.byte	0x1
	.value	0x155
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x1e
	.string	"ipname"
	.byte	0x1
	.value	0x154
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"flag"
	.byte	0x1
	.value	0x156
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"suboption"
	.byte	0x1
	.value	0x157
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1f
	.long	0xe97
	.byte	0x1
	.string	"Process_Opt_Group"
	.byte	0x1
	.value	0x194
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x20
	.long	.LASF3
	.byte	0x1
	.value	0x193
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"optval"
	.byte	0x1
	.value	0x195
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1f
	.long	0xef6
	.byte	0x1
	.string	"Process_Default_Group"
	.byte	0x1
	.value	0x1ae
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x1e
	.string	"default_args"
	.byte	0x1
	.value	0x1ad
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x1af
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x1b0
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1f
	.long	0xf79
	.byte	0x1
	.string	"Process_Targ_Group"
	.byte	0x1
	.value	0x1ed
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x1e
	.string	"targ_args"
	.byte	0x1
	.value	0x1ec
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"cp"
	.byte	0x1
	.value	0x1ee
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"cpeq"
	.byte	0x1
	.value	0x1ef
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"ftz"
	.byte	0x1
	.value	0x1f0
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x25f
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0xfbb
	.string	"Ofast_Target"
	.byte	0x1
	.value	0x281
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x1c
	.string	"ix"
	.byte	0x1
	.value	0x282
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"popts"
	.byte	0x1
	.value	0x283
	.long	0xfbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x397
	.uleb128 0x1f
	.long	0x100a
	.byte	0x1
	.string	"Check_Target"
	.byte	0x1
	.value	0x2be
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x1c
	.string	"opt_id"
	.byte	0x1
	.value	0x2bf
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"opt_val"
	.byte	0x1
	.value	0x2c0
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x22
	.string	"toggle_inline_normal"
	.byte	0x1
	.value	0x3da
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x22
	.string	"toggle_inline_on"
	.byte	0x1
	.value	0x3e3
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x22
	.string	"toggle_inline_off"
	.byte	0x1
	.value	0x3f3
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x23
	.byte	0x1
	.string	"Process_Profile_Arcs"
	.byte	0x1
	.value	0x3fd
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x23
	.byte	0x1
	.string	"Process_Test_Coverage"
	.byte	0x1
	.value	0x404
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x1f
	.long	0x112c
	.byte	0x1
	.string	"Process_Inline"
	.byte	0x1
	.value	0x40c
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x1c
	.string	"more_symbols"
	.byte	0x1
	.value	0x40d
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"args"
	.byte	0x1
	.value	0x40e
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1c
	.string	"endc"
	.byte	0x1
	.value	0x416
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.string	"dash_F_option"
	.byte	0x1
	.value	0x42c
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x1f
	.long	0x118c
	.byte	0x1
	.string	"untoggle"
	.byte	0x1
	.value	0x43a
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x1e
	.string	"obj"
	.byte	0x1
	.value	0x438
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"value"
	.byte	0x1
	.value	0x438
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x21
	.long	0x11f9
	.string	"change_phase_path"
	.byte	0x1
	.value	0x441
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST21
	.uleb128 0x1e
	.string	"arg"
	.byte	0x1
	.value	0x440
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"dir"
	.byte	0x1
	.value	0x442
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x443
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1c
	.string	"home"
	.byte	0x1
	.value	0x44c
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x123f
	.string	"change_last_phase"
	.byte	0x1
	.value	0x460
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST22
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x45f
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"phase"
	.byte	0x1
	.value	0x461
	.long	0x739
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1f
	.long	0x1280
	.byte	0x1
	.string	"save_name"
	.byte	0x1
	.value	0x46f
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST23
	.uleb128 0x1e
	.string	"obj"
	.byte	0x1
	.value	0x46e
	.long	0x1280
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"value"
	.byte	0x1
	.value	0x46e
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x186
	.uleb128 0x21
	.long	0x12bd
	.string	"check_output_name"
	.byte	0x1
	.value	0x475
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST24
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.value	0x474
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1f
	.long	0x132b
	.byte	0x1
	.string	"check_convert_name"
	.byte	0x1
	.value	0x47f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST25
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.value	0x47e
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	0x1310
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x487
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1c
	.string	"legal_names"
	.byte	0x1
	.value	0x480
	.long	0x1a81
	.byte	0x5
	.byte	0x3
	.long	legal_names.4786
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.string	"check_dashdash"
	.byte	0x1
	.value	0x493
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST26
	.uleb128 0x1d
	.long	0x13b0
	.string	"Get_Binary_Name"
	.byte	0x1
	.value	0x4a0
	.byte	0x1
	.long	0x186
	.long	.LFB32
	.long	.LFE32
	.long	.LLST27
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.value	0x49f
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"new"
	.byte	0x1
	.value	0x4a1
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.value	0x4a2
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x4a2
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1f
	.long	0x1406
	.byte	0x1
	.string	"Process_fbuse"
	.byte	0x1
	.value	0x4b0
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST28
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x4af
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"is_first_count_file"
	.byte	0x1
	.value	0x4b1
	.long	0x3af
	.byte	0x5
	.byte	0x3
	.long	is_first_count_file.4826
	.byte	0x0
	.uleb128 0x1f
	.long	0x146f
	.byte	0x1
	.string	"Process_fb_type"
	.byte	0x1
	.value	0x4bb
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST29
	.uleb128 0x1e
	.string	"typename"
	.byte	0x1
	.value	0x4ba
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"str"
	.byte	0x1
	.value	0x4bc
	.long	0x146f
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1c
	.string	"flag"
	.byte	0x1
	.value	0x4bd
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.value	0x4bd
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0xa
	.long	0x147f
	.long	0xcd
	.uleb128 0xb
	.long	0x9e
	.byte	0x9
	.byte	0x0
	.uleb128 0x1f
	.long	0x14c7
	.byte	0x1
	.string	"Process_fb_create"
	.byte	0x1
	.value	0x4ca
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST30
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x4c9
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"flag"
	.byte	0x1
	.value	0x4cb
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1f
	.long	0x151f
	.byte	0x1
	.string	"Process_fb_phase"
	.byte	0x1
	.value	0x4dc
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST31
	.uleb128 0x1e
	.string	"phase"
	.byte	0x1
	.value	0x4db
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"str"
	.byte	0x1
	.value	0x4dd
	.long	0x146f
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1c
	.string	"flag"
	.byte	0x1
	.value	0x4de
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1f
	.long	0x1554
	.byte	0x1
	.string	"Process_fb_opt"
	.byte	0x1
	.value	0x4e8
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST32
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x4e7
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1f
	.long	0x1588
	.byte	0x1
	.string	"Process_fbexe"
	.byte	0x1
	.value	0x4f0
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST33
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x4ef
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1f
	.long	0x15be
	.byte	0x1
	.string	"Process_fb_xdir"
	.byte	0x1
	.value	0x4f6
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST34
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x4f5
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1f
	.long	0x15f4
	.byte	0x1
	.string	"Process_fb_cdir"
	.byte	0x1
	.value	0x4fc
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST35
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x4fb
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.string	"Process_Promp"
	.byte	0x1
	.value	0x5b7
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST36
	.uleb128 0x1f
	.long	0x164d
	.byte	0x1
	.string	"Process_Tenv_Group"
	.byte	0x1
	.value	0x5ce
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST37
	.uleb128 0x20
	.long	.LASF3
	.byte	0x1
	.value	0x5cd
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.long	0x16f9
	.string	"print_magic_path"
	.byte	0x1
	.value	0x5dd
	.byte	0x1
	.long	0xbb
	.long	.LFB43
	.long	.LFE43
	.long	.LLST38
	.uleb128 0x1e
	.string	"base"
	.byte	0x1
	.value	0x5dc
	.long	0xc2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x5dc
	.long	0xc2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"m32"
	.byte	0x1
	.value	0x5de
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"slash"
	.byte	0x1
	.value	0x5df
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"path"
	.byte	0x1
	.value	0x5e0
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"good"
	.byte	0x1
	.value	0x603
	.long	.L325
	.uleb128 0x25
	.string	"bad"
	.byte	0x1
	.value	0x600
	.long	.L331
	.uleb128 0x1b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1c
	.string	"sfx"
	.byte	0x1
	.value	0x5e3
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1744
	.string	"print_phase_path"
	.byte	0x1
	.value	0x60a
	.byte	0x1
	.long	0xbb
	.long	.LFB44
	.long	.LFE44
	.long	.LLST39
	.uleb128 0x1e
	.string	"phase"
	.byte	0x1
	.value	0x609
	.long	0x739
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x609
	.long	0xc2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1d
	.long	0x17b5
	.string	"print_relative_path"
	.byte	0x1
	.value	0x60f
	.byte	0x1
	.long	0xbb
	.long	.LFB45
	.long	.LFE45
	.long	.LLST40
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x60e
	.long	0xc2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x60e
	.long	0xc2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"root_prefix"
	.byte	0x1
	.value	0x610
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.string	"base"
	.byte	0x1
	.value	0x611
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1f
	.long	0x17fa
	.byte	0x1
	.string	"print_file_path"
	.byte	0x1
	.value	0x61b
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST41
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.value	0x61a
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"exe"
	.byte	0x1
	.value	0x61a
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x26
	.long	0x1830
	.byte	0x1
	.string	"print_multi_lib"
	.byte	0x1
	.value	0x656
	.long	.LFB47
	.long	.LFE47
	.long	.LLST42
	.uleb128 0x1c
	.string	"argv"
	.byte	0x1
	.value	0x657
	.long	0x1830
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xa
	.long	0x1840
	.long	0x186
	.uleb128 0xb
	.long	0x9e
	.byte	0x2
	.byte	0x0
	.uleb128 0x1f
	.long	0x1879
	.byte	0x1
	.string	"set_memory_model"
	.byte	0x1
	.value	0x664
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST43
	.uleb128 0x1e
	.string	"model"
	.byte	0x1
	.value	0x663
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x27
	.long	0x18e9
	.byte	0x14
	.byte	0x1
	.value	0x67b
	.uleb128 0x28
	.long	.LASF5
	.byte	0x1
	.value	0x67c
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"target_name"
	.byte	0x1
	.value	0x67d
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"abi"
	.byte	0x1
	.value	0x67e
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"supports_sse2"
	.byte	0x1
	.value	0x67f
	.long	0x3af
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"prefers_sse3"
	.byte	0x1
	.value	0x680
	.long	0x3af
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x29
	.long	0x1921
	.string	"get_platform_abi"
	.byte	0x1
	.value	0x69c
	.long	0xbb
	.long	.LFB49
	.long	.LFE49
	.long	.LLST44
	.uleb128 0x1c
	.string	"u"
	.byte	0x1
	.value	0x69d
	.long	0x18c
	.byte	0x3
	.byte	0x91
	.sleb128 -406
	.byte	0x0
	.uleb128 0x2a
	.long	0x19b5
	.byte	0x1
	.string	"get_auto_cpu_name"
	.byte	0x1
	.value	0x6a8
	.long	0x186
	.long	.LFB50
	.long	.LFE50
	.long	.LLST45
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x6a9
	.long	0x19b5
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x6aa
	.long	0x19bb
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x6ab
	.long	0x186
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1c
	.string	"cpu_name_64bit"
	.byte	0x1
	.value	0x6ac
	.long	0x186
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1b
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1c
	.string	"abi_name"
	.byte	0x1
	.value	0x6c3
	.long	0x186
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x798
	.uleb128 0xa
	.long	0x19cb
	.long	0xcd
	.uleb128 0xb
	.long	0x9e
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.long	0x1a0d
	.string	"set_cpu"
	.byte	0x1
	.value	0x6e7
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST46
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.value	0x6e6
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"flag_type"
	.byte	0x1
	.value	0x6e6
	.long	0x3e1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1a
	.long	0x1a40
	.byte	0x1
	.string	"opt_action"
	.byte	0x2
	.byte	0xa
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST47
	.uleb128 0x15
	.string	"optflag"
	.byte	0x2
	.byte	0x9
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2c
	.long	0x1a81
	.byte	0x1
	.string	"flag_is_superceded"
	.byte	0x2
	.value	0x2e8
	.byte	0x1
	.long	0x3af
	.long	.LFB53
	.long	.LFE53
	.long	.LLST48
	.uleb128 0x1e
	.string	"optflag"
	.byte	0x2
	.value	0x2e7
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.long	0x1a91
	.long	0x186
	.uleb128 0xb
	.long	0x9e
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0x1aa1
	.long	0xb81
	.uleb128 0xb
	.long	0x9e
	.byte	0x31
	.byte	0x0
	.uleb128 0x17
	.string	"toggled_names"
	.byte	0x1
	.byte	0x45
	.long	0x1a91
	.byte	0x5
	.byte	0x3
	.long	toggled_names
	.uleb128 0x17
	.string	"last_toggle_index"
	.byte	0x1
	.byte	0x46
	.long	0xbb
	.byte	0x5
	.byte	0x3
	.long	last_toggle_index
	.uleb128 0x17
	.string	"inline_on_seen"
	.byte	0x1
	.byte	0x47
	.long	0xbb
	.byte	0x5
	.byte	0x3
	.long	inline_on_seen
	.uleb128 0x17
	.string	"default_isa"
	.byte	0x1
	.byte	0x4d
	.long	0xbb
	.byte	0x5
	.byte	0x3
	.long	default_isa
	.uleb128 0x17
	.string	"default_proc"
	.byte	0x1
	.byte	0x4e
	.long	0xbb
	.byte	0x5
	.byte	0x3
	.long	default_proc
	.uleb128 0x17
	.string	"target_supported_abi"
	.byte	0x1
	.byte	0x57
	.long	0xbb
	.byte	0x5
	.byte	0x3
	.long	target_supported_abi
	.uleb128 0x17
	.string	"target_supports_sse2"
	.byte	0x1
	.byte	0x58
	.long	0x3af
	.byte	0x5
	.byte	0x3
	.long	target_supports_sse2
	.uleb128 0x17
	.string	"target_prefers_sse3"
	.byte	0x1
	.byte	0x59
	.long	0x3af
	.byte	0x5
	.byte	0x3
	.long	target_prefers_sse3
	.uleb128 0xa
	.long	0x1b9f
	.long	0xb94
	.uleb128 0xb
	.long	0x9e
	.byte	0x2
	.byte	0x0
	.uleb128 0x17
	.string	"P_to_I_Map"
	.byte	0x1
	.byte	0x7f
	.long	0x1b8f
	.byte	0x5
	.byte	0x3
	.long	P_to_I_Map
	.uleb128 0xa
	.long	0x1bc7
	.long	0xbc5
	.uleb128 0xb
	.long	0x9e
	.byte	0x10
	.byte	0x0
	.uleb128 0x17
	.string	"Proc_Map"
	.byte	0x1
	.byte	0x8f
	.long	0x1bb7
	.byte	0x5
	.byte	0x3
	.long	Proc_Map
	.uleb128 0xa
	.long	0x1bed
	.long	0x1879
	.uleb128 0xb
	.long	0x9e
	.byte	0x12
	.byte	0x0
	.uleb128 0x1c
	.string	"supported_cpu_types"
	.byte	0x1
	.value	0x681
	.long	0x1bdd
	.byte	0x5
	.byte	0x3
	.long	supported_cpu_types
	.uleb128 0x2d
	.string	"debug"
	.byte	0xb
	.byte	0x64
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"nostdinc"
	.byte	0xb
	.byte	0x66
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"help_pattern"
	.byte	0xb
	.byte	0x68
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"inline_t"
	.byte	0x1
	.byte	0x48
	.long	0xbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	inline_t
	.uleb128 0x2e
	.string	"dashdash_flag"
	.byte	0x1
	.byte	0x49
	.long	0x3af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dashdash_flag
	.uleb128 0x2e
	.string	"read_stdin"
	.byte	0x1
	.byte	0x4a
	.long	0x3af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	read_stdin
	.uleb128 0x2e
	.string	"xpg_flag"
	.byte	0x1
	.byte	0x4b
	.long	0x3af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	xpg_flag
	.uleb128 0x2e
	.string	"default_olevel"
	.byte	0x1
	.byte	0x4c
	.long	0xbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	default_olevel
	.uleb128 0x2e
	.string	"ofast"
	.byte	0x1
	.byte	0xa5
	.long	0xbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ofast
	.uleb128 0x2e
	.string	"instrumentation_invoked"
	.byte	0x1
	.byte	0x4f
	.long	0xbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	instrumentation_invoked
	.uleb128 0x2e
	.string	"ftz_crt"
	.byte	0x1
	.byte	0x51
	.long	0x3af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ftz_crt
	.uleb128 0x2f
	.string	"f90_module_dir"
	.byte	0x1
	.value	0x138
	.long	0x186
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	f90_module_dir
	.uleb128 0x2d
	.string	"subverbose"
	.byte	0xb
	.byte	0xa8
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"target_cpu"
	.byte	0x1
	.value	0x697
	.long	0x186
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	target_cpu
	.uleb128 0x2d
	.string	"invoked_lang"
	.byte	0x5
	.byte	0x99
	.long	0x4ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"first_phase"
	.byte	0x5
	.byte	0x9f
	.long	0x739
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"last_phase"
	.byte	0x5
	.byte	0xa0
	.long	0x739
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ignore_suffix"
	.byte	0x5
	.byte	0xd8
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"show_but_not_run"
	.byte	0x5
	.byte	0xdf
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"mem_model"
	.byte	0x1
	.value	0x660
	.long	0x785
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	mem_model
	.uleb128 0x30
	.string	"msglevel"
	.byte	0xc
	.value	0x327
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"skip_as"
	.byte	0xc
	.value	0x328
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"shared"
	.byte	0xc
	.value	0x329
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"rflag"
	.byte	0xc
	.value	0x32a
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"qwalign2"
	.byte	0xc
	.value	0x32b
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"qwalign1"
	.byte	0xc
	.value	0x32c
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"iflag"
	.byte	0xc
	.value	0x32d
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"abi"
	.byte	0xc
	.value	0x32e
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"sse2"
	.byte	0xc
	.value	0x32f
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"ospace"
	.byte	0xc
	.value	0x330
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"mpkind"
	.byte	0xc
	.value	0x331
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"sse3"
	.byte	0xc
	.value	0x332
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"m3dnow"
	.byte	0xc
	.value	0x333
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"isa"
	.byte	0xc
	.value	0x334
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"ipa"
	.byte	0xc
	.value	0x335
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"use_h264libs"
	.byte	0xc
	.value	0x336
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"glevel"
	.byte	0xc
	.value	0x337
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"use_ftpp"
	.byte	0xc
	.value	0x338
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"fortran_form"
	.byte	0xc
	.value	0x339
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"pic"
	.byte	0xc
	.value	0x33a
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"fmath_errno"
	.byte	0xc
	.value	0x33b
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"ffast_math"
	.byte	0xc
	.value	0x33c
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"fbuiltin"
	.byte	0xc
	.value	0x33d
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"use_coco"
	.byte	0xc
	.value	0x33e
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"dflag"
	.byte	0xc
	.value	0x33f
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"cordflag"
	.byte	0xc
	.value	0x340
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"io_byteswap"
	.byte	0xc
	.value	0x341
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"compat_gcc"
	.byte	0xc
	.value	0x342
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"use_bblibs"
	.byte	0xc
	.value	0x343
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"isstatic"
	.byte	0xc
	.value	0x344
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"ansi"
	.byte	0xc
	.value	0x345
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"olevel"
	.byte	0xc
	.value	0x346
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"standard_cplusplus"
	.byte	0xc
	.value	0x347
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"gnum"
	.byte	0xc
	.value	0x348
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"pass_exit_codes"
	.byte	0xd
	.byte	0x33
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"stderr"
	.byte	0x7
	.byte	0x90
	.long	0xa76
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"keep_flag"
	.byte	0xe
	.byte	0x2b
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"count_files"
	.byte	0xe
	.byte	0x2f
	.long	0x20a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.long	0xb30
	.uleb128 0x2d
	.string	"option_name"
	.byte	0x10
	.byte	0x2a
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"optargs"
	.byte	0x10
	.byte	0x2c
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"optargd"
	.byte	0x10
	.byte	0x2d
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"feedback_files"
	.byte	0x10
	.byte	0x3c
	.long	0x20a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"outfile"
	.byte	0x11
	.byte	0x2d
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"prof_file"
	.byte	0x11
	.byte	0x2e
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fb_file"
	.byte	0x11
	.byte	0x2f
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"internal_fb_file"
	.byte	0x11
	.byte	0x30
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"opt_file"
	.byte	0x11
	.byte	0x31
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fb_xdir"
	.byte	0x11
	.byte	0x32
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fb_cdir"
	.byte	0x11
	.byte	0x33
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fb_phase"
	.byte	0x11
	.byte	0x34
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fb_type"
	.byte	0x11
	.byte	0x35
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"coco_setfile"
	.byte	0x11
	.byte	0x37
	.long	0x186
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ldscript_file"
	.byte	0x11
	.byte	0x3a
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"keep_mp"
	.byte	0x11
	.byte	0x42
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"keep_list"
	.byte	0x11
	.byte	0x43
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"keep_cif"
	.byte	0x11
	.byte	0x45
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"auto_parallelize"
	.byte	0x11
	.byte	0x46
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"Gen_feedback"
	.byte	0x11
	.byte	0x47
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"Use_feedback"
	.byte	0x11
	.byte	0x48
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"O3_flag"
	.byte	0x11
	.byte	0x4c
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"nocpp_flag"
	.byte	0x11
	.byte	0x4d
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"expand_ftpp_macros"
	.byte	0x11
	.byte	0x4f
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fortran_line_length"
	.byte	0x11
	.byte	0x50
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"dump_outfile_to_stdout"
	.byte	0x11
	.byte	0x57
	.long	0x3af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_outfile_to_stdout
	.uleb128 0x2d
	.string	"show_version"
	.byte	0x12
	.byte	0x2e
	.long	0xbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"show_copyright"
	.byte	0x12
	.byte	0x2f
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"dump_version"
	.byte	0x12
	.byte	0x30
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"show_flag"
	.byte	0x12
	.byte	0x31
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"execute_flag"
	.byte	0x12
	.byte	0x32
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"time_flag"
	.byte	0x12
	.byte	0x33
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"prelink_flag"
	.byte	0x12
	.byte	0x35
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"quiet_flag"
	.byte	0x12
	.byte	0x36
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"show_search_path"
	.byte	0x12
	.byte	0x37
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"show_defaults"
	.byte	0x12
	.byte	0x38
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"profile_type"
	.byte	0x1
	.byte	0x50
	.long	0xbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	profile_type
	.uleb128 0x2e
	.string	"proc"
	.byte	0x1
	.byte	0x55
	.long	0xbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	proc
	.uleb128 0x2d
	.string	"parsing_default_options"
	.byte	0x1
	.byte	0x5a
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"drop_option"
	.byte	0x1
	.byte	0x5b
	.long	0x3af
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"Ofast_Name"
	.byte	0x1
	.byte	0xa6
	.long	0x186
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Ofast_Name
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
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2b
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
	.uleb128 0x3f
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.long	0x376
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2426
	.long	0xc7c
	.string	"is_toggled"
	.long	0xcaf
	.string	"toggle"
	.long	0xdb8
	.string	"Process_module"
	.long	0xdf1
	.string	"Process_Ofast"
	.long	0xe4d
	.string	"Process_Opt_Group"
	.long	0xe97
	.string	"Process_Default_Group"
	.long	0xef6
	.string	"Process_Targ_Group"
	.long	0xfc1
	.string	"Check_Target"
	.long	0x1075
	.string	"Process_Profile_Arcs"
	.long	0x109c
	.string	"Process_Test_Coverage"
	.long	0x10c4
	.string	"Process_Inline"
	.long	0x112c
	.string	"dash_F_option"
	.long	0x114c
	.string	"untoggle"
	.long	0x123f
	.string	"save_name"
	.long	0x12bd
	.string	"check_convert_name"
	.long	0x132b
	.string	"check_dashdash"
	.long	0x13b0
	.string	"Process_fbuse"
	.long	0x1406
	.string	"Process_fb_type"
	.long	0x147f
	.string	"Process_fb_create"
	.long	0x14c7
	.string	"Process_fb_phase"
	.long	0x151f
	.string	"Process_fb_opt"
	.long	0x1554
	.string	"Process_fbexe"
	.long	0x1588
	.string	"Process_fb_xdir"
	.long	0x15be
	.string	"Process_fb_cdir"
	.long	0x15f4
	.string	"Process_Promp"
	.long	0x1614
	.string	"Process_Tenv_Group"
	.long	0x17b5
	.string	"print_file_path"
	.long	0x17fa
	.string	"print_multi_lib"
	.long	0x1840
	.string	"set_memory_model"
	.long	0x1921
	.string	"get_auto_cpu_name"
	.long	0x1a0d
	.string	"opt_action"
	.long	0x1a40
	.string	"flag_is_superceded"
	.long	0x1c46
	.string	"inline_t"
	.long	0x1c5d
	.string	"dashdash_flag"
	.long	0x1c79
	.string	"read_stdin"
	.long	0x1c92
	.string	"xpg_flag"
	.long	0x1ca9
	.string	"default_olevel"
	.long	0x1cc6
	.string	"ofast"
	.long	0x1cda
	.string	"instrumentation_invoked"
	.long	0x1d00
	.string	"ftz_crt"
	.long	0x1d16
	.string	"f90_module_dir"
	.long	0x1d48
	.string	"target_cpu"
	.long	0x1dd2
	.string	"mem_model"
	.long	0x22a8
	.string	"dump_outfile_to_stdout"
	.long	0x23a8
	.string	"profile_type"
	.long	0x23c3
	.string	"proc"
	.long	0x240c
	.string	"Ofast_Name"
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
.LASF2:
	.string	"_IO_FILE"
.LASF3:
	.string	"opt_args"
.LASF4:
	.string	"fname"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"name"
.LASF5:
	.string	"cpu_name"
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
