	.file	"objects.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_objects
	.type	init_objects, @function
init_objects:
.LFB5:
	.file 1 "../../driver/objects.c"
	.loc 1 73 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$4, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 74 0
	call	init_string_list@PLT
	movl	%eax, %edx
	movl	objects@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 75 0
	call	init_string_list@PLT
	movl	%eax, %edx
	movl	lib_objects@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 76 0
	call	init_string_list@PLT
	movl	%eax, cxx_prelinker_objects@GOTOFF(%ebx)
	.loc 1 77 0
	call	init_string_list@PLT
	movl	%eax, ar_objects@GOTOFF(%ebx)
	.loc 1 78 0
	call	init_string_list@PLT
	movl	%eax, library_dirs@GOTOFF(%ebx)
	.loc 1 79 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	init_objects, .-init_objects
	.section	.rodata
.LC0:
	.string	"-m32"
.LC1:
	.string	"-print-file-name=%s"
.LC2:
	.string	"r"
.LC3:
	.string	"couldn't open %s tmp file"
.LC4:
	.string	"couldn't read %s tmp file"
.LC5:
	.string	"%s path not found"
.LC6:
	.string	"%s found in %s\n"
	.text
	.type	init_given_crt_path, @function
init_given_crt_path:
.LFB6:
	.loc 1 83 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$1092, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -1064(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -1068(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -1072(%ebp)
	.loc 1 83 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 84 0
	movl	$3, -1052(%ebp)
	movl	$0, -1048(%ebp)
	.loc 1 90 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L4
	.loc 1 91 0
	addl	$1, -1052(%ebp)
.L4:
	.loc 1 93 0
	movl	-1052(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -1076(%ebp)
	movl	-1076(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -1076(%ebp)
	movl	-1076(%ebp), %eax
	movl	%eax, -1036(%ebp)
	.loc 1 94 0
	movl	-1048(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-1036(%ebp), %edx
	movl	-1068(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -1048(%ebp)
	.loc 1 95 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L6
	.loc 1 96 0
	movl	-1048(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-1036(%ebp), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -1048(%ebp)
.L6:
	.loc 1 98 0
	movl	-1064(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-1032(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 99 0
	movl	-1048(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-1036(%ebp), %edx
	leal	-1032(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -1048(%ebp)
	.loc 1 100 0
	movl	-1048(%ebp), %eax
	sall	$2, %eax
	addl	-1036(%ebp), %eax
	movl	$0, (%eax)
	addl	$1, -1048(%ebp)
	.loc 1 101 0
	movl	-1036(%ebp), %eax
	movl	(%eax), %edx
	movl	-1072(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-1036(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	run_simple_program@PLT
	.loc 1 104 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-1072(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -1044(%ebp)
	.loc 1 105 0
	cmpl	$0, -1044(%ebp)
	jne	.L8
	.loc 1 106 0
	movl	-1064(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 107 0
	jmp	.L17
.L8:
	.loc 1 109 0
	movl	-1044(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$512, 4(%esp)
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	testl	%eax, %eax
	jne	.L11
	.loc 1 110 0
	movl	-1064(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L11:
	.loc 1 112 0
	movl	-1044(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 113 0
	movzbl	-520(%ebp), %eax
	cmpb	$47, %al
	je	.L13
	.loc 1 114 0
	movl	-1064(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	jmp	.L17
.L13:
	.loc 1 118 0
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, -1040(%ebp)
	.loc 1 119 0
	movl	-1040(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 120 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L15
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-520(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-1064(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L15:
	.loc 1 121 0
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	add_library_dir@PLT
.L17:
	.loc 1 123 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L18
	call	__stack_chk_fail_local
.L18:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE6:
	.size	init_given_crt_path, .-init_given_crt_path
	.section	.rodata
.LC7:
	.string	"sl"
.LC8:
	.string	"/slcc"
.LC9:
	.string	"libstdc++.a"
	.text
.globl init_stdc_plus_plus_path
	.type	init_stdc_plus_plus_path, @function
init_stdc_plus_plus_path:
.LFB7:
	.loc 1 130 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$36, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 137 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_temp_file_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 138 0
	movl	$37, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -8(%ebp)
	.loc 1 139 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_given_crt_path
	.loc 1 141 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	init_stdc_plus_plus_path, .-init_stdc_plus_plus_path
	.section	.rodata
.LC10:
	.string	"crtbegin.o"
.LC11:
	.string	"crt1.o"
	.text
.globl init_crt_paths
	.type	init_crt_paths, @function
init_crt_paths:
.LFB8:
	.loc 1 147 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$36, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 160 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_temp_file_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 161 0
	movl	$37, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -8(%ebp)
	.loc 1 162 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_given_crt_path
	.loc 1 163 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	init_given_crt_path
	.loc 1 165 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	init_crt_paths, .-init_crt_paths
.globl is_object_option
	.type	is_object_option, @function
is_object_option:
.LFB9:
	.loc 1 170 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	subl	$8, %esp
.LCFI18:
	.loc 1 171 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	cmpl	$4, -8(%ebp)
	je	.L25
	cmpl	$207, -8(%ebp)
	je	.L25
	jmp	.L24
.L25:
	.loc 1 193 0
	movl	$1, -4(%ebp)
	jmp	.L26
.L24:
	.loc 1 195 0
	movl	$0, -4(%ebp)
.L26:
	movl	-4(%ebp), %eax
	.loc 1 197 0
	leave
	ret
.LFE9:
	.size	is_object_option, .-is_object_option
	.section	.rodata
.LC12:
	.string	"BrokenLocale"
.LC13:
	.string	"anl"
.LC14:
	.string	"c"
.LC15:
	.string	"crypt"
.LC16:
	.string	"dl"
.LC17:
	.string	"m"
.LC18:
	.string	"nsl"
.LC19:
	.string	"pthread"
.LC20:
	.string	"resolv"
.LC21:
	.string	"rpcsvc"
.LC22:
	.string	"rt"
.LC23:
	.string	"util"
.LC24:
	.string	"instr"
.LC25:
	.string	"mpath"
.LC26:
	.string	"mv"
.LC27:
	.string	"fortran"
.LC28:
	.string	"crt"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	prof_libs, @object
	.size	prof_libs, 144
prof_libs:
	.long	.LC12
	.long	0
	.long	.LC13
	.long	0
	.long	.LC14
	.long	0
	.long	.LC15
	.long	0
	.long	.LC16
	.long	0
	.long	.LC17
	.long	0
	.long	.LC18
	.long	0
	.long	.LC19
	.long	0
	.long	.LC20
	.long	0
	.long	.LC21
	.long	0
	.long	.LC22
	.long	0
	.long	.LC23
	.long	0
	.long	.LC24
	.long	1
	.long	.LC25
	.long	1
	.long	.LC26
	.long	1
	.long	.LC27
	.long	1
	.long	.LC28
	.long	1
	.long	0
	.long	0
	.section	.rodata
.LC29:
	.string	"/usr/lib"
.LC30:
	.string	"/usr/lib64"
.LC31:
	.string	"%s/lib%s_p.a"
	.text
.globl prof_lib_exists
	.type	prof_lib_exists, @function
prof_lib_exists:
.LFB10:
	.loc 1 233 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$36, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 236 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L29
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L31
.L29:
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L31:
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 238 0
	movl	-12(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	access@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 239 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 240 0
	movl	-8(%ebp), %eax
	.loc 1 241 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	prof_lib_exists, .-prof_lib_exists
	.section	.rodata
.LC32:
	.string	"_p"
.LC33:
	.string	"-l"
	.text
.globl add_library
	.type	add_library, @function
add_library:
.LFB11:
	.loc 1 244 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 245 0
	movl	$105, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L34
.LBB2:
	.loc 1 246 0
	leal	prof_libs@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L36
.L37:
	.loc 1 247 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L38
	.loc 1 249 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L40
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	prof_lib_exists@PLT
	testl	%eax, %eax
	je	.L38
.L40:
	.loc 1 251 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 12(%ebp)
.L38:
	.loc 1 246 0
	addl	$8, -8(%ebp)
.L36:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L37
.L34:
.LBE2:
	.loc 1 255 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 256 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	add_library, .-add_library
	.section	.rodata
.LC34:
	.string	"--"
	.align 4
.LC35:
	.string	"add_object called with not-an-object"
	.text
.globl add_object
	.type	add_object, @function
add_object:
.LFB12:
	.loc 1 263 0
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
	subl	$28, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 265 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$4, -16(%ebp)
	je	.L45
	cmpl	$207, -16(%ebp)
	je	.L46
	jmp	.L44
.L46:
	.loc 1 267 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L47
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L49
.L47:
	.loc 1 270 0
	movl	xpg_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L50
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L50
	.loc 1 271 0
	movl	lib_objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_library@PLT
	.loc 1 272 0
	movl	lib_objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_library@PLT
	.loc 1 270 0
	jmp	.L64
.L50:
	.loc 1 277 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_library@PLT
	.loc 1 267 0
	jmp	.L64
.L49:
	.loc 1 282 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_library@PLT
	.loc 1 316 0
	jmp	.L64
.L45:
	.loc 1 318 0
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L56
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L56
	.loc 1 319 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 320 0
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
.L56:
	.loc 1 322 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	leal	.LC33@GOTOFF(%ebx), %ecx
	movl	%ecx, -24(%ebp)
	movl	$2, -28(%ebp)
	cld
	movl	-20(%ebp), %esi
	movl	-24(%ebp), %edi
	movl	-28(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L59
	.loc 1 323 0
	movl	12(%ebp), %eax
	addl	$2, %eax
	movl	%eax, 4(%esp)
	movl	$207, (%esp)
	call	add_object@PLT
	jmp	.L61
.L59:
	.loc 1 325 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
.L61:
	.loc 1 326 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L64
	.loc 1 327 0
	movl	cxx_prelinker_objects@GOTOFF(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 330 0
	jmp	.L64
.L44:
	.loc 1 382 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L64:
	.loc 1 384 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	add_object, .-add_object
.globl add_ar_objects
	.type	add_ar_objects, @function
add_ar_objects:
.LFB13:
	.loc 1 389 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$20, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 390 0
	movl	ar_objects@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 391 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	add_ar_objects, .-add_ar_objects
	.section	.rodata
	.align 4
.LC36:
	.string	"IPA-created object %s not allowed without -ipa"
	.text
.globl append_objects_to_list
	.type	append_objects_to_list, @function
append_objects_to_list:
.LFB14:
	.loc 1 396 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$36, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 398 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L68
.LBB3:
	.loc 1 399 0
	movl	$0, -16(%ebp)
	.loc 1 401 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L70
.L71:
.LBB4:
	.loc 1 402 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 403 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_for_whirl
	cmpl	$1, %eax
	jne	.L72
	.loc 1 404 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 405 0
	movl	$1, -16(%ebp)
.L72:
.LBE4:
	.loc 1 401 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L70:
	cmpl	$0, -12(%ebp)
	jne	.L71
	.loc 1 408 0
	cmpl	$1, -16(%ebp)
	jne	.L68
	.loc 1 409 0
	movl	$1, (%esp)
	call	do_exit@PLT
.L68:
.LBE3:
	.loc 1 411 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_string_lists@PLT
	.loc 1 412 0
	movl	xpg_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L79
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L79
	.loc 1 413 0
	movl	lib_objects@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_string_lists@PLT
.L79:
	.loc 1 415 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE14:
	.size	append_objects_to_list, .-append_objects_to_list
.globl append_cxx_prelinker_objects_to_list
	.type	append_cxx_prelinker_objects_to_list, @function
append_cxx_prelinker_objects_to_list:
.LFB15:
	.loc 1 420 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$20, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 421 0
	movl	cxx_prelinker_objects@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_string_lists@PLT
	.loc 1 422 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	append_cxx_prelinker_objects_to_list, .-append_cxx_prelinker_objects_to_list
.globl append_ar_objects_to_list
	.type	append_ar_objects_to_list, @function
append_ar_objects_to_list:
.LFB16:
	.loc 1 426 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$20, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 427 0
	movl	ar_objects@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_string_lists@PLT
	.loc 1 428 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	append_ar_objects_to_list, .-append_ar_objects_to_list
	.section	.rodata
.LC37:
	.string	"-L"
	.text
.globl append_libraries_to_list
	.type	append_libraries_to_list, @function
append_libraries_to_list:
.LFB17:
	.loc 1 432 0
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
	.loc 1 434 0
	movl	library_dirs@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L85
.L86:
	.loc 1 435 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 434 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L85:
	cmpl	$0, -8(%ebp)
	jne	.L86
	.loc 1 447 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	append_libraries_to_list, .-append_libraries_to_list
	.section	.rodata
.LC38:
	.string	"objects:  "
	.text
.globl dump_objects
	.type	dump_objects, @function
dump_objects:
.LFB18:
	.loc 1 451 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$20, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 452 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 453 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	print_string_list@PLT
	.loc 1 454 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	dump_objects, .-dump_objects
.globl add_library_dir
	.type	add_library_dir, @function
add_library_dir:
.LFB19:
	.loc 1 458 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$20, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 459 0
	movl	library_dirs@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 460 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	add_library_dir, .-add_library_dir
.globl get_library_dirs
	.type	get_library_dirs, @function
get_library_dirs:
.LFB20:
	.loc 1 464 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 465 0
	movl	library_dirs@GOTOFF(%ecx), %eax
	.loc 1 466 0
	popl	%ebp
	ret
.LFE20:
	.size	get_library_dirs, .-get_library_dirs
	.section	.rodata
.LC39:
	.string	"no abi set? (%d)"
	.text
.globl add_library_options
	.type	add_library_options, @function
add_library_options:
.LFB21:
	.loc 1 470 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$1076, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 470 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 474 0
	movl	$0, -1048(%ebp)
	.loc 1 475 0
	movl	$0, -1044(%ebp)
	.loc 1 476 0
	movl	$0, -1040(%ebp)
	.loc 1 477 0
	movl	$0, -1036(%ebp)
	.loc 1 484 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -1064(%ebp)
	cmpl	$4, -1064(%ebp)
	je	.L102
	cmpl	$4, -1064(%ebp)
	jg	.L100
	movl	-1064(%ebp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L96
	jmp	.L102
.L100:
	cmpl	$5, -1064(%ebp)
	je	.L102
.L96:
	.loc 1 511 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L102:
	.loc 1 530 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L103
	call	__stack_chk_fail_local
.L103:
	addl	$1076, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	add_library_options, .-add_library_options
	.section	.rodata
.LC40:
	.string	"%s/%s"
	.align 4
.LC41:
	.string	"crt files not found in any -L directories:"
.LC42:
	.string	"\t%s/%s\n"
	.text
.globl find_crt_path
	.type	find_crt_path, @function
find_crt_path:
.LFB22:
	.loc 1 535 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$564, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -536(%ebp)
	.loc 1 535 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 538 0
	movl	library_dirs@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -524(%ebp)
	jmp	.L105
.L106:
	.loc 1 539 0
	movl	-524(%ebp), %eax
	movl	(%eax), %edx
	movl	-536(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 540 0
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	je	.L107
	.loc 1 541 0
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -540(%ebp)
	jmp	.L109
.L107:
	.loc 1 538 0
	movl	-524(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -524(%ebp)
.L105:
	cmpl	$0, -524(%ebp)
	jne	.L106
	.loc 1 545 0
	movl	$137, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L111
	movl	$726, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L113
.L111:
	.loc 1 546 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 547 0
	movl	library_dirs@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -524(%ebp)
	jmp	.L114
.L115:
	.loc 1 548 0
	movl	-524(%ebp), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-536(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 547 0
	movl	-524(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -524(%ebp)
.L114:
	cmpl	$0, -524(%ebp)
	jne	.L115
	.loc 1 550 0
	movl	-536(%ebp), %edx
	movl	%edx, -540(%ebp)
	jmp	.L109
.L113:
	.loc 1 553 0
	movl	use_h264libs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L117
	.loc 1 554 0
	movl	$48, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, %edx
	movl	-536(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L119
.L117:
	.loc 1 556 0
	movl	$44, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, %edx
	movl	-536(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L119:
	.loc 1 558 0
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -540(%ebp)
.L109:
	movl	-540(%ebp), %eax
	.loc 1 560 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L121
	call	__stack_chk_fail_local
.L121:
	addl	$564, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	find_crt_path, .-find_crt_path
.globl is_maybe_linker_option
	.type	is_maybe_linker_option, @function
is_maybe_linker_option:
.LFB23:
	.loc 1 566 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	.loc 1 576 0
	movl	$0, %eax
	.loc 1 577 0
	popl	%ebp
	ret
.LFE23:
	.size	is_maybe_linker_option, .-is_maybe_linker_option
.globl add_maybe_linker_option
	.type	add_maybe_linker_option, @function
add_maybe_linker_option:
.LFB24:
	.loc 1 582 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	.loc 1 593 0
	popl	%ebp
	ret
.LFE24:
	.size	add_maybe_linker_option, .-add_maybe_linker_option
.globl finalize_maybe_linker_options
	.type	finalize_maybe_linker_options, @function
finalize_maybe_linker_options:
.LFB25:
	.loc 1 599 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$36, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 602 0
	cmpl	$0, 8(%ebp)
	je	.L127
	.loc 1 604 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L129
.L130:
	.loc 1 605 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L131
.LBB5:
	.loc 1 607 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -24(%ebp)
	.loc 1 608 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
.L131:
.LBE5:
	.loc 1 604 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L129:
	cmpl	$0, -28(%ebp)
	jne	.L130
	jmp	.L148
.L127:
.LBB6:
	.loc 1 612 0
	movl	$0, -20(%ebp)
	.loc 1 613 0
	movl	$0, -16(%ebp)
	.loc 1 614 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L135
.L136:
	.loc 1 616 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L137
.LBB7:
	.loc 1 618 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 626 0
	cmpl	$0, -20(%ebp)
	jne	.L139
	.loc 1 627 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L141
.L139:
	.loc 1 629 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
.L141:
	.loc 1 631 0
	movl	$1, -16(%ebp)
	jmp	.L142
.L137:
.LBE7:
	.loc 1 633 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
.L142:
	.loc 1 614 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L135:
	cmpl	$0, -28(%ebp)
	jne	.L136
	.loc 1 638 0
	cmpl	$0, -16(%ebp)
	je	.L148
.LBB8:
	.loc 1 639 0
	movl	$0, -8(%ebp)
	.loc 1 640 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L145
.L146:
	.loc 1 641 0
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 640 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L145:
	cmpl	$0, -28(%ebp)
	jne	.L146
	.loc 1 643 0
	movl	objects@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
.L148:
.LBE8:
.LBE6:
	.loc 1 646 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	finalize_maybe_linker_options, .-finalize_maybe_linker_options
	.type	check_for_whirl, @function
check_for_whirl:
.LFB36:
	.loc 1 661 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$164, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 661 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 662 0
	movl	$-1, -40(%ebp)
	.loc 1 663 0
	movl	$0, -36(%ebp)
	.loc 1 665 0
	movl	$0, -24(%ebp)
	.loc 1 669 0
	movl	$493, 8(%esp)
	movl	$0, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	open@PLT
	movl	%eax, -40(%ebp)
	.loc 1 670 0
	cmpl	$0, -40(%ebp)
	jns	.L150
	.loc 1 671 0
	movl	$0, -144(%ebp)
	jmp	.L152
.L150:
	.loc 1 673 0
	leal	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fstat@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L153
	.loc 1 674 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 675 0
	movl	$0, -144(%ebp)
	jmp	.L152
.L153:
	.loc 1 678 0
	movl	-84(%ebp), %eax
	cmpl	$63, %eax
	ja	.L155
	.loc 1 679 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 680 0
	movl	$0, -144(%ebp)
	jmp	.L152
.L155:
	.loc 1 683 0
	movl	$64, -28(%ebp)
	.loc 1 685 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %edx
	movl	%edx, -140(%ebp)
	movl	-140(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 687 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	read@PLT
	movl	%eax, -32(%ebp)
	.loc 1 692 0
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 693 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$127, %al
	jne	.L157
	movl	-24(%ebp), %eax
	movzbl	1(%eax), %eax
	cmpb	$69, %al
	jne	.L157
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$76, %al
	jne	.L157
	movl	-24(%ebp), %eax
	movzbl	3(%eax), %eax
	cmpb	$70, %al
	je	.L161
.L157:
	.loc 1 697 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 698 0
	movl	$0, -144(%ebp)
	jmp	.L152
.L161:
	.loc 1 701 0
	movl	-24(%ebp), %eax
	movzbl	4(%eax), %eax
	cmpb	$1, %al
	jne	.L162
.LBB9:
	.loc 1 702 0
	movl	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 703 0
	movl	-16(%ebp), %eax
	movzwl	16(%eax), %eax
	cmpw	$-256, %ax
	jne	.L166
	.loc 1 704 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 705 0
	movl	$1, -144(%ebp)
	jmp	.L152
.L162:
.LBE9:
.LBB10:
	.loc 1 709 0
	movl	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 710 0
	movl	-12(%ebp), %eax
	movzwl	16(%eax), %eax
	cmpw	$-256, %ax
	jne	.L166
	.loc 1 711 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 712 0
	movl	$1, -144(%ebp)
	jmp	.L152
.L166:
.LBE10:
	.loc 1 716 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 717 0
	movl	$0, -144(%ebp)
.L152:
	movl	-144(%ebp), %eax
	.loc 1 719 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L169
	call	__stack_chk_fail_local
.L169:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE36:
	.size	check_for_whirl, .-check_for_whirl
	.local	cxx_prelinker_objects
	.comm	cxx_prelinker_objects,4,4
	.local	ar_objects
	.comm	ar_objects,4,4
	.local	library_dirs
	.comm	library_dirs,4,4
	.comm	objects,4,4
	.comm	lib_objects,4,4
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
	.long	.LCFI3-.LCFI1
	.byte	0x83
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
	.long	.LCFI4-.LFB6
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI8-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI9
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
	.long	.LCFI12-.LFB8
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI16-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI19-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
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
	.long	.LCFI23-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0x83
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
	.long	.LCFI40-.LCFI38
	.byte	0x83
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
	.long	.LCFI41-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI42
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
	.long	.LCFI45-.LFB16
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI49-.LFB17
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI53-.LFB18
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI57-.LFB19
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI61-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI63-.LFB21
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI67-.LFB22
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI71-.LFB23
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI73-.LFB24
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
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI75-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI76
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI79-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI80
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/libio.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 6 "../../driver/basic.h"
	.file 7 "../../driver/string_utils.h"
	.file 8 "/usr/include/elf.h"
	.file 9 "/usr/include/stdint.h"
	.file 10 "/usr/include/bits/stat.h"
	.file 11 "/usr/include/time.h"
	.file 12 "./option_names.h"
	.file 13 "../../driver/lang_defs.h"
	.file 14 "../../driver/opt_actions.h"
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
.LLST11:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1469
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/objects.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x5
	.byte	0xd6
	.long	0x93
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
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
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x4
	.byte	0x3b
	.long	0xf9
	.uleb128 0x2
	.string	"__u_quad_t"
	.byte	0x4
	.byte	0x3c
	.long	0x10a
	.uleb128 0x2
	.string	"__dev_t"
	.byte	0x4
	.byte	0x89
	.long	0x134
	.uleb128 0x2
	.string	"__uid_t"
	.byte	0x4
	.byte	0x8a
	.long	0x93
	.uleb128 0x2
	.string	"__gid_t"
	.byte	0x4
	.byte	0x8b
	.long	0x93
	.uleb128 0x2
	.string	"__ino_t"
	.byte	0x4
	.byte	0x8c
	.long	0xc1
	.uleb128 0x2
	.string	"__mode_t"
	.byte	0x4
	.byte	0x8e
	.long	0x93
	.uleb128 0x2
	.string	"__nlink_t"
	.byte	0x4
	.byte	0x8f
	.long	0x93
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x4
	.byte	0x90
	.long	0x1b2
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x4
	.byte	0x91
	.long	0x124
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__time_t"
	.byte	0x4
	.byte	0x98
	.long	0x1b2
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.string	"__blksize_t"
	.byte	0x4
	.byte	0xa7
	.long	0x1b2
	.uleb128 0x2
	.string	"__blkcnt_t"
	.byte	0x4
	.byte	0xac
	.long	0x1b2
	.uleb128 0x6
	.byte	0x4
	.long	0x213
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"FILE"
	.byte	0x2
	.byte	0x2e
	.long	0x227
	.uleb128 0x7
	.long	0x4a2
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x3
	.value	0x10c
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x3
	.value	0x111
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x3
	.value	0x112
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x3
	.value	0x113
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x3
	.value	0x114
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x3
	.value	0x115
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x3
	.value	0x116
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x3
	.value	0x117
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x3
	.value	0x118
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x3
	.value	0x11a
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x3
	.value	0x11b
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x3
	.value	0x11c
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x3
	.value	0x11e
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x3
	.value	0x120
	.long	0x504
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x3
	.value	0x122
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x3
	.value	0x126
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x3
	.value	0x128
	.long	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x3
	.value	0x12c
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x3
	.value	0x12d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x3
	.value	0x12e
	.long	0x50a
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x3
	.value	0x132
	.long	0x51a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x3
	.value	0x13b
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x3
	.value	0x144
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x3
	.value	0x145
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x3
	.value	0x146
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x3
	.value	0x147
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x3
	.value	0x148
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x3
	.value	0x14a
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x3
	.value	0x14c
	.long	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4a8
	.uleb128 0x9
	.long	0x213
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x3
	.byte	0xb0
	.uleb128 0xb
	.long	0x4fe
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x3
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x3
	.byte	0xb7
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x3
	.byte	0xb8
	.long	0x504
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x3
	.byte	0xbc
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4bb
	.uleb128 0x6
	.byte	0x4
	.long	0x227
	.uleb128 0xd
	.long	0x51a
	.long	0x213
	.uleb128 0xe
	.long	0x1cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4ad
	.uleb128 0xd
	.long	0x530
	.long	0x213
	.uleb128 0xe
	.long	0x1cf
	.byte	0x27
	.byte	0x0
	.uleb128 0xb
	.long	0x565
	.string	"timespec"
	.byte	0x8
	.byte	0xb
	.byte	0x7a
	.uleb128 0xc
	.string	"tv_sec"
	.byte	0xb
	.byte	0x7b
	.long	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tv_nsec"
	.byte	0xb
	.byte	0x7c
	.long	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x6
	.byte	0x2c
	.long	0xf2
	.uleb128 0x2
	.string	"buffer_t"
	.byte	0x6
	.byte	0x2f
	.long	0x584
	.uleb128 0xd
	.long	0x595
	.long	0x213
	.uleb128 0xf
	.long	0x1cf
	.value	0x1ff
	.byte	0x0
	.uleb128 0xb
	.long	0x5cc
	.string	"string_item_rec"
	.byte	0x8
	.byte	0x7
	.byte	0x50
	.uleb128 0xc
	.string	"name"
	.byte	0x7
	.byte	0x51
	.long	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"next"
	.byte	0x7
	.byte	0x52
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x595
	.uleb128 0x2
	.string	"string_item_t"
	.byte	0x7
	.byte	0x53
	.long	0x595
	.uleb128 0xb
	.long	0x61e
	.string	"string_list_rec"
	.byte	0x8
	.byte	0x7
	.byte	0x54
	.uleb128 0xc
	.string	"head"
	.byte	0x7
	.byte	0x55
	.long	0x61e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tail"
	.byte	0x7
	.byte	0x56
	.long	0x61e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d2
	.uleb128 0x2
	.string	"string_list_t"
	.byte	0x7
	.byte	0x57
	.long	0x5e7
	.uleb128 0x10
	.long	0x69d
	.byte	0x4
	.byte	0xd
	.byte	0x2f
	.uleb128 0x11
	.string	"L_NONE"
	.sleb128 0
	.uleb128 0x11
	.string	"L_ALL"
	.sleb128 1
	.uleb128 0x11
	.string	"L_cpp"
	.sleb128 2
	.uleb128 0x11
	.string	"L_cc"
	.sleb128 3
	.uleb128 0x11
	.string	"L_CC"
	.sleb128 4
	.uleb128 0x11
	.string	"L_f77"
	.sleb128 5
	.uleb128 0x11
	.string	"L_f90"
	.sleb128 6
	.uleb128 0x11
	.string	"L_as"
	.sleb128 7
	.uleb128 0x11
	.string	"L_ld"
	.sleb128 8
	.uleb128 0x11
	.string	"L_internal"
	.sleb128 9
	.uleb128 0x11
	.string	"L_LAST"
	.sleb128 10
	.byte	0x0
	.uleb128 0x2
	.string	"languages_t"
	.byte	0xd
	.byte	0x3b
	.long	0x639
	.uleb128 0x12
	.byte	0x1
	.string	"init_objects"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x13
	.long	0x79a
	.string	"init_given_crt_path"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x14
	.string	"crt_name"
	.byte	0x1
	.byte	0x52
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x14
	.string	"prog_name"
	.byte	0x1
	.byte	0x52
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x15
	.long	.LASF2
	.byte	0x1
	.byte	0x52
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0x54
	.long	0xf2
	.byte	0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x54
	.long	0xf2
	.byte	0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x16
	.string	"path_file"
	.byte	0x1
	.byte	0x55
	.long	0x79a
	.byte	0x3
	.byte	0x91
	.sleb128 -1052
	.uleb128 0x16
	.string	"path"
	.byte	0x1
	.byte	0x56
	.long	0x584
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x57
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x16
	.string	"argv"
	.byte	0x1
	.byte	0x58
	.long	0x7a0
	.byte	0x3
	.byte	0x91
	.sleb128 -1044
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x59
	.long	0x574
	.byte	0x3
	.byte	0x91
	.sleb128 -1040
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x21b
	.uleb128 0x6
	.byte	0x4
	.long	0x20d
	.uleb128 0x17
	.long	0x7f1
	.byte	0x1
	.string	"init_stdc_plus_plus_path"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x18
	.long	.LASF2
	.byte	0x1
	.byte	0x89
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF3
	.byte	0x1
	.byte	0x8a
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x17
	.long	0x832
	.byte	0x1
	.string	"init_crt_paths"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x18
	.long	.LASF2
	.byte	0x1
	.byte	0xa0
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LASF3
	.byte	0x1
	.byte	0xa1
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	0x86c
	.byte	0x1
	.string	"is_object_option"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	0x565
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x14
	.string	"flag"
	.byte	0x1
	.byte	0xa9
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xb
	.long	0x89e
	.string	"prof_lib"
	.byte	0x8
	.byte	0x1
	.byte	0xc7
	.uleb128 0xc
	.string	"name"
	.byte	0x1
	.byte	0xc8
	.long	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"always"
	.byte	0x1
	.byte	0xc9
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x19
	.long	0x8f6
	.byte	0x1
	.string	"prof_lib_exists"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	0xf2
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x14
	.string	"lib"
	.byte	0x1
	.byte	0xe8
	.long	0x4a2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"path"
	.byte	0x1
	.byte	0xea
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"exists"
	.byte	0x1
	.byte	0xeb
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x17
	.long	0x94b
	.byte	0x1
	.string	"add_library"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x14
	.string	"list"
	.byte	0x1
	.byte	0xf3
	.long	0x94b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"lib"
	.byte	0x1
	.byte	0xf3
	.long	0x4a2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x16
	.string	"l"
	.byte	0x1
	.byte	0xf6
	.long	0x951
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x624
	.uleb128 0x6
	.byte	0x4
	.long	0x86c
	.uleb128 0x1b
	.long	0x998
	.byte	0x1
	.string	"add_object"
	.byte	0x1
	.value	0x107
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x1c
	.string	"flag"
	.byte	0x1
	.value	0x106
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.value	0x106
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1b
	.long	0x9cd
	.byte	0x1
	.string	"add_ar_objects"
	.byte	0x1
	.value	0x185
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.value	0x184
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0xa57
	.byte	0x1
	.string	"append_objects_to_list"
	.byte	0x1
	.value	0x18c
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x1c
	.string	"list"
	.byte	0x1
	.value	0x18b
	.long	0x94b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1d
	.string	"has_ipa_obj"
	.byte	0x1
	.value	0x18f
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x190
	.long	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1d
	.string	"filename"
	.byte	0x1
	.value	0x192
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xaa3
	.byte	0x1
	.string	"append_cxx_prelinker_objects_to_list"
	.byte	0x1
	.value	0x1a4
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x1c
	.string	"list"
	.byte	0x1
	.value	0x1a3
	.long	0x94b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0xae4
	.byte	0x1
	.string	"append_ar_objects_to_list"
	.byte	0x1
	.value	0x1aa
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x1c
	.string	"list"
	.byte	0x1
	.value	0x1a9
	.long	0x94b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0xb31
	.byte	0x1
	.string	"append_libraries_to_list"
	.byte	0x1
	.value	0x1b0
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x1c
	.string	"list"
	.byte	0x1
	.value	0x1af
	.long	0x94b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x1b1
	.long	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.string	"dump_objects"
	.byte	0x1
	.value	0x1c3
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x1b
	.long	0xb87
	.byte	0x1
	.string	"add_library_dir"
	.byte	0x1
	.value	0x1ca
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x1c
	.string	"path"
	.byte	0x1
	.value	0x1c9
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.string	"get_library_dirs"
	.byte	0x1
	.value	0x1d0
	.byte	0x1
	.long	0x94b
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x1b
	.long	0xc59
	.byte	0x1
	.string	"add_library_options"
	.byte	0x1
	.value	0x1d6
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x1d
	.string	"flag"
	.byte	0x1
	.value	0x1d7
	.long	0xf2
	.byte	0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x1d
	.string	"mbuf"
	.byte	0x1
	.value	0x1d8
	.long	0x574
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x1d
	.string	"rbuf"
	.byte	0x1
	.value	0x1d9
	.long	0x574
	.byte	0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x1d
	.string	"suffix"
	.byte	0x1
	.value	0x1da
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x1d
	.string	"mips_lib"
	.byte	0x1
	.value	0x1db
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -1052
	.uleb128 0x1d
	.string	"proc_lib"
	.byte	0x1
	.value	0x1dc
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x1d
	.string	"lib"
	.byte	0x1
	.value	0x1dd
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -1044
	.byte	0x0
	.uleb128 0x20
	.long	0xcb4
	.byte	0x1
	.string	"find_crt_path"
	.byte	0x1
	.value	0x217
	.byte	0x1
	.long	0x20d
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x1c
	.string	"crtname"
	.byte	0x1
	.value	0x216
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x218
	.long	0x61e
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.value	0x219
	.long	0x574
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.byte	0x0
	.uleb128 0x20
	.long	0xcf6
	.byte	0x1
	.string	"is_maybe_linker_option"
	.byte	0x1
	.value	0x236
	.byte	0x1
	.long	0x565
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x1c
	.string	"flag"
	.byte	0x1
	.value	0x235
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0xd35
	.byte	0x1
	.string	"add_maybe_linker_option"
	.byte	0x1
	.value	0x246
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x1c
	.string	"flag"
	.byte	0x1
	.value	0x245
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0xe11
	.byte	0x1
	.string	"finalize_maybe_linker_options"
	.byte	0x1
	.value	0x257
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x1c
	.string	"is_linker"
	.byte	0x1
	.value	0x256
	.long	0x565
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x258
	.long	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	0xdac
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1d
	.string	"new_str"
	.byte	0x1
	.value	0x25f
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1d
	.string	"prev"
	.byte	0x1
	.value	0x264
	.long	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"deleted"
	.byte	0x1
	.value	0x265
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	0xdf5
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1d
	.string	"str"
	.byte	0x1
	.value	0x26a
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1d
	.string	"tail"
	.byte	0x1
	.value	0x27f
	.long	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x9
	.byte	0x32
	.long	0xab
	.uleb128 0x2
	.string	"uint32_t"
	.byte	0x9
	.byte	0x34
	.long	0x93
	.uleb128 0x2
	.string	"uint64_t"
	.byte	0x9
	.byte	0x3b
	.long	0x10a
	.uleb128 0x2
	.string	"Elf32_Half"
	.byte	0x8
	.byte	0x20
	.long	0xe11
	.uleb128 0x2
	.string	"Elf64_Half"
	.byte	0x8
	.byte	0x21
	.long	0xe11
	.uleb128 0x2
	.string	"Elf32_Word"
	.byte	0x8
	.byte	0x24
	.long	0xe21
	.uleb128 0x2
	.string	"Elf64_Word"
	.byte	0x8
	.byte	0x26
	.long	0xe21
	.uleb128 0x2
	.string	"Elf32_Addr"
	.byte	0x8
	.byte	0x30
	.long	0xe21
	.uleb128 0x2
	.string	"Elf64_Addr"
	.byte	0x8
	.byte	0x31
	.long	0xe31
	.uleb128 0x2
	.string	"Elf32_Off"
	.byte	0x8
	.byte	0x34
	.long	0xe21
	.uleb128 0x2
	.string	"Elf64_Off"
	.byte	0x8
	.byte	0x35
	.long	0xe31
	.uleb128 0x22
	.long	0xfbb
	.byte	0x34
	.byte	0x8
	.byte	0x45
	.uleb128 0xc
	.string	"e_ident"
	.byte	0x8
	.byte	0x46
	.long	0xfbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"e_type"
	.byte	0x8
	.byte	0x47
	.long	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF4
	.byte	0x8
	.byte	0x48
	.long	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x23
	.long	.LASF5
	.byte	0x8
	.byte	0x49
	.long	0xe65
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"e_entry"
	.byte	0x8
	.byte	0x4a
	.long	0xe89
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"e_phoff"
	.byte	0x8
	.byte	0x4b
	.long	0xead
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"e_shoff"
	.byte	0x8
	.byte	0x4c
	.long	0xead
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"e_flags"
	.byte	0x8
	.byte	0x4d
	.long	0xe65
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF6
	.byte	0x8
	.byte	0x4e
	.long	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x23
	.long	.LASF7
	.byte	0x8
	.byte	0x4f
	.long	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xc
	.string	"e_phnum"
	.byte	0x8
	.byte	0x50
	.long	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x23
	.long	.LASF8
	.byte	0x8
	.byte	0x51
	.long	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xc
	.string	"e_shnum"
	.byte	0x8
	.byte	0x52
	.long	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x23
	.long	.LASF9
	.byte	0x8
	.byte	0x53
	.long	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0xd
	.long	0xfcb
	.long	0x9a
	.uleb128 0xe
	.long	0x1cf
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.string	"Elf32_Ehdr"
	.byte	0x8
	.byte	0x54
	.long	0xecf
	.uleb128 0x22
	.long	0x10c9
	.byte	0x40
	.byte	0x8
	.byte	0x57
	.uleb128 0xc
	.string	"e_ident"
	.byte	0x8
	.byte	0x58
	.long	0xfbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"e_type"
	.byte	0x8
	.byte	0x59
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF4
	.byte	0x8
	.byte	0x5a
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x23
	.long	.LASF5
	.byte	0x8
	.byte	0x5b
	.long	0xe77
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"e_entry"
	.byte	0x8
	.byte	0x5c
	.long	0xe9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"e_phoff"
	.byte	0x8
	.byte	0x5d
	.long	0xebe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"e_shoff"
	.byte	0x8
	.byte	0x5e
	.long	0xebe
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"e_flags"
	.byte	0x8
	.byte	0x5f
	.long	0xe77
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x23
	.long	.LASF6
	.byte	0x8
	.byte	0x60
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x23
	.long	.LASF7
	.byte	0x8
	.byte	0x61
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xc
	.string	"e_phnum"
	.byte	0x8
	.byte	0x62
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x23
	.long	.LASF8
	.byte	0x8
	.byte	0x63
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xc
	.string	"e_shnum"
	.byte	0x8
	.byte	0x64
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x23
	.long	.LASF9
	.byte	0x8
	.byte	0x65
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.byte	0x0
	.uleb128 0x2
	.string	"Elf64_Ehdr"
	.byte	0x8
	.byte	0x66
	.long	0xfdd
	.uleb128 0xb
	.long	0x121f
	.string	"stat"
	.byte	0x58
	.byte	0xa
	.byte	0x25
	.uleb128 0xc
	.string	"st_dev"
	.byte	0xa
	.byte	0x26
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"__pad1"
	.byte	0xa
	.byte	0x27
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"st_ino"
	.byte	0xa
	.byte	0x29
	.long	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"st_mode"
	.byte	0xa
	.byte	0x2d
	.long	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"st_nlink"
	.byte	0xa
	.byte	0x2e
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"st_uid"
	.byte	0xa
	.byte	0x2f
	.long	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"st_gid"
	.byte	0xa
	.byte	0x30
	.long	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"st_rdev"
	.byte	0xa
	.byte	0x31
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"__pad2"
	.byte	0xa
	.byte	0x32
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"st_size"
	.byte	0xa
	.byte	0x34
	.long	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"st_blksize"
	.byte	0xa
	.byte	0x38
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"st_blocks"
	.byte	0xa
	.byte	0x3b
	.long	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"st_atim"
	.byte	0xa
	.byte	0x46
	.long	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"st_mtim"
	.byte	0xa
	.byte	0x47
	.long	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"st_ctim"
	.byte	0xa
	.byte	0x48
	.long	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"__unused4"
	.byte	0xa
	.byte	0x55
	.long	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"__unused5"
	.byte	0xa
	.byte	0x56
	.long	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x24
	.long	0x1313
	.string	"check_for_whirl"
	.byte	0x1
	.value	0x295
	.byte	0x1
	.long	0xf2
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x1c
	.string	"name"
	.byte	0x1
	.value	0x294
	.long	0x20d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1d
	.string	"fd"
	.byte	0x1
	.value	0x296
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"raw_bits"
	.byte	0x1
	.value	0x297
	.long	0x20d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"size"
	.byte	0x1
	.value	0x298
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"bufsize"
	.byte	0x1
	.value	0x298
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"p_ehdr"
	.byte	0x1
	.value	0x299
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"statb"
	.byte	0x1
	.value	0x29a
	.long	0x10db
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1d
	.string	"test"
	.byte	0x1
	.value	0x29b
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.long	0x12f4
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x1d
	.string	"p32_ehdr"
	.byte	0x1
	.value	0x2be
	.long	0x1313
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1d
	.string	"p64_ehdr"
	.byte	0x1
	.value	0x2c5
	.long	0x1319
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xfcb
	.uleb128 0x6
	.byte	0x4
	.long	0x10c9
	.uleb128 0x16
	.string	"cxx_prelinker_objects"
	.byte	0x1
	.byte	0x43
	.long	0x94b
	.byte	0x5
	.byte	0x3
	.long	cxx_prelinker_objects
	.uleb128 0x16
	.string	"ar_objects"
	.byte	0x1
	.byte	0x44
	.long	0x94b
	.byte	0x5
	.byte	0x3
	.long	ar_objects
	.uleb128 0x16
	.string	"library_dirs"
	.byte	0x1
	.byte	0x45
	.long	0x94b
	.byte	0x5
	.byte	0x3
	.long	library_dirs
	.uleb128 0xd
	.long	0x1384
	.long	0x86c
	.uleb128 0xe
	.long	0x1cf
	.byte	0x11
	.byte	0x0
	.uleb128 0x16
	.string	"prof_libs"
	.byte	0x1
	.byte	0xcc
	.long	0x1374
	.byte	0x5
	.byte	0x3
	.long	prof_libs
	.uleb128 0x25
	.string	"stdout"
	.byte	0x2
	.byte	0x8f
	.long	0x504
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"stderr"
	.byte	0x2
	.byte	0x90
	.long	0x504
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"abi"
	.byte	0xc
	.value	0x32e
	.long	0xf2
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"ipa"
	.byte	0xc
	.value	0x335
	.long	0xf2
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"use_h264libs"
	.byte	0xc
	.value	0x336
	.long	0xf2
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"invoked_lang"
	.byte	0xd
	.byte	0x99
	.long	0x69d
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"debug"
	.byte	0xe
	.byte	0x64
	.long	0x565
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"dashdash_flag"
	.byte	0xe
	.byte	0x6c
	.long	0x565
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"xpg_flag"
	.byte	0xe
	.byte	0x71
	.long	0x565
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"objects"
	.byte	0x1
	.byte	0x41
	.long	0x94b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	objects
	.uleb128 0x27
	.string	"lib_objects"
	.byte	0x1
	.byte	0x42
	.long	0x94b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lib_objects
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.long	0x202
	.value	0x2
	.long	.Ldebug_info0
	.long	0x146d
	.long	0x6b0
	.string	"init_objects"
	.long	0x7a6
	.string	"init_stdc_plus_plus_path"
	.long	0x7f1
	.string	"init_crt_paths"
	.long	0x832
	.string	"is_object_option"
	.long	0x89e
	.string	"prof_lib_exists"
	.long	0x8f6
	.string	"add_library"
	.long	0x957
	.string	"add_object"
	.long	0x998
	.string	"add_ar_objects"
	.long	0x9cd
	.string	"append_objects_to_list"
	.long	0xa57
	.string	"append_cxx_prelinker_objects_to_list"
	.long	0xaa3
	.string	"append_ar_objects_to_list"
	.long	0xae4
	.string	"append_libraries_to_list"
	.long	0xb31
	.string	"dump_objects"
	.long	0xb50
	.string	"add_library_dir"
	.long	0xb87
	.string	"get_library_dirs"
	.long	0xbae
	.string	"add_library_options"
	.long	0xc59
	.string	"find_crt_path"
	.long	0xcb4
	.string	"is_maybe_linker_option"
	.long	0xcf6
	.string	"add_maybe_linker_option"
	.long	0xd35
	.string	"finalize_maybe_linker_options"
	.long	0x143c
	.string	"objects"
	.long	0x1452
	.string	"lib_objects"
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
.LASF1:
	.string	"_IO_FILE"
.LASF8:
	.string	"e_shentsize"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"e_shstrndx"
.LASF2:
	.string	"tmp_name"
.LASF7:
	.string	"e_phentsize"
.LASF6:
	.string	"e_ehsize"
.LASF3:
	.string	"slcc_name"
.LASF4:
	.string	"e_machine"
.LASF5:
	.string	"e_version"
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
