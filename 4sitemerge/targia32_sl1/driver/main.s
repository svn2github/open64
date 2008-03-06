	.file	"main.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 4
.LC0:
	.string	"$Source: /depot/CVSROOT/javi/src/sw/cmplr/driver/main.c,v $ $Revision: 1.1 $"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	rcs_id, @object
	.size	rcs_id, 4
rcs_id:
	.long	.LC0
.globl help_pattern
	.bss
	.align 4
	.type	help_pattern, @object
	.size	help_pattern, 4
help_pattern:
	.zero	4
.globl debug
	.align 4
	.type	debug, @object
	.size	debug, 4
debug:
	.zero	4
.globl nostdinc
	.data
	.align 4
	.type	nostdinc, @object
	.size	nostdinc, 4
nostdinc:
	.long	1
.globl show_version
	.bss
	.align 4
	.type	show_version, @object
	.size	show_version, 4
show_version:
	.zero	4
.globl show_copyright
	.align 4
	.type	show_copyright, @object
	.size	show_copyright, 4
show_copyright:
	.zero	4
.globl dump_version
	.align 4
	.type	dump_version, @object
	.size	dump_version, 4
dump_version:
	.zero	4
.globl parsing_default_options
	.align 4
	.type	parsing_default_options, @object
	.size	parsing_default_options, 4
parsing_default_options:
	.zero	4
.globl compiler_version
	.section	.rodata
	.type	compiler_version, @object
	.size	compiler_version, 5
compiler_version:
	.string	"7.40"
.LC1:
	.string	"%s: no input files\n"
.LC2:
	.string	"For general help: %s --help\n"
	.align 4
.LC3:
	.string	"To search help: %s -help:<string>\n"
	.text
	.type	no_args, @function
no_args:
.LFB15:
	.file 1 "../../driver/main.c"
	.loc 1 123 0
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
	.loc 1 124 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 125 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 126 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 127 0
	movl	$2, (%esp)
	call	do_exit@PLT
.LFE15:
	.size	no_args, .-no_args
	.section	.rodata
.LC4:
	.string	"-default_options"
.LC5:
	.string	"--"
.LC6:
	.string	"PSC_STRICT_GCC"
.LC7:
	.string	"unknown flag: %s"
.LC8:
	.string	"unknown flag"
.LC9:
	.string	""
	.align 4
.LC10:
	.string	"Open64 Compiler Suite: Version %s\n"
.LC11:
	.string	"-"
	.align 4
.LC12:
	.string	"unimplemented: code model medium not supported in PIC mode"
.LC13:
	.string	"user flags"
.LC14:
	.string	"x"
.LC15:
	.string	"with defaults"
	.align 4
.LC16:
	.string	"-fb_cdir cannot be used with -fbuse; -fb_cdir ignored"
.LC17:
	.string	".x.cfb"
.LC18:
	.string	"%s doesn't exist"
	.align 4
.LC19:
	.string	"-E or specified language required when input is from standard input"
.LC20:
	.string	"%s:\n"
.LC21:
	.string	"file does not exist:  %s"
	.align 4
.LC22:
	.string	"compiler not invoked with language of source file; will compile with %s but link with %s"
	.text
.globl main
	.type	main, @function
main:
.LFB16:
	.loc 1 132 0
	leal	4(%esp), %ecx
.LCFI4:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI5:
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%esi
.LCFI9:
	pushl	%ebx
.LCFI10:
	pushl	%ecx
