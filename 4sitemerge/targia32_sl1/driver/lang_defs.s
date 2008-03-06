	.file	"lang_defs.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl ldpath_for_pixie
	.bss
	.align 4
	.type	ldpath_for_pixie, @object
	.size	ldpath_for_pixie, 4
ldpath_for_pixie:
	.zero	4
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"cpp"
.LC2:
	.string	"cc"
.LC3:
	.string	"sl-cc"
.LC4:
	.string	"gcc"
.LC5:
	.string	"c89"
.LC6:
	.string	"CC"
.LC7:
	.string	"++"
.LC8:
	.string	"g++"
.LC9:
	.string	"f77"
.LC10:
	.string	"gf77"
.LC11:
	.string	"fort77"
.LC12:
	.string	"f90"
.LC13:
	.string	"as"
.LC14:
	.string	"gas"
.LC15:
	.string	"ld"
.LC16:
	.string	"int"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	language_info, @object
	.size	language_info, 320
language_info:
	.byte	78
	.zero	3
	.long	0
	.long	0
	.long	.LC0
	.zero	16
	.byte	65
	.zero	3
	.long	268435455
	.long	0
	.long	.LC0
	.zero	16
	.byte	112
	.zero	3
	.long	1
	.long	0
	.long	.LC1
	.zero	16
	.byte	99
	.zero	3
	.long	2
	.long	0
	.long	.LC2
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.byte	67
	.zero	3
	.long	4
	.long	0
	.long	.LC6
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.zero	4
	.byte	102
	.zero	3
	.long	8
	.long	0
	.long	.LC9
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.zero	4
	.byte	70
	.zero	3
	.long	16
	.long	0
	.long	.LC12
	.long	.LC12
	.zero	12
	.byte	97
	.zero	3
	.long	32
	.long	0
	.long	.LC13
	.long	.LC13
	.long	.LC14
	.zero	8
	.byte	108
	.zero	3
	.long	64
	.long	0
	.long	.LC15
	.long	.LC15
	.zero	12
	.byte	73
	.zero	3
	.long	-2147483648
	.long	0
	.long	.LC16
	.zero	16
	.section	.rodata
.LC17:
	.string	"m4"
.LC18:
	.string	"/usr//bin"
.LC19:
	.string	"ratfor"
.LC20:
	.string	"/usr/bin"
.LC21:
	.string	"/usr//altbin"
.LC22:
	.string	"fec"
.LC23:
	.string	"mfef77"
.LC24:
	.string	"ftpp"
.LC25:
	.string	"coco"
.LC26:
	.string	"pfa"
.LC27:
	.string	"pca"
.LC28:
	.string	"mpc"
.LC29:
	.string	"mfef95"
.LC30:
	.string	"gfec"
.LC31:
	.string	"gfecc"
.LC32:
	.string	"ftnlx"
.LC33:
	.string	"inline"
.LC34:
	.string	"ipl"
.LC35:
	.string	"be"
.LC36:
	.string	"asm"
.LC37:
	.string	"dsm_prelink"
.LC38:
	.string	"ipa_link"
.LC39:
	.string	"collect2"
.LC40:
	.string	"/usr//lib"
.LC41:
	.string	"cord"
.LC42:
	.string	"pixie"
.LC43:
	.string	"prof"
.LC44:
	.string	"ar"
.LC45:
	.string	"crt"
.LC46:
	.string	"inc"
.LC47:
	.string	"/usr/include"
.LC48:
	.string	"lib"
.LC49:
	.string	"alib"
.LC50:
	.string	"/usr/libsl2"
	.section	.data.rel.local
	.align 32
	.type	phase_info, @object
	.size	phase_info, 1176