.LCFI11:
	subl	$200, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -168(%ebp)
	.loc 1 137 0
	movl	$0, -44(%ebp)
	.loc 1 138 0
	movl	$0, -40(%ebp)
	.loc 1 149 0
	movl	-168(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %ecx
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	save_command_line@PLT
	.loc 1 150 0
	movl	-168(%ebp), %esi
	movl	4(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	movl	program_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 151 0
	movl	-168(%ebp), %edi
	movl	4(%edi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	orig_program_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 152 0
	movl	orig_program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	file_utils_set_program_name@PLT
	.loc 1 153 0
	call	init_string_list@PLT
	movl	%eax, files@GOTOFF(%ebx)
	.loc 1 154 0
	call	init_string_list@PLT
	movl	%eax, file_suffixes@GOTOFF(%ebx)
	.loc 1 155 0
	call	init_string_list@PLT
	movl	%eax, %edx
	movl	feedback_files@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 156 0
	call	init_options@PLT
	.loc 1 157 0
	call	init_temp_files@PLT
	.loc 1 158 0
	call	init_crash_reporting@PLT
	.loc 1 159 0
	call	init_count_files@PLT
	.loc 1 160 0
	call	init_option_seen@PLT
	.loc 1 161 0
	call	init_objects@PLT
	.loc 1 162 0
	call	init_error_list@PLT
	.loc 1 164 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_named_language@PLT
	movl	%eax, %edx
	movl	invoked_lang@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 176 0
	movl	-168(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %ecx
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	check_for_driver_controls@PLT
	.loc 1 194 0
	movl	dump_outfile_to_stdout@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 197 0
	call	init_phase_names@PLT
	.loc 1 199 0
	call	init_phase_info@PLT
	.loc 1 207 0
	movl	$10, 4(%esp)
	movl	$749, (%esp)
	call	remove_phase_for_option@PLT
	.loc 1 208 0
	movl	$10, 4(%esp)
	movl	$742, (%esp)
	call	remove_phase_for_option@PLT
	.loc 1 214 0
	movl	-168(%ebp), %esi
	movl	4(%esi), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %edi
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	prescan_options
	.loc 1 216 0
	movl	$1, -64(%ebp)
	.loc 1 217 0
	jmp	.L157
.L5:
	.loc 1 218 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %edx
	addl	4(%edx), %eax
	movl	(%eax), %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 223 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -172(%ebp)
	leal	.LC4@GOTOFF(%ebx), %ecx
	movl	%ecx, -176(%ebp)
	movl	$17, -180(%ebp)
	cld
	movl	-172(%ebp), %esi
	movl	-176(%ebp), %edi
	movl	-180(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L6
	.loc 1 224 0
	movl	parsing_default_options@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 225 0
	movl	-64(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -64(%ebp)
	.loc 1 226 0
	jmp	.L4
.L6:
	.loc 1 229 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	set_current_arg_pos@PLT
	.loc 1 230 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %esi
	addl	4(%esi), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L8
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L8
	.loc 1 231 0
	movl	-168(%ebp), %edi
	movl	4(%edi), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option@PLT
	movl	%eax, -60(%ebp)
	.loc 1 232 0
	cmpl	$0, -60(%ebp)
	jne	.L11
	.loc 1 233 0
	movl	print_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L20
	.loc 1 241 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -184(%ebp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -188(%ebp)
	movl	$2, -192(%ebp)
	cld
	movl	-184(%ebp), %esi
	movl	-188(%ebp), %edi
	movl	-192(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L15
	.loc 1 242 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L20
.L15:
	.loc 1 245 0
	movl	$492, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L17
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	testl	%eax, %eax
	je	.L19
.L17:
	.loc 1 248 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 245 0
	jmp	.L20
.L19:
	.loc 1 251 0
	movl	option_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	parse_error@PLT
	jmp	.L20
.L11:
	.loc 1 258 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, %edx
	movl	option_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L20:
	.loc 1 261 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_real_option_if_aliased@PLT
	movl	%eax, -60(%ebp)
	.loc 1 264 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	is_derived_option@PLT
	testl	%eax, %eax
	je	.L21
	.loc 1 265 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_derived_parent@PLT
	movl	%eax, -56(%ebp)
	.loc 1 267 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	get_real_option_if_aliased@PLT
	movl	%eax, -56(%ebp)
	jmp	.L23
.L21:
	.loc 1 270 0
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
.L23:
	.loc 1 273 0
	movl	drop_option@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 276 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	opt_action@PLT
	.loc 1 279 0
	movl	drop_option@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L4
	.loc 1 280 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	is_maybe_linker_option@PLT
	testl	%eax, %eax
	je	.L26
	.loc 1 281 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	add_maybe_linker_option@PLT
	jmp	.L4
.L26:
	.loc 1 282 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	is_object_option@PLT
	testl	%eax, %eax
	je	.L28
	.loc 1 284 0
	movl	optargs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	add_object@PLT
	.loc 1 285 0
	movl	source_kind@GOT(%ebx), %eax
	movl	$16, (%eax)
	jmp	.L4
.L28:
	.loc 1 288 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
	.loc 1 230 0
	jmp	.L4
.L8:
	.loc 1 293 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %esi
	addl	4(%esi), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L30
	.loc 1 294 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %edi
	addl	4(%edi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	check_old_CC_options
	.loc 1 295 0
	movl	-64(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -64(%ebp)
	jmp	.L4
.L30:
	.loc 1 297 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %edx
	addl	4(%edx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_source_kind@PLT
	movl	%eax, %edx
	movl	source_kind@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 299 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	jne	.L32
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$16, %eax
	jne	.L32
	.loc 1 301 0
	movl	source_kind@GOT(%ebx), %eax
	movl	$1, (%eax)
.L32:
	.loc 1 303 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$16, %eax
	jne	.L35
	.loc 1 305 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %ecx
	addl	4(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	add_object@PLT
	.loc 1 308 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %esi
	addl	4(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	add_ar_objects@PLT
	jmp	.L37
.L35:
.LBB2:
	.loc 1 317 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %edi
	addl	4(%edi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_object_file@PLT
	movl	%eax, -36(%ebp)
	.loc 1 318 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	add_object@PLT
	.loc 1 319 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	add_ar_objects@PLT
	.loc 1 320 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	-168(%ebp), %edx
	addl	4(%edx), %eax
	movl	(%eax), %eax
	movl	files@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 332 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_suffix_string@PLT
	movl	file_suffixes@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 334 0
	addl	$1, -44(%ebp)
.L37:
.LBE2:
	.loc 1 336 0
	movl	$1, (%esp)
	call	cancel_saved_arg@PLT
	.loc 1 337 0
	movl	-64(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -64(%ebp)
.L4:
.L157:
	.loc 1 217 0
	movl	-64(%ebp), %eax
	movl	-168(%ebp), %ecx
	cmpl	(%ecx), %eax
	jl	.L5
	.loc 1 343 0
	cmpl	$0, -44(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	finalize_maybe_linker_options@PLT
	.loc 1 347 0
	cmpl	$0, -44(%ebp)
	jle	.L39
	cmpl	$0, -40(%ebp)
	je	.L39
	.loc 1 349 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_error@PLT
.L39:
	.loc 1 353 0
	call	Check_Target@PLT
	.loc 1 355 0
	movl	dump_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 356 0
	movl	$492, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L44
	.loc 1 357 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L42
.L44:
	.loc 1 359 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L42:
	.loc 1 362 0
	movl	show_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 365 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	compiler_version@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L46:
	.loc 1 378 0
	movl	$88, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L48
	.loc 1 380 0
	movl	$0, (%esp)
	call	do_exit@PLT
.L48:
	.loc 1 383 0
	movl	-168(%ebp), %esi
	cmpl	$1, (%esi)
	jne	.L50
	.loc 1 385 0
	call	no_args
.L50:
	.loc 1 388 0
	movl	$227, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$799, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L52
	movl	help_pattern@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L55
.L52:
	.loc 1 391 0
	call	print_help_msg
.L55:
	.loc 1 393 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L56
	movl	show_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L56
	.loc 1 394 0
	movl	$0, (%esp)
	call	do_exit@PLT
.L56:
	.loc 1 396 0
	movl	dump_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L59
	.loc 1 397 0
	movl	$0, (%esp)
	call	do_exit@PLT
.L59:
	.loc 1 399 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L61
	.loc 1 400 0
	movl	show_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L63
	.loc 1 401 0
	movl	$0, (%esp)
	call	do_exit@PLT
.L63:
	.loc 1 403 0
	movl	read_stdin@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 404 0
	movl	source_file@GOT(%ebx), %eax
	leal	.LC11@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	.loc 1 405 0
	movl	$742, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L67
	.loc 1 409 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L61
	.loc 1 411 0
	movl	source_lang@GOT(%ebx), %eax
	movl	$2, (%eax)
	jmp	.L61
.L67:
.LBB3:
	.loc 1 413 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_source_kind@PLT
	movl	%eax, %edx
	movl	source_kind@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 414 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	source_lang@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 417 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fix_name_by_lang@PLT
	movl	%eax, (%esp)
	call	get_object_file@PLT
	movl	%eax, -32(%ebp)
	.loc 1 418 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	add_object@PLT
	jmp	.L61
.L65:
.LBE3:
	.loc 1 421 0
	movl	show_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L72
	.loc 1 422 0
	movl	$0, (%esp)
	call	do_exit@PLT
.L72:
	.loc 1 425 0
	call	no_args
.L61:
	.loc 1 432 0
	call	first_option_seen@PLT
	movl	%eax, -64(%ebp)
	jmp	.L74
.L75:
	.loc 1 433 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	current_option_seen_later@PLT
	testl	%eax, %eax
	je	.L76
	.loc 1 434 0
	call	set_current_option_unseen@PLT
	jmp	.L78
.L76:
	.loc 1 435 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	flag_is_superceded@PLT
	testl	%eax, %eax
	je	.L78
	.loc 1 436 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	set_option_unseen@PLT
.L78:
	.loc 1 432 0
	call	next_option_seen@PLT
	movl	%eax, -64(%ebp)
.L74:
	call	more_option_seen@PLT
	testl	%eax, %eax
	jne	.L75
	.loc 1 441 0
	call	check_for_combos@PLT
	.loc 1 443 0
	call	check_for_combos@PLT
	.loc 1 444 0
	movl	$299, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$435, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L83
.L81:
	movl	mem_model@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L83
	.loc 1 447 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L83:
	.loc 1 468 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 469 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_args
.L85:
	.loc 1 471 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L87
	.loc 1 472 0
	call	save_ipl_commands@PLT
.L87:
	.loc 1 475 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L89
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -196(%ebp)
	leal	.LC11@GOTOFF(%ebx), %edi
	movl	%edi, -200(%ebp)
	movl	$2, -204(%ebp)
	cld
	movl	-196(%ebp), %esi
	movl	-200(%ebp), %edi
	movl	-204(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L89
	.loc 1 477 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_temp_file_name@PLT
	movl	%eax, %edx
	movl	outfile@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 478 0
	movl	dump_outfile_to_stdout@GOT(%ebx), %eax
	movl	$1, (%eax)
.L89:
	.loc 1 483 0
	movl	feedback_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L92
	movl	cordflag@GOT(%ebx), %eax
	movl	$1, (%eax)
.L92:
	.loc 1 486 0
	movl	cordflag@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L94
	.loc 1 487 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$39, (%esp)
	call	earliest_phase@PLT
	movl	%eax, %edx
	movl	last_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L94:
	.loc 1 491 0
	call	mark_used
	.loc 1 494 0
	call	toggle_implicits@PLT
	.loc 1 497 0
	call	set_defaults@PLT
	.loc 1 499 0
	cmpl	$1, -44(%ebp)
	jle	.L96
	.loc 1 500 0
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	$1, (%eax)
.L96:
	.loc 1 503 0
	call	check_makedepend_flags
	.loc 1 504 0
	call	add_library_options@PLT
	.loc 1 505 0
	call	add_special_options@PLT
	.loc 1 507 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L98
	.loc 1 508 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	dump_args
	.loc 1 509 0
	call	dump_objects@PLT
.L98:
	.loc 1 511 0
	call	has_errors@PLT
	testl	%eax, %eax
	je	.L100
	movl	error_status@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L102
.L100:
	.loc 1 513 0
	call	catch_signals@PLT
	.loc 1 514 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 520 0
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L103
	movl	$511, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L105
.L103:
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$39, %eax
	jne	.L105
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L107
.L105:
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$41, %eax
	jne	.L108
.L107:
	.loc 1 529 0
	movl	last_phase@GOT(%ebx), %eax
	movl	$33, (%eax)
	.loc 1 530 0
	call	add_minus_c_option@PLT
.L108:
	.loc 1 533 0
	movl	Use_feedback@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L109
.LBB4:
	.loc 1 537 0
	movl	$1, -20(%ebp)
	.loc 1 539 0
	movl	fb_cdir@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L111
	.loc 1 540 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L111:
	.loc 1 541 0
	movl	prof_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	fb_file@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	save_name@PLT
	.loc 1 542 0
	movl	fb_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	je	.L113
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L115
.L113:
	.loc 1 543 0
	movl	-88(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 542 0
	jmp	.L116
.L115:
	.loc 1 545 0
	movl	$0, -20(%ebp)
.L116:
	.loc 1 546 0
	movl	count_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	je	.L117
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L119
.L117:
	.loc 1 547 0
	movl	-88(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 546 0
	jmp	.L120
.L119:
	.loc 1 549 0
	movl	count_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 550 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L120:
	.loc 1 553 0
	cmpl	$0, -20(%ebp)
	je	.L121
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jg	.L109
.L121:
	.loc 1 554 0
	call	run_prof@PLT
.L109:
.LBE4:
	.loc 1 557 0
	movl	read_stdin@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L123
	.loc 1 558 0
	movl	$742, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L125
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L127
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$16, %eax
	je	.L127
.L125:
	.loc 1 561 0
	movl	-168(%ebp), %esi
	movl	4(%esi), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %edi
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	run_compiler@PLT
	.loc 1 558 0
	jmp	.L129
.L127:
	.loc 1 564 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L129:
	.loc 1 566 0
	call	cleanup@PLT
	.loc 1 567 0
	movl	error_status@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L102
.L123:
	.loc 1 570 0
	movl	files@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	file_suffixes@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L130
.L131:
	.loc 1 572 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	source_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 573 0
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L132
	.loc 1 574 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L132:
	.loc 1 576 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L134
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L134
	.loc 1 577 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 578 0
	jmp	.L137
.L134:
	.loc 1 580 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_source_kind_from_suffix@PLT
	movl	%eax, %edx
	movl	source_kind@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 581 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_source_lang@PLT
	movl	%eax, %edx
	movl	source_lang@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 582 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L138
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L138
	movl	fullwarn@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L141
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L138
.L141:
	.loc 1 586 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_lang_name@PLT
	movl	%eax, %esi
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_lang_name@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L138:
	.loc 1 588 0
	movl	-168(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-168(%ebp), %ecx
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	run_compiler@PLT
	.loc 1 589 0
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L137
	call	cleanup@PLT
.L137:
	.loc 1 570 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L130:
	cmpl	$0, -52(%ebp)
	jne	.L131
	.loc 1 591 0
	call	has_errors@PLT
	testl	%eax, %eax
	je	.L145
	.loc 1 592 0
	call	cleanup@PLT
	.loc 1 593 0
	call	cleanup_temp_objects@PLT
	.loc 1 594 0
	movl	error_status@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -164(%ebp)
	jmp	.L102
.L145:
	.loc 1 597 0
	cmpl	$0, -44(%ebp)
	je	.L147
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L149
.L147:
	.loc 1 599 0
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	last_phase@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 600 0
	movl	source_file@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 601 0
	movl	source_kind@GOT(%ebx), %eax
	movl	$16, (%eax)
	.loc 1 602 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_source_lang@PLT
	movl	%eax, %edx
	movl	source_lang@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 614 0
	movl	$511, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L150
	.loc 1 615 0
	call	run_ar@PLT
	jmp	.L152
.L150:
	.loc 1 618 0
	call	run_ld@PLT
.L152:
	.loc 1 620 0
	movl	Gen_feedback@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L149
	.loc 1 621 0
	call	run_pixie@PLT
.L149:
	.loc 1 623 0
	movl	dump_outfile_to_stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L154
	.loc 1 624 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_file_to_stdout@PLT
.L154:
	.loc 1 625 0
	call	cleanup@PLT
	.loc 1 626 0
	call	cleanup_temp_objects@PLT
	.loc 1 627 0
	movl	error_status@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -164(%ebp)
.L102:
	movl	-164(%ebp), %eax
	.loc 1 628 0
	addl	$200, %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE16:
	.size	main, .-main
	.section	.rodata
.LC23:
	.string	"bin"
.LC24:
	.string	"//bin"
.LC25:
	.string	"/usr/bin"
.LC26:
	.string	"/lib/"
.LC27:
	.string	"/usr/lib"
.LC28:
	.string	"/usr/lib/cc-lib"
.LC29:
	.string	"/include"
.LC30:
	.string	"/usr/include"
.LC31:
	.string	"/lib/gcc-lib"
	.text
	.type	set_executable_dir, @function
set_executable_dir:
.LFB17:
	.loc 1 630 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%edi
.LCFI15:
	pushl	%esi
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$44, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 639 0
	call	get_executable_dir@PLT
	movl	%eax, -28(%ebp)
	.loc 1 640 0
	cmpl	$0, -28(%ebp)
	je	.L168
	.loc 1 653 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, -20(%ebp)
	.loc 1 654 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	.LC23@GOTOFF(%ebx), %eax
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
	jne	.L161
.LBB5:
	.loc 1 655 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	directory_path@PLT
	movl	%eax, -16(%ebp)
	.loc 1 661 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 662 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 663 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 666 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 667 0
	jmp	.L168
.L161:
.LBE5:
	.loc 1 671 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 672 0
	cmpl	$0, -20(%ebp)
	je	.L168
	.loc 1 673 0
	movl	-20(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L164
	.loc 1 675 0
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	addl	$4, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	substring_copy@PLT
	movl	%eax, -20(%ebp)
	.loc 1 676 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 677 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 682 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	jmp	.L168
.L164:
	.loc 1 683 0
	movl	-20(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L168
	.loc 1 685 0
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	addl	$4, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	substring_copy@PLT
	movl	%eax, -20(%ebp)
	.loc 1 686 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 687 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 691 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
	.loc 1 693 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	substitute_phase_dirs@PLT
.L168:
	.loc 1 698 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	set_executable_dir, .-set_executable_dir
	.section	.rodata
.LC32:
	.string	"+I"
.LC33:
	.string	"-keep"
.LC34:
	.string	"+L"
.LC35:
	.string	"+d"
.LC36:
	.string	"-INLINE:none"
.LC37:
	.string	"+p"
.LC38:
	.string	"+pc"
.LC39:
	.string	"+pa"
	.align 4
.LC40:
	.string	"the effect of +p is now the default (see -anach and -cfront)"
.LC41:
	.string	"+v"
.LC42:
	.string	"-show"
.LC43:
	.string	"+w"
.LC44:
	.string	"-fullwarn"
.LC45:
	.string	"+a0"
.LC46:
	.string	"+a1"
.LC47:
	.string	"bad syntax"
	.text
	.type	check_old_CC_options, @function
check_old_CC_options:
.LFB18:
	.loc 1 702 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%edi
.LCFI21:
	pushl	%esi
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$140, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 703 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$3, -24(%ebp)
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
	jne	.L170
	.loc 1 704 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_supported2@PLT
	jmp	.L189
.L170:
	.loc 1 705 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	leal	.LC34@GOTOFF(%ebx), %esi
	movl	%esi, -32(%ebp)
	movl	$3, -36(%ebp)
	cld
	movl	-28(%ebp), %esi
	movl	-32(%ebp), %edi
	movl	-36(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L173
	.loc 1 706 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_supported@PLT
	jmp	.L189
.L173:
	.loc 1 707 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	leal	.LC35@GOTOFF(%ebx), %esi
	movl	%esi, -44(%ebp)
	movl	$3, -48(%ebp)
	cld
	movl	-40(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L175
	.loc 1 708 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_supported2@PLT
	jmp	.L189
.L175:
	.loc 1 709 0
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	leal	.LC37@GOTOFF(%ebx), %esi
	movl	%esi, -56(%ebp)
	movl	$3, -60(%ebp)
	cld
	movl	-52(%ebp), %esi
	movl	-56(%ebp), %edi
	movl	-60(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L177
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
	leal	.LC38@GOTOFF(%ebx), %esi
	movl	%esi, -68(%ebp)
	movl	$4, -72(%ebp)
	cld
	movl	-64(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-72(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L177
	movl	8(%ebp), %eax
	movl	%eax, -76(%ebp)
	leal	.LC39@GOTOFF(%ebx), %esi
	movl	%esi, -80(%ebp)
	movl	$4, -84(%ebp)
	cld
	movl	-76(%ebp), %esi
	movl	-80(%ebp), %edi
	movl	-84(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L180
.L177:
	.loc 1 712 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_ignored@PLT
	.loc 1 713 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 709 0
	jmp	.L189
.L180:
	.loc 1 714 0
	movl	8(%ebp), %eax
	movl	%eax, -88(%ebp)
	leal	.LC41@GOTOFF(%ebx), %esi
	movl	%esi, -92(%ebp)
	movl	$3, -96(%ebp)
	cld
	movl	-88(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	-96(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L181
	.loc 1 715 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_supported2@PLT
	jmp	.L189
.L181:
	.loc 1 716 0
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	leal	.LC43@GOTOFF(%ebx), %esi
	movl	%esi, -104(%ebp)
	movl	$3, -108(%ebp)
	cld
	movl	-100(%ebp), %esi
	movl	-104(%ebp), %edi
	movl	-108(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L183
	.loc 1 717 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_supported2@PLT
	jmp	.L189
.L183:
	.loc 1 718 0
	movl	8(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	.LC45@GOTOFF(%ebx), %esi
	movl	%esi, -116(%ebp)
	movl	$4, -120(%ebp)
	cld
	movl	-112(%ebp), %esi
	movl	-116(%ebp), %edi
	movl	-120(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L185
	.loc 1 719 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_supported@PLT
	jmp	.L189
.L185:
	.loc 1 720 0
	movl	8(%ebp), %eax
	movl	%eax, -124(%ebp)
	leal	.LC46@GOTOFF(%ebx), %esi
	movl	%esi, -128(%ebp)
	movl	$4, -132(%ebp)
	cld
	movl	-124(%ebp), %esi
	movl	-128(%ebp), %edi
	movl	-132(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L187
	.loc 1 721 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_no_longer_supported@PLT
	jmp	.L189
.L187:
	.loc 1 723 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_error@PLT
.L189:
	.loc 1 725 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	check_old_CC_options, .-check_old_CC_options
	.type	check_makedepend_flags, @function
check_makedepend_flags:
.LFB19:
	.loc 1 734 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%edi
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$32, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 736 0
	movl	$714, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L200
	.loc 1 737 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L193
	.loc 1 742 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$715, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	.loc 1 743 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
.L193:
	.loc 1 745 0
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L200
	movl	files@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L200
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$39, %eax
	jne	.L200
	.loc 1 750 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L198
.LBB6:
	.loc 1 751 0
	movl	files@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	change_suffix@PLT
	movl	%eax, -12(%ebp)
	.loc 1 752 0
	movl	-12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-12(%ebp), %eax
	subl	$1, %eax
	movb	$0, (%eax)
	.loc 1 753 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$715, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	.loc 1 754 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
.L198:
.LBE6:
	.loc 1 756 0
	movl	files@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_object_file@PLT
	movl	%eax, 4(%esp)
	movl	$716, (%esp)
	call	add_string_option@PLT
	movl	%eax, -16(%ebp)
	.loc 1 758 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_seen@PLT
.L200:
	.loc 1 761 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	check_makedepend_flags, .-check_makedepend_flags
	.type	mark_used, @function
mark_used:
.LFB20:
	.loc 1 766 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$36, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 770 0
	call	first_option@PLT
	movl	%eax, -12(%ebp)
	jmp	.L202
.L203:
	.loc 1 771 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L204
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	option_was_implicitly_seen@PLT
	testl	%eax, %eax
	jne	.L204
	.loc 1 772 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	first_implied_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L207
.L208:
	.loc 1 773 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L209
	.loc 1 776 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_option_implicitly_seen@PLT
	.loc 1 777 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_object_option@PLT
	testl	%eax, %eax
	je	.L209
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	option_matches_language@PLT
	testl	%eax, %eax
	je	.L209
	.loc 1 785 0
	call	get_current_implied_name@PLT
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	add_object@PLT
.L209:
	.loc 1 772 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_implied_option@PLT
	movl	%eax, -8(%ebp)
.L207:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	no_more_implied_options@PLT
	testl	%eax, %eax
	je	.L208
.L204:
	.loc 1 770 0
	call	next_option@PLT
	movl	%eax, -12(%ebp)
.L202:
	call	no_more_options@PLT
	testl	%eax, %eax
	je	.L203
	.loc 1 790 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	mark_used, .-mark_used
	.section	.rodata
.LC48:
	.string	"usage:  %s <options> <files>\n"
	.align 4
.LC49:
	.string	"available options that contain %s:\n"
.LC50:
	.string	"available options:\n"
.LC51:
	.string	"\t%s:  %s\n"
	.align 4
.LC52:
	.string	"The environment variable OPEN64_CC is also checked\n"
	.text
	.type	print_help_msg, @function
print_help_msg:
.LFB21:
	.loc 1 794 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$36, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 798 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 799 0
	movl	help_pattern@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L216
	.loc 1 800 0
	movl	help_pattern@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L218
.L216:
	.loc 1 802 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$19, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L218:
	.loc 1 804 0
	call	first_option@PLT
	movl	%eax, -16(%ebp)
	jmp	.L219
.L220:
	.loc 1 805 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_help@PLT
	movl	%eax, -12(%ebp)
	.loc 1 806 0
	cmpl	$0, -12(%ebp)
	je	.L221
	.loc 1 807 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	option_matches_language@PLT
	testl	%eax, %eax
	je	.L221
	.loc 1 808 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 810 0
	movl	help_pattern@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L224
	movl	help_pattern@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	jne	.L224
	movl	help_pattern@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L221
.L224:
	.loc 1 816 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L221:
	.loc 1 804 0
	call	next_option@PLT
	movl	%eax, -16(%ebp)
.L219:
	call	no_more_options@PLT
	testl	%eax, %eax
	je	.L220
	.loc 1 820 0
	movl	help_pattern@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L228
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L228
	.loc 1 821 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$51, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L228:
	.loc 1 823 0
	movl	$0, (%esp)
	call	do_exit@PLT
.LFE21:
	.size	print_help_msg, .-print_help_msg
	.section	.rodata
.LC53:
	.string	"dump args %s: "
.LC54:
	.string	" %s"
	.text
	.type	dump_args, @function
dump_args:
.LFB22:
	.loc 1 828 0
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
	.loc 1 830 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 831 0
	call	first_option_seen@PLT
	movl	%eax, -12(%ebp)
	jmp	.L233
.L234:
	.loc 1 832 0
	cmpl	$0, -12(%ebp)
	je	.L235
	.loc 1 837 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_replacement_combo@PLT
	testl	%eax, %eax
	je	.L237
.LBB7:
	.loc 1 839 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	first_implied_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L239
.L240:
	.loc 1 840 0
	call	get_current_implied_name@PLT
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 839 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_implied_option@PLT
	movl	%eax, -8(%ebp)
.L239:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	no_more_implied_options@PLT
	testl	%eax, %eax
	je	.L240
	jmp	.L235
.L237:
.LBE7:
	.loc 1 843 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L235:
	.loc 1 831 0
	call	next_option_seen@PLT
	movl	%eax, -12(%ebp)
.L233:
	call	more_option_seen@PLT
	testl	%eax, %eax
	jne	.L234
	.loc 1 846 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 847 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	dump_args, .-dump_args
.globl do_exit
	.type	do_exit, @function
do_exit:
.LFB23:
	.loc 1 856 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$4, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 857 0
	cmpl	$0, 8(%ebp)
	je	.L245
	.loc 1 858 0
	movl	$1, 8(%ebp)
.L245:
	.loc 1 861 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	exit@PLT
.LFE23:
	.size	do_exit, .-do_exit
	.section	.rodata
.LC55:
	.string	"assembler"
.LC56:
	.string	"assembler-with-cpp"
.LC57:
	.string	"c"
.LC58:
	.string	"c++"
.LC59:
	.string	"c++-cpp-output"
.LC60:
	.string	"c++-header"
.LC61:
	.string	"c-header"
.LC62:
	.string	"cpp-output"
.LC63:
	.string	"f77"
.LC64:
	.string	"f77-cpp-input"
.LC65:
	.string	"f90"
.LC66:
	.string	"f90-cpp-input"
.LC67:
	.string	"f95"
.LC68:
	.string	"f95-cpp-input"
.LC69:
	.string	"none"
.LC70:
	.string	"ratfor"
	.section	.data.rel.local
	.align 32
	.type	explicit_langs, @object
	.size	explicit_langs, 204
explicit_langs:
	.long	.LC55
	.long	10
	.long	7
	.long	.LC56
	.long	11
	.long	7
	.long	.LC57
	.long	1
	.long	3
	.long	.LC58
	.long	2
	.long	4
	.long	.LC59
	.long	9
	.long	4
	.long	.LC60
	.long	2
	.long	4
	.long	.LC61
	.long	1
	.long	3
	.long	.LC62
	.long	8
	.long	3
	.long	.LC63
	.long	5
	.long	5
	.long	.LC64
	.long	8
	.long	5
	.long	.LC65
	.long	5
	.long	6
	.long	.LC66
	.long	8
	.long	6
	.long	.LC67
	.long	5
	.long	6
	.long	.LC68
	.long	8
	.long	6
	.long	.LC69
	.long	0
	.long	0
	.long	.LC70
	.long	7
	.long	5
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC71:
	.string	"Unknown language"
	.text
.globl set_explicit_lang
	.type	set_explicit_lang, @function
set_explicit_lang:
.LFB24:
	.loc 1 889 0
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
	.loc 1 892 0
	leal	explicit_langs@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L249
.L250:
	.loc 1 893 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L251
	.loc 1 894 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	ignore_suffix@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 895 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	default_source_kind@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	default_source_kind@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	source_kind@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 896 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	source_lang@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 897 0
	jmp	.L253
.L251:
	.loc 1 892 0
	addl	$12, -8(%ebp)
.L249:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L250
.L253:
	.loc 1 901 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L256
	.loc 1 902 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_error@PLT
	.loc 1 903 0
	movl	$2, (%esp)
	call	do_exit@PLT
.L256:
	.loc 1 905 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	set_explicit_lang, .-set_explicit_lang
	.section	.rodata
.LC72:
	.string	"-ipa"
.LC73:
	.string	"-Ofast"
.LC74:
	.string	"-save_temps"
.LC75:
	.string	"-compat-gcc"
.LC76:
	.string	"-S"
.LC77:
	.string	"-fbgen"
.LC78:
	.string	"-g"
.LC79:
	.string	"-g1"
.LC80:
	.string	"-g2"
.LC81:
	.string	"-g3"
.LC82:
	.string	"-gdwarf-2"
.LC83:
	.string	"-gdwarf-21"
.LC84:
	.string	"-gdwarf-22"
.LC85:
	.string	"-gdwarf-23"
.LC86:
	.string	"-ggdb"
.LC87:
	.string	"-ggdb3"
	.align 4
.LC88:
	.string	"%s %s combination not allowed, replaced with %s"
.LC89:
	.string	"-dummy"
	.text
	.type	prescan_options, @function
prescan_options:
.LFB25:
	.loc 1 910 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$260, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -232(%ebp)
	.loc 1 910 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 911 0
	movl	$0, -220(%ebp)
	.loc 1 912 0
	movl	$0, -216(%ebp)
	.loc 1 915 0
	movl	$1, -212(%ebp)
	jmp	.L258
.L259:
	.loc 1 916 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	je	.L260
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L262
.L260:
	.loc 1 918 0
	movl	ipa@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 916 0
	jmp	.L263
.L262:
	.loc 1 919 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L264
	.loc 1 920 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L263
.L264:
	.loc 1 921 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L266
	.loc 1 922 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L263
.L266:
	.loc 1 923 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L268
	.loc 1 924 0
	movl	compat_gcc@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L263
.L268:
	.loc 1 925 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L270
	.loc 1 926 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
	jmp	.L263
.L270:
	.loc 1 927 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L272
	.loc 1 928 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
	jmp	.L263
.L272:
	.loc 1 929 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L263
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$103, %al
	jne	.L263
	.loc 1 930 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L276
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L263
.L276:
	.loc 1 940 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
.L263:
	.loc 1 915 0
	addl	$1, -212(%ebp)
.L258:
	movl	-212(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L259
	.loc 1 948 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L295
	cmpl	$0, -216(%ebp)
	je	.L295
.LBB8:
	.loc 1 951 0
	movl	$1, -212(%ebp)
	jmp	.L290
.L291:
	.loc 1 952 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	je	.L292
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L294
.L292:
	.loc 1 954 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	(%eax), %edx
	movl	-216(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-216(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 956 0
	leal	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 957 0
	movl	ipa@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 958 0
	movl	-212(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-232(%ebp), %edx
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
.L294:
	.loc 1 951 0
	addl	$1, -212(%ebp)
.L290:
	movl	-212(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L291
.L295:
.LBE8:
	.loc 1 962 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L296
	call	__stack_chk_fail_local
.L296:
	addl	$260, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	prescan_options, .-prescan_options
	.section	.rodata
	.align 4
.LC90:
	.string	"Optimization level and compilation target:\n  "
.LC91:
	.string	" -O2"
.LC92:
	.string	" -O%d"
.LC93:
	.string	" -mcpu=%s"
.LC94:
	.string	"no default target cpu"
.LC95:
	.string	" -m32"
.LC96:
	.string	" -m64"
.LC97:
	.string	"unknown default ABI"
.LC98:
	.string	" -msse"
.LC99:
	.string	"-msse2"
.LC100:
	.string	"-mno-sse2"
.LC101:
	.string	"-msse3"
.LC102:
	.string	"-mno-sse3"
.LC103:
	.string	"-m3dnow"
.LC104:
	.string	"-mno-3dnow"
	.align 4
.LC105:
	.string	"Options from compiler.defaults file:\n  "
	.text
	.type	print_defaults, @function
print_defaults:
.LFB26:
	.loc 1 966 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$52, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 970 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$45, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 973 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L298
	.loc 1 974 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L300
.L298:
	.loc 1 976 0
	movl	olevel@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L300:
	.loc 1 979 0
	movl	target_cpu@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L301
	.loc 1 980 0
	movl	target_cpu@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L303
.L301:
	.loc 1 982 0
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L303:
	.loc 1 985 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$1, -36(%ebp)
	je	.L305
	cmpl	$2, -36(%ebp)
	je	.L306
	jmp	.L304
.L305:
	.loc 1 986 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L307
.L306:
	.loc 1 987 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L307
.L304:
	.loc 1 988 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L307:
	.loc 1 992 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 993 0
	movl	sse2@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L308
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L310
.L308:
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.L310:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 994 0
	movl	sse3@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L311
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L313
.L311:
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L313:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 995 0
	movl	m3dnow@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L314
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L316
.L314:
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L316:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 997 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1000 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1001 0
	movl	$0, -8(%ebp)
	.loc 1 1002 0
	movl	$0, -12(%ebp)
	jmp	.L317
.L318:
	.loc 1 1003 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L319
	.loc 1 1004 0
	movl	$1, -8(%ebp)
	jmp	.L321
.L319:
	.loc 1 1005 0
	cmpl	$1, -8(%ebp)
	jne	.L321
	.loc 1 1006 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L321:
	.loc 1 1002 0
	addl	$1, -12(%ebp)
.L317:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L318
	.loc 1 1009 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1010 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	print_defaults, .-print_defaults
	.type	read_compiler_defaults, @function
read_compiler_defaults:
.LFB27:
	.loc 1 1014 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$1044, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -1032(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -1036(%ebp)
	.loc 1 1014 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1015 0
	movl	$0, -1024(%ebp)
	.loc 1 1017 0
	jmp	.L326
.L327:
.LBB9:
	.loc 1 1019 0
	movl	$0, -1016(%ebp)
	.loc 1 1020 0
	movl	$0, -1012(%ebp)
	.loc 1 1021 0
	leal	-1008(%ebp), %eax
	movl	%eax, -1020(%ebp)
.L328:
	.loc 1 1023 0
	movl	-1020(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	je	.L329
	movl	-1020(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	je	.L329
	movl	-1020(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L332
.L329:
	.loc 1 1024 0
	movl	$1, -1012(%ebp)
	.loc 1 1025 0
	movl	-1020(%ebp), %eax
	movb	$0, (%eax)
.L332:
	.loc 1 1027 0
	movl	-1020(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L333
	movl	-1020(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	je	.L333
	movl	-1020(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L336
.L333:
	.loc 1 1029 0
	cmpl	$0, -1016(%ebp)
	je	.L339
	.loc 1 1030 0
	movl	-1020(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1031 0
	movl	-1016(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-1036(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1032 0
	addl	$1, -1024(%ebp)
	.loc 1 1033 0
	movl	$0, -1016(%ebp)
	.loc 1 1027 0
	jmp	.L339
.L336:
	.loc 1 1037 0
	cmpl	$0, -1016(%ebp)
	jne	.L339
	.loc 1 1038 0
	movl	-1020(%ebp), %eax
	movl	%eax, -1016(%ebp)
.L339:
	.loc 1 1041 0
	cmpl	$0, -1012(%ebp)
	jne	.L326
	.loc 1 1021 0
	addl	$1, -1020(%ebp)
	.loc 1 1043 0
	jmp	.L328
.L326:
.LBE9:
	.loc 1 1017 0
	movl	-1032(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$999, 4(%esp)
	leal	-1008(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	testl	%eax, %eax
	jne	.L327
	.loc 1 1045 0
	movl	-1024(%ebp), %eax
	.loc 1 1046 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L344
	call	__stack_chk_fail_local
.L344:
	addl	$1044, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	read_compiler_defaults, .-read_compiler_defaults
	.section	.rodata
.LC106:
	.string	"PSC_COMPILER_DEFAULTS_PATH"
.LC107:
	.string	"%.*s/etc"
.LC108:
	.string	"r"
	.text
	.type	append_default_options, @function
append_default_options:
.LFB28:
	.loc 1 1051 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%edi
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$1088, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -1068(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -1072(%ebp)
	.loc 1 1051 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 1053 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -1060(%ebp)
	.loc 1 1054 0
	movl	$0, -1056(%ebp)
	.loc 1 1055 0
	call	init_string_list@PLT
	movl	%eax, -1052(%ebp)
	.loc 1 1057 0
	movl	-1060(%ebp), %eax
	testl	%eax, %eax
	jne	.L348
.LBB10:
	.loc 1 1058 0
	call	get_executable_dir@PLT
	movl	%eax, -1048(%ebp)
	.loc 1 1059 0
	movl	-1048(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -1076(%ebp)
	movl	$0, %eax
	cld
	movl	-1076(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	-4(%eax), %edx
	movl	-1048(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-1060(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1065 0
	jmp	.L348
.L349:
.LBE10:
.LBB11:
	.loc 1 1067 0
	movl	-1060(%ebp), %eax
	movl	%eax, -1040(%ebp)
	.loc 1 1068 0
	movl	-1040(%ebp), %eax
	movl	%eax, -1044(%ebp)
.L350:
	.loc 1 1069 0
	movl	-1044(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L351
	.loc 1 1070 0
	movl	$0, -1060(%ebp)
	.loc 1 1071 0
	jmp	.L353
.L351:
	.loc 1 1072 0
	movl	-1044(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	.L354
	.loc 1 1073 0
	movl	-1044(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1074 0
	movl	-1044(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -1060(%ebp)
	.loc 1 1075 0
	jmp	.L353
.L354:
	.loc 1 1068 0
	addl	$1, -1044(%ebp)
	.loc 1 1077 0
	jmp	.L350
.L353:
	.loc 1 1082 0
	movl	-1040(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-1012(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 1083 0
	leal	-1012(%ebp), %edx
	leal	-1012(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -1080(%ebp)
	movl	$0, %eax
	cld
	movl	-1080(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%edx,%eax), %eax
	movl	$1836016431, (%eax)
	movl	$1701603696, 4(%eax)
	movl	$1701064306, 8(%eax)
	movl	$1819631974, 12(%eax)
	movw	$29556, 16(%eax)
	movb	$0, 18(%eax)
	.loc 1 1084 0
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-1012(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -1036(%ebp)
	cmpl	$0, -1036(%ebp)
	je	.L348
	.loc 1 1085 0
	movl	-1052(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-1036(%ebp), %eax
	movl	%eax, (%esp)
	call	read_compiler_defaults
	movl	%eax, -1056(%ebp)
	.loc 1 1086 0
	movl	-1036(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 1087 0
	jmp	.L357
.L348:
.LBE11:
	.loc 1 1065 0
	movl	-1060(%ebp), %eax
	testl	%eax, %eax
	jne	.L349
.L357:
.LBB12:
	.loc 1 1093 0
	movl	-1068(%ebp), %eax
	movl	(%eax), %eax
	addl	-1056(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -1032(%ebp)
	.loc 1 1094 0
	movl	-1032(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -1028(%ebp)
	.loc 1 1098 0
	movl	$0, -1020(%ebp)
	jmp	.L358
.L359:
	.loc 1 1099 0
	movl	-1020(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-1028(%ebp), %ecx
	movl	-1072(%ebp), %eax
	movl	(%eax), %edx
	movl	-1020(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 1098 0
	addl	$1, -1020(%ebp)
.L358:
	movl	-1068(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-1020(%ebp), %eax
	jg	.L359
	.loc 1 1103 0
	movl	-1020(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-1028(%ebp), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -1020(%ebp)
	.loc 1 1107 0
	movl	-1052(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1016(%ebp)
	jmp	.L361
.L362:
	.loc 1 1108 0
	movl	-1020(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-1028(%ebp), %edx
	movl	-1016(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -1020(%ebp)
	.loc 1 1107 0
	movl	-1016(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -1016(%ebp)
.L361:
	cmpl	$0, -1016(%ebp)
	jne	.L362
	.loc 1 1112 0
	movl	-1068(%ebp), %edx
	movl	-1032(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1113 0
	movl	-1072(%ebp), %edx
	movl	-1028(%ebp), %eax
	movl	%eax, (%edx)
.LBE12:
	.loc 1 1115 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L365
	call	__stack_chk_fail_local
.L365:
	addl	$1088, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	append_default_options, .-append_default_options
	.type	append_psc_env_flags, @function
append_psc_env_flags:
.LFB29:
	.loc 1 1121 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%edi
.LCFI69:
	pushl	%esi
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$44, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1122 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1125 0
	movl	$0, -16(%ebp)
	.loc 1 1127 0
	cmpl	$0, -36(%ebp)
	je	.L367
	.loc 1 1128 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1129 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1130 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1131 0
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L369
.L370:
	.loc 1 1132 0
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L372
	cmpl	$32, -48(%ebp)
	je	.L373
	jmp	.L371
.L372:
	.loc 1 1134 0
	movl	$1, -16(%ebp)
.L373:
	.loc 1 1136 0
	movl	-32(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1137 0
	addl	$1, -20(%ebp)
	.loc 1 1138 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1139 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	leal	-4(%eax), %esi
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strdup@PLT
	movl	%eax, (%esi)
	.loc 1 1140 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
.L371:
	.loc 1 1131 0
	addl	$1, -32(%ebp)
.L369:
	cmpl	$0, -16(%ebp)
	je	.L370
	.loc 1 1146 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1147 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
.L367:
	.loc 1 1151 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	unsetenv@PLT
	.loc 1 1152 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	append_psc_env_flags, .-append_psc_env_flags
	.section	.rodata
.LC109:
	.string	"%s %s"
.LC110:
	.string	"cannot allocate memory"
.LC111:
	.string	"cannot execute linker"
	.text
	.type	read_gcc_output, @function
read_gcc_output:
.LFB30:
	.loc 1 1156 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$36, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1157 0
	movl	$37, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1158 0
	movl	$0, -16(%ebp)
	.loc 1 1159 0
	movl	$0, -8(%ebp)
	.loc 1 1161 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	cmpl	$-1, %eax
	jne	.L377
	.loc 1 1162 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 1163 0
	jmp	.L379
.L377:
	.loc 1 1166 0
	movl	-16(%ebp), %eax
	leal	.LC108@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	popen@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L379
	.loc 1 1167 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 1168 0
	movl	$0, -8(%ebp)
.L379:
	.loc 1 1172 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1173 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1174 0
	movl	-8(%ebp), %eax
	.loc 1 1175 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	read_gcc_output, .-read_gcc_output
	.section	.rodata
.LC112:
	.string	"install: %.*s\n"
.LC113:
	.string	"programs: %s:%s\n"
.LC114:
	.string	"%s/lib//32"
.LC115:
	.string	"%s/lib/"
.LC116:
	.string	":/lib"
.LC117:
	.string	":/usr/lib"
.LC118:
	.string	":/lib64"
.LC119:
	.string	":/usr/lib64"
.LC120:
	.string	"-print-search-dirs"
.LC121:
	.string	"libraries"
.LC122:
	.string	":"
.LC123:
	.string	"libraries: "
	.text
	.type	print_search_path, @function
print_search_path:
.LFB31:
	.loc 1 1182 0
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
	subl	$8284, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1182 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 1183 0
	call	get_executable_dir@PLT
	movl	%eax, -8236(%ebp)
	.loc 1 1184 0
	call	init_string_list@PLT
	movl	%eax, -8232(%ebp)
	.loc 1 1186 0
	call	get_executable_dir@PLT
	movl	%eax, (%esp)
	call	directory_path@PLT
	movl	%eax, -8228(%ebp)
	.loc 1 1193 0
	movl	-8236(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -8256(%ebp)
	movl	$0, %eax
	cld
	movl	-8256(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	-4(%eax), %edx
	movl	-8236(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1194 0
	movl	$30, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, 8(%esp)
	movl	-8236(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1196 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L383
	.loc 1 1203 0
	movl	-8228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-8240(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	jmp	.L385
.L383:
	.loc 1 1206 0
	movl	-8228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-8240(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
.L385:
	.loc 1 1211 0
	movl	-8240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8232(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1213 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L386
	.loc 1 1214 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8232(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1215 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8232(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L388
.L386:
	.loc 1 1217 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8232(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1218 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8232(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L388:
	.loc 1 1221 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	read_gcc_output
	movl	%eax, -8224(%ebp)
	cmpl	$0, -8224(%ebp)
	je	.L389
	.loc 1 1223 0
	jmp	.L401
.L392:
.LBB13:
	.loc 1 1224 0
	leal	-8208(%ebp), %eax
	movl	%eax, -8260(%ebp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, -8264(%ebp)
	movl	$9, -8268(%ebp)
	cld
	movl	-8260(%ebp), %esi
	movl	-8264(%ebp), %edi
	movl	-8268(%ebp), %ecx
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
	.loc 1 1225 0
	movl	$47, 4(%esp)
	leal	-8208(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -8216(%ebp)
	.loc 1 1227 0
	leal	-8208(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -8272(%ebp)
	movl	$0, %eax
	cld
	movl	-8272(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -8212(%ebp)
	.loc 1 1228 0
	movl	-8212(%ebp), %eax
	subl	$2, %eax
	movb	$0, -8208(%ebp,%eax)
	.loc 1 1229 0
	cmpl	$0, -8216(%ebp)
	je	.L391
	.loc 1 1230 0
	movl	-8216(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	-8232(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L391:
.L401:
	.loc 1 1223 0
	movl	-8224(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$8192, 4(%esp)
	leal	-8208(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	testl	%eax, %eax
	jne	.L392
	.loc 1 1234 0
	movl	-8224(%ebp), %eax
	movl	%eax, (%esp)
	call	pclose@PLT
.L389:
.LBE13:
	.loc 1 1237 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1238 0
	movl	-8232(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8220(%ebp)
	jmp	.L396
.L397:
	.loc 1 1239 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8220(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 1238 0
	movl	-8220(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8220(%ebp)
.L396:
	cmpl	$0, -8220(%ebp)
	jne	.L397
	.loc 1 1241 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	_IO_putc@PLT
	.loc 1 1243 0
	movl	-8240(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1244 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L400
	call	__stack_chk_fail_local
.L400:
	addl	$8284, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	print_search_path, .-print_search_path
	.local	patch.5142
	.comm	patch.5142,4,4
	.local	minor.5141
	.comm	minor.5141,4,4
	.local	major.5140
	.comm	major.5140,4,4
	.local	version.5139
	.comm	version.5139,128,32
	.section	.rodata
.LC124:
	.string	"-dumpversion"
	.text
.globl get_gcc_version
	.type	get_gcc_version, @function
get_gcc_version:
.LFB32:
	.loc 1 1249 0
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
	subl	$60, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1255 0
	movzbl	version.5139@GOTOFF(%ebx), %eax
	testb	%al, %al
	jne	.L403
.LBB14:
	.loc 1 1256 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	read_gcc_output
	movl	%eax, -32(%ebp)
	.loc 1 1258 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$127, 8(%esp)
	movl	$1, 4(%esp)
	leal	version.5139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fread@PLT
	.loc 1 1259 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	pclose@PLT
	.loc 1 1261 0
	movb	$0, 127+version.5139@GOTOFF(%ebx)
	.loc 1 1263 0
	movl	$10, 4(%esp)
	leal	version.5139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L403
	.loc 1 1264 0
	movl	-28(%ebp), %eax
	movb	$0, (%eax)
.L403:
.LBE14:
	.loc 1 1268 0
	cmpl	$0, 8(%ebp)
	je	.L406
.LBB15:
	.loc 1 1269 0
	leal	version.5139@GOTOFF(%ebx), %eax
	movl	$-1, %ecx
	movl	%eax, -48(%ebp)
	movl	$0, %eax
	cld
	movl	-48(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	leal	version.5139@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1273 0
	movl	$0, -16(%ebp)
	leal	version.5139@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L408
.L409:
.LBB16:
	.loc 1 1275 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jae	.L410
	call	__ctype_b_loc@PLT
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L410
	.loc 1 1276 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	addl	8(%ebp), %esi
	movl	$10, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strtol@PLT
	movl	%eax, (%esi)
	.loc 1 1277 0
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1275 0
	jmp	.L413
.L410:
	.loc 1 1279 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	$0, (%eax)
.L413:
.LBE16:
	.loc 1 1273 0
	addl	$1, -16(%ebp)
.L408:
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L409
.L406:
.LBE15:
	.loc 1 1284 0
	leal	version.5139@GOTOFF(%ebx), %eax
	.loc 1 1285 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	get_gcc_version, .-get_gcc_version
	.local	files
	.comm	files,4,4
	.local	file_suffixes
	.comm	file_suffixes,4,4
	.comm	feedback_files,4,4
	.comm	dump_outfile_to_stdout,4,4
	.comm	show_search_path,4,4
	.comm	show_defaults,4,4
	.comm	drop_option,4,4
	.comm	lut_app_name,128,32
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
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI0-.LFB15
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
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI4-.LFB16
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI7
	.byte	0x84
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI13-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI14
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI19-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI20
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI25-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI26
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI30-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI31
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI34-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI35
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI38-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI42-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI46-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI50-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI54-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI58-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI59
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI62-.LFB28
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
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI67-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI68
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI73-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI74
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI77-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI83-.LFB32
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
.LEFDE34:
	.file 2 "../../driver/string_utils.h"
	.file 3 "/usr/include/bits/stat.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/include/time.h"
	.file 6 "../../driver/basic.h"
	.file 7 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 8 "../../driver/lang_defs.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "./option_names.h"
	.file 12 "../../driver/opt_actions.h"
	.file 13 "../../driver/get_options.h"
	.file 14 "../../driver/errors.h"
	.file 15 "../../driver/phases.h"
	.file 16 "../../driver/file_names.h"
	.file 17 "../../driver/run.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB16-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI5-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI35-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1b6c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/main.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x7
	.byte	0xd6
	.long	0x90
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
	.long	0xf6
	.uleb128 0x2
	.string	"__u_quad_t"
	.byte	0x4
	.byte	0x3c
	.long	0x107
	.uleb128 0x2
	.string	"__dev_t"
	.byte	0x4
	.byte	0x89
	.long	0x131
	.uleb128 0x2
	.string	"__uid_t"
	.byte	0x4
	.byte	0x8a
	.long	0x90
	.uleb128 0x2
	.string	"__gid_t"
	.byte	0x4
	.byte	0x8b
	.long	0x90
	.uleb128 0x2
	.string	"__ino_t"
	.byte	0x4
	.byte	0x8c
	.long	0xbe
	.uleb128 0x2
	.string	"__mode_t"
	.byte	0x4
	.byte	0x8e
	.long	0x90
	.uleb128 0x2
	.string	"__nlink_t"
	.byte	0x4
	.byte	0x8f
	.long	0x90
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x4
	.byte	0x90
	.long	0x1af
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x4
	.byte	0x91
	.long	0x121
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__time_t"
	.byte	0x4
	.byte	0x98
	.long	0x1af
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.string	"__blksize_t"
	.byte	0x4
	.byte	0xa7
	.long	0x1af
	.uleb128 0x2
	.string	"__blkcnt_t"
	.byte	0x4
	.byte	0xac
	.long	0x1af
	.uleb128 0x6
	.byte	0x4
	.long	0x210
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.byte	0x4
	.long	0x21e
	.uleb128 0x7
	.long	0x210
	.uleb128 0x2
	.string	"FILE"
	.byte	0x9
	.byte	0x2e
	.long	0x22f
	.uleb128 0x8
	.long	0x4aa
	.long	.LASF1
	.byte	0x94
	.byte	0x9
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0xa
	.value	0x10c
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0xa
	.value	0x111
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0xa
	.value	0x112
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0xa
	.value	0x113
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0xa
	.value	0x114
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0xa
	.value	0x115
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0xa
	.value	0x116
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0xa
	.value	0x117
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0xa
	.value	0x118
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0xa
	.value	0x11a
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0xa
	.value	0x11b
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0xa
	.value	0x11c
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0xa
	.value	0x11e
	.long	0x4fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0xa
	.value	0x120
	.long	0x501
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0xa
	.value	0x122
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0xa
	.value	0x126
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0xa
	.value	0x128
	.long	0x1a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0xa
	.value	0x12c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0xa
	.value	0x12d
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0xa
	.value	0x12e
	.long	0x507
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0xa
	.value	0x132
	.long	0x517
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0xa
	.value	0x13b
	.long	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0xa
	.value	0x144
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0xa
	.value	0x145
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0xa
	.value	0x146
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0xa
	.value	0x147
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0xa
	.value	0x148
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0xa
	.value	0x14a
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0xa
	.value	0x14c
	.long	0x51d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0xa
	.byte	0xb0
	.uleb128 0xb
	.long	0x4fb
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xa
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0xa
	.byte	0xb7
	.long	0x4fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0xa
	.byte	0xb8
	.long	0x501
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0xa
	.byte	0xbc
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4b8
	.uleb128 0x6
	.byte	0x4
	.long	0x22f
	.uleb128 0xd
	.long	0x517
	.long	0x210
	.uleb128 0xe
	.long	0x1cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4aa
	.uleb128 0xd
	.long	0x52d
	.long	0x210
	.uleb128 0xe
	.long	0x1cc
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xef
	.uleb128 0x2
	.string	"time_t"
	.byte	0x5
	.byte	0x4d
	.long	0x1d3
	.uleb128 0xb
	.long	0x576
	.string	"timespec"
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.uleb128 0xc
	.string	"tv_sec"
	.byte	0x5
	.byte	0x7b
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tv_nsec"
	.byte	0x5
	.byte	0x7c
	.long	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xb
	.long	0x6ba
	.string	"stat"
	.byte	0x58
	.byte	0x3
	.byte	0x25
	.uleb128 0xc
	.string	"st_dev"
	.byte	0x3
	.byte	0x26
	.long	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"__pad1"
	.byte	0x3
	.byte	0x27
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"st_ino"
	.byte	0x3
	.byte	0x29
	.long	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"st_mode"
	.byte	0x3
	.byte	0x2d
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"st_nlink"
	.byte	0x3
	.byte	0x2e
	.long	0x18f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"st_uid"
	.byte	0x3
	.byte	0x2f
	.long	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"st_gid"
	.byte	0x3
	.byte	0x30
	.long	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"st_rdev"
	.byte	0x3
	.byte	0x31
	.long	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"__pad2"
	.byte	0x3
	.byte	0x32
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"st_size"
	.byte	0x3
	.byte	0x34
	.long	0x1a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"st_blksize"
	.byte	0x3
	.byte	0x38
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"st_blocks"
	.byte	0x3
	.byte	0x3b
	.long	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"st_atim"
	.byte	0x3
	.byte	0x46
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"st_mtim"
	.byte	0x3
	.byte	0x47
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"st_ctim"
	.byte	0x3
	.byte	0x48
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"__unused4"
	.byte	0x3
	.byte	0x55
	.long	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"__unused5"
	.byte	0x3
	.byte	0x56
	.long	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x6
	.byte	0x2c
	.long	0xef
	.uleb128 0xb
	.long	0x700
	.string	"string_item_rec"
	.byte	0x8
	.byte	0x2
	.byte	0x50
	.uleb128 0xc
	.string	"name"
	.byte	0x2
	.byte	0x51
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"next"
	.byte	0x2
	.byte	0x52
	.long	0x700
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x6c9
	.uleb128 0x2
	.string	"string_item_t"
	.byte	0x2
	.byte	0x53
	.long	0x6c9
	.uleb128 0xb
	.long	0x752
	.string	"string_list_rec"
	.byte	0x8
	.byte	0x2
	.byte	0x54
	.uleb128 0xc
	.string	"head"
	.byte	0x2
	.byte	0x55
	.long	0x752
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tail"
	.byte	0x2
	.byte	0x56
	.long	0x752
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x706
	.uleb128 0x2
	.string	"string_list_t"
	.byte	0x2
	.byte	0x57
	.long	0x71b
	.uleb128 0xf
	.long	0x7d1
	.byte	0x4
	.byte	0x8
	.byte	0x2f
	.uleb128 0x10
	.string	"L_NONE"
	.sleb128 0
	.uleb128 0x10
	.string	"L_ALL"
	.sleb128 1
	.uleb128 0x10
	.string	"L_cpp"
	.sleb128 2
	.uleb128 0x10
	.string	"L_cc"
	.sleb128 3
	.uleb128 0x10
	.string	"L_CC"
	.sleb128 4
	.uleb128 0x10
	.string	"L_f77"
	.sleb128 5
	.uleb128 0x10
	.string	"L_f90"
	.sleb128 6
	.uleb128 0x10
	.string	"L_as"
	.sleb128 7
	.uleb128 0x10
	.string	"L_ld"
	.sleb128 8
	.uleb128 0x10
	.string	"L_internal"
	.sleb128 9
	.uleb128 0x10
	.string	"L_LAST"
	.sleb128 10
	.byte	0x0
	.uleb128 0x2
	.string	"languages_t"
	.byte	0x8
	.byte	0x3b
	.long	0x76d
	.uleb128 0xf
	.long	0x864
	.byte	0x4
	.byte	0x8
	.byte	0x3e
	.uleb128 0x10
	.string	"S_NONE"
	.sleb128 0
	.uleb128 0x10
	.string	"S_c"
	.sleb128 1
	.uleb128 0x10
	.string	"S_C"
	.sleb128 2
	.uleb128 0x10
	.string	"S_f"
	.sleb128 3
	.uleb128 0x10
	.string	"S_F"
	.sleb128 4
	.uleb128 0x10
	.string	"S_f90"
	.sleb128 5
	.uleb128 0x10
	.string	"S_F90"
	.sleb128 6
	.uleb128 0x10
	.string	"S_r"
	.sleb128 7
	.uleb128 0x10
	.string	"S_i"
	.sleb128 8
	.uleb128 0x10
	.string	"S_ii"
	.sleb128 9
	.uleb128 0x10
	.string	"S_s"
	.sleb128 10
	.uleb128 0x10
	.string	"S_S"
	.sleb128 11
	.uleb128 0x10
	.string	"S_I"
	.sleb128 12
	.uleb128 0x10
	.string	"S_B"
	.sleb128 13
	.uleb128 0x10
	.string	"S_N"
	.sleb128 14
	.uleb128 0x10
	.string	"S_O"
	.sleb128 15
	.uleb128 0x10
	.string	"S_o"
	.sleb128 16
	.uleb128 0x10
	.string	"S_LAST"
	.sleb128 17
	.byte	0x0
	.uleb128 0x2
	.string	"source_kind_t"
	.byte	0x8
	.byte	0x51
	.long	0x7e4
	.uleb128 0xf
	.long	0xaa0
	.byte	0x4
	.byte	0x8
	.byte	0x54
	.uleb128 0x10
	.string	"P_NONE"
	.sleb128 0
	.uleb128 0x10
	.string	"P_All"
	.sleb128 1
	.uleb128 0x10
	.string	"P_m4"
	.sleb128 2
	.uleb128 0x10
	.string	"P_ratfor"
	.sleb128 3
	.uleb128 0x10
	.string	"P_cpp"
	.sleb128 4
	.uleb128 0x10
	.string	"P_gcpp"
	.sleb128 5
	.uleb128 0x10
	.string	"P_gcpp_plus"
	.sleb128 6
	.uleb128 0x10
	.string	"P_c_cpp"
	.sleb128 7
	.uleb128 0x10
	.string	"P_cplus_cpp"
	.sleb128 8
	.uleb128 0x10
	.string	"P_f_cpp"
	.sleb128 9
	.uleb128 0x10
	.string	"P_f90_cpp"
	.sleb128 10
	.uleb128 0x10
	.string	"P_f_coco"
	.sleb128 11
	.uleb128 0x10
	.string	"P_any_cpp"
	.sleb128 12
	.uleb128 0x10
	.string	"P_pfa"
	.sleb128 13
	.uleb128 0x10
	.string	"P_pca"
	.sleb128 14
	.uleb128 0x10
	.string	"P_mpc"
	.sleb128 15
	.uleb128 0x10
	.string	"P_any_optfe"
	.sleb128 16
	.uleb128 0x10
	.string	"P_f_fe"
	.sleb128 17
	.uleb128 0x10
	.string	"P_cppf_fe"
	.sleb128 18
	.uleb128 0x10
	.string	"P_f90_fe"
	.sleb128 19
	.uleb128 0x10
	.string	"P_cppf90_fe"
	.sleb128 20
	.uleb128 0x10
	.string	"P_c_gfe"
	.sleb128 21
	.uleb128 0x10
	.string	"P_cplus_gfe"
	.sleb128 22
	.uleb128 0x10
	.string	"P_any_fe"
	.sleb128 23
	.uleb128 0x10
	.string	"P_pseudo_f_fe"
	.sleb128 24
	.uleb128 0x10
	.string	"P_pseudo_c_fe"
	.sleb128 25
	.uleb128 0x10
	.string	"P_lister"
	.sleb128 26
	.uleb128 0x10
	.string	"P_inline"
	.sleb128 27
	.uleb128 0x10
	.string	"P_ipl"
	.sleb128 28
	.uleb128 0x10
	.string	"p_any_ipl"
	.sleb128 29
	.uleb128 0x10
	.string	"P_be"
	.sleb128 30
	.uleb128 0x10
	.string	"P_as"
	.sleb128 31
	.uleb128 0x10
	.string	"P_gas"
	.sleb128 32
	.uleb128 0x10
	.string	"P_any_as"
	.sleb128 33
	.uleb128 0x10
	.string	"P_dsm_prelink"
	.sleb128 34
	.uleb128 0x10
	.string	"P_ipa_link"
	.sleb128 35
	.uleb128 0x10
	.string	"P_collect"
	.sleb128 36
	.uleb128 0x10
	.string	"P_ld"
	.sleb128 37
	.uleb128 0x10
	.string	"P_ldplus"
	.sleb128 38
	.uleb128 0x10
	.string	"P_any_ld"
	.sleb128 39
	.uleb128 0x10
	.string	"P_cord"
	.sleb128 40
	.uleb128 0x10
	.string	"P_pixie"
	.sleb128 41
	.uleb128 0x10
	.string	"P_prof"
	.sleb128 42
	.uleb128 0x10
	.string	"P_ar"
	.sleb128 43
	.uleb128 0x10
	.string	"P_startup"
	.sleb128 44
	.uleb128 0x10
	.string	"P_include"
	.sleb128 45
	.uleb128 0x10
	.string	"P_library"
	.sleb128 46
	.uleb128 0x10
	.string	"P_alt_library"
	.sleb128 47
	.uleb128 0x10
	.string	"P_sl2startup"
	.sleb128 48
	.uleb128 0x10
	.string	"P_LAST"
	.sleb128 49
	.byte	0x0
	.uleb128 0x2
	.string	"phases_t"
	.byte	0x8
	.byte	0x97
	.long	0x879
	.uleb128 0xf
	.long	0xaec
	.byte	0x4
	.byte	0x8
	.byte	0xe1
	.uleb128 0x10
	.string	"M_SMALL"
	.sleb128 0
	.uleb128 0x10
	.string	"M_MEDIUM"
	.sleb128 1
	.uleb128 0x10
	.string	"M_LARGE"
	.sleb128 2
	.uleb128 0x10
	.string	"M_KERNEL"
	.sleb128 3
	.uleb128 0x10
	.string	"M_LAST"
	.sleb128 4
	.byte	0x0
	.uleb128 0x2
	.string	"mem_model_t"
	.byte	0x8
	.byte	0xe7
	.long	0xab0
	.uleb128 0x2
	.string	"status_codes"
	.byte	0xe
	.byte	0x2b
	.long	0xef
	.uleb128 0x11
	.string	"no_args"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x12
	.long	0xca5
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	0xef
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x13
	.string	"argc"
	.byte	0x1
	.byte	0x83
	.long	0xef
	.byte	0x4
	.byte	0x75
	.sleb128 -168
	.byte	0x6
	.uleb128 0x13
	.string	"argv"
	.byte	0x1
	.byte	0x83
	.long	0xca5
	.byte	0x6
	.byte	0x75
	.sleb128 -168
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0xef
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"flag"
	.byte	0x1
	.byte	0x86
	.long	0xef
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"base_flag"
	.byte	0x1
	.byte	0x87
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x88
	.long	0x752
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x88
	.long	0x752
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"num_files"
	.byte	0x1
	.byte	0x89
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"unrecognized_dashdash_option_name"
	.byte	0x1
	.byte	0x8a
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	0xc13
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.value	0x13d
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x15
	.long	0xc30
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.value	0x19f
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x17
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x18
	.string	"stat_buf"
	.byte	0x1
	.value	0x216
	.long	0x576
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.string	"fb_file_mod_time"
	.byte	0x1
	.value	0x217
	.long	0x533
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"count_file_mod_time"
	.byte	0x1
	.value	0x218
	.long	0x533
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"fb_file_exists"
	.byte	0x1
	.value	0x219
	.long	0x6ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x20a
	.uleb128 0x19
	.long	0xd22
	.string	"set_executable_dir"
	.byte	0x1
	.value	0x276
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x18
	.string	"dir"
	.byte	0x1
	.value	0x278
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"dirlen"
	.byte	0x1
	.value	0x279
	.long	0x82
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"ldir"
	.byte	0x1
	.value	0x27a
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x18
	.string	"basedir"
	.byte	0x1
	.value	0x28f
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0xd5d
	.string	"check_old_CC_options"
	.byte	0x1
	.value	0x2be
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1a
	.string	"name"
	.byte	0x1
	.value	0x2bd
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0xdb1
	.string	"check_makedepend_flags"
	.byte	0x1
	.value	0x2de
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x18
	.string	"flag"
	.byte	0x1
	.value	0x2df
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.value	0x2ef
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0xdef
	.string	"mark_used"
	.byte	0x1
	.value	0x2fe
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x2ff
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"iflag"
	.byte	0x1
	.value	0x300
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	0xe40
	.string	"print_help_msg"
	.byte	0x1
	.value	0x31a
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x31b
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.value	0x31c
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"name"
	.byte	0x1
	.value	0x31d
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	0xe97
	.string	"dump_args"
	.byte	0x1
	.value	0x33c
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x1a
	.string	"msg"
	.byte	0x1
	.value	0x33b
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x33d
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x18
	.string	"iflag"
	.byte	0x1
	.value	0x346
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xec6
	.byte	0x1
	.string	"do_exit"
	.byte	0x1
	.value	0x358
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x1a
	.string	"code"
	.byte	0x1
	.value	0x357
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1c
	.long	0xf0e
	.string	"explicit_lang"
	.byte	0xc
	.byte	0x1
	.value	0x360
	.uleb128 0x9
	.string	"name"
	.byte	0x1
	.value	0x361
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"kind"
	.byte	0x1
	.value	0x362
	.long	0x864
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"lang"
	.byte	0x1
	.value	0x363
	.long	0x7d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1b
	.long	0xf64
	.byte	0x1
	.string	"set_explicit_lang"
	.byte	0x1
	.value	0x379
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x1a
	.string	"flag"
	.byte	0x1
	.value	0x378
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"lang"
	.byte	0x1
	.value	0x378
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x37a
	.long	0xf64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xec6
	.uleb128 0x19
	.long	0x1012
	.string	"prescan_options"
	.byte	0x1
	.value	0x38e
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x1a
	.string	"argc"
	.byte	0x1
	.value	0x38d
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"argv"
	.byte	0x1
	.value	0x38d
	.long	0xca5
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x18
	.string	"turn_off_ipa"
	.byte	0x1
	.value	0x38f
	.long	0x6ba
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x18
	.string	"ipa_conflict_option"
	.byte	0x1
	.value	0x390
	.long	0x20a
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x391
	.long	0xef
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x17
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.value	0x3b6
	.long	0x1012
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1022
	.long	0x210
	.uleb128 0xe
	.long	0x1cc
	.byte	0xc7
	.byte	0x0
	.uleb128 0x19
	.long	0x1090
	.string	"print_defaults"
	.byte	0x1
	.value	0x3c6
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x1a
	.string	"argc"
	.byte	0x1
	.value	0x3c5
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"argv"
	.byte	0x1
	.value	0x3c5
	.long	0xca5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x3c7
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"parsing_defaults"
	.byte	0x1
	.value	0x3c8
	.long	0x6ba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0x1144
	.string	"read_compiler_defaults"
	.byte	0x1
	.value	0x3f6
	.byte	0x1
	.long	0xef
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.value	0x3f5
	.long	0x1144
	.byte	0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.value	0x3f5
	.long	0x114a
	.byte	0x3
	.byte	0x91
	.sleb128 -1044
	.uleb128 0x18
	.string	"count"
	.byte	0x1
	.value	0x3f7
	.long	0xef
	.byte	0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x3f8
	.long	0x20a
	.byte	0x3
	.byte	0x91
	.sleb128 -1028
	.uleb128 0x18
	.string	"string"
	.byte	0x1
	.value	0x3f8
	.long	0x20a
	.byte	0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.value	0x3f8
	.long	0x1150
	.byte	0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x17
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x18
	.string	"end_of_line"
	.byte	0x1
	.value	0x3fc
	.long	0x6ba
	.byte	0x3
	.byte	0x91
	.sleb128 -1020
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x223
	.uleb128 0x6
	.byte	0x4
	.long	0x758
	.uleb128 0xd
	.long	0x1161
	.long	0x210
	.uleb128 0x1f
	.long	0x1cc
	.value	0x3e7
	.byte	0x0
	.uleb128 0x19
	.long	0x12ca
	.string	"append_default_options"
	.byte	0x1
	.value	0x41b
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x1a
	.string	"argc"
	.byte	0x1
	.value	0x41a
	.long	0x52d
	.byte	0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x1a
	.string	"argv"
	.byte	0x1
	.value	0x41a
	.long	0x12ca
	.byte	0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x18
	.string	"compiler_defaults_path"
	.byte	0x1
	.value	0x41c
	.long	0x20a
	.byte	0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x18
	.string	"default_options_count"
	.byte	0x1
	.value	0x41e
	.long	0xef
	.byte	0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x16
	.long	.LASF3
	.byte	0x1
	.value	0x41f
	.long	0x114a
	.byte	0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x15
	.long	0x1226
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x18
	.string	"exe_dir"
	.byte	0x1
	.value	0x422
	.long	0x20a
	.byte	0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0x0
	.uleb128 0x15
	.long	0x1271
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x42a
	.long	0x20a
	.byte	0x3
	.byte	0x91
	.sleb128 -1052
	.uleb128 0x18
	.string	"path"
	.byte	0x1
	.value	0x42a
	.long	0x20a
	.byte	0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.value	0x438
	.long	0x1144
	.byte	0x3
	.byte	0x91
	.sleb128 -1044
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.value	0x439
	.long	0x1150
	.byte	0x3
	.byte	0x91
	.sleb128 -1020
	.byte	0x0
	.uleb128 0x17
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x16
	.long	.LASF4
	.byte	0x1
	.value	0x445
	.long	0xef
	.byte	0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x16
	.long	.LASF5
	.byte	0x1
	.value	0x446
	.long	0xca5
	.byte	0x3
	.byte	0x91
	.sleb128 -1036
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x447
	.long	0xef
	.byte	0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x18
	.string	"index"
	.byte	0x1
	.value	0x447
	.long	0xef
	.byte	0x3
	.byte	0x91
	.sleb128 -1028
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x452
	.long	0x752
	.byte	0x3
	.byte	0x91
	.sleb128 -1024
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xca5
	.uleb128 0x19
	.long	0x138c
	.string	"append_psc_env_flags"
	.byte	0x1
	.value	0x461
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x1a
	.string	"argc"
	.byte	0x1
	.value	0x460
	.long	0x52d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"argv"
	.byte	0x1
	.value	0x460
	.long	0x12ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"env_var"
	.byte	0x1
	.value	0x460
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"default_opt"
	.byte	0x1
	.value	0x462
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x463
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"q"
	.byte	0x1
	.value	0x463
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF5
	.byte	0x1
	.value	0x464
	.long	0xca5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF4
	.byte	0x1
	.value	0x465
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"fin"
	.byte	0x1
	.value	0x465
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1d
	.long	0x140b
	.string	"read_gcc_output"
	.byte	0x1
	.value	0x484
	.byte	0x1
	.long	0x1144
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x1a
	.string	"cmdline"
	.byte	0x1
	.value	0x483
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"gcc_path"
	.byte	0x1
	.value	0x485
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"gcc_cmd"
	.byte	0x1
	.value	0x486
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.value	0x487
	.long	0x1144
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.string	"bail"
	.byte	0x1
	.value	0x493
	.long	.L379
	.byte	0x0
	.uleb128 0x19
	.long	0x14f3
	.string	"print_search_path"
	.byte	0x1
	.value	0x49e
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x18
	.string	"exe_dir"
	.byte	0x1
	.value	0x49f
	.long	0x20a
	.byte	0x4
	.byte	0x91
	.sleb128 -8244
	.uleb128 0x18
	.string	"libdirs"
	.byte	0x1
	.value	0x4a0
	.long	0x114a
	.byte	0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x18
	.string	"root_prefix"
	.byte	0x1
	.value	0x4a2
	.long	0x20a
	.byte	0x4
	.byte	0x91
	.sleb128 -8236
	.uleb128 0x18
	.string	"our_path"
	.byte	0x1
	.value	0x4a3
	.long	0x20a
	.byte	0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.value	0x4a4
	.long	0x1144
	.byte	0x4
	.byte	0x91
	.sleb128 -8232
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x4a5
	.long	0x752
	.byte	0x4
	.byte	0x91
	.sleb128 -8228
	.uleb128 0x18
	.string	"gcc_lib_ptr"
	.byte	0x1
	.value	0x4a6
	.long	0x20a
	.byte	0x4
	.byte	0x91
	.sleb128 -8224
	.uleb128 0x18
	.string	"buflen"
	.byte	0x1
	.value	0x4a7
	.long	0xef
	.byte	0x4
	.byte	0x91
	.sleb128 -8220
	.uleb128 0x17
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.value	0x4c6
	.long	0x14f3
	.byte	0x4
	.byte	0x91
	.sleb128 -8216
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1504
	.long	0x210
	.uleb128 0x1f
	.long	0x1cc
	.value	0x1fff
	.byte	0x0
	.uleb128 0x21
	.long	0x1611
	.byte	0x1
	.string	"get_gcc_version"
	.byte	0x1
	.value	0x4e1
	.byte	0x1
	.long	0x218
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x1a
	.string	"v"
	.byte	0x1
	.value	0x4e0
	.long	0x52d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"nv"
	.byte	0x1
	.value	0x4e0
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	0x1572
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.value	0x4e8
	.long	0x1144
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.value	0x4e9
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x15
	.long	0x15be
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.value	0x4f5
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.value	0x4f6
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x4f7
	.long	0xef
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.value	0x4fa
	.long	0x20a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.string	"version"
	.byte	0x1
	.value	0x4e2
	.long	0x1611
	.byte	0x5
	.byte	0x3
	.long	version.5139
	.uleb128 0x18
	.string	"major"
	.byte	0x1
	.value	0x4e3
	.long	0xef
	.byte	0x5
	.byte	0x3
	.long	major.5140
	.uleb128 0x18
	.string	"minor"
	.byte	0x1
	.value	0x4e4
	.long	0xef
	.byte	0x5
	.byte	0x3
	.long	minor.5141
	.uleb128 0x18
	.string	"patch"
	.byte	0x1
	.value	0x4e5
	.long	0xef
	.byte	0x5
	.byte	0x3
	.long	patch.5142
	.byte	0x0
	.uleb128 0xd
	.long	0x1621
	.long	0x210
	.uleb128 0xe
	.long	0x1cc
	.byte	0x7f
	.byte	0x0
	.uleb128 0x14
	.string	"rcs_id"
	.byte	0x1
	.byte	0x28
	.long	0x20a
	.byte	0x5
	.byte	0x3
	.long	rcs_id
	.uleb128 0x14
	.string	"files"
	.byte	0x1
	.byte	0x68
	.long	0x114a
	.byte	0x5
	.byte	0x3
	.long	files
	.uleb128 0x14
	.string	"file_suffixes"
	.byte	0x1
	.byte	0x69
	.long	0x114a
	.byte	0x5
	.byte	0x3
	.long	file_suffixes
	.uleb128 0xd
	.long	0x1673
	.long	0xec6
	.uleb128 0xe
	.long	0x1cc
	.byte	0x10
	.byte	0x0
	.uleb128 0x18
	.string	"explicit_langs"
	.byte	0x1
	.value	0x364
	.long	0x1663
	.byte	0x5
	.byte	0x3
	.long	explicit_langs
	.uleb128 0x22
	.string	"stdout"
	.byte	0x9
	.byte	0x8f
	.long	0x501
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"stderr"
	.byte	0x9
	.byte	0x90
	.long	0x501
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"invoked_lang"
	.byte	0x8
	.byte	0x99
	.long	0x7d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"source_lang"
	.byte	0x8
	.byte	0x9a
	.long	0x7d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"source_kind"
	.byte	0x8
	.byte	0x9c
	.long	0x864
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"default_source_kind"
	.byte	0x8
	.byte	0x9d
	.long	0x864
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"last_phase"
	.byte	0x8
	.byte	0xa0
	.long	0xaa0
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"remember_last_phase"
	.byte	0x8
	.byte	0xa1
	.long	0xaa0
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"ignore_suffix"
	.byte	0x8
	.byte	0xd8
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"mem_model"
	.byte	0x8
	.byte	0xe9
	.long	0xaec
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"shared"
	.byte	0xb
	.value	0x329
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"abi"
	.byte	0xb
	.value	0x32e
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"sse2"
	.byte	0xb
	.value	0x32f
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"sse3"
	.byte	0xb
	.value	0x332
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"m3dnow"
	.byte	0xb
	.value	0x333
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"ipa"
	.byte	0xb
	.value	0x335
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"cordflag"
	.byte	0xb
	.value	0x340
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"compat_gcc"
	.byte	0xb
	.value	0x342
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"olevel"
	.byte	0xb
	.value	0x346
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"debug"
	.byte	0x1
	.byte	0x4b
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	debug
	.uleb128 0x24
	.string	"nostdinc"
	.byte	0x1
	.byte	0x4c
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nostdinc
	.uleb128 0x24
	.string	"help_pattern"
	.byte	0x1
	.byte	0x4a
	.long	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	help_pattern
	.uleb128 0x22
	.string	"dashdash_flag"
	.byte	0xc
	.byte	0x6c
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"read_stdin"
	.byte	0xc
	.byte	0x6f
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"target_cpu"
	.byte	0xc
	.byte	0xaa
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"option_name"
	.byte	0xd
	.byte	0x2a
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"optargs"
	.byte	0xd
	.byte	0x2c
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"feedback_files"
	.byte	0x1
	.byte	0x6a
	.long	0x114a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	feedback_files
	.uleb128 0x22
	.string	"error_status"
	.byte	0xe
	.byte	0x2d
	.long	0xaff
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"program_name"
	.byte	0xe
	.byte	0x2f
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"print_warnings"
	.byte	0xe
	.byte	0x31
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"fullwarn"
	.byte	0xe
	.byte	0x32
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"source_file"
	.byte	0xf
	.byte	0x2a
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"multiple_source_files"
	.byte	0xf
	.byte	0x2b
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"outfile"
	.byte	0xf
	.byte	0x2d
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"prof_file"
	.byte	0xf
	.byte	0x2e
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"fb_file"
	.byte	0xf
	.byte	0x2f
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"fb_cdir"
	.byte	0xf
	.byte	0x33
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"Gen_feedback"
	.byte	0xf
	.byte	0x47
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"Use_feedback"
	.byte	0xf
	.byte	0x48
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"orig_program_name"
	.byte	0xf
	.byte	0x55
	.long	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"dump_outfile_to_stdout"
	.byte	0xf
	.byte	0x57
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_outfile_to_stdout
	.uleb128 0x22
	.string	"keep_flag"
	.byte	0x10
	.byte	0x2b
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"count_files"
	.byte	0x10
	.byte	0x2f
	.long	0x114a
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"show_version"
	.byte	0x1
	.byte	0x4d
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	show_version
	.uleb128 0x24
	.string	"show_copyright"
	.byte	0x1
	.byte	0x52
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	show_copyright
	.uleb128 0x24
	.string	"dump_version"
	.byte	0x1
	.byte	0x53
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_version
	.uleb128 0x22
	.string	"show_flag"
	.byte	0x11
	.byte	0x31
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"execute_flag"
	.byte	0x11
	.byte	0x32
	.long	0x6ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"show_search_path"
	.byte	0x1
	.byte	0x54
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	show_search_path
	.uleb128 0x24
	.string	"show_defaults"
	.byte	0x1
	.byte	0x55
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	show_defaults
	.uleb128 0xd
	.long	0x1af0
	.long	0x210
	.uleb128 0xe
	.long	0x1cc
	.byte	0x4
	.byte	0x0
	.uleb128 0x24
	.string	"compiler_version"
	.byte	0x1
	.byte	0x76
	.long	0x1b0f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	compiler_version
	.uleb128 0x7
	.long	0x1ae0
	.uleb128 0x24
	.string	"parsing_default_options"
	.byte	0x1
	.byte	0x6b
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	parsing_default_options
	.uleb128 0x24
	.string	"drop_option"
	.byte	0x1
	.byte	0x6c
	.long	0x6ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	drop_option
	.uleb128 0x24
	.string	"lut_app_name"
	.byte	0x1
	.byte	0x6f
	.long	0x1611
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lut_app_name
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
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1a
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.long	0x151
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1b70
	.long	0xb2b
	.string	"main"
	.long	0xe97
	.string	"do_exit"
	.long	0xf0e
	.string	"set_explicit_lang"
	.long	0x1504
	.string	"get_gcc_version"
	.long	0x17fd
	.string	"debug"
	.long	0x1811
	.string	"nostdinc"
	.long	0x1828
	.string	"help_pattern"
	.long	0x18a8
	.string	"feedback_files"
	.long	0x19dc
	.string	"dump_outfile_to_stdout"
	.long	0x1a29
	.string	"show_version"
	.long	0x1a44
	.string	"show_copyright"
	.long	0x1a61
	.string	"dump_version"
	.long	0x1aa5
	.string	"show_search_path"
	.long	0x1ac4
	.string	"show_defaults"
	.long	0x1af0
	.string	"compiler_version"
	.long	0x1b14
	.string	"parsing_default_options"
	.long	0x1b3a
	.string	"drop_option"
	.long	0x1b54
	.string	"lut_app_name"
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
	.string	"obj_name"
.LASF4:
	.string	"new_argc"
.LASF5:
	.string	"new_argv"
.LASF1:
	.string	"_IO_FILE"
.LASF3:
	.string	"default_options_list"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