phase_info:
	.byte	78
	.zero	3
	.long	0
	.long	0
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	65
	.zero	3
	.long	-1
	.long	268435455
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	109
	.zero	3
	.long	8
	.long	0
	.long	.LC17
	.long	.LC18
	.long	0
	.byte	114
	.zero	3
	.long	1
	.long	0
	.long	.LC19
	.long	.LC18
	.long	0
	.byte	112
	.zero	3
	.long	16
	.long	0
	.long	.LC1
	.long	.LC20
	.long	0
	.byte	112
	.zero	3
	.long	32
	.long	0
	.long	.LC4
	.long	.LC21
	.long	0
	.byte	112
	.zero	3
	.long	64
	.long	0
	.long	.LC8
	.long	.LC21
	.long	0
	.byte	112
	.zero	3
	.long	128
	.long	0
	.long	.LC22
	.long	.LC20
	.long	0
	.byte	112
	.zero	3
	.long	256
	.long	0
	.long	.LC1
	.long	.LC20
	.long	0
	.byte	112
	.zero	3
	.long	512
	.long	0
	.long	.LC23
	.long	.LC20
	.long	0
	.byte	112
	.zero	3
	.long	1024
	.long	0
	.long	.LC24
	.long	.LC20
	.long	0
	.byte	112
	.zero	3
	.long	2048
	.long	0
	.long	.LC25
	.long	.LC20
	.long	0
	.byte	112
	.zero	3
	.long	4080
	.long	0
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	75
	.zero	3
	.long	4096
	.long	0
	.long	.LC26
	.long	.LC20
	.long	0
	.byte	75
	.zero	3
	.long	8192
	.long	0
	.long	.LC27
	.long	.LC20
	.long	0
	.byte	77
	.zero	3
	.long	32768
	.long	0
	.long	.LC28
	.long	.LC20
	.long	0
	.byte	75
	.zero	3
	.long	28672
	.long	0
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	102
	.zero	3
	.long	65536
	.long	0
	.long	.LC23
	.long	.LC20
	.long	0
	.byte	102
	.zero	3
	.long	131072
	.long	0
	.long	.LC23
	.long	.LC20
	.long	0
	.byte	102
	.zero	3
	.long	262144
	.long	0
	.long	.LC29
	.long	.LC20
	.long	0
	.byte	102
	.zero	3
	.long	524288
	.long	0
	.long	.LC29
	.long	.LC20
	.long	0
	.byte	102
	.zero	3
	.long	1048576
	.long	0
	.long	.LC30
	.long	.LC20
	.long	1
	.byte	102
	.zero	3
	.long	2097152
	.long	0
	.long	.LC31
	.long	.LC20
	.long	1
	.byte	102
	.zero	3
	.long	16711680
	.long	0
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	70
	.zero	3
	.long	983040
	.long	0
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	67
	.zero	3
	.long	15728640
	.long	0
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	88
	.zero	3
	.long	33554432
	.long	0
	.long	.LC32
	.long	.LC20
	.long	0
	.byte	105
	.zero	3
	.long	268435456
	.long	0
	.long	.LC33
	.long	.LC20
	.long	1
	.byte	105
	.zero	3
	.long	536870912
	.long	0
	.long	.LC34
	.long	.LC20
	.long	1
	.byte	105
	.zero	3
	.long	-268435456
	.long	0
	.long	.LC0
	.long	.LC0
	.long	1
	.byte	98
	.zero	3
	.long	0
	.long	1
	.long	.LC35
	.long	.LC20
	.long	1
	.byte	97
	.zero	3
	.long	0
	.long	16
	.long	.LC36
	.long	.LC20
	.long	0
	.byte	97
	.zero	3
	.long	0
	.long	32
	.long	.LC13
	.long	.LC18
	.long	0
	.byte	97
	.zero	3
	.long	0
	.long	48
	.long	.LC0
	.long	.LC0
	.long	0
	.byte	100
	.zero	3
	.long	0
	.long	128
	.long	.LC37
	.long	.LC20
	.long	0
	.byte	106
	.zero	3
	.long	0
	.long	256
	.long	.LC38
	.long	.LC18
	.long	1
	.byte	108
	.zero	3
	.long	0
	.long	512
	.long	.LC39
	.long	.LC40
	.long	1
	.byte	108
	.zero	3
	.long	0
	.long	1024
	.long	.LC15
	.long	.LC18
	.long	0
	.byte	108
	.zero	3
	.long	0
	.long	2048
	.long	.LC15
	.long	.LC18
	.long	0
	.byte	108
	.zero	3
	.long	0
	.long	16781056
	.long	.LC0
	.long	.LC0
	.long	1
	.byte	99
	.zero	3
	.long	0
	.long	4096
	.long	.LC41
	.long	.LC18
	.long	0
	.byte	120
	.zero	3
	.long	0
	.long	8192
	.long	.LC42
	.long	.LC18
	.long	0
	.byte	120
	.zero	3
	.long	0
	.long	16384
	.long	.LC43
	.long	.LC18
	.long	0
	.byte	82
	.zero	3
	.long	0
	.long	65536
	.long	.LC44
	.long	.LC18
	.long	0
	.byte	83
	.zero	3
	.long	0
	.long	1048576
	.long	.LC45
	.long	.LC40
	.long	0
	.byte	73
	.zero	3
	.long	0
	.long	2097152
	.long	.LC46
	.long	.LC47
	.long	0
	.byte	76
	.zero	3
	.long	0
	.long	4194304
	.long	.LC48
	.long	.LC40
	.long	0
	.byte	76
	.zero	3
	.long	0
	.long	8388608
	.long	.LC49
	.long	.LC40
	.long	0
	.byte	83
	.zero	3
	.long	0
	.long	1048576
	.long	.LC45
	.long	.LC50
	.long	0
.globl PHASE_MASK
	.data
	.align 8
	.type	PHASE_MASK, @object
	.size	PHASE_MASK, 8
PHASE_MASK:
	.long	-1
	.long	1048575
.globl LIB_MASK
	.align 8
	.type	LIB_MASK, @object
	.size	LIB_MASK, 8
LIB_MASK:
	.long	0
	.long	-1048576
	.section	.rodata
.LC51:
	.string	"c"
.LC52:
	.string	"C"
.LC53:
	.string	"CPP"
.LC54:
	.string	"CXX"
.LC55:
	.string	"cxx"
.LC56:
	.string	"c++"
.LC57:
	.string	"f"
.LC58:
	.string	"for"
.LC59:
	.string	"F"
.LC60:
	.string	"FOR"
.LC61:
	.string	"f95"
.LC62:
	.string	"F90"
.LC63:
	.string	"F95"
.LC64:
	.string	"r"
.LC65:
	.string	"i"
.LC66:
	.string	"ii"
.LC67:
	.string	"s"
.LC68:
	.string	"S"
.LC69:
	.string	"I"
.LC70:
	.string	"B"
.LC71:
	.string	"N"
.LC72:
	.string	"O"
.LC73:
	.string	"o"
	.section	.data.rel.local
	.align 32
	.type	source_info, @object
	.size	source_info, 544
source_info:
	.long	.LC0
	.zero	28
	.long	.LC51
	.zero	28
	.long	.LC52
	.long	.LC6
	.long	.LC53
	.long	.LC54
	.long	.LC2
	.long	.LC1
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.long	.LC58
	.zero	24
	.long	.LC59
	.long	.LC60
	.zero	24
	.long	.LC12
	.long	.LC61
	.zero	24
	.long	.LC62
	.long	.LC63
	.zero	24
	.long	.LC64
	.zero	28
	.long	.LC65
	.zero	28
	.long	.LC66
	.zero	28
	.long	.LC67
	.zero	28
	.long	.LC68
	.zero	28
	.long	.LC69
	.zero	28
	.long	.LC70
	.zero	28
	.long	.LC71
	.zero	28
	.long	.LC72
	.zero	28
	.long	.LC73
	.zero	28
.globl first_phase
	.data
	.align 4
	.type	first_phase, @object
	.size	first_phase, 4
first_phase:
	.long	12
.globl last_phase
	.align 4
	.type	last_phase, @object
	.size	last_phase, 4
last_phase:
	.long	40
.globl remember_last_phase
	.bss
	.align 4
	.type	remember_last_phase, @object
	.size	remember_last_phase, 4
remember_last_phase:
	.zero	4
.globl current_phase
	.align 4
	.type	current_phase, @object
	.size	current_phase, 4
current_phase:
	.zero	4
.globl source_kind
	.align 4
	.type	source_kind, @object
	.size	source_kind, 4
source_kind:
	.zero	4
.globl default_source_kind
	.align 4
	.type	default_source_kind, @object
	.size	default_source_kind, 4
default_source_kind:
	.zero	4
.globl ignore_suffix
	.align 4
	.type	ignore_suffix, @object
	.size	ignore_suffix, 4
ignore_suffix:
	.zero	4
	.text
.globl earliest_phase
	.type	earliest_phase, @function
earliest_phase:
.LFB5:
	.file 1 "../../driver/lang_defs.c"
	.loc 1 255 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$4, %esp
.LCFI2:
	.loc 1 256 0
	movl	12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jae	.L2
	.loc 1 257 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L4
.L2:
	.loc 1 259 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L4:
	movl	-4(%ebp), %eax
	.loc 1 260 0
	leave
	ret
.LFE5:
	.size	earliest_phase, .-earliest_phase
	.section	.rodata
.LC74:
	.string	"bad language key (%c)"
	.text
.globl get_language
	.type	get_language, @function
get_language:
.LFB6:
	.loc 1 264 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	pushl	%ebx
.LCFI5:
	subl	$36, %esp
.LCFI6:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movb	%al, -24(%ebp)
	.loc 1 266 0
	movl	$0, -8(%ebp)
	jmp	.L7
.L8:
	.loc 1 267 0
	movl	-8(%ebp), %eax
	leal	language_info@GOTOFF(%ebx), %edx
	sall	$5, %eax
	movzbl	(%eax,%edx), %eax
	cmpb	-24(%ebp), %al
	jne	.L9
	.loc 1 268 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L11
.L9:
	.loc 1 266 0
	addl	$1, -8(%ebp)
.L7:
	cmpl	$9, -8(%ebp)
	jbe	.L8
	.loc 1 271 0
	movzbl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 272 0
	movl	$0, -28(%ebp)
.L11:
	movl	-28(%ebp), %eax
	.loc 1 273 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	get_language, .-get_language
.globl get_language_mask
	.type	get_language_mask, @function
get_language_mask:
.LFB7:
	.loc 1 277 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 278 0
	movl	8(%ebp), %eax
	leal	language_info@GOTOFF(%ecx), %edx
	sall	$5, %eax
	leal	4(%eax,%edx), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	.loc 1 279 0
	popl	%ebp
	ret
.LFE7:
	.size	get_language_mask, .-get_language_mask
	.section	.rodata
.LC75:
	.string	"phase key (%c) "
	.text
.globl get_phase
	.type	get_phase, @function
get_phase:
.LFB8:
	.loc 1 283 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$548, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movb	%al, -536(%ebp)
	.loc 1 283 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 287 0
	movl	$48, -524(%ebp)
	jmp	.L17
.L18:
	.loc 1 288 0
	movl	-524(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movzbl	(%eax,%ecx), %eax
	cmpb	-536(%ebp), %al
	jne	.L19
	.loc 1 289 0
	movl	-524(%ebp), %edx
	movl	%edx, -540(%ebp)
	jmp	.L21
.L19:
	.loc 1 287 0
	subl	$1, -524(%ebp)
.L17:
	cmpl	$0, -524(%ebp)
	jns	.L18
	.loc 1 292 0
	movzbl	-536(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 293 0
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_supported@PLT
	.loc 1 294 0
	movl	$0, -540(%ebp)
.L21:
	movl	-540(%ebp), %eax
	.loc 1 295 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L24
	call	__stack_chk_fail_local
.L24:
	addl	$548, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	get_phase, .-get_phase
.globl get_phase_mask
	.type	get_phase_mask, @function
get_phase_mask:
.LFB9:
	.loc 1 299 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 300 0
	movl	8(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	8(%eax,%ecx), %edx
	movl	4(%eax,%ecx), %eax
	.loc 1 301 0
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	get_phase_mask, .-get_phase_mask
.globl is_matching_language
	.type	is_matching_language, @function
is_matching_language:
.LFB10:
	.loc 1 306 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%esi
.LCFI19:
	subl	$8, %esp
.LCFI20:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 307 0
	movl	16(%ebp), %eax
	leal	language_info@GOTOFF(%ecx), %edx
	sall	$5, %eax
	movl	4(%eax,%edx), %esi
	movl	8(%eax,%edx), %edi
	movl	%esi, %eax
	andl	-16(%ebp), %eax
	movl	%edi, %edx
	andl	-12(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 308 0
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE10:
	.size	is_matching_language, .-is_matching_language
.globl is_matching_phase
	.type	is_matching_phase, @function
is_matching_phase:
.LFB11:
	.loc 1 313 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%edi
.LCFI23:
	pushl	%esi
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$32, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 314 0
	cmpl	$18, 16(%ebp)
	jne	.L30
	.loc 1 315 0
	movl	$9, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	is_matching_phase@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$17, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	is_matching_phase@PLT
	testl	%eax, %eax
	je	.L34
.L32:
	movl	$1, -28(%ebp)
	jmp	.L35
.L34:
	movl	$0, -28(%ebp)
.L35:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L36
.L30:
	.loc 1 318 0
	movl	16(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	4(%eax,%ecx), %esi
	movl	8(%eax,%ecx), %edi
	movl	%esi, %eax
	andl	-24(%ebp), %eax
	movl	%edi, %edx
	andl	-20(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
.L36:
	movl	-32(%ebp), %eax
	.loc 1 320 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE11:
	.size	is_matching_phase, .-is_matching_phase
.globl set_phase_dir
	.type	set_phase_dir, @function
set_phase_dir:
.LFB12:
	.loc 1 325 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%edi
.LCFI29:
	pushl	%esi
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$44, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 328 0
	movl	$0, -20(%ebp)
	jmp	.L39
.L40:
	.loc 1 329 0
	movl	-20(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	4(%eax,%ecx), %esi
	movl	8(%eax,%ecx), %edi
	movl	%esi, %eax
	andl	-40(%ebp), %eax
	movl	%edi, %edx
	andl	-36(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L41
	.loc 1 330 0
	movl	-20(%ebp), %esi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %ecx
	leal	phase_info@GOTOFF(%ebx), %edx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	%ecx, (%eax)
	.loc 1 331 0
	cmpl	$37, -20(%ebp)
	jne	.L41
	.loc 1 332 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	ldpath_for_pixie@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L41:
	.loc 1 328 0
	addl	$1, -20(%ebp)
.L39:
	cmpl	$48, -20(%ebp)
	jbe	.L40
	.loc 1 335 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	set_phase_dir, .-set_phase_dir
.globl substitute_phase_dirs
	.type	substitute_phase_dirs, @function
substitute_phase_dirs:
.LFB13:
	.loc 1 341 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$36, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 346 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -8(%ebp)
	.loc 1 347 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_directory@PLT
	testl	%eax, %eax
	je	.L54
	.loc 1 350 0
	movl	$0, -16(%ebp)
	jmp	.L49
.L50:
	.loc 1 351 0
	movl	-16(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L51
	.loc 1 352 0
	movl	-16(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	leal	16(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 353 0
	cmpl	$37, -16(%ebp)
	jne	.L51
	.loc 1 354 0
	movl	ldpath_for_pixie@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L51:
	.loc 1 350 0
	addl	$1, -16(%ebp)
.L49:
	cmpl	$48, -16(%ebp)
	jbe	.L50
.L54:
	.loc 1 357 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	substitute_phase_dirs, .-substitute_phase_dirs
.globl prefix_all_phase_dirs
	.type	prefix_all_phase_dirs, @function
prefix_all_phase_dirs:
.LFB14:
	.loc 1 362 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%edi
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$44, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 364 0
	movl	$0, -20(%ebp)
	jmp	.L56
.L57:
	.loc 1 365 0
	movl	-20(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	4(%eax,%ecx), %esi
	movl	8(%eax,%ecx), %edi
	movl	%esi, %eax
	andl	-40(%ebp), %eax
	movl	%edi, %edx
	andl	-36(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L58
	.loc 1 366 0
	movl	-20(%ebp), %esi
	movl	-20(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, %ecx
	leal	phase_info@GOTOFF(%ebx), %edx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	%ecx, (%eax)
.L58:
	.loc 1 364 0
	addl	$1, -20(%ebp)
.L56:
	cmpl	$48, -20(%ebp)
	jbe	.L57
	.loc 1 370 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE14:
	.size	prefix_all_phase_dirs, .-prefix_all_phase_dirs
.globl append_all_phase_dirs
	.type	append_all_phase_dirs, @function
append_all_phase_dirs:
.LFB15:
	.loc 1 375 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%edi
.LCFI45:
	pushl	%esi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$44, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 377 0
	movl	$0, -20(%ebp)
	jmp	.L63
.L64:
	.loc 1 378 0
	movl	-20(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	4(%eax,%ecx), %esi
	movl	8(%eax,%ecx), %edi
	movl	%esi, %eax
	andl	-40(%ebp), %eax
	movl	%edi, %edx
	andl	-36(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 380 0
	movl	-20(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	-20(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -44(%ebp)
	movl	$0, %eax
	cld
	movl	-44(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%esi,%eax), %eax
	leal	-8(%eax), %edx
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L65
	.loc 1 383 0
	movl	-20(%ebp), %esi
	movl	-20(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, %ecx
	leal	phase_info@GOTOFF(%ebx), %edx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	%ecx, (%eax)
.L65:
	.loc 1 377 0
	addl	$1, -20(%ebp)
.L63:
	cmpl	$48, -20(%ebp)
	jbe	.L64
	.loc 1 389 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	append_all_phase_dirs, .-append_all_phase_dirs
.globl append_phase_dir
	.type	append_phase_dir, @function
append_phase_dir:
.LFB16:
	.loc 1 394 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%esi
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$16, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 395 0
	movl	8(%ebp), %esi
	movl	8(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, %ecx
	leal	phase_info@GOTOFF(%ebx), %edx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	%ecx, (%eax)
	.loc 1 396 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE16:
	.size	append_phase_dir, .-append_phase_dir
.globl get_phase_dir
	.type	get_phase_dir, @function
get_phase_dir:
.LFB17:
	.loc 1 401 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 402 0
	movl	8(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	.loc 1 403 0
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	get_phase_dir, .-get_phase_dir
.globl get_phase_ld_library_path
	.type	get_phase_ld_library_path, @function
get_phase_ld_library_path:
.LFB18:
	.loc 1 408 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$4, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 409 0
	movl	8(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L75
	.loc 1 410 0
	movl	8(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L77
.L75:
	.loc 1 412 0
	movl	$0, -8(%ebp)
.L77:
	movl	-8(%ebp), %eax
	.loc 1 413 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	get_phase_ld_library_path, .-get_phase_ld_library_path
.globl get_phase_name
	.type	get_phase_name, @function
get_phase_name:
.LFB19:
	.loc 1 418 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 419 0
	movl	8(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	12(%eax,%ecx), %eax
	.loc 1 420 0
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	get_phase_name, .-get_phase_name
.globl set_phase_name
	.type	set_phase_name, @function
set_phase_name:
.LFB20:
	.loc 1 426 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 427 0
	movl	8(%ebp), %edx
	leal	phase_info@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx,%ecx)
	.loc 1 428 0
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	set_phase_name, .-set_phase_name
.globl get_full_phase_name
	.type	get_full_phase_name, @function
get_full_phase_name:
.LFB21:
	.loc 1 434 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%edi
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$544, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 434 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 436 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 437 0
	leal	-524(%ebp), %edx
	leal	-524(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -540(%ebp)
	movl	$0, %eax
	cld
	movl	-540(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%edx,%eax), %eax
	movw	$47, (%eax)
	.loc 1 438 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_name@PLT
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	.loc 1 439 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L85
	call	__stack_chk_fail_local
.L85:
	addl	$544, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	get_full_phase_name, .-get_full_phase_name
.globl get_lang_name
	.type	get_lang_name, @function
get_lang_name:
.LFB22:
	.loc 1 444 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 445 0
	movl	8(%ebp), %eax
	leal	language_info@GOTOFF(%ecx), %edx
	sall	$5, %eax
	movl	12(%eax,%edx), %eax
	.loc 1 446 0
	popl	%ebp
	ret
.LFE22:
	.size	get_lang_name, .-get_lang_name
	.section	.rodata
.LC76:
	.string	"unknown language (%s)"
	.text
.globl get_named_language
	.type	get_named_language, @function
get_named_language:
.LFB23:
	.loc 1 450 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%edi
.LCFI76:
	pushl	%esi
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$44, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 451 0
	movl	$0, -24(%ebp)
	.loc 1 463 0
	movl	$0, -28(%ebp)
	jmp	.L89
.L90:
	.loc 1 464 0
	movl	$0, -20(%ebp)
	jmp	.L91
.L92:
	.loc 1 466 0
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	sall	$3, %eax
	addl	%edx, %eax
	movl	12+language_info@GOTOFF(%ebx,%eax,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L93
	.loc 1 469 0
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
	movl	%eax, %esi
	addl	8(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	sall	$3, %eax
	addl	%edx, %eax
	movl	12+language_info@GOTOFF(%ebx,%eax,4), %eax
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
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 470 0
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	sall	$3, %eax
	addl	%edx, %eax
	movl	12+language_info@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L93
	.loc 1 472 0
	cmpl	$7, -28(%ebp)
	jne	.L96
	.loc 1 473 0
	movl	last_phase@GOT(%ebx), %eax
	movl	$33, (%eax)
.L96:
	.loc 1 474 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 475 0
	jmp	.L98
.L93:
	.loc 1 464 0
	addl	$1, -20(%ebp)
.L91:
	cmpl	$4, -20(%ebp)
	jg	.L99
	movl	-28(%ebp), %eax
	movl	-20(%ebp), %edx
	sall	$3, %eax
	addl	%edx, %eax
	movl	12+language_info@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L92
.L99:
	.loc 1 463 0
	addl	$1, -28(%ebp)
.L89:
	cmpl	$9, -28(%ebp)
	jbe	.L90
	.loc 1 479 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L98:
	.loc 1 485 0
	movl	-24(%ebp), %eax
	.loc 1 486 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	get_named_language, .-get_named_language
.globl get_source_kind_from_suffix
	.type	get_source_kind_from_suffix, @function
get_source_kind_from_suffix:
.LFB24:
	.loc 1 490 0
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
	.loc 1 493 0
	cmpl	$0, 8(%ebp)
	jne	.L104
	movl	$16, -24(%ebp)
	jmp	.L106
.L104:
	.loc 1 494 0
	movl	$0, -12(%ebp)
	jmp	.L107
.L108:
	.loc 1 495 0
	movl	$0, -8(%ebp)
	jmp	.L109
.L110:
	.loc 1 496 0
	movl	-12(%ebp), %eax
	movl	-8(%ebp), %edx
	sall	$3, %eax
	addl	%edx, %eax
	movl	source_info@GOTOFF(%ebx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L111
	.loc 1 497 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L106
.L111:
	.loc 1 495 0
	addl	$1, -8(%ebp)
.L109:
	cmpl	$7, -8(%ebp)
	jg	.L113
	movl	-12(%ebp), %eax
	movl	-8(%ebp), %edx
	sall	$3, %eax
	addl	%edx, %eax
	movl	source_info@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L110
.L113:
	.loc 1 494 0
	addl	$1, -12(%ebp)
.L107:
	cmpl	$16, -12(%ebp)
	jbe	.L108
	.loc 1 502 0
	movl	$16, -24(%ebp)
.L106:
	movl	-24(%ebp), %eax
	.loc 1 503 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	get_source_kind_from_suffix, .-get_source_kind_from_suffix
.globl get_source_kind
	.type	get_source_kind, @function
get_source_kind:
.LFB25:
	.loc 1 507 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$20, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 508 0
	movl	ignore_suffix@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L118
	.loc 1 509 0
	movl	default_source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L120
	.loc 1 510 0
	movl	default_source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L122
.L120:
	.loc 1 513 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$3, %eax
	movl	%eax, -12(%ebp)
	cmpl	$4, -12(%ebp)
	ja	.L118
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L128@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L128:
	.long	.L123@GOTOFF
	.long	.L124@GOTOFF
	.long	.L125@GOTOFF
	.long	.L126@GOTOFF
	.long	.L127@GOTOFF
	.text
.L123:
	.loc 1 514 0
	movl	$1, -8(%ebp)
	jmp	.L122
.L124:
	.loc 1 515 0
	movl	$2, -8(%ebp)
	jmp	.L122
.L125:
	.loc 1 516 0
	movl	$3, -8(%ebp)
	jmp	.L122
.L126:
	.loc 1 517 0
	movl	$5, -8(%ebp)
	jmp	.L122
.L127:
	.loc 1 518 0
	movl	$10, -8(%ebp)
	jmp	.L122
.L118:
	.loc 1 522 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_suffix@PLT
	movl	%eax, (%esp)
	call	get_source_kind_from_suffix@PLT
	movl	%eax, -8(%ebp)
.L122:
	movl	-8(%ebp), %eax
	.loc 1 523 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	get_source_kind, .-get_source_kind
.globl get_suffix_string
	.type	get_suffix_string, @function
get_suffix_string:
.LFB26:
	.loc 1 527 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 528 0
	movl	8(%ebp), %eax
	leal	source_info@GOTOFF(%ecx), %edx
	sall	$5, %eax
	movl	(%eax,%edx), %eax
	.loc 1 529 0
	popl	%ebp
	ret
.LFE26:
	.size	get_suffix_string, .-get_suffix_string
.globl is_object_source_kind
	.type	is_object_source_kind, @function
is_object_source_kind:
.LFB27:
	.loc 1 535 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$36, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 537 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_suffix@PLT
	movl	%eax, -8(%ebp)
	.loc 1 538 0
	cmpl	$0, -8(%ebp)
	jne	.L133
	movl	$0, -24(%ebp)
	jmp	.L135
.L133:
	.loc 1 539 0
	movl	$0, -12(%ebp)
	jmp	.L136
.L137:
	.loc 1 540 0
	movl	-12(%ebp), %eax
	movl	512+source_info@GOTOFF(%ebx,%eax,4), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L138
	.loc 1 541 0
	movl	$1, -24(%ebp)
	jmp	.L135
.L138:
	.loc 1 539 0
	addl	$1, -12(%ebp)
.L136:
	cmpl	$7, -12(%ebp)
	jg	.L140
	movl	-12(%ebp), %eax
	movl	512+source_info@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L137
.L140:
	.loc 1 545 0
	movl	$0, -24(%ebp)
.L135:
	movl	-24(%ebp), %eax
	.loc 1 546 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	is_object_source_kind, .-is_object_source_kind
.globl get_source_lang
	.type	get_source_lang, @function
get_source_lang:
.LFB28:
	.loc 1 552 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	subl	$4, %esp
.LCFI96:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 553 0
	cmpl	$16, 8(%ebp)
	ja	.L144
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	.L153@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L153:
	.long	.L144@GOTOFF
	.long	.L145@GOTOFF
	.long	.L146@GOTOFF
	.long	.L147@GOTOFF
	.long	.L147@GOTOFF
	.long	.L147@GOTOFF
	.long	.L147@GOTOFF
	.long	.L148@GOTOFF
	.long	.L149@GOTOFF
	.long	.L150@GOTOFF
	.long	.L151@GOTOFF
	.long	.L151@GOTOFF
	.long	.L149@GOTOFF
	.long	.L149@GOTOFF
	.long	.L149@GOTOFF
	.long	.L149@GOTOFF
	.long	.L152@GOTOFF
	.text
.L149:
	.loc 1 560 0
	movl	invoked_lang@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L154
.L150:
	.loc 1 562 0
	movl	$4, -4(%ebp)
	jmp	.L154
.L145:
	.loc 1 564 0
	movl	invoked_lang@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L155
	movl	$4, -4(%ebp)
	jmp	.L154
.L155:
	.loc 1 565 0
	movl	$3, -4(%ebp)
	jmp	.L154
.L146:
	.loc 1 567 0
	movl	$4, -4(%ebp)
	jmp	.L154
.L151:
	.loc 1 570 0
	movl	$7, -4(%ebp)
	jmp	.L154
.L148:
	.loc 1 572 0
	movl	$5, -4(%ebp)
	jmp	.L154
.L147:
	.loc 1 578 0
	movl	$6, -4(%ebp)
	jmp	.L154
.L152:
	.loc 1 580 0
	movl	invoked_lang@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L154
.L144:
	.loc 1 582 0
	movl	$0, -4(%ebp)
.L154:
	movl	-4(%ebp), %eax
	.loc 1 583 0
	leave
	ret
.LFE28:
	.size	get_source_lang, .-get_source_lang
	.comm	invoked_lang,4,4
	.comm	source_lang,4,4
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
	.long	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI4
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
	.long	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
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
	.long	.LCFI9-.LFB8
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI13-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0x83
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
	.long	.LCFI16-.LFB10
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI21-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI22
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
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI27-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI28
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
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI33-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI34
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
	.long	.LCFI37-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI38
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
	.long	.LCFI43-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI44
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
	.long	.LCFI53-.LCFI50
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI54-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI55
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
	.long	.LCFI57-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI58
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
	.long	.LCFI61-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI62
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
	.long	.LCFI64-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI66-.LCFI65
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
	.long	.LCFI67-.LFB21
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
	.byte	0x83
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
	.long	.LCFI72-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI74-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI75
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
	.long	.LCFI80-.LFB24
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
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI88-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI90-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI93-.LCFI91
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
	.long	.LCFI94-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
	.file 2 "../../driver/lang_defs.h"
	.file 3 "../../driver/basic.h"
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI38-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
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
.LLST21:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB27-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI90-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI91-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB28-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI94-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI95-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xee5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/lang_defs.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
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
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.byte	0x4
	.long	0x131
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.string	"boolean"
	.byte	0x3
	.byte	0x2c
	.long	0xe6
	.uleb128 0x5
	.string	"buffer_t"
	.byte	0x3
	.byte	0x2f
	.long	0x158
	.uleb128 0x6
	.long	0x169
	.long	0x131
	.uleb128 0x7
	.long	0x124
	.value	0x1ff
	.byte	0x0
	.uleb128 0x8
	.long	0x1cd
	.byte	0x4
	.byte	0x2
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
	.byte	0x2
	.byte	0x3b
	.long	0x169
	.uleb128 0x8
	.long	0x260
	.byte	0x4
	.byte	0x2
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
	.byte	0x2
	.byte	0x51
	.long	0x1e0
	.uleb128 0x8
	.long	0x49c
	.byte	0x4
	.byte	0x2
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
	.byte	0x2
	.byte	0x97
	.long	0x275
	.uleb128 0x5
	.string	"mask_t"
	.byte	0x2
	.byte	0xad
	.long	0xed
	.uleb128 0xa
	.long	0x4fb
	.string	"lang_struct"
	.byte	0x20
	.byte	0x1
	.byte	0x3d
	.uleb128 0xb
	.string	"key"
	.byte	0x1
	.byte	0x3e
	.long	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"mask"
	.byte	0x1
	.byte	0x3f
	.long	0x4ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"name"
	.byte	0x1
	.byte	0x40
	.long	0x4fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x6
	.long	0x50b
	.long	0x12b
	.uleb128 0xc
	.long	0x124
	.byte	0x4
	.byte	0x0
	.uleb128 0x5
	.string	"lang_info_t"
	.byte	0x1
	.byte	0x41
	.long	0x4ba
	.uleb128 0xa
	.long	0x58c
	.string	"phase_struct"
	.byte	0x18
	.byte	0x1
	.byte	0x59
	.uleb128 0xb
	.string	"key"
	.byte	0x1
	.byte	0x5a
	.long	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"mask"
	.byte	0x1
	.byte	0x5b
	.long	0x4ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"name"
	.byte	0x1
	.byte	0x5c
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"dir"
	.byte	0x1
	.byte	0x5d
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"set_ld_library_path"
	.byte	0x1
	.byte	0x5e
	.long	0x139
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x5
	.string	"phase_info_t"
	.byte	0x1
	.byte	0x60
	.long	0x51e
	.uleb128 0xa
	.long	0x5c8
	.string	"source_struct"
	.byte	0x20
	.byte	0x1
	.byte	0xd9
	.uleb128 0xb
	.string	"suffix"
	.byte	0x1
	.byte	0xda
	.long	0x5c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x5d8
	.long	0x12b
	.uleb128 0xc
	.long	0x124
	.byte	0x7
	.byte	0x0
	.uleb128 0x5
	.string	"source_info_t"
	.byte	0x1
	.byte	0xdb
	.long	0x5a0
	.uleb128 0xd
	.long	0x62e
	.byte	0x1
	.string	"earliest_phase"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.long	0x49c
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0xfe
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0xfe
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.long	0x672
	.byte	0x1
	.string	"get_language"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	0x1cd
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.value	0x107
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x109
	.long	0x1cd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.long	0x6ac
	.byte	0x1
	.string	"get_language_mask"
	.byte	0x1
	.value	0x115
	.byte	0x1
	.long	0x4ac
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x114
	.long	0x1cd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0x6ff
	.byte	0x1
	.string	"get_phase"
	.byte	0x1
	.value	0x11b
	.byte	0x1
	.long	0x49c
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.value	0x11a
	.long	0x131
	.byte	0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x11c
	.long	0xe6
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.value	0x11d
	.long	0x148
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.byte	0x0
	.uleb128 0xf
	.long	0x736
	.byte	0x1
	.string	"get_phase_mask"
	.byte	0x1
	.value	0x12b
	.byte	0x1
	.long	0x4ac
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x12a
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0x788
	.byte	0x1
	.string	"is_matching_language"
	.byte	0x1
	.value	0x132
	.byte	0x1
	.long	0x139
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x10
	.string	"lang_mask"
	.byte	0x1
	.value	0x131
	.long	0x4ac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"l"
	.byte	0x1
	.value	0x131
	.long	0x1cd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0xf
	.long	0x7d8
	.byte	0x1
	.string	"is_matching_phase"
	.byte	0x1
	.value	0x139
	.byte	0x1
	.long	0x139
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x10
	.string	"phase_mask"
	.byte	0x1
	.value	0x138
	.long	0x4ac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.value	0x138
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x12
	.long	0x82a
	.byte	0x1
	.string	"set_phase_dir"
	.byte	0x1
	.value	0x145
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x10
	.string	"mask"
	.byte	0x1
	.value	0x144
	.long	0x4ac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"path"
	.byte	0x1
	.value	0x144
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x147
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x12
	.long	0x8bb
	.byte	0x1
	.string	"substitute_phase_dirs"
	.byte	0x1
	.value	0x155
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x10
	.string	"orig_dir"
	.byte	0x1
	.value	0x154
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"new_dir"
	.byte	0x1
	.value	0x154
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"leaf"
	.byte	0x1
	.value	0x154
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x156
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"odir"
	.byte	0x1
	.value	0x157
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"ndir"
	.byte	0x1
	.value	0x158
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x915
	.byte	0x1
	.string	"prefix_all_phase_dirs"
	.byte	0x1
	.value	0x16a
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x10
	.string	"mask"
	.byte	0x1
	.value	0x169
	.long	0x4ac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"path"
	.byte	0x1
	.value	0x169
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x16b
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x12
	.long	0x96f
	.byte	0x1
	.string	"append_all_phase_dirs"
	.byte	0x1
	.value	0x177
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x10
	.string	"mask"
	.byte	0x1
	.value	0x176
	.long	0x4ac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"path"
	.byte	0x1
	.value	0x176
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x178
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x12
	.long	0x9b6
	.byte	0x1
	.string	"append_phase_dir"
	.byte	0x1
	.value	0x18a
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x189
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"path"
	.byte	0x1
	.value	0x189
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.long	0x9ee
	.byte	0x1
	.string	"get_phase_dir"
	.byte	0x1
	.value	0x191
	.byte	0x1
	.long	0x12b
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x190
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0xa32
	.byte	0x1
	.string	"get_phase_ld_library_path"
	.byte	0x1
	.value	0x198
	.byte	0x1
	.long	0x12b
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x197
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0xa6b
	.byte	0x1
	.string	"get_phase_name"
	.byte	0x1
	.value	0x1a2
	.byte	0x1
	.long	0x12b
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x1a1
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0xaad
	.byte	0x1
	.string	"set_phase_name"
	.byte	0x1
	.value	0x1aa
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x1a9
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.value	0x1a9
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.long	0xafb
	.byte	0x1
	.string	"get_full_phase_name"
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	0x12b
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x1b1
	.long	0x49c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"tmp"
	.byte	0x1
	.value	0x1b3
	.long	0x148
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.byte	0x0
	.uleb128 0xf
	.long	0xb33
	.byte	0x1
	.string	"get_lang_name"
	.byte	0x1
	.value	0x1bc
	.byte	0x1
	.long	0x12b
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x1bb
	.long	0x1cd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0xbb5
	.byte	0x1
	.string	"get_named_language"
	.byte	0x1
	.value	0x1c2
	.byte	0x1
	.long	0x1cd
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x10
	.string	"name"
	.byte	0x1
	.value	0x1c1
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x1c3
	.long	0x1cd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"lang"
	.byte	0x1
	.value	0x1c3
	.long	0x1cd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.value	0x1c4
	.long	0xe6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.value	0x1c5
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"done"
	.byte	0x1
	.value	0x1e1
	.long	.L98
	.byte	0x0
	.uleb128 0xf
	.long	0xc15
	.byte	0x1
	.string	"get_source_kind_from_suffix"
	.byte	0x1
	.value	0x1ea
	.byte	0x1
	.long	0x260
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x10
	.string	"suf"
	.byte	0x1
	.value	0x1e9
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x1eb
	.long	0x260
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.value	0x1ec
	.long	0xe6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.long	0xc4f
	.byte	0x1
	.string	"get_source_kind"
	.byte	0x1
	.value	0x1fb
	.byte	0x1
	.long	0x260
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x10
	.string	"src"
	.byte	0x1
	.value	0x1fa
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0xc8a
	.byte	0x1
	.string	"get_suffix_string"
	.byte	0x1
	.value	0x20f
	.byte	0x1
	.long	0x12b
	.long	.LFB26
	.long	.LFE26
	.long	.LLST21
	.uleb128 0x10
	.string	"sk"
	.byte	0x1
	.value	0x20e
	.long	0x260
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xf
	.long	0xce6
	.byte	0x1
	.string	"is_object_source_kind"
	.byte	0x1
	.value	0x217
	.byte	0x1
	.long	0x139
	.long	.LFB27
	.long	.LFE27
	.long	.LLST22
	.uleb128 0x10
	.string	"src"
	.byte	0x1
	.value	0x216
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.value	0x218
	.long	0xe6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"suf"
	.byte	0x1
	.value	0x219
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.long	0xd1f
	.byte	0x1
	.string	"get_source_lang"
	.byte	0x1
	.value	0x228
	.byte	0x1
	.long	0x1cd
	.long	.LFB28
	.long	.LFE28
	.long	.LLST23
	.uleb128 0x10
	.string	"sk"
	.byte	0x1
	.value	0x227
	.long	0x260
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x6
	.long	0xd2f
	.long	0x50b
	.uleb128 0xc
	.long	0x124
	.byte	0x9
	.byte	0x0
	.uleb128 0x15
	.string	"language_info"
	.byte	0x1
	.byte	0x43
	.long	0xd1f
	.byte	0x5
	.byte	0x3
	.long	language_info
	.uleb128 0x6
	.long	0xd5a
	.long	0x58c
	.uleb128 0xc
	.long	0x124
	.byte	0x30
	.byte	0x0
	.uleb128 0x15
	.string	"phase_info"
	.byte	0x1
	.byte	0x62
	.long	0xd4a
	.byte	0x5
	.byte	0x3
	.long	phase_info
	.uleb128 0x6
	.long	0xd82
	.long	0x5d8
	.uleb128 0xc
	.long	0x124
	.byte	0x10
	.byte	0x0
	.uleb128 0x15
	.string	"source_info"
	.byte	0x1
	.byte	0xdd
	.long	0xd72
	.byte	0x5
	.byte	0x3
	.long	source_info
	.uleb128 0x16
	.string	"invoked_lang"
	.byte	0x1
	.byte	0xf1
	.long	0x1cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	invoked_lang
	.uleb128 0x16
	.string	"source_lang"
	.byte	0x1
	.byte	0xf2
	.long	0x1cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	source_lang
	.uleb128 0x16
	.string	"source_kind"
	.byte	0x1
	.byte	0xf7
	.long	0x260
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	source_kind
	.uleb128 0x16
	.string	"default_source_kind"
	.byte	0x1
	.byte	0xf8
	.long	0x260
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	default_source_kind
	.uleb128 0x16
	.string	"first_phase"
	.byte	0x1
	.byte	0xf3
	.long	0x49c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	first_phase
	.uleb128 0x16
	.string	"last_phase"
	.byte	0x1
	.byte	0xf4
	.long	0x49c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_phase
	.uleb128 0x16
	.string	"remember_last_phase"
	.byte	0x1
	.byte	0xf5
	.long	0x49c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	remember_last_phase
	.uleb128 0x16
	.string	"current_phase"
	.byte	0x1
	.byte	0xf6
	.long	0x49c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_phase
	.uleb128 0x16
	.string	"PHASE_MASK"
	.byte	0x1
	.byte	0xd3
	.long	0x4ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PHASE_MASK
	.uleb128 0x16
	.string	"LIB_MASK"
	.byte	0x1
	.byte	0xd5
	.long	0x4ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LIB_MASK
	.uleb128 0x16
	.string	"ignore_suffix"
	.byte	0x1
	.byte	0xf9
	.long	0x139
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ignore_suffix
	.uleb128 0x16
	.string	"ldpath_for_pixie"
	.byte	0x1
	.byte	0x35
	.long	0x12b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ldpath_for_pixie
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.long	0x2f1
	.value	0x2
	.long	.Ldebug_info0
	.long	0xee9
	.long	0x5ed
	.string	"earliest_phase"
	.long	0x62e
	.string	"get_language"
	.long	0x672
	.string	"get_language_mask"
	.long	0x6ac
	.string	"get_phase"
	.long	0x6ff
	.string	"get_phase_mask"
	.long	0x736
	.string	"is_matching_language"
	.long	0x788
	.string	"is_matching_phase"
	.long	0x7d8
	.string	"set_phase_dir"
	.long	0x82a
	.string	"substitute_phase_dirs"
	.long	0x8bb
	.string	"prefix_all_phase_dirs"
	.long	0x915
	.string	"append_all_phase_dirs"
	.long	0x96f
	.string	"append_phase_dir"
	.long	0x9b6
	.string	"get_phase_dir"
	.long	0x9ee
	.string	"get_phase_ld_library_path"
	.long	0xa32
	.string	"get_phase_name"
	.long	0xa6b
	.string	"set_phase_name"
	.long	0xaad
	.string	"get_full_phase_name"
	.long	0xafb
	.string	"get_lang_name"
	.long	0xb33
	.string	"get_named_language"
	.long	0xbb5
	.string	"get_source_kind_from_suffix"
	.long	0xc15
	.string	"get_source_kind"
	.long	0xc4f
	.string	"get_suffix_string"
	.long	0xc8a
	.string	"is_object_source_kind"
	.long	0xce6
	.string	"get_source_lang"
	.long	0xd9b
	.string	"invoked_lang"
	.long	0xdb6
	.string	"source_lang"
	.long	0xdd0
	.string	"source_kind"
	.long	0xdea
	.string	"default_source_kind"
	.long	0xe0c
	.string	"first_phase"
	.long	0xe26
	.string	"last_phase"
	.long	0xe3f
	.string	"remember_last_phase"
	.long	0xe61
	.string	"current_phase"
	.long	0xe7d
	.string	"PHASE_MASK"
	.long	0xe96
	.string	"LIB_MASK"
	.long	0xead
	.string	"ignore_suffix"
	.long	0xec9
	.string	"ldpath_for_pixie"
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
	.string	"index"
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
