	.file	"phases.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl outfile
	.bss
	.align 4
	.type	outfile, @object
	.size	outfile, 4
outfile:
	.zero	4
.globl prof_file
	.align 4
	.type	prof_file, @object
	.size	prof_file, 4
prof_file:
	.zero	4
.globl fb_file
	.align 4
	.type	fb_file, @object
	.size	fb_file, 4
fb_file:
	.zero	4
.globl internal_fb_file
	.align 4
	.type	internal_fb_file, @object
	.size	internal_fb_file, 4
internal_fb_file:
	.zero	4
.globl opt_file
	.align 4
	.type	opt_file, @object
	.size	opt_file, 4
opt_file:
	.zero	4
.globl fb_xdir
	.align 4
	.type	fb_xdir, @object
	.size	fb_xdir, 4
fb_xdir:
	.zero	4
.globl fb_cdir
	.align 4
	.type	fb_cdir, @object
	.size	fb_cdir, 4
fb_cdir:
	.zero	4
.globl command_line
	.align 4
	.type	command_line, @object
	.size	command_line, 4
command_line:
	.zero	4
.globl fb_phase
	.align 4
	.type	fb_phase, @object
	.size	fb_phase, 4
fb_phase:
	.zero	4
.globl fb_type
	.align 4
	.type	fb_type, @object
	.size	fb_type, 4
fb_type:
	.zero	4
.globl source_file
	.align 4
	.type	source_file, @object
	.size	source_file, 4
source_file:
	.zero	4
.globl coco_setfile
	.align 4
	.type	coco_setfile, @object
	.size	coco_setfile, 4
coco_setfile:
	.zero	4
.globl multiple_source_files
	.align 4
	.type	multiple_source_files, @object
	.size	multiple_source_files, 4
multiple_source_files:
	.zero	4
.globl keep_mp
	.align 4
	.type	keep_mp, @object
	.size	keep_mp, 4
keep_mp:
	.zero	4
.globl keep_list
	.align 4
	.type	keep_list, @object
	.size	keep_list, 4
keep_list:
	.zero	4
.globl keep_cif
	.align 4
	.type	keep_cif, @object
	.size	keep_cif, 4
keep_cif:
	.zero	4
.globl keep_listing
	.align 4
	.type	keep_listing, @object
	.size	keep_listing, 4
keep_listing:
	.zero	4
.globl auto_parallelize
	.align 4
	.type	auto_parallelize, @object
	.size	auto_parallelize, 4
auto_parallelize:
	.zero	4
.globl Gen_feedback
	.align 4
	.type	Gen_feedback, @object
	.size	Gen_feedback, 4
Gen_feedback:
	.zero	4
.globl Use_feedback
	.align 4
	.type	Use_feedback, @object
	.size	Use_feedback, 4
Use_feedback:
	.zero	4
.globl Disable_open_mp
	.align 4
	.type	Disable_open_mp, @object
	.size	Disable_open_mp, 4
Disable_open_mp:
	.zero	4
.globl Disable_old_mp
	.align 4
	.type	Disable_old_mp, @object
	.size	Disable_old_mp, 4
Disable_old_mp:
	.zero	4
.globl O3_flag
	.align 4
	.type	O3_flag, @object
	.size	O3_flag, 4
O3_flag:
	.zero	4
.globl use_cpp
	.align 4
	.type	use_cpp, @object
	.size	use_cpp, 4
use_cpp:
	.zero	4
.globl expand_ftpp_macros
	.data
	.align 4
	.type	expand_ftpp_macros, @object
	.size	expand_ftpp_macros, 4
expand_ftpp_macros:
	.long	1
.globl fortran_line_length
	.align 4
	.type	fortran_line_length, @object
	.size	fortran_line_length, 4
fortran_line_length:
	.long	72
.globl roundoff
	.bss
	.type	roundoff, @object
	.size	roundoff, 1
roundoff:
	.zero	1
.globl nocpp_flag
	.align 4
	.type	nocpp_flag, @object
	.size	nocpp_flag, 4
nocpp_flag:
	.zero	4
.globl ld_library_path
	.align 4
	.type	ld_library_path, @object
	.size	ld_library_path, 4
ld_library_path:
	.zero	4
.globl ld_libraryn32_path
	.align 4
	.type	ld_libraryn32_path, @object
	.size	ld_libraryn32_path, 4
ld_libraryn32_path:
	.zero	4
.globl orig_program_name
	.align 4
	.type	orig_program_name, @object
	.size	orig_program_name, 4
orig_program_name:
	.zero	4
.globl ldscript_file
	.align 4
	.type	ldscript_file, @object
	.size	ldscript_file, 4
ldscript_file:
	.zero	4
.globl old_ld_library_path
	.align 4
	.type	old_ld_library_path, @object
	.size	old_ld_library_path, 4
old_ld_library_path:
	.zero	4
	.local	ipl_cmds
	.comm	ipl_cmds,4,4
	.local	string_md
	.comm	string_md,4,4
	.local	string_mmd
	.comm	string_mmd,4,4
	.section	.rodata
.LC0:
	.string	"-MF"
	.text
	.type	previous_mf_exists, @function
previous_mf_exists:
.LFB5:
	.file 1 "../../driver/phases.c"
	.loc 1 153 0
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
	subl	$32, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 156 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2
.L3:
	.loc 1 157 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$4, -44(%ebp)
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
	jne	.L4
	.loc 1 158 0
	movl	$1, -32(%ebp)
	jmp	.L6
.L4:
	.loc 1 156 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L2:
	cmpl	$0, -16(%ebp)
	jne	.L3
	.loc 1 161 0
	movl	$0, -32(%ebp)
.L6:
	movl	-32(%ebp), %eax
	.loc 1 162 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	previous_mf_exists, .-previous_mf_exists
	.section	.rodata
.LC1:
	.string	""
	.text
	.type	remove_previous_mf, @function
remove_previous_mf:
.LFB6:
	.loc 1 166 0
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
	subl	$44, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 169 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L10
.L11:
	.loc 1 170 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
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
	jne	.L12
	.loc 1 171 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 172 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
.L12:
	.loc 1 169 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L10:
	cmpl	$0, -16(%ebp)
	jne	.L11
	.loc 1 175 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE6:
	.size	remove_previous_mf, .-remove_previous_mf
	.section	.rodata
.LC2:
	.string	"-D"
.LC3:
	.string	"-O"
.LC4:
	.string	"-MT"
.LC5:
	.string	"-MD"
.LC6:
	.string	"-M"
.LC7:
	.string	"d"
.LC8:
	.string	"-MQ"
.LC9:
	.string	"-MMD"
.LC10:
	.string	"-MM"
	.text
	.type	add_implied_string, @function
add_implied_string:
.LFB7:
	.loc 1 179 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%edi
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$124, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 181 0
	call	get_current_implied_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 183 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$3, -40(%ebp)
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
	jne	.L17
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_previous_mf
.L17:
	.loc 1 189 0
	cmpl	$11, 20(%ebp)
	jne	.L19
.LBB2:
	.loc 1 191 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_option_name@PLT
	movl	%eax, -16(%ebp)
	.loc 1 192 0
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -48(%ebp)
	movl	$2, -52(%ebp)
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
	jne	.L21
	movl	-16(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -60(%ebp)
	movl	$2, -64(%ebp)
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
	jne	.L44
.L21:
	.loc 1 197 0
	movl	-20(%ebp), %eax
	movl	%eax, -68(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -72(%ebp)
	movl	$2, -76(%ebp)
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
	je	.L44
.L19:
.LBE2:
	.loc 1 202 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	option_has_blank@PLT
	testl	%eax, %eax
	je	.L24
	.loc 1 204 0
	movl	-20(%ebp), %eax
	movl	%eax, -80(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
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
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_multi_strings@PLT
	jmp	.L44
.L24:
	.loc 1 208 0
	movl	-20(%ebp), %eax
	movl	%eax, -92(%ebp)
	leal	.LC5@GOTOFF(%ebx), %esi
	movl	%esi, -96(%ebp)
	movl	$4, -100(%ebp)
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
	jne	.L26
	.loc 1 209 0
	movl	string_md@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L28
	.loc 1 210 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 211 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	previous_mf_exists
	testl	%eax, %eax
	jne	.L30
	.loc 1 212 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 219 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L32
	.loc 1 221 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	change_suffix@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 222 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 223 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L30
.L32:
	.loc 1 226 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	change_suffix@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L30:
	.loc 1 228 0
	movl	$1, string_md@GOTOFF(%ebx)
	jmp	.L44
.L28:
	.loc 1 231 0
	movl	$0, string_md@GOTOFF(%ebx)
	.loc 1 232 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L44
.L26:
	.loc 1 236 0
	movl	-20(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	.LC9@GOTOFF(%ebx), %esi
	movl	%esi, -108(%ebp)
	movl	$5, -112(%ebp)
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
	jne	.L35
	.loc 1 237 0
	movl	string_mmd@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L37
	.loc 1 238 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 239 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	previous_mf_exists
	testl	%eax, %eax
	jne	.L39
	.loc 1 240 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 242 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L41
	.loc 1 244 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	change_suffix@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 245 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 246 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L39
.L41:
	.loc 1 249 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	change_suffix@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L39:
	.loc 1 251 0
	movl	$1, string_mmd@GOTOFF(%ebx)
	jmp	.L44
.L37:
	.loc 1 254 0
	movl	$0, string_mmd@GOTOFF(%ebx)
	.loc 1 255 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L44
.L35:
	.loc 1 260 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L44:
	.loc 1 262 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	add_implied_string, .-add_implied_string
	.type	copy_phase_options, @function
copy_phase_options:
.LFB8:
	.loc 1 266 0
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
	.loc 1 269 0
	call	first_option_seen@PLT
	movl	%eax, -12(%ebp)
	jmp	.L46
.L47:
	.loc 1 270 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	first_implied_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L48
.L49:
	.loc 1 275 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	option_matches_phase@PLT
	testl	%eax, %eax
	je	.L50
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	option_matches_language@PLT
	testl	%eax, %eax
	je	.L50
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_object_option@PLT
	testl	%eax, %eax
	jne	.L50
	.loc 1 281 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	option_matches_language@PLT
	testl	%eax, %eax
	jne	.L54
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_mask@PLT
	movl	$12, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	is_matching_phase@PLT
	testl	%eax, %eax
	je	.L50
	movl	$2, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	option_matches_language@PLT
	testl	%eax, %eax
	je	.L50
.L54:
	.loc 1 285 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_implied_string
.L50:
	.loc 1 270 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_implied_option@PLT
	movl	%eax, -8(%ebp)
.L48:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	no_more_implied_options@PLT
	testl	%eax, %eax
	je	.L49
	.loc 1 269 0
	call	next_option_seen@PLT
	movl	%eax, -12(%ebp)
.L46:
	call	more_option_seen@PLT
	testl	%eax, %eax
	jne	.L47
	.loc 1 290 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	copy_phase_options, .-copy_phase_options
	.section	.rodata
.LC11:
	.string	"-LANG:=f77"
.LC12:
	.string	"-LANG:=f90"
.LC13:
	.string	"-LANG:=kr_c"
.LC14:
	.string	"-LANG:=ansi_c"
.LC15:
	.string	"-LANG:=cplus"
	.text
	.type	add_language_option, @function
add_language_option:
.LFB9:
	.loc 1 305 0
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
	.loc 1 306 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$4, -8(%ebp)
	je	.L63
	cmpl	$4, -8(%ebp)
	ja	.L66
	cmpl	$3, -8(%ebp)
	je	.L62
	jmp	.L70
.L66:
	cmpl	$5, -8(%ebp)
	je	.L64
	cmpl	$6, -8(%ebp)
	je	.L65
	jmp	.L70
.L64:
	.loc 1 308 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 309 0
	jmp	.L70
.L65:
	.loc 1 311 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 312 0
	jmp	.L70
.L62:
	.loc 1 314 0
	movl	ansi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L67
	.loc 1 315 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L70
.L67:
	.loc 1 317 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 319 0
	jmp	.L70
.L63:
	.loc 1 321 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L70:
	.loc 1 324 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	add_language_option, .-add_language_option
	.section	.rodata
.LC16:
	.string	"-TARG:processor=%s"
	.text
	.type	add_targ_options, @function
add_targ_options:
.LFB10:
	.loc 1 336 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$132, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 336 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 338 0
	movl	target_cpu@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L74
.LBB3:
	.loc 1 340 0
	movl	target_cpu@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 341 0
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L74:
.LBE3:
	.loc 1 361 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L75
	call	__stack_chk_fail_local
.L75:
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	add_targ_options, .-add_targ_options
.globl driver_basename
	.type	driver_basename, @function
driver_basename:
.LFB11:
	.loc 1 368 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%edi
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$32, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 370 0
	leal	basebuf@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 372 0
	cmpl	$0, 8(%ebp)
	je	.L77
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L79
.L77:
	.loc 1 373 0
	movl	-12(%ebp), %edx
	movw	$46, (%edx)
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L80
.L79:
	.loc 1 375 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %edi
	movl	%edi, (%esp)
	call	strcpy@PLT
	movl	%eax, -16(%ebp)
	.loc 1 376 0
	movl	-16(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -24(%ebp)
	movl	$0, %eax
	cld
	movl	-24(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -16(%ebp)
	.loc 1 377 0
	jmp	.L81
.L82:
	.loc 1 378 0
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
.L81:
	.loc 1 377 0
	movl	-12(%ebp), %edx
	cmpl	%edx, -16(%ebp)
	je	.L85
	subl	$1, -16(%ebp)
	movl	-16(%ebp), %edi
	movzbl	(%edi), %eax
	cmpb	$47, %al
	je	.L82
	.loc 1 379 0
	jmp	.L85
.L86:
	.loc 1 380 0
	subl	$1, -16(%ebp)
	movl	-16(%ebp), %edx
	movzbl	(%edx), %eax
	cmpb	$47, %al
	jne	.L85
	.loc 1 381 0
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %edi
	movl	%edi, -20(%ebp)
	jmp	.L80
.L85:
	.loc 1 379 0
	movl	-12(%ebp), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L86
	.loc 1 383 0
	movl	-16(%ebp), %edx
	movl	%edx, -20(%ebp)
.L80:
	movl	-20(%ebp), %eax
	.loc 1 385 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE11:
	.size	driver_basename, .-driver_basename
.globl dirname
	.type	dirname, @function
dirname:
.LFB12:
	.loc 1 389 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%edi
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$32, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 391 0
	leal	dirbuf@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 393 0
	cmpl	$0, 8(%ebp)
	je	.L91
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L93
.L91:
	.loc 1 394 0
	movl	-12(%ebp), %edx
	movw	$46, (%edx)
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L94
.L93:
	.loc 1 396 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %edi
	movl	%edi, (%esp)
	call	strcpy@PLT
	movl	%eax, -16(%ebp)
	.loc 1 397 0
	movl	-16(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -24(%ebp)
	movl	$0, %eax
	cld
	movl	-24(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, -16(%ebp)
.L95:
	.loc 1 398 0
	movl	-12(%ebp), %eax
	cmpl	%eax, -16(%ebp)
	je	.L96
	subl	$1, -16(%ebp)
	movl	-16(%ebp), %edx
	movzbl	(%edx), %eax
	cmpb	$47, %al
	je	.L95
.L96:
	.loc 1 401 0
	movl	-12(%ebp), %edi
	cmpl	%edi, -16(%ebp)
	jne	.L101
	movl	-16(%ebp), %edx
	movzbl	(%edx), %eax
	cmpb	$47, %al
	jne	.L101
	.loc 1 402 0
	movl	-12(%ebp), %edi
	movw	$47, (%edi)
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L94
.L102:
	.loc 1 405 0
	subl	$1, -16(%ebp)
	movl	-16(%ebp), %edx
	movzbl	(%edx), %eax
	cmpb	$47, %al
	jne	.L101
	.loc 1 406 0
	movl	-12(%ebp), %edi
	cmpl	%edi, -16(%ebp)
	jne	.L106
	.loc 1 407 0
	movl	-12(%ebp), %eax
	movw	$47, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L94
.L107:
	.loc 1 409 0
	subl	$1, -16(%ebp)
.L106:
	.loc 1 408 0
	movl	-16(%ebp), %edx
	movzbl	(%edx), %eax
	cmpb	$47, %al
	je	.L107
	.loc 1 410 0
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %edi
	movb	$0, (%edi)
	.loc 1 411 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L94
.L101:
	.loc 1 404 0
	movl	-12(%ebp), %edx
	cmpl	%edx, -16(%ebp)
	jne	.L102
	.loc 1 414 0
	movl	-12(%ebp), %edi
	movw	$46, (%edi)
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L94:
	movl	-20(%ebp), %eax
	.loc 1 416 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	dirname, .-dirname
	.type	add_arg, @function
add_arg:
.LFB13:
	.loc 1 454 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$36, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 458 0
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 460 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	vasprintf@PLT
	.loc 1 461 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 462 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 465 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	add_arg, .-add_arg
	.section	.rodata
	.type	__PRETTY_FUNCTION__.4546, @object
	.size	__PRETTY_FUNCTION__.4546, 18
__PRETTY_FUNCTION__.4546:
	.string	"set_library_paths"
.LC17:
	.string	"COMP_TARGET_ROOT"
.LC18:
	.string	"%s/libsl2/gcc-lib//3.2/32"
.LC19:
	.string	"%s/libsl2/gcc-lib//lib"
.LC20:
	.string	"%s//libsl2/"
.LC21:
	.string	"%s/usr/libsl2/"
.LC22:
	.string	"%s/lib/gcc-lib//3.2/32"
.LC23:
	.string	"%s/lib/gcc-lib//lib"
.LC24:
	.string	"%s//lib/"
.LC25:
	.string	"%s/usr/lib/"
.LC26:
	.string	"%s/lib/gcc-lib//3.2"
.LC27:
	.string	"%s/lib/gcc-lib//lib64"
.LC28:
	.string	"%s//lib64"
.LC29:
	.string	"%s/lib/"
.LC30:
	.string	"../../driver/phases.c"
.LC31:
	.string	"strlen(our_path) > 1027"
.LC32:
	.string	"-L"
.LC33:
	.string	"-L/lib"
.LC34:
	.string	"-L/usr/lib"
.LC35:
	.string	"-L/lib64"
.LC36:
	.string	"-L/usr/lib64"
	.text
	.type	set_library_paths, @function
set_library_paths:
.LFB14:
	.loc 1 489 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%edi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$64, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 492 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -12(%ebp)
	.loc 1 493 0
	cmpl	$0, -12(%ebp)
	je	.L114
	.loc 1 494 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L116
.L114:
	.loc 1 497 0
	call	get_executable_dir@PLT
	movl	%eax, (%esp)
	call	directory_path@PLT
	movl	%eax, -16(%ebp)
.L116:
	.loc 1 502 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L117
	.loc 1 507 0
	movl	use_h264libs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L119
	.loc 1 508 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 512 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 514 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 515 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	jmp	.L122
.L119:
	.loc 1 518 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 522 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 524 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 525 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	jmp	.L122
.L117:
	.loc 1 529 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 532 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 534 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 535 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 537 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	sl_crt@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 538 0
	movl	-28(%ebp), %eax
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
	cmpl	$1027, %eax
	ja	.L122
	leal	__PRETTY_FUNCTION__.4546@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$538, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	__assert_fail@PLT
.L122:
	.loc 1 542 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 543 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 544 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 559 0
	cmpl	$0, 12(%ebp)
	je	.L124
	.loc 1 560 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 561 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L126
	.loc 1 562 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 563 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L124
.L126:
	.loc 1 565 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 566 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L124:
	.loc 1 570 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 571 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 572 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 573 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 574 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE14:
	.size	set_library_paths, .-set_library_paths
	.section	.rodata
.LC37:
	.string	"-"
.LC38:
	.string	"stdin.f90"
.LC39:
	.string	"stdin.cc"
.LC40:
	.string	"stdin.s"
.LC41:
	.string	"stdin.c"
	.text
	.type	fix_name_by_phase, @function
fix_name_by_phase:
.LFB15:
	.loc 1 585 0
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
	subl	$36, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 586 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 588 0
	cmpl	$0, 8(%ebp)
	je	.L130
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$2, -44(%ebp)
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
	jne	.L130
	.loc 1 589 0
	movl	12(%ebp), %eax
	subl	$2, %eax
	cmpl	$8, %eax
	ja	.L133
	.loc 1 599 0
	jmp	.L130
.L133:
	.loc 1 601 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$11, -32(%ebp)
	ja	.L135
	movl	$1, %eax
	movl	%eax, %esi
	movzbl	-32(%ebp), %ecx
	sall	%cl, %esi
	movl	%esi, -48(%ebp)
	movl	-48(%ebp), %eax
	andl	$516, %eax
	testl	%eax, %eax
	jne	.L136
	movl	-48(%ebp), %eax
	andl	$120, %eax
	testl	%eax, %eax
	jne	.L137
	movl	-48(%ebp), %eax
	andl	$3072, %eax
	testl	%eax, %eax
	jne	.L138
	jmp	.L135
.L137:
	.loc 1 606 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 607 0
	jmp	.L130
.L136:
	.loc 1 610 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 611 0
	jmp	.L130
.L138:
	.loc 1 614 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 615 0
	jmp	.L130
.L135:
	.loc 1 618 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
.L130:
	.loc 1 624 0
	movl	-16(%ebp), %eax
	.loc 1 625 0
	addl	$36, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	fix_name_by_phase, .-fix_name_by_phase
	.section	.rodata
.LC42:
	.string	"stdin.f"
	.text
.globl fix_name_by_lang
	.type	fix_name_by_lang, @function
fix_name_by_lang:
.LFB16:
	.loc 1 629 0
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
	subl	$32, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 630 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 632 0
	cmpl	$0, 8(%ebp)
	je	.L141
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$2, -44(%ebp)
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
	jne	.L141
	.loc 1 633 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$6, -32(%ebp)
	ja	.L148
	cmpl	$5, -32(%ebp)
	jae	.L146
	cmpl	$4, -32(%ebp)
	je	.L145
	jmp	.L144
.L148:
	cmpl	$7, -32(%ebp)
	je	.L147
	jmp	.L144
.L146:
	.loc 1 636 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 637 0
	jmp	.L141
.L147:
	.loc 1 639 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 640 0
	jmp	.L141
.L145:
	.loc 1 642 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 643 0
	jmp	.L141
.L144:
	.loc 1 645 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
.L141:
	.loc 1 648 0
	movl	-16(%ebp), %eax
	.loc 1 649 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	fix_name_by_lang, .-fix_name_by_lang
	.section	.rodata
.LC43:
	.string	"-isystem"
	.text
	.type	add_inc_path, @function
add_inc_path:
.LFB17:
	.loc 1 657 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$36, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 661 0
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 662 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	vasprintf@PLT
	.loc 1 663 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_directory@PLT
	testl	%eax, %eax
	je	.L151
	.loc 1 664 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 665 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L151:
	.loc 1 667 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 669 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	add_inc_path, .-add_inc_path
	.local	_64bit.4659
	.comm	_64bit.4659,4,4
	.local	_64bit_set.4658
	.comm	_64bit_set.4658,4,4
.globl platform_is_64bit
	.type	platform_is_64bit, @function
platform_is_64bit:
.LFB18:
	.loc 1 672 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$404, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 672 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 676 0
	movl	_64bit_set.4658@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L155
.LBB4:
	.loc 1 679 0
	leal	-398(%ebp), %eax
	movl	%eax, (%esp)
	call	uname@PLT
	.loc 1 688 0
	movl	$0, _64bit_set.4658@GOTOFF(%ebx)
	.loc 1 689 0
	movl	$0, _64bit.4659@GOTOFF(%ebx)
.L155:
.LBE4:
	.loc 1 693 0
	movl	_64bit.4659@GOTOFF(%ebx), %eax
	.loc 1 694 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L158
	call	__stack_chk_fail_local
.L158:
	addl	$404, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	platform_is_64bit, .-platform_is_64bit
	.local	native_set.4671
	.comm	native_set.4671,4,4
	.local	native.4670
	.comm	native.4670,4,4
.globl target_is_native
	.type	target_is_native, @function
target_is_native:
.LFB19:
	.loc 1 698 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 715 0
	movl	$0, native_set.4671@GOTOFF(%ecx)
	.loc 1 716 0
	movl	$0, native.4670@GOTOFF(%ecx)
	.loc 1 718 0
	movl	native.4670@GOTOFF(%ecx), %eax
	.loc 1 719 0
	popl	%ebp
	ret
.LFE19:
	.size	target_is_native, .-target_is_native
	.section	.rodata
.LC44:
	.string	"-D_REENTRANT"
.LC45:
	.string	"-D__JAVI__"
.LC46:
	.string	"-D__SL__"
	.text
	.type	add_file_args_first, @function
add_file_args_first:
.LFB20:
	.loc 1 725 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$20, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 726 0
	movl	12(%ebp), %eax
	subl	$5, %eax
	cmpl	$1, %eax
	ja	.L166
	.loc 1 730 0
	movl	$103, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L164
	.loc 1 731 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L164:
	.loc 1 740 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 741 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L166:
	.loc 1 744 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	add_file_args_first, .-add_file_args_first
	.section	.rodata
	.type	__PRETTY_FUNCTION__.4710, @object
	.size	__PRETTY_FUNCTION__.4710, 14
__PRETTY_FUNCTION__.4710:
	.string	"add_file_args"
.LC47:
	.string	">"
.LC48:
	.string	"p"
.LC49:
	.string	"f"
.LC50:
	.string	"-Xdo_linesplice"
.LC51:
	.string	"-dollar"
.LC52:
	.string	"-E"
.LC53:
	.string	"-F"
.LC54:
	.string	"i"
.LC55:
	.string	"-###"
.LC56:
	.string	"-D__MIPSEL__"
.LC57:
	.string	"-DRAND32"
.LC58:
	.string	"-Os"
.LC59:
	.string	"-xassembler-with-cpp"
.LC60:
	.string	"-xc++"
.LC61:
	.string	"-traditional"
.LC62:
	.string	"-Wno-endif-labels"
.LC63:
	.string	"-xc"
.LC64:
	.string	"//lib/gcc-lib//3.2/include"
.LC65:
	.string	"/usr/include"
.LC66:
	.string	"(target_is_native() == 0)"
.LC67:
	.string	"%s/usr/include"
.LC68:
	.string	"%s/include"
.LC69:
	.string	"%s/usr/include/c++"
.LC70:
	.string	"-o"
.LC71:
	.string	"ii"
.LC72:
	.string	"s"
.LC73:
	.string	".s"
.LC74:
	.string	"-s"
.LC75:
	.string	"-#%s"
.LC76:
	.string	"-I=%s"
.LC77:
	.string	"-original_filename=%s"
.LC78:
	.string	"-include=/usr/include"
.LC79:
	.string	"-r=%c"
.LC80:
	.string	"-r=2"
.LC81:
	.string	"M"
.LC82:
	.string	"L"
.LC83:
	.string	"m"
.LC84:
	.string	"l"
.LC85:
	.string	"-L=%s"
.LC86:
	.string	"a"
.LC87:
	.string	"-analysis=%snl"
.LC88:
	.string	"-noanalysis"
.LC89:
	.string	"-CMP=%s"
.LC90:
	.string	"-cp=i"
.LC91:
	.string	"P"
.LC92:
	.string	"-XK%s"
.LC93:
	.string	"-ansi"
.LC94:
	.string	"-FE:full_split=off"
.LC95:
	.string	"-fpic"
.LC96:
	.string	"-fPIC"
.LC97:
	.string	"B"
.LC98:
	.string	"-fB,%s"
.LC99:
	.string	"-fl,%s"
.LC100:
	.string	"-disable_open_mp"
.LC101:
	.string	"-disable_old_mp"
.LC102:
	.string	"-include=%s/include/"
.LC103:
	.string	"--"
.LC104:
	.string	"T"
.LC105:
	.string	"-rs"
.LC106:
	.string	"-rx"
.LC107:
	.string	"-ftpp"
.LC108:
	.string	"-fno-pic"
.LC109:
	.string	"-fno-PIC"
.LC110:
	.string	"-Ca"
.LC111:
	.string	"-fC,%s"
.LC112:
	.string	"-fD,%s"
.LC113:
	.string	"-MDtarget"
.LC114:
	.string	"o"
.LC115:
	.string	"-dx"
.LC116:
	.string	"-version"
.LC117:
	.string	"-quiet"
.LC118:
	.string	"-fno-math-errno"
.LC119:
	.string	"-fno-common"
.LC120:
	.string	"-fno-exceptions"
.LC121:
	.string	"-fno-rtti"
.LC122:
	.string	"-dumpbase"
.LC123:
	.string	"I"
.LC124:
	.string	"-fI,%s"
.LC125:
	.string	"-fi,%s.instr"
.LC126:
	.string	"-ff,%s.instr"
.LC127:
	.string	"-fo,%s"
.LC128:
	.string	"-cmds"
.LC129:
	.string	"-fs,%s"
.LC130:
	.string	"-fs,%s.s"
.LC131:
	.string	"-g"
.LC132:
	.string	"%s.s"
.LC133:
	.string	"-mips4"
.LC134:
	.string	"-qwa1"
.LC135:
	.string	"-qwa2"
.LC136:
	.string	"-mips64"
.LC137:
	.string	"crt1.o"
.LC138:
	.string	"crti.o"
.LC139:
	.string	"crtbegin.o"
.LC140:
	.string	"ftz.o"
.LC141:
	.string	"-V"
	.align 4
.LC142:
	.string	"-IPA:propagate_feedback_file=%s"
	.align 4
.LC143:
	.string	"-IPA:propagate_annotation_file=%s"
.LC144:
	.string	"a.out"
.LC145:
	.string	"C"
.LC146:
	.string	".fb"
.LC147:
	.string	"a.out.fb"
.LC148:
	.string	"-pixie_file"
.LC149:
	.string	"/"
.LC150:
	.string	".x.Counts"
.LC151:
	.string	"-directory"
.LC152:
	.string	"-rpath"
.LC153:
	.string	"-counts_file"
.LC154:
	.string	"-ldpath"
.LC155:
	.string	"-pixie"
.LC156:
	.string	"-feedback"
.LC157:
	.string	".x"
	.align 4
.LC158:
	.string	"No count file was specified for a prof run"
.LC159:
	.string	"/dev/null"
	.text
	.type	add_file_args, @function
add_file_args:
.LFB21:
	.loc 1 748 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%edi
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$640, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -604(%ebp)
	.loc 1 748 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 753 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fix_name_by_phase
	movl	%eax, -580(%ebp)
	.loc 1 757 0
	movl	current_phase@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 758 0
	cmpl	$42, 12(%ebp)
	ja	.L491
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	.L190@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L190:
	.long	.L491@GOTOFF
	.long	.L491@GOTOFF
	.long	.L169@GOTOFF
	.long	.L170@GOTOFF
	.long	.L171@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L173@GOTOFF
	.long	.L173@GOTOFF
	.long	.L173@GOTOFF
	.long	.L173@GOTOFF
	.long	.L174@GOTOFF
	.long	.L491@GOTOFF
	.long	.L175@GOTOFF
	.long	.L175@GOTOFF
	.long	.L176@GOTOFF
	.long	.L491@GOTOFF
	.long	.L177@GOTOFF
	.long	.L177@GOTOFF
	.long	.L178@GOTOFF
	.long	.L178@GOTOFF
	.long	.L179@GOTOFF
	.long	.L179@GOTOFF
	.long	.L491@GOTOFF
	.long	.L491@GOTOFF
	.long	.L491@GOTOFF
	.long	.L180@GOTOFF
	.long	.L181@GOTOFF
	.long	.L182@GOTOFF
	.long	.L491@GOTOFF
	.long	.L183@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L491@GOTOFF
	.long	.L491@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L186@GOTOFF
	.long	.L186@GOTOFF
	.long	.L491@GOTOFF
	.long	.L187@GOTOFF
	.long	.L188@GOTOFF
	.long	.L189@GOTOFF
	.text
.L169:
.LBB5:
	.loc 1 760 0
	movl	-580(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 761 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 762 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 763 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 764 0
	jmp	.L491
.L170:
	.loc 1 766 0
	movl	run_m4@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L191
	.loc 1 767 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 768 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L193
.L191:
	.loc 1 770 0
	movl	-580(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L193:
	.loc 1 772 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 773 0
	movl	$1, 8(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 774 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 775 0
	jmp	.L491
.L171:
	.loc 1 777 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	jne	.L173
	.loc 1 778 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 779 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L173:
	.loc 1 786 0
	movl	$48, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L195
	.loc 1 787 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L195:
	.loc 1 789 0
	cmpl	$10, 12(%ebp)
	jne	.L197
	.loc 1 790 0
	movl	expand_ftpp_macros@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L199
	.loc 1 791 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L199:
	.loc 1 793 0
	movl	$1, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	set_f90_source_form
.L197:
	.loc 1 795 0
	movl	input_source@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L201
	.loc 1 796 0
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
.L201:
	.loc 1 797 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 798 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L491
	.loc 1 799 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 800 0
	movl	current_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
	.loc 1 801 0
	movl	input_source@GOTOFF(%ebx), %edx
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 802 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 805 0
	jmp	.L491
.L172:
	.loc 1 808 0
	movl	show_but_not_run@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L205
	.loc 1 809 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L205:
	.loc 1 816 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 817 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 818 0
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 819 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 821 0
	movl	ospace@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L207
	.loc 1 822 0
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L207:
	.loc 1 825 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -628(%ebp)
	cmpl	$6, -628(%ebp)
	ja	.L213
	cmpl	$5, -628(%ebp)
	jae	.L211
	cmpl	$4, -628(%ebp)
	je	.L210
	jmp	.L209
.L213:
	cmpl	$7, -628(%ebp)
	je	.L212
	jmp	.L209
.L212:
	.loc 1 827 0
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 828 0
	jmp	.L214
.L210:
	.loc 1 830 0
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 831 0
	jmp	.L214
.L211:
	.loc 1 834 0
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 835 0
	movl	$658, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L209
	.loc 1 836 0
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L209:
	.loc 1 839 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L214:
	.loc 1 851 0
	call	target_is_native@PLT
	testl	%eax, %eax
	je	.L216
	movl	$139, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L216
	.loc 1 868 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 869 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 876 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 877 0
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L216:
	.loc 1 882 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 886 0
	call	target_is_native@PLT
	testl	%eax, %eax
	je	.L219
	leal	__PRETTY_FUNCTION__.4710@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$886, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	__assert_fail@PLT
.L219:
	.loc 1 887 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -576(%ebp)
	.loc 1 890 0
	cmpl	$0, -576(%ebp)
	je	.L221
	.loc 1 891 0
	movl	-576(%ebp), %eax
	movl	%eax, -572(%ebp)
	.loc 1 892 0
	movl	-572(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-596(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	jmp	.L223
.L221:
	.loc 1 895 0
	call	get_executable_dir@PLT
	movl	%eax, (%esp)
	call	directory_path@PLT
	movl	%eax, -572(%ebp)
	.loc 1 896 0
	movl	-572(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-596(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
.L223:
	.loc 1 898 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 899 0
	movl	-596(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 900 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L224
	.loc 1 901 0
	movl	-572(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-596(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 902 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 903 0
	movl	-596(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L224:
	.loc 1 911 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 912 0
	movl	read_stdin@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L226
	movl	$742, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L491
.L226:
	.loc 1 914 0
	movl	$742, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L228
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L228
	.loc 1 915 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 916 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 914 0
	jmp	.L491
.L228:
	.loc 1 918 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L491
	.loc 1 919 0
	movl	current_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
	.loc 1 924 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L233
	.loc 1 925 0
	movl	input_source@GOTOFF(%ebx), %eax
	leal	.LC71@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	jmp	.L235
.L233:
	.loc 1 927 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	jne	.L236
	.loc 1 928 0
	movl	input_source@GOTOFF(%ebx), %edx
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 929 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L235
	.loc 1 930 0
	movl	input_source@GOTOFF(%ebx), %eax
	leal	.LC73@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	jmp	.L235
.L236:
	.loc 1 934 0
	movl	input_source@GOTOFF(%ebx), %eax
	leal	.LC54@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
.L235:
	.loc 1 936 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 938 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 940 0
	jmp	.L491
.L174:
.LBB6:
	.loc 1 944 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, -568(%ebp)
	.loc 1 945 0
	movl	current_phase@GOT(%ebx), %eax
	movl	$12, (%eax)
	.loc 1 946 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 947 0
	movl	coco_setfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L240
	movl	coco_setfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -624(%ebp)
	jmp	.L242
.L240:
	leal	.LC1@GOTOFF(%ebx), %edi
	movl	%edi, -624(%ebp)
.L242:
	movl	-624(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 948 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 949 0
	movl	$742, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L243
	.loc 1 950 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L245
	.loc 1 951 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L248
.L245:
	.loc 1 953 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L248
.L243:
	.loc 1 955 0
	movl	input_source@GOTOFF(%ebx), %edx
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 956 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L248:
	.loc 1 958 0
	movl	-568(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 960 0
	jmp	.L491
.L175:
.LBE6:
	.loc 1 964 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 965 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 966 0
	movl	-580(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 967 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 968 0
	cmpl	$13, 12(%ebp)
	jne	.L249
	.loc 1 969 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L249:
.LBB7:
	.loc 1 974 0
	movl	roundoff@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L251
	.loc 1 976 0
	movl	roundoff@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 977 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L253
.L251:
	.loc 1 978 0
	movl	O3_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L253
	.loc 1 981 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L253:
	.loc 1 983 0
	cmpl	$14, 12(%ebp)
	jne	.L255
	.loc 1 984 0
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, -560(%ebp)
	.loc 1 985 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, -564(%ebp)
	jmp	.L257
.L255:
	.loc 1 988 0
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, -560(%ebp)
	.loc 1 989 0
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, -564(%ebp)
.L257:
	.loc 1 991 0
	movl	keep_list@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L258
	.loc 1 992 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	movl	-564(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 995 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L260
.L258:
	.loc 1 997 0
	movl	input_source@GOTOFF(%ebx), %edx
	movl	-564(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 999 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L260:
	.loc 1 1001 0
	movl	keep_mp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L261
	.loc 1 1002 0
	movl	$1, 8(%esp)
	movl	-560(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 1004 0
	movl	$1, 8(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1007 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L263
.L261:
	.loc 1 1009 0
	movl	input_source@GOTOFF(%ebx), %edx
	movl	-560(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 1010 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L263:
.LBE7:
	.loc 1 1013 0
	movl	keep_listing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L264
	.loc 1 1014 0
	leal	-524(%ebp), %eax
	movl	$1030712365, (%eax)
	movl	$1953194863, 4(%eax)
	movw	$108, 8(%eax)
	.loc 1 1015 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L264:
	.loc 1 1017 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1018 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1019 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1025 0
	jmp	.L491
.L176:
	.loc 1 1027 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 1028 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1029 0
	movl	keep_mp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L266
	.loc 1 1030 0
	movl	$1, 8(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	jmp	.L268
.L266:
	.loc 1 1032 0
	movl	input_source@GOTOFF(%ebx), %eax
	leal	.LC91@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
.L268:
	.loc 1 1034 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1035 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1036 0
	jmp	.L491
.L177:
	.loc 1 1041 0
	movl	ansi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L269
	.loc 1 1042 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L269:
	.loc 1 1046 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L271
	movl	inline_t@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L273
.L271:
	.loc 1 1047 0
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L273:
	.loc 1 1050 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 1051 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 1067 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1068 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1069 0
	movl	keep_listing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L274
	.loc 1 1070 0
	movl	$1, 8(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1071 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L274:
	.loc 1 1074 0
	cmpl	$18, 12(%ebp)
	jne	.L276
	.loc 1 1075 0
	movl	Disable_open_mp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L278
	.loc 1 1076 0
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L278:
	.loc 1 1078 0
	movl	Disable_old_mp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L276
	.loc 1 1079 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L276:
.LBB8:
	.loc 1 1097 0
	call	get_executable_dir@PLT
	movl	%eax, (%esp)
	call	directory_path@PLT
	movl	%eax, -556(%ebp)
	.loc 1 1101 0
	movl	-556(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1103 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.LBE8:
	.loc 1 1106 0
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L281
	.loc 1 1107 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L281:
	.loc 1 1108 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1109 0
	jmp	.L491
.L180:
	.loc 1 1112 0
	movl	keep_listing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L491
.LBB9:
	.loc 1 1116 0
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 1117 0
	movl	input_source@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_given_name@PLT
	movl	%eax, -552(%ebp)
	.loc 1 1118 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L285
	movl	keep_cif@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L287
.L285:
	movl	$1, -620(%ebp)
	jmp	.L288
.L287:
	movl	$0, -620(%ebp)
.L288:
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	movl	-620(%ebp), %edi
	movl	%edi, 8(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_given_name@PLT
	movl	%eax, -548(%ebp)
	.loc 1 1119 0
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1120 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1121 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1122 0
	movl	-552(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1123 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1124 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	$47, 4(%esp)
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -544(%ebp)
	.loc 1 1125 0
	cmpl	$0, -544(%ebp)
	je	.L491
	.loc 1 1127 0
	movl	-548(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1129 0
	jmp	.L491
.L178:
.LBE9:
	.loc 1 1135 0
	movl	ansi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L290
	.loc 1 1136 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L290:
	.loc 1 1139 0
	cmpl	$20, 12(%ebp)
	jne	.L292
	.loc 1 1140 0
	movl	expand_ftpp_macros@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L294
	.loc 1 1141 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L294:
	.loc 1 1144 0
	movl	use_ftpp@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L292
	.loc 1 1145 0
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L292:
	.loc 1 1149 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 1150 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 1152 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 1153 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 1155 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L297
	movl	inline_t@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L299
.L297:
	.loc 1 1156 0
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L299:
	.loc 1 1159 0
	movl	keep_listing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L300
	.loc 1 1160 0
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L300:
	.loc 1 1177 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1178 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1179 0
	movl	$1, 8(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1180 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1181 0
	movl	$1, 8(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1182 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1184 0
	movl	$714, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L302
	movl	$715, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L302
	.loc 1 1185 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1186 0
	movl	$1, 8(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L302:
	.loc 1 1188 0
	movl	keep_listing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L305
	.loc 1 1189 0
	movl	$1, 8(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1190 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L305:
	.loc 1 1192 0
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	do_f90_common_args
.LBB10:
	.loc 1 1195 0
	call	get_executable_dir@PLT
	movl	%eax, (%esp)
	call	directory_path@PLT
	movl	%eax, -540(%ebp)
	.loc 1 1199 0
	movl	-540(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1201 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.LBE10:
	.loc 1 1204 0
	movl	Disable_open_mp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L307
	.loc 1 1205 0
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L307:
	.loc 1 1208 0
	movl	Disable_old_mp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L309
	.loc 1 1209 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L309:
	.loc 1 1212 0
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L311
	.loc 1 1213 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L311:
	.loc 1 1214 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1216 0
	movl	$742, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L491
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L491
	.loc 1 1217 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1218 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1221 0
	jmp	.L491
.L179:
	.loc 1 1231 0
	movl	show_but_not_run@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L316
	.loc 1 1232 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L316:
	.loc 1 1233 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1241 0
	movl	show_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L318
	.loc 1 1242 0
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L318:
	.loc 1 1245 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L320
	.loc 1 1246 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L320:
	.loc 1 1250 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L322
	.loc 1 1262 0
	movl	fmath_errno@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L322
	.loc 1 1263 0
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L322:
	.loc 1 1265 0
	cmpl	$22, 12(%ebp)
	jne	.L325
	.loc 1 1266 0
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L325:
	.loc 1 1269 0
	cmpl	$22, 12(%ebp)
	jne	.L327
	.loc 1 1271 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1272 0
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L327:
	.loc 1 1276 0
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1280 0
	movl	-580(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1281 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1282 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1283 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1284 0
	jmp	.L491
.L181:
	.loc 1 1286 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	jne	.L329
	.loc 1 1287 0
	movl	-580(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L331
.L329:
	.loc 1 1289 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L331:
	.loc 1 1291 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1292 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1293 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1294 0
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L332
	.loc 1 1295 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L332:
	.loc 1 1296 0
	movl	-580(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1297 0
	jmp	.L491
.L182:
	.loc 1 1299 0
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_language_option
	.loc 1 1300 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$13, %eax
	jne	.L334
	.loc 1 1301 0
	movl	-580(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L336
.L334:
	.loc 1 1303 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L336:
	.loc 1 1305 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1307 0
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L337
	.loc 1 1308 0
	movl	fb_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L339
	.loc 1 1309 0
	movl	fb_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L341
.L339:
	.loc 1 1310 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L342
	.loc 1 1311 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L341
.L342:
	.loc 1 1313 0
	leal	-524(%ebp), %eax
	movl	$745104941, (%eax)
	movl	$1970220641, 4(%eax)
	movl	$1852386932, 8(%eax)
	movl	$7500915, 12(%eax)
.L341:
	.loc 1 1314 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L344
.L337:
	.loc 1 1316 0
	movl	opt_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L344
	.loc 1 1318 0
	movl	opt_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1319 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L344:
	.loc 1 1321 0
	movl	current_phase@GOT(%ebx), %eax
	movl	$33, (%eax)
	.loc 1 1322 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L346
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	current_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L346
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L346
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$39, %eax
	jne	.L350
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L346
.L350:
	.loc 1 1330 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1322 0
	jmp	.L352
.L346:
	.loc 1 1334 0
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	get_object_file@PLT
	movl	%eax, 8(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L352:
	.loc 1 1336 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1337 0
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L353
	.loc 1 1338 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L353:
	.loc 1 1339 0
	movl	-580(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1342 0
	movl	ipl_cmds@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L491
	.loc 1 1343 0
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1344 0
	movl	ipl_cmds@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	append_string_lists@PLT
	.loc 1 1346 0
	jmp	.L491
.L183:
	.loc 1 1348 0
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_language_option
	.loc 1 1365 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -616(%ebp)
	cmpl	$13, -616(%ebp)
	je	.L359
	cmpl	$13, -616(%ebp)
	ja	.L360
	cmpl	$12, -616(%ebp)
	je	.L358
	jmp	.L357
.L360:
	cmpl	$15, -616(%ebp)
	ja	.L357
	jmp	.L358
.L359:
	.loc 1 1367 0
	call	post_fe_phase
	cmpl	$27, %eax
	jne	.L358
	.loc 1 1368 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, -592(%ebp)
	.loc 1 1369 0
	jmp	.L362
.L358:
	.loc 1 1375 0
	movl	-580(%ebp), %eax
	movl	%eax, -592(%ebp)
	.loc 1 1376 0
	jmp	.L362
.L357:
	.loc 1 1378 0
	call	post_fe_phase
	cmpl	$27, %eax
	jne	.L363
	.loc 1 1379 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, -592(%ebp)
	jmp	.L362
.L363:
	.loc 1 1381 0
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, -592(%ebp)
.L362:
	.loc 1 1384 0
	movl	-592(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1385 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1387 0
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L365
	.loc 1 1388 0
	movl	fb_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L367
	.loc 1 1389 0
	movl	fb_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L369
.L367:
	.loc 1 1390 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L370
	.loc 1 1391 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L369
.L370:
	.loc 1 1393 0
	leal	-524(%ebp), %eax
	movl	$745104941, (%eax)
	movl	$1970220641, 4(%eax)
	movl	$1852386932, 8(%eax)
	movl	$7500915, 12(%eax)
.L369:
	.loc 1 1394 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L372
.L365:
	.loc 1 1396 0
	movl	opt_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L372
	.loc 1 1398 0
	movl	opt_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1399 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L372:
	.loc 1 1402 0
	movl	internal_fb_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L374
	.loc 1 1404 0
	movl	internal_fb_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1405 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L374:
	.loc 1 1408 0
	movl	skip_as@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L376
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$30, %eax
	je	.L376
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L379
.L376:
	.loc 1 1410 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1411 0
	movl	current_phase@GOT(%ebx), %eax
	movl	$30, (%eax)
	.loc 1 1412 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$30, %eax
	jne	.L380
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L380
	.loc 1 1413 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 1412 0
	jmp	.L383
.L380:
	.loc 1 1415 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	construct_name@PLT
	movl	%eax, input_source@GOTOFF(%ebx)
.L383:
	.loc 1 1416 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$30, %eax
	je	.L384
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L386
.L384:
	.loc 1 1417 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1416 0
	jmp	.L387
.L386:
.LBB11:
	.loc 1 1419 0
	movl	input_source@GOTOFF(%ebx), %edx
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -536(%ebp)
	.loc 1 1420 0
	movl	-536(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_for_cleanup@PLT
	.loc 1 1421 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L387:
.LBE11:
	.loc 1 1423 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L379:
	.loc 1 1425 0
	movl	skip_as@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L388
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$30, %eax
	je	.L388
	.loc 1 1427 0
	movl	current_phase@GOT(%ebx), %eax
	movl	$33, (%eax)
	.loc 1 1429 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L391
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	current_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L391
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L391
	.loc 1 1438 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1429 0
	jmp	.L395
.L391:
	.loc 1 1440 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L396
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L396
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L399
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L399
.L396:
	movl	$1, -612(%ebp)
	jmp	.L401
.L399:
	movl	$0, -612(%ebp)
.L401:
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-612(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 8(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L395:
	.loc 1 1444 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L388:
	.loc 1 1446 0
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L402
	.loc 1 1447 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L402:
	.loc 1 1448 0
	movl	-580(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1449 0
	jmp	.L491
.L184:
	.loc 1 1452 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	jne	.L404
	movl	glevel@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L404
	.loc 1 1454 0
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L404:
	.loc 1 1457 0
	movl	dashdash_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L407
	.loc 1 1458 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L407:
	.loc 1 1460 0
	movl	show_but_not_run@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L409
	.loc 1 1461 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L409:
.LBB12:
	.loc 1 1469 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	$-1, %ecx
	movl	%eax, -632(%ebp)
	movl	$0, %eax
	cld
	movl	-632(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -532(%ebp)
	.loc 1 1470 0
	movl	input_source@GOTOFF(%ebx), %edx
	movl	-532(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L411
	movl	input_source@GOTOFF(%ebx), %edx
	movl	-532(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	je	.L413
.L411:
	.loc 1 1472 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1473 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1470 0
	jmp	.L414
.L413:
	.loc 1 1475 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L414:
.LBE12:
	.loc 1 1478 0
	movl	current_phase@GOT(%ebx), %eax
	movl	$33, (%eax)
	.loc 1 1483 0
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1484 0
	movl	qwalign1@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L415
	.loc 1 1485 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L417
.L415:
	.loc 1 1488 0
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L417:
	.loc 1 1492 0
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1495 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1498 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L418
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	current_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L418
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L418
	.loc 1 1507 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1498 0
	jmp	.L491
.L418:
	.loc 1 1512 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L423
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L423
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$33, %eax
	je	.L423
.LBB13:
	.loc 1 1515 0
	movl	-580(%ebp), %eax
	movl	%eax, (%esp)
	call	get_object_file@PLT
	movl	%eax, -528(%ebp)
	.loc 1 1516 0
	movl	-528(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1512 0
	jmp	.L491
.L423:
.LBE13:
	.loc 1 1518 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L427
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L427
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L430
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L430
.L427:
	movl	$1, -608(%ebp)
	jmp	.L432
.L430:
	movl	$0, -608(%ebp)
.L432:
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-608(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1521 0
	jmp	.L491
.L186:
	.loc 1 1530 0
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	append_libraries_to_list@PLT
	.loc 1 1531 0
	movl	show_but_not_run@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L433
	.loc 1 1532 0
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L433:
	.loc 1 1539 0
	call	target_is_native@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	set_library_paths
	.loc 1 1541 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L435
	.loc 1 1542 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1543 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L435:
	.loc 1 1547 0
	movl	$137, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L491
	.loc 1 1548 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1549 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1550 0
	cmpl	$38, 12(%ebp)
	jne	.L439
	.loc 1 1552 0
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L439:
	.loc 1 1556 0
	movl	ftz_crt@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L491
	.loc 1 1557 0
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1560 0
	jmp	.L491
.L185:
	.loc 1 1563 0
	movl	show_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L442
	.loc 1 1564 0
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L442:
	.loc 1 1574 0
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	append_libraries_to_list@PLT
	.loc 1 1578 0
	call	target_is_native@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	set_library_paths
	.loc 1 1582 0
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L444
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L444
	movl	$140, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L444
	.loc 1 1585 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1586 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1587 0
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1588 0
	movl	ftz_crt@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L444
	.loc 1 1589 0
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L444:
	.loc 1 1592 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L449
	.loc 1 1593 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1594 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L449:
	.loc 1 1597 0
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L451
	cmpl	$36, 12(%ebp)
	je	.L451
	.loc 1 1598 0
	movl	fb_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L454
	.loc 1 1599 0
	movl	fb_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L456
.L454:
	.loc 1 1600 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L457
	.loc 1 1601 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L456
.L457:
	.loc 1 1603 0
	leal	-524(%ebp), %eax
	movl	$1095780653, (%eax)
	movl	$1869770810, 4(%eax)
	movl	$1634165104, 8(%eax)
	movl	$1717527924, 12(%eax)
	movl	$1650746725, 16(%eax)
	movl	$1600873313, 20(%eax)
	movl	$1701603686, 24(%eax)
	movl	$1865310525, 28(%eax)
	movw	$29813, 32(%eax)
	movb	$0, 34(%eax)
.L456:
	.loc 1 1604 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L451:
	.loc 1 1607 0
	movl	opt_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L491
	cmpl	$36, 12(%ebp)
	je	.L491
	.loc 1 1608 0
	movl	opt_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1609 0
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1613 0
	jmp	.L491
.L187:
	.loc 1 1616 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L462
	.loc 1 1618 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1619 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L464
.L462:
	.loc 1 1623 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1624 0
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L464:
	.loc 1 1627 0
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_temp_file_name@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1629 0
	movl	feedback_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L465
	.loc 1 1631 0
	movl	feedback_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	append_string_lists@PLT
	jmp	.L491
.L465:
	.loc 1 1633 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L468
	.loc 1 1635 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L491
.L468:
	.loc 1 1639 0
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1641 0
	jmp	.L491
.L188:
	.loc 1 1644 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L470
	.loc 1 1645 0
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1646 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L472
	.loc 1 1647 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -592(%ebp)
	.loc 1 1648 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, 4(%esp)
	movl	-592(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -592(%ebp)
	.loc 1 1649 0
	movl	-592(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L474
.L472:
	.loc 1 1651 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L474:
	.loc 1 1653 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -584(%ebp)
	jmp	.L475
.L470:
	.loc 1 1655 0
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1656 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L476
	.loc 1 1657 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -592(%ebp)
	.loc 1 1658 0
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-592(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -592(%ebp)
	.loc 1 1659 0
	movl	-592(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L478
.L476:
	.loc 1 1661 0
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L478:
	.loc 1 1663 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -584(%ebp)
.L475:
	.loc 1 1665 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L479
	.loc 1 1666 0
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1667 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1668 0
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1669 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L479:
	.loc 1 1671 0
	movl	fb_cdir@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L481
	.loc 1 1672 0
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1673 0
	movl	fb_cdir@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -592(%ebp)
	.loc 1 1674 0
	movl	-584(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-592(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -592(%ebp)
	.loc 1 1675 0
	movl	-592(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L481:
	.loc 1 1677 0
	movl	ldpath_for_pixie@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L483
	.loc 1 1678 0
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1679 0
	movl	ldpath_for_pixie@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L483:
	.loc 1 1681 0
	movl	input_source@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1682 0
	jmp	.L491
.L189:
	.loc 1 1685 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1686 0
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1687 0
	movl	prof_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L485
	.loc 1 1688 0
	movl	prof_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L487
.L485:
	.loc 1 1690 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 1691 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L487:
	.loc 1 1693 0
	movl	count_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -588(%ebp)
	jmp	.L488
.L489:
	.loc 1 1694 0
	movl	-588(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1693 0
	movl	-588(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -588(%ebp)
.L488:
	cmpl	$0, -588(%ebp)
	jne	.L489
	.loc 1 1695 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1696 0
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L491:
.LBE5:
	.loc 1 1699 0
	movl	-12(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L492
	call	__stack_chk_fail_local
.L492:
	addl	$640, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	add_file_args, .-add_file_args
	.section	.rodata
.LC160:
	.string	"gcc_s_32"
.LC161:
	.string	"gcc_s"
	.text
	.type	get_libgcc_s_name, @function
get_libgcc_s_name:
.LFB22:
	.loc 1 1710 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$4, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1715 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L494
	call	platform_is_64bit@PLT
	testl	%eax, %eax
	je	.L494
	.loc 1 1716 0
	movl	8(%ebp), %edx
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 1717 0
	movl	12(%ebp), %edx
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 1718 0
	jmp	.L498
.L494:
	.loc 1 1720 0
	movl	8(%ebp), %eax
	leal	.LC161@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	.loc 1 1721 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
.L498:
	.loc 1 1722 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	get_libgcc_s_name, .-get_libgcc_s_name
	.local	path_set.5406
	.comm	path_set.5406,4,4
	.local	libgcc_s.5403
	.comm	libgcc_s.5403,4,4
	.section	.rodata
.LC162:
	.string	"%s/lib%s.so"
.LC163:
	.string	"-L%s"
.LC164:
	.string	"%s/../lib%s.so"
.LC165:
	.string	"-L%s/.."
.LC166:
	.string	"/32/"
	.text
	.type	add_libgcc_s, @function
add_libgcc_s:
.LFB23:
	.loc 1 1734 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$36, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1739 0
	movl	$0, -20(%ebp)
	.loc 1 1741 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_libgcc_s_name
	.loc 1 1747 0
	movl	path_set.5406@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L500
	.loc 1 1748 0
	call	get_library_dirs@PLT
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L502
.L503:
	.loc 1 1749 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1750 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1751 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	je	.L504
	.loc 1 1752 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_arg
	.loc 1 1753 0
	movl	-12(%ebp), %eax
	movl	%eax, libgcc_s.5403@GOTOFF(%ebx)
	.loc 1 1754 0
	movl	$1, path_set.5406@GOTOFF(%ebx)
	.loc 1 1755 0
	jmp	.L506
.L504:
	.loc 1 1758 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1759 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1760 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	je	.L507
	.loc 1 1761 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_arg
	.loc 1 1762 0
	movl	-12(%ebp), %eax
	movl	%eax, libgcc_s.5403@GOTOFF(%ebx)
	.loc 1 1763 0
	movl	$1, path_set.5406@GOTOFF(%ebx)
	.loc 1 1764 0
	jmp	.L506
.L507:
	.loc 1 1769 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L509
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strstr@PLT
	testl	%eax, %eax
	je	.L509
	.loc 1 1772 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1773 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1775 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	je	.L509
	.loc 1 1776 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_arg
	.loc 1 1777 0
	movl	-16(%ebp), %eax
	movl	%eax, libgcc_s.5403@GOTOFF(%ebx)
	.loc 1 1778 0
	movl	$1, path_set.5406@GOTOFF(%ebx)
	.loc 1 1779 0
	jmp	.L506
.L509:
	.loc 1 1748 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L502:
	cmpl	$0, -8(%ebp)
	jne	.L503
.L506:
	.loc 1 1784 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1790 0
	movl	libgcc_s.5403@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L500
	.loc 1 1791 0
	movl	-12(%ebp), %eax
	movl	%eax, libgcc_s.5403@GOTOFF(%ebx)
.L500:
	.loc 1 1794 0
	movl	libgcc_s.5403@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_library@PLT
	.loc 1 1795 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	add_libgcc_s, .-add_libgcc_s
	.section	.rodata
.LC167:
	.string	"LINK_SCRIPT"
	.align 4
.LC168:
	.string	"Environment var LINK_SCRIPT not set"
.LC169:
	.string	"-T"
.LC170:
	.string	"%s"
	.align 4
.LC171:
	.string	"%s/usr/lib/ldscripts/sl1-bb-common.ld"
	.align 4
.LC172:
	.string	"%s/usr/libsl2/ldscripts/sl2-h264-common.ld"
.LC173:
	.string	"-lopenmp"
.LC174:
	.string	"-lpthread"
.LC175:
	.string	"-lstdc++"
.LC176:
	.string	"-lc"
	.align 4
.LC177:
	.string	"%s/usr/lib/ldscripts/sl1-core-common.ld"
.LC178:
	.string	"crtend.o"
.LC179:
	.string	"crtn.o"
	.text
	.type	add_final_ld_args, @function
add_final_ld_args:
.LFB24:
	.loc 1 1800 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$36, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1811 0
	movl	$147, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L516
	movl	$137, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L518
.L516:
.LBB14:
	.loc 1 1813 0
	movl	$492, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L519
	movl	$349, (%esp)
	call	option_was_seen@PLT
.L519:
	.loc 1 1824 0
	movl	$0, -12(%ebp)
	.loc 1 1825 0
	movl	ldscript_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L522
	.loc 1 1826 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1827 0
	cmpl	$0, -12(%ebp)
	jne	.L524
	.loc 1 1828 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L562
.L524:
	.loc 1 1831 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1832 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1833 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L562
.L522:
	.loc 1 1837 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1838 0
	movl	use_bblibs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L528
	.loc 1 1839 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1840 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1841 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L562
.L528:
	.loc 1 1842 0
	movl	use_h264libs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L562
	.loc 1 1843 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1844 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1845 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1849 0
	jmp	.L562
.L518:
.LBE14:
	.loc 1 1852 0
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L532
	.loc 1 1876 0
	movl	$174, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L534
	movl	$514, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L536
.L534:
	.loc 1 1878 0
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L536:
	.loc 1 1887 0
	movl	$103, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L537
	movl	$174, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L537
	movl	$514, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L532
.L537:
	.loc 1 1890 0
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L532:
	.loc 1 1921 0
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L540
	.loc 1 1922 0
	movl	fbuiltin@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L540
.LBB15:
	.loc 1 1938 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L543
	.loc 1 1939 0
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L543:
	.loc 1 1940 0
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1944 0
	movl	$0, -8(%ebp)
	.loc 1 1945 0
	movl	ldscript_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L545
	.loc 1 1946 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1947 0
	cmpl	$0, -8(%ebp)
	jne	.L547
	.loc 1 1948 0
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L550
.L547:
	.loc 1 1951 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1952 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 1953 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L550
.L545:
	.loc 1 1957 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 1958 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1959 0
	movl	use_bblibs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L551
	.loc 1 1960 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	jmp	.L553
.L551:
	.loc 1 1961 0
	movl	use_h264libs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L554
	.loc 1 1962 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	jmp	.L553
.L554:
	.loc 1 1964 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
.L553:
	.loc 1 1965 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L550:
	.loc 1 1968 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L556
	.loc 1 1969 0
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L556:
	.loc 1 1971 0
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L540:
.LBE15:
	.loc 1 1976 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L562
	.loc 1 1977 0
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L562
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L562
	.loc 1 1978 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L562
	.loc 1 1979 0
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	find_crt_path@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L562:
	.loc 1 1984 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	add_final_ld_args, .-add_final_ld_args
	.section	.rodata
.LC180:
	.string	"c"
.LC181:
	.string	"-Wl,-rpath-link,"
	.text
	.type	postprocess_ld_args, @function
postprocess_ld_args:
.LFB25:
	.loc 1 1989 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%edi
.LCFI94:
	pushl	%esi
.LCFI95:
	pushl	%ebx
.LCFI96:
	subl	$44, %esp
.LCFI97:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1992 0
	movl	$115, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L564
	movl	$137, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L564
	.loc 1 1993 0
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	prof_lib_exists@PLT
	testl	%eax, %eax
	je	.L564
	.loc 1 1994 0
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_library@PLT
.L564:
	.loc 1 2004 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L568
.L569:
.LBB16:
	.loc 1 2005 0
	movl	$0, -16(%ebp)
	.loc 1 2006 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$2, -40(%ebp)
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
	jne	.L570
	.loc 1 2009 0
	movl	-20(%ebp), %eax
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
	cmpl	$2, %eax
	jbe	.L572
	.loc 1 2010 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, -16(%ebp)
	jmp	.L574
.L572:
	.loc 1 2012 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L574
	.loc 1 2013 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L574:
	.loc 1 2015 0
	cmpl	$0, -16(%ebp)
	je	.L570
	.loc 1 2016 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_after_string@PLT
.L570:
.LBE16:
	.loc 1 2004 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L568:
	cmpl	$0, -20(%ebp)
	jne	.L569
	.loc 1 2019 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	postprocess_ld_args, .-postprocess_ld_args
	.local	phase_order_index
	.comm	phase_order_index,4,4
	.section	.rodata
.LC182:
	.string	"too many phases"
	.text
	.type	add_phase, @function
add_phase:
.LFB26:
	.loc 1 2028 0
	pushl	%ebp
.LCFI98:
	movl	%esp, %ebp
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$4, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2029 0
	movl	phase_order_index@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, phase_order@GOTOFF(%ebx,%edx,4)
	.loc 1 2030 0
	movl	phase_order_index@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, phase_order_index@GOTOFF(%ebx)
	.loc 1 2031 0
	movl	phase_order_index@GOTOFF(%ebx), %eax
	cmpl	$9, %eax
	jle	.L582
	.loc 1 2032 0
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L582:
	.loc 1 2033 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	add_phase, .-add_phase
	.type	post_fe_phase, @function
post_fe_phase:
.LFB27:
	.loc 1 2039 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	subl	$4, %esp
.LCFI104:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2040 0
	movl	ipa@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L584
	.loc 1 2041 0
	movl	$28, -4(%ebp)
	jmp	.L586
.L584:
	.loc 1 2042 0
	movl	inline_t@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L587
	movl	inline_t@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L589
.L587:
	.loc 1 2043 0
	movl	$27, -4(%ebp)
	jmp	.L586
.L589:
	.loc 1 2045 0
	movl	$30, -4(%ebp)
.L586:
	movl	-4(%ebp), %eax
	.loc 1 2046 0
	leave
	ret
.LFE27:
	.size	post_fe_phase, .-post_fe_phase
	.type	add_inline_option, @function
add_inline_option:
.LFB28:
	.loc 1 2053 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$20, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2054 0
	movl	$730, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L592
	movl	inline_t@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L597
.L592:
	.loc 1 2055 0
	call	post_fe_phase
	movl	%eax, -8(%ebp)
	cmpl	$27, -8(%ebp)
	je	.L595
	cmpl	$28, -8(%ebp)
	je	.L596
	jmp	.L597
.L596:
	.loc 1 2057 0
	movl	$35, 4(%esp)
	movl	$730, (%esp)
	call	add_phase_for_option@PLT
	.loc 1 2058 0
	jmp	.L597
.L595:
	.loc 1 2060 0
	movl	$27, 4(%esp)
	movl	$730, (%esp)
	call	add_phase_for_option@PLT
.L597:
	.loc 1 2064 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	add_inline_option, .-add_inline_option
	.section	.rodata
.LC183:
	.string	"unexpected phase order"
	.text
	.type	determine_phase_order, @function
determine_phase_order:
.LFB29:
	.loc 1 2068 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$36, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2069 0
	movl	$0, -20(%ebp)
	.loc 1 2073 0
	movl	$0, phase_order@GOTOFF(%ebx)
	.loc 1 2074 0
	movl	$0, phase_order_index@GOTOFF(%ebx)
	.loc 1 2077 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L599
	.loc 1 2078 0
	movl	$48, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L601
	.loc 1 2079 0
	movl	$6, -16(%ebp)
	jmp	.L604
.L601:
	.loc 1 2081 0
	movl	$8, -16(%ebp)
	jmp	.L604
.L599:
	.loc 1 2083 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L605
	.loc 1 2084 0
	movl	$48, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L607
	.loc 1 2085 0
	movl	$5, -16(%ebp)
	jmp	.L604
.L607:
	.loc 1 2087 0
	movl	$7, -16(%ebp)
	jmp	.L604
.L605:
	.loc 1 2089 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L610
	.loc 1 2090 0
	movl	$174, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L612
	.loc 1 2092 0
	movl	$4, -16(%ebp)
	jmp	.L604
.L612:
	.loc 1 2094 0
	movl	$9, -16(%ebp)
	jmp	.L604
.L610:
	.loc 1 2097 0
	movl	use_coco@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L615
	.loc 1 2098 0
	movl	$11, -16(%ebp)
	jmp	.L604
.L615:
	.loc 1 2100 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L617
	.loc 1 2101 0
	movl	$268, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L619
	.loc 1 2102 0
	movl	$20, -16(%ebp)
	jmp	.L604
.L619:
	.loc 1 2103 0
	movl	$488, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L622
	movl	$695, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L622
	movl	$742, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L622
	movl	$148, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L626
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L622
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L626
.L622:
	.loc 1 2109 0
	movl	$48, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L629
	.loc 1 2110 0
	movl	$5, -16(%ebp)
	jmp	.L604
.L629:
	.loc 1 2112 0
	movl	$4, -16(%ebp)
	.loc 1 2103 0
	jmp	.L604
.L626:
	.loc 1 2114 0
	movl	$0, -16(%ebp)
	jmp	.L604
.L617:
	.loc 1 2116 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	jne	.L632
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L634
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L634
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L632
.L634:
	.loc 1 2119 0
	movl	$5, -16(%ebp)
	.loc 1 2116 0
	jmp	.L604
.L632:
	.loc 1 2120 0
	movl	$48, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L637
	.loc 1 2121 0
	movl	$5, -16(%ebp)
	jmp	.L604
.L637:
	.loc 1 2123 0
	movl	$4, -16(%ebp)
.L604:
	.loc 1 2126 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	jne	.L639
	.loc 1 2127 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2128 0
	jmp	.L735
.L639:
	.loc 1 2132 0
	movl	$32, -12(%ebp)
	.loc 1 2135 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L642
	.loc 1 2136 0
	movl	$35, -8(%ebp)
	jmp	.L644
.L642:
	.loc 1 2137 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L645
	.loc 1 2138 0
	movl	$38, -8(%ebp)
	jmp	.L644
.L645:
	.loc 1 2140 0
	movl	$37, -8(%ebp)
.L644:
	.loc 1 2142 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$16, -32(%ebp)
	ja	.L736
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L658@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L658:
	.long	.L736@GOTOFF
	.long	.L648@GOTOFF
	.long	.L648@GOTOFF
	.long	.L649@GOTOFF
	.long	.L650@GOTOFF
	.long	.L649@GOTOFF
	.long	.L650@GOTOFF
	.long	.L651@GOTOFF
	.long	.L652@GOTOFF
	.long	.L652@GOTOFF
	.long	.L653@GOTOFF
	.long	.L654@GOTOFF
	.long	.L655@GOTOFF
	.long	.L656@GOTOFF
	.long	.L655@GOTOFF
	.long	.L655@GOTOFF
	.long	.L657@GOTOFF
	.text
.L648:
	.loc 1 2145 0
	movl	first_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$12, %eax
	je	.L659
	.loc 1 2146 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L661
	movl	$22, -28(%ebp)
	jmp	.L663
.L661:
	movl	$21, -28(%ebp)
.L663:
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L736
.L659:
	.loc 1 2149 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L665
	.loc 1 2150 0
	movl	$6, (%esp)
	call	add_phase
	jmp	.L667
.L665:
	.loc 1 2152 0
	movl	$5, (%esp)
	call	add_phase
.L667:
	.loc 1 2153 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L668
	movl	$22, -24(%ebp)
	jmp	.L670
.L668:
	movl	$21, -24(%ebp)
.L670:
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2156 0
	jmp	.L736
.L652:
	.loc 1 2159 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L671
	.loc 1 2160 0
	movl	$17, -20(%ebp)
	jmp	.L736
.L671:
	.loc 1 2161 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L674
	.loc 1 2162 0
	movl	$19, -20(%ebp)
	jmp	.L736
.L674:
	.loc 1 2163 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	jne	.L676
	.loc 1 2164 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L736
.L676:
	.loc 1 2165 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L678
	.loc 1 2166 0
	movl	$22, -20(%ebp)
	jmp	.L736
.L678:
	.loc 1 2167 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L680
	.loc 1 2168 0
	movl	$21, -20(%ebp)
	jmp	.L736
.L680:
	.loc 1 2169 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$9, %eax
	jne	.L682
	.loc 1 2170 0
	movl	$22, -20(%ebp)
	jmp	.L736
.L682:
	.loc 1 2172 0
	movl	$21, -20(%ebp)
	.loc 1 2173 0
	jmp	.L736
.L651:
	.loc 1 2175 0
	movl	run_m4@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L684
	movl	$2, (%esp)
	call	add_phase
.L684:
	.loc 1 2176 0
	movl	$3, (%esp)
	call	add_phase
.L649:
	.loc 1 2180 0
	cmpl	$0, -16(%ebp)
	jne	.L686
	.loc 1 2181 0
	movl	$19, -20(%ebp)
	jmp	.L736
.L686:
	.loc 1 2182 0
	cmpl	$20, -16(%ebp)
	jne	.L689
	.loc 1 2184 0
	movl	$20, -20(%ebp)
	jmp	.L736
.L689:
	.loc 1 2187 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2188 0
	movl	$19, -20(%ebp)
	.loc 1 2190 0
	jmp	.L736
.L650:
	.loc 1 2193 0
	movl	$148, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L691
	.loc 1 2194 0
	movl	$19, -20(%ebp)
	jmp	.L736
.L691:
	.loc 1 2195 0
	cmpl	$0, -16(%ebp)
	je	.L694
	cmpl	$20, -16(%ebp)
	jne	.L696
.L694:
	.loc 1 2197 0
	movl	$20, -20(%ebp)
	.loc 1 2195 0
	jmp	.L736
.L696:
	.loc 1 2199 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2200 0
	movl	$19, -20(%ebp)
	.loc 1 2202 0
	jmp	.L736
.L653:
	.loc 1 2204 0
	movl	$488, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L697
	.loc 1 2205 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
.L697:
	.loc 1 2207 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2208 0
	jmp	.L736
.L654:
	.loc 1 2210 0
	movl	$148, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L699
	.loc 1 2211 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
.L699:
	.loc 1 2213 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2214 0
	jmp	.L736
.L656:
	.loc 1 2216 0
	call	post_fe_phase
	movl	%eax, -20(%ebp)
	.loc 1 2217 0
	jmp	.L736
.L655:
	.loc 1 2221 0
	movl	$30, -20(%ebp)
	.loc 1 2222 0
	jmp	.L736
.L657:
	.loc 1 2224 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2228 0
	jmp	.L736
.L702:
	.loc 1 2229 0
	movl	last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jae	.L703
	.loc 1 2230 0
	movl	$0, (%esp)
	call	add_phase
	.loc 1 2231 0
	movl	$0, -20(%ebp)
.L703:
	.loc 1 2233 0
	cmpl	$40, -20(%ebp)
	ja	.L705
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	.L716@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L716:
	.long	.L701@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L707@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L708@GOTOFF
	.long	.L708@GOTOFF
	.long	.L709@GOTOFF
	.long	.L709@GOTOFF
	.long	.L708@GOTOFF
	.long	.L708@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L708@GOTOFF
	.long	.L710@GOTOFF
	.long	.L711@GOTOFF
	.long	.L705@GOTOFF
	.long	.L712@GOTOFF
	.long	.L713@GOTOFF
	.long	.L713@GOTOFF
	.long	.L705@GOTOFF
	.long	.L705@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L705@GOTOFF
	.long	.L715@GOTOFF
	.text
.L707:
	.loc 1 2235 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2236 0
	movl	$18, -20(%ebp)
	.loc 1 2237 0
	jmp	.L701
.L708:
	.loc 1 2243 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2244 0
	call	post_fe_phase
	movl	%eax, -20(%ebp)
	.loc 1 2245 0
	jmp	.L701
.L709:
	.loc 1 2248 0
	movl	keep_listing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L717
	.loc 1 2249 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2250 0
	movl	$26, -20(%ebp)
	jmp	.L701
.L717:
	.loc 1 2252 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2253 0
	call	post_fe_phase
	movl	%eax, -20(%ebp)
	.loc 1 2255 0
	jmp	.L701
.L710:
	.loc 1 2257 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2258 0
	movl	$30, -20(%ebp)
	.loc 1 2259 0
	jmp	.L701
.L711:
	.loc 1 2261 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2262 0
	movl	$511, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L720
	.loc 1 2263 0
	movl	$43, -20(%ebp)
	jmp	.L701
.L720:
	.loc 1 2266 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2268 0
	jmp	.L701
.L712:
	.loc 1 2270 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2272 0
	movl	skip_as@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L723
	.loc 1 2273 0
	movl	$511, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L725
	.loc 1 2274 0
	movl	$43, -20(%ebp)
	jmp	.L701
.L725:
	.loc 1 2277 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L701
.L723:
	.loc 1 2280 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2281 0
	jmp	.L701
.L713:
	.loc 1 2284 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2285 0
	movl	$511, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L729
	.loc 1 2286 0
	movl	$43, -20(%ebp)
	jmp	.L701
.L729:
	.loc 1 2289 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2291 0
	jmp	.L701
.L714:
	.loc 1 2296 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2297 0
	movl	cordflag@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L732
	.loc 1 2298 0
	movl	$40, -20(%ebp)
	jmp	.L701
.L732:
	.loc 1 2300 0
	movl	$0, (%esp)
	call	add_phase
	.loc 1 2301 0
	movl	$0, -20(%ebp)
	.loc 1 2303 0
	jmp	.L701
.L715:
	.loc 1 2305 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_phase
	.loc 1 2306 0
	movl	$0, (%esp)
	call	add_phase
	.loc 1 2307 0
	movl	$0, -20(%ebp)
	.loc 1 2308 0
	jmp	.L701
.L705:
	.loc 1 2312 0
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L701:
.L736:
	.loc 1 2228 0
	cmpl	$0, -20(%ebp)
	jne	.L702
.L735:
	.loc 1 2315 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	determine_phase_order, .-determine_phase_order
	.section	.rodata
	.align 4
.LC184:
	.string	"Power Fortran is not installed on this system"
	.align 4
.LC185:
	.string	"Power C is not installed on this system"
.LC186:
	.string	"/ipl.so"
.LC187:
	.string	"/be.so"
	.align 4
.LC188:
	.string	"%s does not contain all of the Open64 compiler phases."
	.text
	.type	check_existence_of_phases, @function
check_existence_of_phases:
.LFB30:
	.loc 1 2319 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%ebx
.LCFI115:
	subl	$36, %esp
.LCFI116:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2321 0
	movl	$0, -12(%ebp)
	jmp	.L738
.L739:
.LBB17:
	.loc 1 2322 0
	movl	$0, -8(%ebp)
	.loc 1 2323 0
	movl	-12(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$15, -24(%ebp)
	je	.L742
	cmpl	$15, -24(%ebp)
	ja	.L745
	cmpl	$13, -24(%ebp)
	je	.L741
	jmp	.L740
.L745:
	cmpl	$28, -24(%ebp)
	je	.L743
	cmpl	$30, -24(%ebp)
	je	.L744
	jmp	.L740
.L741:
	.loc 1 2326 0
	movl	-12(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L740
	.loc 1 2327 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2329 0
	jmp	.L740
.L742:
	.loc 1 2333 0
	movl	-12(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L740
	.loc 1 2334 0
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2336 0
	jmp	.L740
.L743:
	.loc 1 2341 0
	movl	-12(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, %edx
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L744
	.loc 1 2343 0
	movl	$1, -8(%ebp)
.L744:
	.loc 1 2349 0
	movl	-12(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, %edx
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L751
	.loc 1 2351 0
	movl	$1, -8(%ebp)
.L751:
	.loc 1 2353 0
	movl	-12(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L753
	.loc 1 2354 0
	movl	$1, -8(%ebp)
.L753:
	.loc 1 2356 0
	cmpl	$0, -8(%ebp)
	je	.L740
	.loc 1 2357 0
	movl	-12(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, 4(%esp)
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L740:
.LBE17:
	.loc 1 2321 0
	addl	$1, -12(%ebp)
.L738:
	movl	-12(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L739
	.loc 1 2362 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	check_existence_of_phases, .-check_existence_of_phases
	.section	.rodata
.LC189:
	.string	"cginstr"
.LC190:
	.string	"instr"
.LC191:
	.string	"stdc++"
.LC192:
	.string	"Unknown profile types %#lx\n"
	.text
	.type	add_instr_archive, @function
add_instr_archive:
.LFB31:
	.loc 1 2366 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$36, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2370 0
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L768
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L768
.LBB18:
	.loc 1 2373 0
	movl	$15, -8(%ebp)
	.loc 1 2374 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	notl	%edx
	movl	profile_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L762
	.loc 1 2375 0
	movl	profile_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	je	.L764
	.loc 1 2377 0
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_library@PLT
.L764:
	.loc 1 2381 0
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_library@PLT
	.loc 1 2382 0
	leal	.LC191@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_library@PLT
	.loc 1 2383 0
	movl	$80, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L768
	.loc 1 2384 0
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_library@PLT
	jmp	.L768
.L762:
	.loc 1 2395 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	notl	%edx
	movl	profile_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	%eax, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L768:
.LBE18:
	.loc 1 2398 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	add_instr_archive, .-add_instr_archive
	.section	.rodata
.LC193:
	.string	"_XPG"
.LC194:
	.string	"LD_LIBRARY_PATH"
.LC195:
	.string	"LD_LIBRARYN32_PATH"
.LC196:
	.string	"%s;%s"
.LC197:
	.string	"TOOLROOT"
	.text
.globl init_phase_info
	.type	init_phase_info, @function
init_phase_info:
.LFB32:
	.loc 1 2405 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%edi
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$48, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2409 0
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	testl	%eax, %eax
	je	.L770
	.loc 1 2410 0
	movl	xpg_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
.L770:
	.loc 1 2411 0
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, %edx
	movl	ld_library_path@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2412 0
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, %edx
	movl	ld_libraryn32_path@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2414 0
	movl	ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, %edx
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2416 0
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L772
.LBB19:
	.loc 1 2418 0
	movl	$0, -12(%ebp)
	jmp	.L774
.L775:
	.loc 1 2419 0
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	.L776
	.loc 1 2420 0
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$59, (%eax)
.L776:
	.loc 1 2418 0
	addl	$1, -12(%ebp)
.L774:
	movl	-12(%ebp), %edx
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %eax
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
	cmpl	%eax, %edx
	jb	.L775
	.loc 1 2422 0
	call	get_binutils_lib_path@PLT
	movl	%eax, %edx
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	jmp	.L779
.L772:
.LBE19:
	.loc 1 2425 0
	call	get_binutils_lib_path@PLT
	movl	%eax, %edx
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L779:
	.loc 1 2429 0
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2430 0
	cmpl	$0, -20(%ebp)
	je	.L780
	.loc 1 2432 0
	movl	PHASE_MASK@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	prefix_all_phase_dirs@PLT
.L780:
	.loc 1 2434 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2435 0
	cmpl	$0, -16(%ebp)
	je	.L784
	.loc 1 2437 0
	movl	LIB_MASK@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	prefix_all_phase_dirs@PLT
.L784:
	.loc 1 2440 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	init_phase_info, .-init_phase_info
	.section	.rodata
.LC198:
	.string	"/proc/self/exe"
.LC199:
	.string	"gcc"
.LC200:
	.string	"g++"
	.text
.globl init_phase_names
	.type	init_phase_names, @function
init_phase_names:
.LFB33:
	.loc 1 2447 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%edi
.LCFI128:
	pushl	%esi
.LCFI129:
	pushl	%ebx
.LCFI130:
	subl	$4204, %esp
.LCFI131:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2447 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 2454 0
	movl	$4096, 8(%esp)
	leal	-4112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	readlink@PLT
	movl	%eax, -4120(%ebp)
	.loc 1 2455 0
	cmpl	$0, -4120(%ebp)
	jg	.L786
	.loc 1 2456 0
	movl	orig_program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4096, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-4112(%ebp), %eax
	movl	%eax, (%esp)
	call	strncpy@PLT
	.loc 1 2457 0
	leal	-4112(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -4160(%ebp)
	movl	$0, %eax
	cld
	movl	-4160(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -4120(%ebp)
	jmp	.L788
.L786:
	.loc 1 2459 0
	movl	-4120(%ebp), %eax
	movb	$0, -4112(%ebp,%eax)
.L788:
	.loc 1 2464 0
	leal	-4112(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -4164(%ebp)
	movl	$0, %eax
	cld
	movl	-4164(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	subl	$1, %eax
	movl	%eax, -4132(%ebp)
	jmp	.L789
.L790:
	.loc 1 2465 0
	movl	-4132(%ebp), %eax
	movzbl	-4112(%ebp,%eax), %eax
	cmpb	$47, %al
	je	.L791
	.loc 1 2464 0
	subl	$1, -4132(%ebp)
.L789:
	cmpl	$0, -4132(%ebp)
	jns	.L790
.L791:
	.loc 1 2468 0
	cmpl	$0, -4132(%ebp)
	jns	.L793
	.loc 1 2470 0
	leal	-4112(%ebp), %eax
	movl	%eax, -4140(%ebp)
	jmp	.L795
.L793:
	.loc 1 2473 0
	movl	-4132(%ebp), %eax
	movl	%eax, %edx
	leal	-4112(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -4140(%ebp)
.L795:
	.loc 1 2482 0
	movl	-4140(%ebp), %eax
	movl	%eax, (%esp)
	call	strdup@PLT
	movl	%eax, -4144(%ebp)
	.loc 1 2483 0
	movl	$45, 4(%esp)
	movl	-4144(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -4136(%ebp)
	cmpl	$0, -4136(%ebp)
	je	.L796
	.loc 1 2484 0
	movl	-4136(%ebp), %eax
	movb	$0, (%eax)
.L796:
	.loc 1 2487 0
	movl	-4144(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -4168(%ebp)
	movl	$0, %eax
	cld
	movl	-4168(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	subl	$1, %eax
	movl	%eax, -4132(%ebp)
	jmp	.L798
.L799:
	subl	$1, -4132(%ebp)
.L798:
	cmpl	$0, -4132(%ebp)
	js	.L800
	movl	-4132(%ebp), %eax
	addl	-4144(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	je	.L799
.L800:
	.loc 1 2489 0
	movl	-4132(%ebp), %eax
	movl	%eax, -4128(%ebp)
	jmp	.L802
.L803:
	.loc 1 2490 0
	movl	-4128(%ebp), %eax
	addl	-4144(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L804
	.loc 1 2491 0
	movl	-4128(%ebp), %eax
	addl	-4144(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	.loc 1 2492 0
	jmp	.L806
.L804:
	.loc 1 2489 0
	subl	$1, -4128(%ebp)
.L802:
	cmpl	$0, -4128(%ebp)
	jns	.L803
.L806:
	.loc 1 2495 0
	cmpl	$0, -4128(%ebp)
	jns	.L807
	.loc 1 2496 0
	movl	-4144(%ebp), %eax
	movb	$0, (%eax)
.L807:
	.loc 1 2498 0
	movl	$48, -4132(%ebp)
	jmp	.L809
.L810:
.LBB20:
	.loc 1 2499 0
	movl	-4132(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_name@PLT
	movl	%eax, -4116(%ebp)
	.loc 1 2500 0
	movl	-4116(%ebp), %eax
	movl	%eax, -4172(%ebp)
	leal	.LC199@GOTOFF(%ebx), %eax
	movl	%eax, -4176(%ebp)
	movl	$4, -4180(%ebp)
	cld
	movl	-4172(%ebp), %esi
	movl	-4176(%ebp), %edi
	movl	-4180(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L811
	movl	-4116(%ebp), %eax
	movl	%eax, -4184(%ebp)
	leal	.LC200@GOTOFF(%ebx), %esi
	movl	%esi, -4188(%ebp)
	movl	$4, -4192(%ebp)
	cld
	movl	-4184(%ebp), %esi
	movl	-4188(%ebp), %edi
	movl	-4192(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L813
.L811:
	.loc 1 2502 0
	movl	-4116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4144(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	-4132(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	set_phase_name@PLT
.L813:
.LBE20:
	.loc 1 2498 0
	subl	$1, -4132(%ebp)
.L809:
	cmpl	$0, -4132(%ebp)
	jns	.L810
	.loc 1 2505 0
	movl	-16(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L816
	call	__stack_chk_fail_local
.L816:
	addl	$4204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	init_phase_names, .-init_phase_names
.globl run_dsm_prelink
	.type	run_dsm_prelink, @function
run_dsm_prelink:
.LFB34:
	.loc 1 2510 0
	pushl	%ebp
.LCFI132:
	movl	%esp, %ebp
.LCFI133:
	pushl	%ebx
.LCFI134:
	subl	$36, %esp
.LCFI135:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2511 0
	call	init_string_list@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2512 0
	movl	$34, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_phase_options
	.loc 1 2513 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_objects_to_list@PLT
	.loc 1 2514 0
	movl	$34, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$34, (%esp)
	call	run_phase@PLT
	.loc 1 2515 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	run_dsm_prelink, .-run_dsm_prelink
	.section	.rodata
.LC201:
	.string	"/ipa.so"
.LC202:
	.string	"ipa.so is not installed on %s"
.LC203:
	.string	"-INTERNAL:old_ld_lib_path="
.LC204:
	.string	"F77"
.LC205:
	.string	"F90"
.LC206:
	.string	"CC"
.LC207:
	.string	"run_ld: unknown language\n"
.LC208:
	.string	"-INTERNAL:lang="
	.text
.globl run_ld
	.type	run_ld, @function
run_ld:
.LFB35:
	.loc 1 2520 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$36, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2523 0
	call	init_string_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2525 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L820
	.loc 1 2526 0
	movl	$35, -20(%ebp)
	jmp	.L822
.L820:
	.loc 1 2528 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L823
	.loc 1 2529 0
	movl	$38, -20(%ebp)
	jmp	.L822
.L823:
	.loc 1 2532 0
	movl	$37, -20(%ebp)
.L822:
	.loc 1 2535 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L825
.LBB21:
	.loc 1 2536 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2537 0
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2538 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	file_exists@PLT
	testl	%eax, %eax
	jne	.L827
	.loc 1 2539 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, 4(%esp)
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2540 0
	jmp	.L855
.L827:
	.loc 1 2544 0
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2545 0
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L830
	.loc 1 2546 0
	movl	old_ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -8(%ebp)
.L830:
	.loc 1 2547 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 2550 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$4, -28(%ebp)
	je	.L834
	cmpl	$4, -28(%ebp)
	ja	.L837
	cmpl	$3, -28(%ebp)
	je	.L833
	jmp	.L832
.L837:
	cmpl	$5, -28(%ebp)
	je	.L835
	cmpl	$6, -28(%ebp)
	je	.L836
	jmp	.L832
.L835:
	.loc 1 2551 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L838
.L836:
	.loc 1 2552 0
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L838
.L833:
	.loc 1 2553 0
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L838
.L834:
	.loc 1 2554 0
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L838
.L832:
	.loc 1 2555 0
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L838:
	.loc 1 2557 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC208@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 2559 0
	call	init_crt_paths@PLT
	.loc 1 2560 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L839
	movl	instrumentation_invoked@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L825
.L839:
	.loc 1 2562 0
	call	init_stdc_plus_plus_path@PLT
.L825:
.LBE21:
	.loc 1 2565 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2569 0
	call	add_inline_option
	.loc 1 2570 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_phase_options
	.loc 1 2572 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L841
	.loc 1 2576 0
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L841
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L844
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L844
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L841
.L844:
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L841
	.loc 1 2577 0
	call	mark_saved_object_for_cleanup@PLT
.L841:
	.loc 1 2585 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_file_args
	.loc 1 2587 0
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L848
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L848
	.loc 1 2588 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L851
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L853
.L851:
	movl	$1, -24(%ebp)
.L853:
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fix_name_by_lang@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_given_name@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 2587 0
	jmp	.L854
.L848:
	.loc 1 2593 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	append_objects_to_list@PLT
.L854:
	.loc 1 2596 0
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 2599 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_instr_archive
	.loc 1 2601 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_final_ld_args
	.loc 1 2603 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	run_phase@PLT
.L855:
	.loc 1 2604 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	run_ld, .-run_ld
	.section	.rodata
.LC209:
	.string	"-rc"
	.text
.globl run_ar
	.type	run_ar, @function
run_ar:
.LFB36:
	.loc 1 2608 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$36, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2609 0
	call	init_string_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2611 0
	movl	$43, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2613 0
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 2614 0
	movl	$43, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_phase_options
	.loc 1 2615 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 2616 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	append_ar_objects_to_list@PLT
	.loc 1 2617 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$43, (%esp)
	call	run_phase@PLT
	.loc 1 2618 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	run_ar, .-run_ar
	.section	.rodata
	.align 4
.LC210:
	.string	"%s already exists; link from %s to %s not created"
	.align 4
.LC211:
	.string	"cannot create link from %s to %s"
	.text
.globl run_pixie
	.type	run_pixie, @function
run_pixie:
.LFB37:
	.loc 1 2624 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$36, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2626 0
	call	init_string_list@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2630 0
	movl	$41, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_phase_options
	.loc 1 2631 0
	movl	$41, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_file_args
	.loc 1 2632 0
	movl	$41, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$41, (%esp)
	call	run_phase@PLT
	.loc 1 2633 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L859
	.loc 1 2634 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -8(%ebp)
	jmp	.L861
.L859:
	.loc 1 2636 0
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -8(%ebp)
.L861:
	.loc 1 2637 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L867
	.loc 1 2638 0
	movl	fb_xdir@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2639 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2640 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	symlink@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2641 0
	cmpl	$0, -20(%ebp)
	je	.L867
	.loc 1 2642 0
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$17, %eax
	jne	.L865
	.loc 1 2643 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L867
.L865:
	.loc 1 2646 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC211@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 2648 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L867:
	.loc 1 2652 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	run_pixie, .-run_pixie
	.section	.rodata
.LC212:
	.string	".x.pixie"
	.align 4
.LC213:
	.string	"Link from %s to %s already exists"
.LC214:
	.string	"cannot unlink %s"
	.text
.globl run_prof
	.type	run_prof, @function
run_prof:
.LFB38:
	.loc 1 2656 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$52, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2658 0
	call	init_string_list@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2660 0
	movl	$1, -12(%ebp)
	.loc 1 2662 0
	movl	prof_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L869
	.loc 1 2663 0
	movl	prof_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2664 0
	movl	prof_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC212@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	concat_strings@PLT
	movl	%eax, -20(%ebp)
	jmp	.L871
.L869:
	.loc 1 2666 0
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 2667 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L871:
	.loc 1 2669 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	link@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2670 0
	cmpl	$0, -28(%ebp)
	je	.L872
	.loc 1 2671 0
	movl	$0, -12(%ebp)
	.loc 1 2672 0
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$17, %eax
	jne	.L874
	.loc 1 2673 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC213@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L872
.L874:
	.loc 1 2676 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC211@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 2678 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L872:
	.loc 1 2682 0
	movl	$42, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_phase_options
	.loc 1 2683 0
	movl	$42, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_file_args
	.loc 1 2684 0
	movl	$42, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	run_phase@PLT
	.loc 1 2686 0
	cmpl	$0, -12(%ebp)
	je	.L880
.LBB22:
	.loc 1 2688 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2689 0
	cmpl	$0, -8(%ebp)
	je	.L880
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L880
	.loc 1 2690 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC214@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 2691 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L880:
.LBE22:
	.loc 1 2695 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	run_prof, .-run_prof
	.section	.rodata
.LC215:
	.string	"-MG"
.LC216:
	.string	"-MP"
.LC217:
	.string	"./ii_files/%s"
	.text
.globl run_compiler
	.type	run_compiler, @function
run_compiler:
.LFB39:
	.loc 1 2699 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%edi
.LCFI154:
	pushl	%esi
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$1116, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -1072(%ebp)
	.loc 1 2699 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 2702 0
	movl	$0, -1052(%ebp)
	.loc 1 2703 0
	movl	$0, -1048(%ebp)
	.loc 1 2707 0
	call	clear_current_errors@PLT
	.loc 1 2708 0
	call	determine_phase_order
	.loc 1 2709 0
	call	add_inline_option
	.loc 1 2710 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L882
	.loc 1 2711 0
	call	check_existence_of_phases
.L882:
	.loc 1 2713 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, input_source@GOTOFF(%ebx)
	.loc 1 2724 0
	movl	$0, -1060(%ebp)
	jmp	.L884
.L885:
	.loc 1 2728 0
	movl	inline_t@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L886
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$27, %eax
	je	.L888
.L886:
	.loc 1 2732 0
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_phase_mask@PLT
	movl	$39, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	is_matching_phase@PLT
	testl	%eax, %eax
	je	.L889
	.loc 1 2733 0
	movl	source_kind@GOT(%ebx), %eax
	movl	$16, (%eax)
	.loc 1 2735 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_source_lang@PLT
	movl	%eax, %edx
	movl	source_lang@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2736 0
	call	run_ld@PLT
	.loc 1 2737 0
	movl	Gen_feedback@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L893
	.loc 1 2738 0
	call	run_pixie@PLT
	jmp	.L893
.L889:
	.loc 1 2740 0
	call	init_string_list@PLT
	movl	%eax, -1056(%ebp)
	.loc 1 2741 0
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	add_file_args_first
	.loc 1 2742 0
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_phase_options
	.loc 1 2743 0
	cmpl	$0, -1048(%ebp)
	jne	.L894
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$16, %eax
	jbe	.L894
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$21, %eax
	je	.L894
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$22, %eax
	je	.L894
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$22, %eax
	ja	.L894
	.loc 1 2749 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	add_command_line_arg
	.loc 1 2750 0
	movl	$1, -1048(%ebp)
.L894:
	.loc 1 2752 0
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	add_file_args
	.loc 1 2753 0
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, %edx
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %ecx
	movl	-1056(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	run_phase@PLT
	.loc 1 2755 0
	cmpl	$0, -1060(%ebp)
	jne	.L900
	movl	string_md@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	je	.L902
	movl	string_mmd@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L900
.L902:
.LBB23:
	.loc 1 2760 0
	movl	-1056(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1044(%ebp)
	jmp	.L904
.L905:
	.loc 1 2761 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1076(%ebp)
	leal	.LC0@GOTOFF(%ebx), %ecx
	movl	%ecx, -1080(%ebp)
	movl	$4, -1084(%ebp)
	cld
	movl	-1076(%ebp), %esi
	movl	-1080(%ebp), %edi
	movl	-1084(%ebp), %ecx
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
	.loc 1 2762 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 2763 0
	movl	-1044(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
.L906:
	.loc 1 2765 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1088(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -1092(%ebp)
	movl	$4, -1096(%ebp)
	cld
	movl	-1088(%ebp), %esi
	movl	-1092(%ebp), %edi
	movl	-1096(%ebp), %ecx
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
	.loc 1 2766 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 2767 0
	movl	-1044(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
.L908:
	.loc 1 2769 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1100(%ebp)
	leal	.LC8@GOTOFF(%ebx), %esi
	movl	%esi, -1104(%ebp)
	movl	$4, -1108(%ebp)
	cld
	movl	-1100(%ebp), %esi
	movl	-1104(%ebp), %edi
	movl	-1108(%ebp), %ecx
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
	.loc 1 2770 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 2771 0
	movl	-1044(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
.L910:
	.loc 1 2760 0
	movl	-1044(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -1044(%ebp)
.L904:
	cmpl	$0, -1044(%ebp)
	jne	.L905
	.loc 1 2774 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 2775 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 2776 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC215@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 2777 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC216@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-1056(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_string@PLT
	.loc 1 2778 0
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_full_phase_name@PLT
	movl	%eax, %edx
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %ecx
	movl	-1056(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	run_phase@PLT
	.loc 1 2780 0
	movl	$0, string_md@GOTOFF(%ebx)
	.loc 1 2781 0
	movl	$0, string_mmd@GOTOFF(%ebx)
.L900:
.LBE23:
	.loc 1 2783 0
	cmpl	$0, -1052(%ebp)
	jne	.L893
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$16, %eax
	jbe	.L893
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	cmpl	$22, %eax
	ja	.L893
	.loc 1 2806 0
	movl	prelink_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L916
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L916
	.loc 1 2807 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L919
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L919
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$39, %eax
	je	.L919
	.loc 1 2809 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	make_ii_file_name
	movl	%eax, 4(%esp)
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 2807 0
	jmp	.L923
.L919:
	.loc 1 2812 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_file_with_extension@PLT
	movl	%eax, 8(%esp)
	leal	.LC217@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L923:
	.loc 1 2815 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-1040(%ebp), %eax
	movl	%eax, (%esp)
	call	update_instantiation_info_file
.L916:
	.loc 1 2819 0
	movl	$1, -1052(%ebp)
.L893:
	.loc 1 2822 0
	call	has_current_errors@PLT
	testl	%eax, %eax
	jne	.L925
.L888:
	.loc 1 2724 0
	addl	$1, -1060(%ebp)
.L884:
	movl	-1060(%ebp), %eax
	movl	phase_order@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L885
.L925:
	.loc 1 2824 0
	movl	-16(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L926
	call	__stack_chk_fail_local
.L926:
	addl	$1116, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	run_compiler, .-run_compiler
.globl quoted_length
	.type	quoted_length, @function
quoted_length:
.LFB40:
	.loc 1 2888 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	subl	$16, %esp
.LCFI160:
	.loc 1 2889 0
	movl	$0, -8(%ebp)
	.loc 1 2892 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 2894 0
	jmp	.L928
.L929:
	.loc 1 2895 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L930
	cmpb	$39, -1(%ebp)
	je	.L932
	cmpb	$124, -1(%ebp)
	je	.L932
	cmpb	$38, -1(%ebp)
	je	.L932
	cmpb	$42, -1(%ebp)
	je	.L932
	cmpb	$63, -1(%ebp)
	je	.L932
	cmpb	$91, -1(%ebp)
	je	.L932
	cmpb	$93, -1(%ebp)
	je	.L932
	cmpb	$59, -1(%ebp)
	je	.L932
	cmpb	$33, -1(%ebp)
	je	.L932
	cmpb	$40, -1(%ebp)
	je	.L932
	cmpb	$41, -1(%ebp)
	je	.L932
	cmpb	$94, -1(%ebp)
	je	.L932
	cmpb	$60, -1(%ebp)
	je	.L932
	cmpb	$62, -1(%ebp)
	je	.L932
	cmpb	$32, -1(%ebp)
	jbe	.L932
	cmpb	$9, -1(%ebp)
	je	.L932
	cmpb	$34, -1(%ebp)
	je	.L932
	cmpb	$92, -1(%ebp)
	je	.L932
	cmpb	$96, -1(%ebp)
	je	.L932
	cmpb	$36, -1(%ebp)
	jne	.L930
.L932:
	.loc 1 2897 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 2898 0
	addl	$2, -8(%ebp)
.L930:
	.loc 1 2900 0
	cmpb	$34, -1(%ebp)
	je	.L952
	cmpb	$92, -1(%ebp)
	je	.L952
	cmpb	$96, -1(%ebp)
	je	.L952
	cmpb	$36, -1(%ebp)
	jne	.L956
.L952:
	.loc 1 2901 0
	addl	$1, -8(%ebp)
.L956:
	.loc 1 2902 0
	addl	$1, -8(%ebp)
.L928:
	.loc 1 2894 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	setne	%al
	addl	$1, 8(%ebp)
	testb	%al, %al
	jne	.L929
	.loc 1 2904 0
	movl	-8(%ebp), %eax
	.loc 1 2905 0
	leave
	ret
.LFE40:
	.size	quoted_length, .-quoted_length
.globl quote_shell_arg
	.type	quote_shell_arg, @function
quote_shell_arg:
.LFB41:
	.loc 1 2912 0
	pushl	%ebp
.LCFI161:
	movl	%esp, %ebp
.LCFI162:
	pushl	%ebx
.LCFI163:
	subl	$36, %esp
.LCFI164:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2914 0
	movl	$0, -16(%ebp)
	.loc 1 2917 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	quoted_length@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2919 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L962
	.loc 1 2920 0
	movl	12(%ebp), %eax
	movb	$34, (%eax)
	addl	$1, 12(%ebp)
	.loc 1 2921 0
	jmp	.L962
.L963:
	.loc 1 2922 0
	cmpb	$34, -5(%ebp)
	je	.L964
	cmpb	$92, -5(%ebp)
	je	.L964
	cmpb	$96, -5(%ebp)
	je	.L964
	cmpb	$36, -5(%ebp)
	jne	.L968
.L964:
	.loc 1 2923 0
	movl	12(%ebp), %eax
	movb	$92, (%eax)
	addl	$1, 12(%ebp)
.L968:
	.loc 1 2924 0
	movl	12(%ebp), %edx
	movzbl	-5(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, 12(%ebp)
.L962:
	.loc 1 2921 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	cmpb	$0, -5(%ebp)
	setne	%al
	addl	$1, 8(%ebp)
	testb	%al, %al
	jne	.L963
	.loc 1 2926 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L970
	.loc 1 2927 0
	movl	12(%ebp), %eax
	movb	$34, (%eax)
	addl	$1, 12(%ebp)
.L970:
	.loc 1 2929 0
	movl	-12(%ebp), %eax
	.loc 1 2930 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	quote_shell_arg, .-quote_shell_arg
	.local	add_c
	.comm	add_c,4,4
.globl add_minus_c_option
	.type	add_minus_c_option, @function
add_minus_c_option:
.LFB42:
	.loc 1 2946 0
	pushl	%ebp
.LCFI165:
	movl	%esp, %ebp
.LCFI166:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2947 0
	movl	$1, add_c@GOTOFF(%ecx)
	.loc 1 2948 0
	popl	%ebp
	ret
.LFE42:
	.size	add_minus_c_option, .-add_minus_c_option
.globl save_command_line
	.type	save_command_line, @function
save_command_line:
.LFB43:
	.loc 1 2951 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%esi
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$32, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2953 0
	movl	saved_argc@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2954 0
	movl	saved_argc@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2956 0
	movl	$0, -12(%ebp)
	jmp	.L976
.L977:
	.loc 1 2957 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L978
	.loc 1 2958 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %esi
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, (%esi)
	jmp	.L980
.L978:
	.loc 1 2960 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L980:
	.loc 1 2956 0
	addl	$1, -12(%ebp)
.L976:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L977
	.loc 1 2962 0
	movl	saved_argc@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2963 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE43:
	.size	save_command_line, .-save_command_line
.globl check_for_saved_option
	.type	check_for_saved_option, @function
check_for_saved_option:
.LFB44:
	.loc 1 2966 0
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
	.loc 1 2969 0
	movl	$1, -8(%ebp)
	jmp	.L984
.L985:
	.loc 1 2970 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L986
	.loc 1 2971 0
	movl	$1, -24(%ebp)
	jmp	.L988
.L986:
	.loc 1 2969 0
	addl	$1, -8(%ebp)
.L984:
	movl	saved_argc@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L985
	.loc 1 2974 0
	movl	$0, -24(%ebp)
.L988:
	movl	-24(%ebp), %eax
	.loc 1 2975 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	check_for_saved_option, .-check_for_saved_option
.globl set_current_arg_pos
	.type	set_current_arg_pos, @function
set_current_arg_pos:
.LFB45:
	.loc 1 2978 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2979 0
	movl	8(%ebp), %eax
	movl	%eax, curr_argc@GOTOFF(%ecx)
	.loc 1 2980 0
	popl	%ebp
	ret
.LFE45:
	.size	set_current_arg_pos, .-set_current_arg_pos
.globl cancel_saved_arg
	.type	cancel_saved_arg, @function
cancel_saved_arg:
.LFB46:
	.loc 1 2983 0
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$20, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2985 0
	movl	$0, -8(%ebp)
	jmp	.L994
.L995:
	.loc 1 2986 0
	movl	curr_argc@GOTOFF(%ebx), %eax
	addl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L996
	.loc 1 2987 0
	movl	curr_argc@GOTOFF(%ebx), %eax
	addl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L996:
	.loc 1 2988 0
	movl	curr_argc@GOTOFF(%ebx), %eax
	addl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 2985 0
	addl	$1, -8(%ebp)
.L994:
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L995
	.loc 1 2990 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	cancel_saved_arg, .-cancel_saved_arg
	.type	convert_saved_command_line_into_string, @function
convert_saved_command_line_into_string:
.LFB47:
	.loc 1 2999 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$36, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3000 0
	movl	$0, -16(%ebp)
	.loc 1 3001 0
	movl	$0, -20(%ebp)
	.loc 1 3006 0
	movl	$1, -12(%ebp)
	jmp	.L1001
.L1002:
	.loc 1 3007 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1003
	.loc 1 3008 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	quoted_length@PLT
	addl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
.L1003:
	.loc 1 3006 0
	addl	$1, -12(%ebp)
.L1001:
	movl	saved_argc@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L1002
	.loc 1 3013 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	movl	command_line@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3016 0
	movl	$1, -12(%ebp)
	jmp	.L1006
.L1007:
	.loc 1 3017 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1008
	.loc 1 3018 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	quote_shell_arg@PLT
	addl	%eax, -8(%ebp)
	.loc 1 3019 0
	movl	-8(%ebp), %eax
	movb	$32, (%eax)
	addl	$1, -8(%ebp)
.L1008:
	.loc 1 3016 0
	addl	$1, -12(%ebp)
.L1006:
	movl	saved_argc@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jl	.L1007
	.loc 1 3023 0
	movl	command_line@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jbe	.L1011
	.loc 1 3024 0
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movb	$0, (%eax)
	jmp	.L1014
.L1011:
	.loc 1 3026 0
	movl	-8(%ebp), %eax
	movb	$0, (%eax)
.L1014:
	.loc 1 3027 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	convert_saved_command_line_into_string, .-convert_saved_command_line_into_string
	.section	.rodata
.LC218:
	.string	"CMDLINE="
.LC219:
	.string	"%s "
.LC220:
	.string	"-c "
.LC221:
	.string	"%s %s"
.LC222:
	.string	" -o %s"
.LC223:
	.string	"PWD="
.LC224:
	.string	"%s\n"
.LC225:
	.string	"----\n"
	.text
	.type	write_command_string_into_file, @function
write_command_string_into_file:
.LFB48:
	.loc 1 3032 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%ebx
.LCFI188:
	subl	$20, %esp
.LCFI189:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3033 0
	cmpl	$0, 16(%ebp)
	je	.L1016
	.loc 1 3034 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC218@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1016:
	.loc 1 3036 0
	movl	orig_program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC219@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3038 0
	movl	add_c@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1018
	.loc 1 3043 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1018:
	.loc 1 3045 0
	movl	command_line@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC221@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3046 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1020
	movl	multiple_source_files@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1020
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L1023
	cmpl	$0, 16(%ebp)
	je	.L1023
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$39, %eax
	je	.L1020
.L1023:
	.loc 1 3055 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC222@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L1020:
	.loc 1 3057 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 3060 0
	cmpl	$0, 16(%ebp)
	je	.L1026
	.loc 1 3061 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC223@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1026:
	.loc 1 3062 0
	call	get_cwd@PLT
	movl	%eax, 8(%esp)
	leal	.LC224@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3065 0
	cmpl	$0, 16(%ebp)
	je	.L1030
	.loc 1 3066 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC225@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L1030:
	.loc 1 3067 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	write_command_string_into_file, .-write_command_string_into_file
	.section	.rodata
.LC226:
	.string	"w"
	.align 4
.LC227:
	.string	"write_command_string: could not create %s"
.LC228:
	.string	"-FE:cmdline="
	.text
	.type	add_command_line_arg, @function
add_command_line_arg:
.LFB49:
	.loc 1 3070 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%ebx
.LCFI192:
	subl	$36, %esp
.LCFI193:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3078 0
	call	convert_saved_command_line_into_string
	.loc 1 3083 0
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_temp_file_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3084 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1032
	.loc 1 3085 0
	leal	.LC226@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3086 0
	cmpl	$0, -8(%ebp)
	jne	.L1034
	.loc 1 3087 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC227@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L1032
.L1034:
	.loc 1 3089 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	write_command_string_into_file
	.loc 1 3091 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L1032:
	.loc 1 3094 0
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L1036
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1036
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L1036
	movl	source_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L1041
.L1036:
	.loc 1 3099 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC228@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L1041:
	.loc 1 3101 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	add_command_line_arg, .-add_command_line_arg
.globl skip_old_ii_controls
	.type	skip_old_ii_controls, @function
skip_old_ii_controls:
.LFB50:
	.loc 1 3108 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	pushl	%ebx
.LCFI196:
	subl	$20, %esp
.LCFI197:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3110 0
	movl	$0, -8(%ebp)
	.loc 1 3112 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3113 0
	jmp	.L1060
.L1044:
	.loc 1 3114 0
	cmpl	$45, -12(%ebp)
	jne	.L1050
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
	cmpl	$45, -12(%ebp)
	jne	.L1050
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
	cmpl	$45, -12(%ebp)
	jne	.L1050
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
	cmpl	$45, -12(%ebp)
	jne	.L1050
	.loc 1 3118 0
	movl	$1, -8(%ebp)
	.loc 1 3120 0
	jmp	.L1050
.L1051:
	.loc 1 3121 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
.L1050:
	.loc 1 3120 0
	cmpl	$10, -12(%ebp)
	je	.L1052
	cmpl	$-1, -12(%ebp)
	jne	.L1051
.L1052:
	.loc 1 3122 0
	cmpl	$0, -8(%ebp)
	jne	.L1054
	.loc 1 3124 0
	cmpl	$10, -12(%ebp)
	jne	.L1043
	.loc 1 3125 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -12(%ebp)
.L1043:
.L1060:
	.loc 1 3113 0
	cmpl	$-1, -12(%ebp)
	jne	.L1044
.L1054:
	.loc 1 3128 0
	cmpl	$-1, -12(%ebp)
	jne	.L1059
	.loc 1 3129 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rewind@PLT
.L1059:
	.loc 1 3130 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	skip_old_ii_controls, .-skip_old_ii_controls
	.section	.rodata
.LC229:
	.string	"   "
.LC230:
	.string	"/ii_files/"
	.text
	.type	make_ii_file_name, @function
make_ii_file_name:
.LFB51:
	.loc 1 3136 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	pushl	%edi
.LCFI200:
	pushl	%esi
.LCFI201:
	pushl	%ebx
.LCFI202:
	subl	$28, %esp
.LCFI203:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3137 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	driver_basename@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3138 0
	movl	-20(%ebp), %eax
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
	movl	%eax, -16(%ebp)
	.loc 1 3140 0
	leal	.LC229@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3141 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L1062
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L1062
	.loc 1 3142 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$1, %eax
	movw	$26985, (%eax)
	movb	$0, 2(%eax)
	.loc 1 3141 0
	jmp	.L1065
.L1062:
	.loc 1 3144 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	$6908206, (%eax)
.L1065:
	.loc 1 3146 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC230@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dirname@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	concat_strings@PLT
	.loc 1 3149 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	make_ii_file_name, .-make_ii_file_name
	.section	.rodata
.LC231:
	.string	"    "
.LC232:
	.string	"/rii_files/"
	.text
	.type	make_rii_file_name, @function
make_rii_file_name:
.LFB52:
	.loc 1 3155 0
	pushl	%ebp
.LCFI204:
	movl	%esp, %ebp
.LCFI205:
	pushl	%edi
.LCFI206:
	pushl	%esi
.LCFI207:
	pushl	%ebx
.LCFI208:
	subl	$28, %esp
.LCFI209:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3156 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	driver_basename@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3157 0
	movl	-20(%ebp), %eax
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
	movl	%eax, -16(%ebp)
	.loc 1 3159 0
	leal	.LC231@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3160 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L1068
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L1068
	.loc 1 3161 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$1, %eax
	movl	$6908274, (%eax)
	.loc 1 3160 0
	jmp	.L1071
.L1068:
	.loc 1 3163 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	$1768518190, (%eax)
	movb	$0, 4(%eax)
.L1071:
	.loc 1 3165 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC232@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dirname@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	concat_strings@PLT
	.loc 1 3168 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	make_rii_file_name, .-make_rii_file_name
	.section	.rodata
.LC233:
	.string	".NEW"
.LC234:
	.string	"r"
	.align 4
.LC235:
	.string	"%s: update_instantiation_info_file %s\n"
	.align 4
.LC236:
	.string	"update_instantiation_info_file: error in creating file %s"
	.align 4
.LC237:
	.string	"update_instantiation_info_file"
	.align 4
.LC238:
	.string	"update_instantiation_info_file: error in renaming %s to %s"
	.text
	.type	update_instantiation_info_file, @function
update_instantiation_info_file:
.LFB53:
	.loc 1 3175 0
	pushl	%ebp
.LCFI210:
	movl	%esp, %ebp
.LCFI211:
	pushl	%ebx
.LCFI212:
	subl	$36, %esp
.LCFI213:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3176 0
	leal	.LC233@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3178 0
	leal	.LC234@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3182 0
	cmpl	$0, -16(%ebp)
	je	.L1074
	.loc 1 3186 0
	movl	show_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1076
	.loc 1 3187 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC235@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1076:
	.loc 1 3191 0
	leal	.LC226@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3192 0
	cmpl	$0, -12(%ebp)
	jne	.L1078
	.loc 1 3195 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC236@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3197 0
	leal	.LC237@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	perror@PLT
	.loc 1 3198 0
	movl	$1, -24(%ebp)
	jmp	.L1080
.L1078:
	.loc 1 3205 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_old_ii_controls@PLT
	.loc 1 3213 0
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	write_command_string_into_file
	.loc 1 3217 0
	jmp	.L1081
.L1082:
	.loc 1 3218 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_putc@PLT
.L1081:
	.loc 1 3217 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -8(%ebp)
	cmpl	$-1, -8(%ebp)
	jne	.L1082
	.loc 1 3221 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 3222 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 3223 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	rename@PLT
	testl	%eax, %eax
	jns	.L1074
	.loc 1 3224 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC238@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 3226 0
	leal	.LC237@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	perror@PLT
	.loc 1 3227 0
	movl	$1, -24(%ebp)
	jmp	.L1080
.L1074:
	.loc 1 3230 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3231 0
	movl	$0, -24(%ebp)
.L1080:
	movl	-24(%ebp), %eax
	.loc 1 3232 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	update_instantiation_info_file, .-update_instantiation_info_file
	.section	.rodata
.LC239:
	.string	"derived"
.LC240:
	.string	"primary"
.LC241:
	.string	"in"
.LC242:
	.string	"ex"
.LC243:
	.string	"%s: %sternal, #%d of %d, %s\n"
.LC244:
	.string	"-Wb,"
.LC245:
	.string	"-pfa"
.LC246:
	.string	"-dsm_clone"
	.text
	.type	add_ipl_cmd_string, @function
add_ipl_cmd_string:
.LFB54:
	.loc 1 3248 0
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	pushl	%ebx
.LCFI216:
	subl	$52, %esp
.LCFI217:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3249 0
	movl	$30, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	option_matches_phase@PLT
	testl	%eax, %eax
	je	.L1108
.LBB24:
	.loc 1 3251 0
	call	get_current_implied_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3257 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1089
	.loc 1 3258 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_derived_option@PLT
	testl	%eax, %eax
	je	.L1091
	leal	.LC239@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1093
.L1091:
	leal	.LC240@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L1093:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_internal_option@PLT
	testl	%eax, %eax
	je	.L1094
	leal	.LC241@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1096
.L1094:
	leal	.LC242@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L1096:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	$814, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC243@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1089:
	.loc 1 3266 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_internal_option@PLT
	testl	%eax, %eax
	jne	.L1097
	cmpl	$813, 8(%ebp)
	jle	.L1099
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_derived_option@PLT
	testl	%eax, %eax
	jne	.L1099
.L1097:
.LBB25:
	.loc 1 3271 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC244@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3272 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1101
.L1102:
	.loc 1 3273 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	.L1103
	movl	-8(%ebp), %eax
	movb	$44, (%eax)
.L1103:
	.loc 1 3272 0
	addl	$1, -8(%ebp)
.L1101:
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1102
.L1099:
.LBE25:
	.loc 1 3277 0
	leal	.LC245@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1105
	.loc 1 3281 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC244@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	concat_strings@PLT
	movl	%eax, -12(%ebp)
.L1105:
	.loc 1 3285 0
	leal	.LC246@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1108
	.loc 1 3286 0
	movl	ipl_cmds@GOTOFF(%ebx), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_multi_strings@PLT
.L1108:
.LBE24:
	.loc 1 3288 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	add_ipl_cmd_string, .-add_ipl_cmd_string
	.section	.rodata
.LC247:
	.string	"-non_shared"
	.text
.globl save_ipl_commands
	.type	save_ipl_commands, @function
save_ipl_commands:
.LFB55:
	.loc 1 3293 0
	pushl	%ebp
.LCFI218:
	movl	%esp, %ebp
.LCFI219:
	pushl	%ebx
.LCFI220:
	subl	$36, %esp
.LCFI221:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3300 0
	movl	ipl_cmds@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1110
	.loc 1 3301 0
	call	init_string_list@PLT
	movl	%eax, ipl_cmds@GOTOFF(%ebx)
	.loc 1 3302 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	ipl_cmds@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 3303 0
	movl	shared@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L1110
	.loc 1 3304 0
	movl	ipl_cmds@GOTOFF(%ebx), %edx
	leal	.LC247@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
.L1110:
	.loc 1 3308 0
	call	first_option_seen@PLT
	movl	%eax, -12(%ebp)
	jmp	.L1113
.L1114:
	.loc 1 3309 0
	cmpl	$0, -12(%ebp)
	je	.L1115
	cmpl	$89, -12(%ebp)
	je	.L1115
	.loc 1 3311 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	option_matches_language@PLT
	testl	%eax, %eax
	je	.L1115
	.loc 1 3312 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	first_implied_option@PLT
	movl	%eax, -8(%ebp)
	jmp	.L1119
.L1120:
	.loc 1 3313 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_ipl_cmd_string
	.loc 1 3312 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_implied_option@PLT
	movl	%eax, -8(%ebp)
.L1119:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	no_more_implied_options@PLT
	testl	%eax, %eax
	je	.L1120
.L1115:
	.loc 1 3308 0
	call	next_option_seen@PLT
	movl	%eax, -12(%ebp)
.L1113:
	call	more_option_seen@PLT
	testl	%eax, %eax
	jne	.L1114
	.loc 1 3319 0
	movl	ipl_cmds@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	add_targ_options
	.loc 1 3321 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	save_ipl_commands, .-save_ipl_commands
	.section	.rodata
.LC248:
	.string	"-N%d"
.LC249:
	.string	"-ffree"
.LC250:
	.string	"-ffixed"
	.text
	.type	set_f90_source_form, @function
set_f90_source_form:
.LFB56:
	.loc 1 3332 0
	pushl	%ebp
.LCFI222:
	movl	%esp, %ebp
.LCFI223:
	pushl	%ebx
.LCFI224:
	subl	$52, %esp
.LCFI225:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3332 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 3335 0
	movl	fortran_line_length@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC248@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3337 0
	movl	fortran_form@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1124
	.loc 1 3339 0
	leal	.LC249@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L1135
.L1124:
	.loc 1 3340 0
	movl	fortran_form@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L1127
	.loc 1 3342 0
	leal	.LC250@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 3343 0
	cmpl	$0, 12(%ebp)
	je	.L1135
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	jmp	.L1135
.L1127:
	.loc 1 3346 0
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	je	.L1131
	movl	source_kind@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L1133
.L1131:
	.loc 1 3347 0
	leal	.LC249@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 3346 0
	jmp	.L1135
.L1133:
	.loc 1 3349 0
	leal	.LC250@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 3350 0
	cmpl	$0, 12(%ebp)
	je	.L1135
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L1135:
	.loc 1 3353 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1136
	call	__stack_chk_fail_local
.L1136:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	set_f90_source_form, .-set_f90_source_form
	.section	.rodata
.LC251:
	.string	"-LANG:=F90"
	.text
	.type	do_f90_common_args, @function
do_f90_common_args:
.LFB57:
	.loc 1 3362 0
	pushl	%ebp
.LCFI226:
	movl	%esp, %ebp
.LCFI227:
	pushl	%ebx
.LCFI228:
	subl	$20, %esp
.LCFI229:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3364 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_f90_source_form
	.loc 1 3366 0
	leal	.LC251@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 3368 0
	movl	f90_module_dir@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1140
	.loc 1 3370 0
	movl	f90_module_dir@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
.L1140:
	.loc 1 3373 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	do_f90_common_args, .-do_f90_common_args
	.local	basebuf
	.comm	basebuf,4096,32
	.local	dirbuf
	.comm	dirbuf,4096,32
	.local	input_source
	.comm	input_source,4,4
	.local	phase_order
	.comm	phase_order,40,32
	.local	curr_argc
	.comm	curr_argc,4,4
	.comm	saved_argc,4,4
	.comm	saved_argv,4,4
	.comm	dump_outfile_to_stdout,4,4
	.comm	sl_crt,1028,32
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
	.byte	0x4
	.long	.LCFI11-.LCFI7
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI12-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI13
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI18-.LFB8
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
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
	.byte	0x4
	.long	.LCFI25-.LCFI23
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
	.long	.LCFI26-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI27
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
	.long	.LCFI30-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI31
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
	.long	.LCFI35-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI36
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
	.long	.LCFI40-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI41
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
	.long	.LCFI44-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI45
	.byte	0x83
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
	.long	.LCFI49-.LFB15
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI55-.LFB16
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI61-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI62
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
	.long	.LCFI65-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI66
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
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
	.byte	0x4
	.long	.LCFI74-.LCFI72
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
	.long	.LCFI75-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI76
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
	.long	.LCFI80-.LFB22
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI84-.LFB23
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI88-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI89
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
	.long	.LCFI92-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI97-.LCFI93
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI98-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI101-.LCFI99
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
	.long	.LCFI102-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI105-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI106
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
	.long	.LCFI109-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI110
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
	.long	.LCFI113-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI114
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
	.long	.LCFI117-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI120-.LCFI118
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI121-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI122
	.byte	0x83
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
	.long	.LCFI126-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI131-.LCFI127
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI132-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI133-.LCFI132
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI133
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
	.long	.LCFI136-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI137
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
	.long	.LCFI140-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI143-.LCFI141
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
	.long	.LCFI144-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI147-.LCFI145
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
	.long	.LCFI148-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI151-.LCFI149
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
	.long	.LCFI152-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI153
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI158-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI161-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI164-.LCFI162
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
	.long	.LCFI165-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI166-.LCFI165
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI167-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI171-.LCFI168
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI172-.LFB44
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
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI176-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI178-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI179
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
	.long	.LCFI182-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI185-.LCFI183
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
	.long	.LCFI186-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI189-.LCFI187
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
	.long	.LCFI190-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI191-.LCFI190
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI193-.LCFI191
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
	.long	.LCFI194-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI197-.LCFI195
	.byte	0x83
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
	.long	.LCFI203-.LCFI199
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI204-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI205-.LCFI204
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI209-.LCFI205
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI210-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI211-.LCFI210
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI213-.LCFI211
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI214-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI217-.LCFI215
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI218-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI219
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI222-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI225-.LCFI223
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI226-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI227-.LCFI226
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI229-.LCFI227
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
	.file 2 "../../driver/basic.h"
	.file 3 "../../driver/string_utils.h"
	.file 4 "../../driver/lang_defs.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 6 "/usr/include/sys/utsname.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "../../driver/phases.h"
	.file 12 "./option_names.h"
	.file 13 "../../driver/errors.h"
	.file 14 "../../driver/file_names.h"
	.file 15 "../../driver/run.h"
	.file 16 "../../driver/opt_actions.h"
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
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
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI41-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
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
.LLST15:
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
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB26-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI98-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI99-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB28-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI106-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB29-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI109-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI110-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB30-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI113-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI114-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB32-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI122-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB33-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB34-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI132-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI133-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB35-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI136-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI137-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB36-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI140-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI141-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB37-.Ltext0
	.long	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI144-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI145-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB38-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI148-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI149-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB39-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI152-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI153-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB40-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI158-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI159-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB41-.Ltext0
	.long	.LCFI161-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI161-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI162-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB42-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI165-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI166-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB43-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI167-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI168-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB46-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI178-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI179-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB47-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI182-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI183-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB48-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI186-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI187-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB49-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI190-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI191-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB50-.Ltext0
	.long	.LCFI194-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI194-.Ltext0
	.long	.LCFI195-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI195-.Ltext0
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
	.long	.LCFI204-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI204-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI205-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB53-.Ltext0
	.long	.LCFI210-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI210-.Ltext0
	.long	.LCFI211-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI211-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB54-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI214-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI215-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB55-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI218-.Ltext0
	.long	.LCFI219-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI219-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB56-.Ltext0
	.long	.LCFI222-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI222-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI223-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB57-.Ltext0
	.long	.LCFI226-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI226-.Ltext0
	.long	.LCFI227-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI227-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x28c4
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/phases.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x5
	.byte	0x2b
	.long	0x9a
	.uleb128 0x3
	.byte	0x4
	.long	0xa0
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"va_list"
	.byte	0x5
	.byte	0x69
	.long	0x84
	.uleb128 0x2
	.string	"size_t"
	.byte	0xa
	.byte	0xd6
	.long	0xc5
	.uleb128 0x5
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
	.byte	0x9
	.byte	0x3b
	.long	0x12b
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x9
	.byte	0x90
	.long	0x175
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x9
	.byte	0x91
	.long	0x156
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0xa0
	.uleb128 0x2
	.string	"FILE"
	.byte	0x7
	.byte	0x2e
	.long	0x1ad
	.uleb128 0x7
	.long	0x428
	.long	.LASF1
	.byte	0x94
	.byte	0x7
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x8
	.value	0x10c
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x8
	.value	0x111
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x8
	.value	0x112
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x8
	.value	0x113
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x8
	.value	0x114
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x8
	.value	0x115
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x8
	.value	0x116
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x8
	.value	0x117
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x8
	.value	0x118
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x8
	.value	0x11a
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x8
	.value	0x11b
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x8
	.value	0x11c
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x8
	.value	0x11e
	.long	0x484
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x8
	.value	0x120
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x8
	.value	0x122
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x8
	.value	0x126
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x8
	.value	0x128
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x8
	.value	0x12c
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x8
	.value	0x12d
	.long	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x8
	.value	0x12e
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x8
	.value	0x132
	.long	0x4a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x8
	.value	0x13b
	.long	0x181
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x8
	.value	0x144
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x8
	.value	0x145
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x8
	.value	0x146
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x8
	.value	0x147
	.long	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x8
	.value	0x148
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x8
	.value	0x14a
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x8
	.value	0x14c
	.long	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x42e
	.uleb128 0x9
	.long	0xa0
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x8
	.byte	0xb0
	.uleb128 0xb
	.long	0x484
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x8
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x8
	.byte	0xb7
	.long	0x484
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x8
	.byte	0xb8
	.long	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x8
	.byte	0xbc
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x441
	.uleb128 0x3
	.byte	0x4
	.long	0x1ad
	.uleb128 0xd
	.long	0x4a0
	.long	0xa0
	.uleb128 0xe
	.long	0x192
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x433
	.uleb128 0xd
	.long	0x4b6
	.long	0xa0
	.uleb128 0xe
	.long	0x192
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x124
	.uleb128 0xf
	.long	0x542
	.string	"utsname"
	.value	0x186
	.byte	0x6
	.byte	0x32
	.uleb128 0xc
	.string	"sysname"
	.byte	0x6
	.byte	0x34
	.long	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"nodename"
	.byte	0x6
	.byte	0x37
	.long	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xc
	.string	"release"
	.byte	0x6
	.byte	0x3a
	.long	0x542
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xc
	.string	"version"
	.byte	0x6
	.byte	0x3c
	.long	0x542
	.byte	0x3
	.byte	0x23
	.uleb128 0xc3
	.uleb128 0xc
	.string	"machine"
	.byte	0x6
	.byte	0x3f
	.long	0x542
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"domainname"
	.byte	0x6
	.byte	0x44
	.long	0x542
	.byte	0x3
	.byte	0x23
	.uleb128 0x145
	.byte	0x0
	.uleb128 0xd
	.long	0x552
	.long	0xa0
	.uleb128 0xe
	.long	0x192
	.byte	0x40
	.byte	0x0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x2c
	.long	0x124
	.uleb128 0x2
	.string	"buffer_t"
	.byte	0x2
	.byte	0x2f
	.long	0x571
	.uleb128 0xd
	.long	0x582
	.long	0xa0
	.uleb128 0x10
	.long	0x192
	.value	0x1ff
	.byte	0x0
	.uleb128 0x11
	.long	0x5e6
	.byte	0x4
	.byte	0x4
	.byte	0x2f
	.uleb128 0x12
	.string	"L_NONE"
	.sleb128 0
	.uleb128 0x12
	.string	"L_ALL"
	.sleb128 1
	.uleb128 0x12
	.string	"L_cpp"
	.sleb128 2
	.uleb128 0x12
	.string	"L_cc"
	.sleb128 3
	.uleb128 0x12
	.string	"L_CC"
	.sleb128 4
	.uleb128 0x12
	.string	"L_f77"
	.sleb128 5
	.uleb128 0x12
	.string	"L_f90"
	.sleb128 6
	.uleb128 0x12
	.string	"L_as"
	.sleb128 7
	.uleb128 0x12
	.string	"L_ld"
	.sleb128 8
	.uleb128 0x12
	.string	"L_internal"
	.sleb128 9
	.uleb128 0x12
	.string	"L_LAST"
	.sleb128 10
	.byte	0x0
	.uleb128 0x2
	.string	"languages_t"
	.byte	0x4
	.byte	0x3b
	.long	0x582
	.uleb128 0x11
	.long	0x679
	.byte	0x4
	.byte	0x4
	.byte	0x3e
	.uleb128 0x12
	.string	"S_NONE"
	.sleb128 0
	.uleb128 0x12
	.string	"S_c"
	.sleb128 1
	.uleb128 0x12
	.string	"S_C"
	.sleb128 2
	.uleb128 0x12
	.string	"S_f"
	.sleb128 3
	.uleb128 0x12
	.string	"S_F"
	.sleb128 4
	.uleb128 0x12
	.string	"S_f90"
	.sleb128 5
	.uleb128 0x12
	.string	"S_F90"
	.sleb128 6
	.uleb128 0x12
	.string	"S_r"
	.sleb128 7
	.uleb128 0x12
	.string	"S_i"
	.sleb128 8
	.uleb128 0x12
	.string	"S_ii"
	.sleb128 9
	.uleb128 0x12
	.string	"S_s"
	.sleb128 10
	.uleb128 0x12
	.string	"S_S"
	.sleb128 11
	.uleb128 0x12
	.string	"S_I"
	.sleb128 12
	.uleb128 0x12
	.string	"S_B"
	.sleb128 13
	.uleb128 0x12
	.string	"S_N"
	.sleb128 14
	.uleb128 0x12
	.string	"S_O"
	.sleb128 15
	.uleb128 0x12
	.string	"S_o"
	.sleb128 16
	.uleb128 0x12
	.string	"S_LAST"
	.sleb128 17
	.byte	0x0
	.uleb128 0x2
	.string	"source_kind_t"
	.byte	0x4
	.byte	0x51
	.long	0x5f9
	.uleb128 0x11
	.long	0x8b5
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.uleb128 0x12
	.string	"P_NONE"
	.sleb128 0
	.uleb128 0x12
	.string	"P_All"
	.sleb128 1
	.uleb128 0x12
	.string	"P_m4"
	.sleb128 2
	.uleb128 0x12
	.string	"P_ratfor"
	.sleb128 3
	.uleb128 0x12
	.string	"P_cpp"
	.sleb128 4
	.uleb128 0x12
	.string	"P_gcpp"
	.sleb128 5
	.uleb128 0x12
	.string	"P_gcpp_plus"
	.sleb128 6
	.uleb128 0x12
	.string	"P_c_cpp"
	.sleb128 7
	.uleb128 0x12
	.string	"P_cplus_cpp"
	.sleb128 8
	.uleb128 0x12
	.string	"P_f_cpp"
	.sleb128 9
	.uleb128 0x12
	.string	"P_f90_cpp"
	.sleb128 10
	.uleb128 0x12
	.string	"P_f_coco"
	.sleb128 11
	.uleb128 0x12
	.string	"P_any_cpp"
	.sleb128 12
	.uleb128 0x12
	.string	"P_pfa"
	.sleb128 13
	.uleb128 0x12
	.string	"P_pca"
	.sleb128 14
	.uleb128 0x12
	.string	"P_mpc"
	.sleb128 15
	.uleb128 0x12
	.string	"P_any_optfe"
	.sleb128 16
	.uleb128 0x12
	.string	"P_f_fe"
	.sleb128 17
	.uleb128 0x12
	.string	"P_cppf_fe"
	.sleb128 18
	.uleb128 0x12
	.string	"P_f90_fe"
	.sleb128 19
	.uleb128 0x12
	.string	"P_cppf90_fe"
	.sleb128 20
	.uleb128 0x12
	.string	"P_c_gfe"
	.sleb128 21
	.uleb128 0x12
	.string	"P_cplus_gfe"
	.sleb128 22
	.uleb128 0x12
	.string	"P_any_fe"
	.sleb128 23
	.uleb128 0x12
	.string	"P_pseudo_f_fe"
	.sleb128 24
	.uleb128 0x12
	.string	"P_pseudo_c_fe"
	.sleb128 25
	.uleb128 0x12
	.string	"P_lister"
	.sleb128 26
	.uleb128 0x12
	.string	"P_inline"
	.sleb128 27
	.uleb128 0x12
	.string	"P_ipl"
	.sleb128 28
	.uleb128 0x12
	.string	"p_any_ipl"
	.sleb128 29
	.uleb128 0x12
	.string	"P_be"
	.sleb128 30
	.uleb128 0x12
	.string	"P_as"
	.sleb128 31
	.uleb128 0x12
	.string	"P_gas"
	.sleb128 32
	.uleb128 0x12
	.string	"P_any_as"
	.sleb128 33
	.uleb128 0x12
	.string	"P_dsm_prelink"
	.sleb128 34
	.uleb128 0x12
	.string	"P_ipa_link"
	.sleb128 35
	.uleb128 0x12
	.string	"P_collect"
	.sleb128 36
	.uleb128 0x12
	.string	"P_ld"
	.sleb128 37
	.uleb128 0x12
	.string	"P_ldplus"
	.sleb128 38
	.uleb128 0x12
	.string	"P_any_ld"
	.sleb128 39
	.uleb128 0x12
	.string	"P_cord"
	.sleb128 40
	.uleb128 0x12
	.string	"P_pixie"
	.sleb128 41
	.uleb128 0x12
	.string	"P_prof"
	.sleb128 42
	.uleb128 0x12
	.string	"P_ar"
	.sleb128 43
	.uleb128 0x12
	.string	"P_startup"
	.sleb128 44
	.uleb128 0x12
	.string	"P_include"
	.sleb128 45
	.uleb128 0x12
	.string	"P_library"
	.sleb128 46
	.uleb128 0x12
	.string	"P_alt_library"
	.sleb128 47
	.uleb128 0x12
	.string	"P_sl2startup"
	.sleb128 48
	.uleb128 0x12
	.string	"P_LAST"
	.sleb128 49
	.byte	0x0
	.uleb128 0x2
	.string	"phases_t"
	.byte	0x4
	.byte	0x97
	.long	0x68e
	.uleb128 0x2
	.string	"mask_t"
	.byte	0x4
	.byte	0xad
	.long	0x12b
	.uleb128 0xb
	.long	0x909
	.string	"string_item_rec"
	.byte	0x8
	.byte	0x3
	.byte	0x50
	.uleb128 0x13
	.long	.LASF2
	.byte	0x3
	.byte	0x51
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"next"
	.byte	0x3
	.byte	0x52
	.long	0x909
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8d3
	.uleb128 0x2
	.string	"string_item_t"
	.byte	0x3
	.byte	0x53
	.long	0x8d3
	.uleb128 0xb
	.long	0x95b
	.string	"string_list_rec"
	.byte	0x8
	.byte	0x3
	.byte	0x54
	.uleb128 0xc
	.string	"head"
	.byte	0x3
	.byte	0x55
	.long	0x95b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tail"
	.byte	0x3
	.byte	0x56
	.long	0x95b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x90f
	.uleb128 0x2
	.string	"string_list_t"
	.byte	0x3
	.byte	0x57
	.long	0x924
	.uleb128 0x14
	.long	0x9bd
	.string	"previous_mf_exists"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	0x552
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x15
	.string	"list"
	.byte	0x1
	.byte	0x98
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x9a
	.long	0x95b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x961
	.uleb128 0x17
	.long	0xa06
	.string	"remove_previous_mf"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x15
	.string	"list"
	.byte	0x1
	.byte	0xa5
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0xa7
	.long	0x95b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x17
	.long	0xa92
	.string	"add_implied_string"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x15
	.string	"list"
	.byte	0x1
	.byte	0xb2
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF3
	.byte	0x1
	.byte	0xb2
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"flag"
	.byte	0x1
	.byte	0xb2
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.string	"phase"
	.byte	0x1
	.byte	0xb2
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.string	"iname"
	.byte	0x1
	.byte	0xb5
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1a
	.long	.LASF2
	.byte	0x1
	.byte	0xbf
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xb01
	.string	"copy_phase_options"
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x1c
	.string	"phase_list"
	.byte	0x1
	.value	0x109
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"phase"
	.byte	0x1
	.value	0x109
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"flag"
	.byte	0x1
	.value	0x10b
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.value	0x10c
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0xb3a
	.string	"add_language_option"
	.byte	0x1
	.value	0x131
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x130
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0xb8b
	.string	"add_targ_options"
	.byte	0x1
	.value	0x150
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x14f
	.long	0x9bd
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x19
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.value	0x153
	.long	0xb8b
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0xb9b
	.long	0xa0
	.uleb128 0xe
	.long	0x192
	.byte	0x63
	.byte	0x0
	.uleb128 0x20
	.long	0xbed
	.byte	0x1
	.string	"driver_basename"
	.byte	0x1
	.value	0x170
	.byte	0x1
	.long	0x19b
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x16f
	.long	0xbed
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x171
	.long	0x19b
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.value	0x172
	.long	0xbed
	.byte	0x2
	.byte	0x75
	.sleb128 -12
	.byte	0x0
	.uleb128 0x9
	.long	0x19b
	.uleb128 0x20
	.long	0xc3c
	.byte	0x1
	.string	"dirname"
	.byte	0x1
	.value	0x185
	.byte	0x1
	.long	0x19b
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x184
	.long	0xbed
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x186
	.long	0x19b
	.byte	0x2
	.byte	0x75
	.sleb128 -16
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.value	0x187
	.long	0xbed
	.byte	0x2
	.byte	0x75
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1b
	.long	0xc99
	.string	"add_arg"
	.byte	0x1
	.value	0x1c6
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x1c5
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"format"
	.byte	0x1
	.value	0x1c5
	.long	0x428
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.uleb128 0x1d
	.string	"arg"
	.byte	0x1
	.value	0x1c7
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.string	"ap"
	.byte	0x1
	.value	0x1c8
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1b
	.long	0xd62
	.string	"set_library_paths"
	.byte	0x1
	.value	0x1e9
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x1e8
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"native"
	.byte	0x1
	.value	0x1e8
	.long	0x552
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.value	0x1ea
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x1ec
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"gcc_v_path"
	.byte	0x1
	.value	0x1f2
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"gcc_path"
	.byte	0x1
	.value	0x1f2
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"our_path"
	.byte	0x1
	.value	0x1f3
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"lib_path"
	.byte	0x1
	.value	0x1f4
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF7
	.long	0x2005
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__PRETTY_FUNCTION__.4546
	.byte	0x0
	.uleb128 0x23
	.long	0xdbd
	.string	"fix_name_by_phase"
	.byte	0x1
	.value	0x249
	.byte	0x1
	.long	0x19b
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x1
	.value	0x248
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"phase"
	.byte	0x1
	.value	0x248
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0x24a
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x20
	.long	0xe07
	.byte	0x1
	.string	"fix_name_by_lang"
	.byte	0x1
	.value	0x275
	.byte	0x1
	.long	0x19b
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x1
	.value	0x274
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.value	0x276
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1b
	.long	0xe67
	.string	"add_inc_path"
	.byte	0x1
	.value	0x291
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x290
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"fmt"
	.byte	0x1
	.value	0x290
	.long	0x428
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.uleb128 0x1d
	.string	"path"
	.byte	0x1
	.value	0x292
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.string	"ap"
	.byte	0x1
	.value	0x293
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x20
	.long	0xede
	.byte	0x1
	.string	"platform_is_64bit"
	.byte	0x1
	.value	0x2a0
	.byte	0x1
	.long	0x552
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x24
	.long	0xeaf
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1d
	.string	"u"
	.byte	0x1
	.value	0x2a5
	.long	0x4bc
	.byte	0x3
	.byte	0x91
	.sleb128 -406
	.byte	0x0
	.uleb128 0x1d
	.string	"_64bit_set"
	.byte	0x1
	.value	0x2a1
	.long	0x552
	.byte	0x5
	.byte	0x3
	.long	_64bit_set.4658
	.uleb128 0x1d
	.string	"_64bit"
	.byte	0x1
	.value	0x2a2
	.long	0x552
	.byte	0x5
	.byte	0x3
	.long	_64bit.4659
	.byte	0x0
	.uleb128 0x20
	.long	0xf38
	.byte	0x1
	.string	"target_is_native"
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x552
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x1d
	.string	"native"
	.byte	0x1
	.value	0x2bb
	.long	0x552
	.byte	0x5
	.byte	0x3
	.long	native.4670
	.uleb128 0x1d
	.string	"native_set"
	.byte	0x1
	.value	0x2bc
	.long	0x552
	.byte	0x5
	.byte	0x3
	.long	native_set.4671
	.byte	0x0
	.uleb128 0x1b
	.long	0xf82
	.string	"add_file_args_first"
	.byte	0x1
	.value	0x2d5
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x2d4
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"index"
	.byte	0x1
	.value	0x2d4
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1b
	.long	0x11cd
	.string	"add_file_args"
	.byte	0x1
	.value	0x2ec
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x2eb
	.long	0x9bd
	.byte	0x3
	.byte	0x91
	.sleb128 -612
	.uleb128 0x1c
	.string	"index"
	.byte	0x1
	.value	0x2eb
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.value	0x2ed
	.long	0x561
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x1d
	.string	"temp"
	.byte	0x1
	.value	0x2ee
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x2ef
	.long	0x95b
	.byte	0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x1d
	.string	"count_file_name"
	.byte	0x1
	.value	0x2f0
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x1d
	.string	"the_file"
	.byte	0x1
	.value	0x2f1
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x24
	.long	0x11bc
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x377
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.value	0x378
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x1d
	.string	"inc_path"
	.byte	0x1
	.value	0x379
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x24
	.long	0x1091
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1d
	.string	"fortran_source"
	.byte	0x1
	.value	0x3b0
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -576
	.byte	0x0
	.uleb128 0x24
	.long	0x10ce
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1d
	.string	"list_suffix"
	.byte	0x1
	.value	0x3cb
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x1d
	.string	"cmp_suffix"
	.byte	0x1
	.value	0x3cb
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -568
	.byte	0x0
	.uleb128 0x24
	.long	0x10ed
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1d
	.string	"root"
	.byte	0x1
	.value	0x449
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -564
	.byte	0x0
	.uleb128 0x24
	.long	0x113e
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x1d
	.string	"listing_file"
	.byte	0x1
	.value	0x459
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x1d
	.string	"cif_file"
	.byte	0x1
	.value	0x45a
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x1d
	.string	"has_path"
	.byte	0x1
	.value	0x45b
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -552
	.byte	0x0
	.uleb128 0x24
	.long	0x115d
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1d
	.string	"root"
	.byte	0x1
	.value	0x4ab
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -548
	.byte	0x0
	.uleb128 0x24
	.long	0x1179
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x58b
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -544
	.byte	0x0
	.uleb128 0x24
	.long	0x1197
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x5bd
	.long	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -540
	.byte	0x0
	.uleb128 0x19
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1d
	.string	"temp_obj_file"
	.byte	0x1
	.value	0x5eb
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	.LASF7
	.long	0x1ff0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__PRETTY_FUNCTION__.4710
	.byte	0x0
	.uleb128 0x1b
	.long	0x1213
	.string	"get_libgcc_s_name"
	.byte	0x1
	.value	0x6ae
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x1
	.value	0x6ad
	.long	0x1213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x1
	.value	0x6ad
	.long	0x1213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x19b
	.uleb128 0x1b
	.long	0x12b3
	.string	"add_libgcc_s"
	.byte	0x1
	.value	0x6c6
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x6c5
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x1
	.value	0x6c8
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x1
	.value	0x6c8
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x6ca
	.long	0x95b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x6cb
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"libgcc_s"
	.byte	0x1
	.value	0x6c7
	.long	0x19b
	.byte	0x5
	.byte	0x3
	.long	libgcc_s.5403
	.uleb128 0x1d
	.string	"path_set"
	.byte	0x1
	.value	0x6c9
	.long	0x124
	.byte	0x5
	.byte	0x3
	.long	path_set.5406
	.byte	0x0
	.uleb128 0x1b
	.long	0x133e
	.string	"add_final_ld_args"
	.byte	0x1
	.value	0x708
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x707
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	0x1315
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x1
	.value	0x71f
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x720
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x19
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x1
	.value	0x797
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.value	0x798
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x139d
	.string	"postprocess_ld_args"
	.byte	0x1
	.value	0x7c5
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x7c4
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x7c6
	.long	0x95b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x1d
	.string	"dir"
	.byte	0x1
	.value	0x7d5
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x13ca
	.string	"add_phase"
	.byte	0x1
	.value	0x7ec
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST21
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.value	0x7eb
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x25
	.string	"post_fe_phase"
	.byte	0x1
	.value	0x7f7
	.byte	0x1
	.long	0x8b5
	.long	.LFB27
	.long	.LFE27
	.long	.LLST22
	.uleb128 0x26
	.string	"add_inline_option"
	.byte	0x1
	.value	0x805
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST23
	.uleb128 0x1b
	.long	0x1492
	.string	"determine_phase_order"
	.byte	0x1
	.value	0x814
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST24
	.uleb128 0x1d
	.string	"next_phase"
	.byte	0x1
	.value	0x815
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"cpp_phase"
	.byte	0x1
	.value	0x816
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"asm_phase"
	.byte	0x1
	.value	0x817
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"link_phase"
	.byte	0x1
	.value	0x818
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0x14f1
	.string	"check_existence_of_phases"
	.byte	0x1
	.value	0x90f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST25
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x910
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x1d
	.string	"give_warning"
	.byte	0x1
	.value	0x912
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x153f
	.string	"add_instr_archive"
	.byte	0x1
	.value	0x93e
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST26
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x93d
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x1d
	.string	"f"
	.byte	0x1
	.value	0x944
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x15a0
	.byte	0x1
	.string	"init_phase_info"
	.byte	0x1
	.value	0x965
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST27
	.uleb128 0x1d
	.string	"toolroot"
	.byte	0x1
	.value	0x966
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x967
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x971
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1668
	.byte	0x1
	.string	"init_phase_names"
	.byte	0x1
	.value	0x98f
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST28
	.uleb128 0x1d
	.string	"prefix"
	.byte	0x1
	.value	0x990
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -4152
	.uleb128 0x1d
	.string	"cmd"
	.byte	0x1
	.value	0x990
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -4148
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.value	0x990
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x1d
	.string	"path"
	.byte	0x1
	.value	0x991
	.long	0x1668
	.byte	0x3
	.byte	0x91
	.sleb128 -4120
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x992
	.long	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -4140
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x992
	.long	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -4136
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x992
	.long	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -4132
	.uleb128 0x1d
	.string	"rval"
	.byte	0x1
	.value	0x992
	.long	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x19
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x1d
	.string	"phase_name"
	.byte	0x1
	.value	0x9c3
	.long	0x19b
	.byte	0x3
	.byte	0x91
	.sleb128 -4124
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1679
	.long	0xa0
	.uleb128 0x10
	.long	0x192
	.value	0xfff
	.byte	0x0
	.uleb128 0x27
	.long	0x16af
	.byte	0x1
	.string	"run_dsm_prelink"
	.byte	0x1
	.value	0x9ce
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST29
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0x9cf
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x171a
	.byte	0x1
	.string	"run_ld"
	.byte	0x1
	.value	0x9d8
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST30
	.uleb128 0x1d
	.string	"ldphase"
	.byte	0x1
	.value	0x9d9
	.long	0x8b5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"ldpath"
	.byte	0x1
	.value	0x9da
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0x9db
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x1d
	.string	"str"
	.byte	0x1
	.value	0x9f0
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1759
	.byte	0x1
	.string	"run_ar"
	.byte	0x1
	.value	0xa30
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST31
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0xa31
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"arpath"
	.byte	0x1
	.value	0xa32
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x17be
	.byte	0x1
	.string	"run_pixie"
	.byte	0x1
	.value	0xa40
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST32
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0xa41
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0xa42
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"pixie_file"
	.byte	0x1
	.value	0xa43
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"temp"
	.byte	0x1
	.value	0xa44
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x1864
	.byte	0x1
	.string	"run_prof"
	.byte	0x1
	.value	0xa60
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST33
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x1
	.value	0xa61
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0xa62
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"bin_dot_pixie"
	.byte	0x1
	.value	0xa63
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"bin_plain"
	.byte	0x1
	.value	0xa63
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"delete_link"
	.byte	0x1
	.value	0xa64
	.long	0x552
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1d
	.string	"unlink_status"
	.byte	0x1
	.value	0xa7f
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1944
	.byte	0x1
	.string	"run_compiler"
	.byte	0x1
	.value	0xa8b
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST34
	.uleb128 0x1c
	.string	"argc"
	.byte	0x1
	.value	0xa8a
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"argv"
	.byte	0x1
	.value	0xa8a
	.long	0x1213
	.byte	0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0xa8c
	.long	0x124
	.byte	0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.value	0xa8d
	.long	0x9bd
	.byte	0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x1d
	.string	"inst_info_updated"
	.byte	0x1
	.value	0xa8e
	.long	0x552
	.byte	0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x1d
	.string	"cmd_line_updated"
	.byte	0x1
	.value	0xa8f
	.long	0x552
	.byte	0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x1d
	.string	"rii_file_name"
	.byte	0x1
	.value	0xa90
	.long	0x561
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x1
	.value	0xa91
	.long	0x561
	.byte	0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x19
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0xac7
	.long	0x95b
	.byte	0x3
	.byte	0x91
	.sleb128 -1052
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x19a5
	.byte	0x1
	.string	"quoted_length"
	.byte	0x1
	.value	0xb48
	.byte	0x1
	.long	0x124
	.long	.LFB40
	.long	.LFE40
	.long	.LLST35
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.value	0xb47
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF15
	.byte	0x1
	.value	0xb47
	.long	0x4b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0xb49
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.value	0xb4a
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.uleb128 0x20
	.long	0x1a17
	.byte	0x1
	.string	"quote_shell_arg"
	.byte	0x1
	.value	0xb60
	.byte	0x1
	.long	0x124
	.long	.LFB41
	.long	.LFE41
	.long	.LLST36
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.value	0xb5f
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0xb5f
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.value	0xb61
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0xb62
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0xb63
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.string	"add_minus_c_option"
	.byte	0x1
	.value	0xb82
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST37
	.uleb128 0x27
	.long	0x1a92
	.byte	0x1
	.string	"save_command_line"
	.byte	0x1
	.value	0xb87
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST38
	.uleb128 0x1c
	.string	"argc"
	.byte	0x1
	.value	0xb86
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"argv"
	.byte	0x1
	.value	0xb86
	.long	0x1213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0xb88
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x20
	.long	0x1ae0
	.byte	0x1
	.string	"check_for_saved_option"
	.byte	0x1
	.value	0xb96
	.byte	0x1
	.long	0x124
	.long	.LFB44
	.long	.LFE44
	.long	.LLST39
	.uleb128 0x1c
	.string	"opt"
	.byte	0x1
	.value	0xb95
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0xb97
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x1b18
	.byte	0x1
	.string	"set_current_arg_pos"
	.byte	0x1
	.value	0xba2
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST40
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.value	0xba1
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x27
	.long	0x1b5e
	.byte	0x1
	.string	"cancel_saved_arg"
	.byte	0x1
	.value	0xba7
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST41
	.uleb128 0x1c
	.string	"count"
	.byte	0x1
	.value	0xba6
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0xba8
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0x1bd3
	.string	"convert_saved_command_line_into_string"
	.byte	0x1
	.value	0xbb7
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST42
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0xbb8
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.value	0xbb9
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0xbba
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0xbbb
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0x1c41
	.string	"write_command_string_into_file"
	.byte	0x1
	.value	0xbd8
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST43
	.uleb128 0x1c
	.string	"cmdfile"
	.byte	0x1
	.value	0xbd5
	.long	0x1c41
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF16
	.byte	0x1
	.value	0xbd6
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"for_ii_file"
	.byte	0x1
	.value	0xbd7
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a1
	.uleb128 0x1b
	.long	0x1cbd
	.string	"add_command_line_arg"
	.byte	0x1
	.value	0xbfe
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST44
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0xbfd
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x1
	.value	0xbfd
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"cmd_file_name"
	.byte	0x1
	.value	0xbff
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"cmd_file"
	.byte	0x1
	.value	0xc00
	.long	0x1c41
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.long	0x1d1f
	.byte	0x1
	.string	"skip_old_ii_controls"
	.byte	0x1
	.value	0xc24
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST45
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0xc23
	.long	0x1c41
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.value	0xc25
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"terminator_found"
	.byte	0x1
	.value	0xc26
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x1d81
	.string	"make_ii_file_name"
	.byte	0x1
	.value	0xc40
	.byte	0x1
	.long	0x19b
	.long	.LFB51
	.long	.LFE51
	.long	.LLST46
	.uleb128 0x1c
	.string	"objname"
	.byte	0x1
	.value	0xc3f
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"base"
	.byte	0x1
	.value	0xc41
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"baselen"
	.byte	0x1
	.value	0xc42
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x23
	.long	0x1de4
	.string	"make_rii_file_name"
	.byte	0x1
	.value	0xc53
	.byte	0x1
	.long	0x19b
	.long	.LFB52
	.long	.LFE52
	.long	.LLST47
	.uleb128 0x1c
	.string	"objname"
	.byte	0x1
	.value	0xc52
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"base"
	.byte	0x1
	.value	0xc54
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"baselen"
	.byte	0x1
	.value	0xc55
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x23
	.long	0x1e88
	.string	"update_instantiation_info_file"
	.byte	0x1
	.value	0xc67
	.byte	0x1
	.long	0x124
	.long	.LFB53
	.long	.LFE53
	.long	.LLST48
	.uleb128 0x1f
	.long	.LASF14
	.byte	0x1
	.value	0xc66
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF16
	.byte	0x1
	.value	0xc66
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"new_ii_file_name"
	.byte	0x1
	.value	0xc68
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"old_ii"
	.byte	0x1
	.value	0xc6a
	.long	0x1c41
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"new_ii"
	.byte	0x1
	.value	0xc6b
	.long	0x1c41
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.value	0xc6c
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0x1ef0
	.string	"add_ipl_cmd_string"
	.byte	0x1
	.value	0xcb0
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST49
	.uleb128 0x1f
	.long	.LASF3
	.byte	0x1
	.value	0xcaf
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0xcb3
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0xcc6
	.long	0x19b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1f35
	.byte	0x1
	.string	"save_ipl_commands"
	.byte	0x1
	.value	0xcdd
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST50
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0xcde
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.value	0xcdf
	.long	0x124
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0x1f98
	.string	"set_f90_source_form"
	.byte	0x1
	.value	0xd04
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST51
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0xd03
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"set_line_length"
	.byte	0x1
	.value	0xd03
	.long	0x552
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.value	0xd05
	.long	0x1f98
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0x1fa8
	.long	0xa0
	.uleb128 0xe
	.long	0x192
	.byte	0xf
	.byte	0x0
	.uleb128 0x1b
	.long	0x1fe0
	.string	"do_f90_common_args"
	.byte	0x1
	.value	0xd22
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST52
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0xd21
	.long	0x9bd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xd
	.long	0x1ff0
	.long	0xa0
	.uleb128 0xe
	.long	0x192
	.byte	0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x1fe0
	.uleb128 0xd
	.long	0x2005
	.long	0xa0
	.uleb128 0xe
	.long	0x192
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x1ff5
	.uleb128 0x16
	.string	"ipl_cmds"
	.byte	0x1
	.byte	0x7e
	.long	0x9bd
	.byte	0x5
	.byte	0x3
	.long	ipl_cmds
	.uleb128 0x16
	.string	"string_md"
	.byte	0x1
	.byte	0x80
	.long	0x552
	.byte	0x5
	.byte	0x3
	.long	string_md
	.uleb128 0x16
	.string	"string_mmd"
	.byte	0x1
	.byte	0x81
	.long	0x552
	.byte	0x5
	.byte	0x3
	.long	string_mmd
	.uleb128 0x1d
	.string	"basebuf"
	.byte	0x1
	.value	0x16d
	.long	0x1668
	.byte	0x5
	.byte	0x3
	.long	basebuf
	.uleb128 0x1d
	.string	"dirbuf"
	.byte	0x1
	.value	0x182
	.long	0x1668
	.byte	0x5
	.byte	0x3
	.long	dirbuf
	.uleb128 0x1d
	.string	"input_source"
	.byte	0x1
	.value	0x1a3
	.long	0x19b
	.byte	0x5
	.byte	0x3
	.long	input_source
	.uleb128 0xd
	.long	0x20a5
	.long	0x8b5
	.uleb128 0xe
	.long	0x192
	.byte	0x9
	.byte	0x0
	.uleb128 0x1d
	.string	"phase_order"
	.byte	0x1
	.value	0x7e7
	.long	0x2095
	.byte	0x5
	.byte	0x3
	.long	phase_order
	.uleb128 0x1d
	.string	"phase_order_index"
	.byte	0x1
	.value	0x7e8
	.long	0x124
	.byte	0x5
	.byte	0x3
	.long	phase_order_index
	.uleb128 0x1d
	.string	"curr_argc"
	.byte	0x1
	.value	0xb77
	.long	0x124
	.byte	0x5
	.byte	0x3
	.long	curr_argc
	.uleb128 0x1d
	.string	"add_c"
	.byte	0x1
	.value	0xb78
	.long	0x124
	.byte	0x5
	.byte	0x3
	.long	add_c
	.uleb128 0x29
	.string	"stderr"
	.byte	0x7
	.byte	0x90
	.long	0x48a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.byte	0x57
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	source_file
	.uleb128 0x2b
	.string	"multiple_source_files"
	.byte	0x1
	.byte	0x5c
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	multiple_source_files
	.uleb128 0x2b
	.string	"outfile"
	.byte	0x1
	.byte	0x4d
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	outfile
	.uleb128 0x2b
	.string	"prof_file"
	.byte	0x1
	.byte	0x4e
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prof_file
	.uleb128 0x2b
	.string	"fb_file"
	.byte	0x1
	.byte	0x4f
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fb_file
	.uleb128 0x2b
	.string	"internal_fb_file"
	.byte	0x1
	.byte	0x50
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internal_fb_file
	.uleb128 0x2b
	.string	"opt_file"
	.byte	0x1
	.byte	0x51
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	opt_file
	.uleb128 0x2b
	.string	"fb_xdir"
	.byte	0x1
	.byte	0x52
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fb_xdir
	.uleb128 0x2b
	.string	"fb_cdir"
	.byte	0x1
	.byte	0x53
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fb_cdir
	.uleb128 0x2b
	.string	"fb_phase"
	.byte	0x1
	.byte	0x55
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fb_phase
	.uleb128 0x2b
	.string	"fb_type"
	.byte	0x1
	.byte	0x56
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fb_type
	.uleb128 0x2b
	.string	"coco_setfile"
	.byte	0x1
	.byte	0x59
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	coco_setfile
	.uleb128 0x2b
	.string	"ldscript_file"
	.byte	0x1
	.byte	0x76
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ldscript_file
	.uleb128 0x29
	.string	"ldpath_for_pixie"
	.byte	0xb
	.byte	0x3d
	.long	0x19b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"saved_argc"
	.byte	0x1
	.value	0xb75
	.long	0x124
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	saved_argc
	.uleb128 0x2c
	.string	"saved_argv"
	.byte	0x1
	.value	0xb76
	.long	0x1213
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	saved_argv
	.uleb128 0x2b
	.string	"command_line"
	.byte	0x1
	.byte	0x54
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	command_line
	.uleb128 0x2b
	.string	"keep_mp"
	.byte	0x1
	.byte	0x5e
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keep_mp
	.uleb128 0x2b
	.string	"keep_list"
	.byte	0x1
	.byte	0x5f
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keep_list
	.uleb128 0x2b
	.string	"keep_listing"
	.byte	0x1
	.byte	0x61
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keep_listing
	.uleb128 0x2b
	.string	"keep_cif"
	.byte	0x1
	.byte	0x60
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keep_cif
	.uleb128 0x2b
	.string	"auto_parallelize"
	.byte	0x1
	.byte	0x62
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	auto_parallelize
	.uleb128 0x2b
	.string	"Gen_feedback"
	.byte	0x1
	.byte	0x63
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Gen_feedback
	.uleb128 0x2b
	.string	"Use_feedback"
	.byte	0x1
	.byte	0x64
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Use_feedback
	.uleb128 0x2b
	.string	"Disable_open_mp"
	.byte	0x1
	.byte	0x65
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Disable_open_mp
	.uleb128 0x2b
	.string	"Disable_old_mp"
	.byte	0x1
	.byte	0x66
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Disable_old_mp
	.uleb128 0x2b
	.string	"roundoff"
	.byte	0x1
	.byte	0x6f
	.long	0xa0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	roundoff
	.uleb128 0x2b
	.string	"O3_flag"
	.byte	0x1
	.byte	0x67
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	O3_flag
	.uleb128 0x2b
	.string	"nocpp_flag"
	.byte	0x1
	.byte	0x70
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nocpp_flag
	.uleb128 0x2b
	.string	"use_cpp"
	.byte	0x1
	.byte	0x68
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use_cpp
	.uleb128 0x2b
	.string	"expand_ftpp_macros"
	.byte	0x1
	.byte	0x6a
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	expand_ftpp_macros
	.uleb128 0x2b
	.string	"fortran_line_length"
	.byte	0x1
	.byte	0x6e
	.long	0x124
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	fortran_line_length
	.uleb128 0x2b
	.string	"ld_library_path"
	.byte	0x1
	.byte	0x72
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ld_library_path
	.uleb128 0x2b
	.string	"ld_libraryn32_path"
	.byte	0x1
	.byte	0x73
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ld_libraryn32_path
	.uleb128 0x2b
	.string	"orig_program_name"
	.byte	0x1
	.byte	0x74
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	orig_program_name
	.uleb128 0x2b
	.string	"dump_outfile_to_stdout"
	.byte	0xb
	.byte	0x57
	.long	0x552
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_outfile_to_stdout
	.uleb128 0x29
	.string	"invoked_lang"
	.byte	0x4
	.byte	0x99
	.long	0x5e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"source_lang"
	.byte	0x4
	.byte	0x9a
	.long	0x5e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"source_kind"
	.byte	0x4
	.byte	0x9c
	.long	0x679
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"first_phase"
	.byte	0x4
	.byte	0x9f
	.long	0x8b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"last_phase"
	.byte	0x4
	.byte	0xa0
	.long	0x8b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"remember_last_phase"
	.byte	0x4
	.byte	0xa1
	.long	0x8b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"current_phase"
	.byte	0x4
	.byte	0xa3
	.long	0x8b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"PHASE_MASK"
	.byte	0x4
	.byte	0xae
	.long	0x8c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"LIB_MASK"
	.byte	0x4
	.byte	0xaf
	.long	0x8c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"show_but_not_run"
	.byte	0x4
	.byte	0xdf
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"skip_as"
	.byte	0xc
	.value	0x328
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"shared"
	.byte	0xc
	.value	0x329
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"qwalign1"
	.byte	0xc
	.value	0x32c
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"abi"
	.byte	0xc
	.value	0x32e
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ospace"
	.byte	0xc
	.value	0x330
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ipa"
	.byte	0xc
	.value	0x335
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"use_h264libs"
	.byte	0xc
	.value	0x336
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"glevel"
	.byte	0xc
	.value	0x337
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"use_ftpp"
	.byte	0xc
	.value	0x338
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fortran_form"
	.byte	0xc
	.value	0x339
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fmath_errno"
	.byte	0xc
	.value	0x33b
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"fbuiltin"
	.byte	0xc
	.value	0x33d
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"use_coco"
	.byte	0xc
	.value	0x33e
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"cordflag"
	.byte	0xc
	.value	0x340
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"use_bblibs"
	.byte	0xc
	.value	0x343
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"ansi"
	.byte	0xc
	.value	0x345
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"program_name"
	.byte	0xd
	.byte	0x2f
	.long	0x19b
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"keep_flag"
	.byte	0xe
	.byte	0x2b
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"count_files"
	.byte	0xe
	.byte	0x2f
	.long	0x9bd
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"show_version"
	.byte	0xf
	.byte	0x2e
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"show_flag"
	.byte	0xf
	.byte	0x31
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"execute_flag"
	.byte	0xf
	.byte	0x32
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"run_m4"
	.byte	0xf
	.byte	0x34
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"prelink_flag"
	.byte	0xf
	.byte	0x35
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"quiet_flag"
	.byte	0xf
	.byte	0x36
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"debug"
	.byte	0x10
	.byte	0x64
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"inline_t"
	.byte	0x10
	.byte	0x6a
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"dashdash_flag"
	.byte	0x10
	.byte	0x6c
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"read_stdin"
	.byte	0x10
	.byte	0x6f
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"xpg_flag"
	.byte	0x10
	.byte	0x71
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"instrumentation_invoked"
	.byte	0x10
	.byte	0x77
	.long	0x124
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"ftz_crt"
	.byte	0x10
	.byte	0x79
	.long	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"f90_module_dir"
	.byte	0x10
	.byte	0x7c
	.long	0x19b
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"target_cpu"
	.byte	0x10
	.byte	0xaa
	.long	0x19b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"old_ld_library_path"
	.byte	0x1
	.byte	0x79
	.long	0x19b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	old_ld_library_path
	.uleb128 0x29
	.string	"feedback_files"
	.byte	0x1
	.byte	0x82
	.long	0x9bd
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x289a
	.long	0xa0
	.uleb128 0x10
	.long	0x192
	.value	0x403
	.byte	0x0
	.uleb128 0x2c
	.string	"sl_crt"
	.byte	0x1
	.value	0x1c1
	.long	0x2889
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sl_crt
	.uleb128 0x2d
	.string	"profile_type"
	.byte	0x1
	.value	0x93f
	.long	0x124
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1f
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
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.long	0x424
	.value	0x2
	.long	.Ldebug_info0
	.long	0x28c8
	.long	0xb9b
	.string	"driver_basename"
	.long	0xbf2
	.string	"dirname"
	.long	0xdbd
	.string	"fix_name_by_lang"
	.long	0xe67
	.string	"platform_is_64bit"
	.long	0xede
	.string	"target_is_native"
	.long	0x153f
	.string	"init_phase_info"
	.long	0x15a0
	.string	"init_phase_names"
	.long	0x1679
	.string	"run_dsm_prelink"
	.long	0x16af
	.string	"run_ld"
	.long	0x171a
	.string	"run_ar"
	.long	0x1759
	.string	"run_pixie"
	.long	0x17be
	.string	"run_prof"
	.long	0x1864
	.string	"run_compiler"
	.long	0x1944
	.string	"quoted_length"
	.long	0x19a5
	.string	"quote_shell_arg"
	.long	0x1a17
	.string	"add_minus_c_option"
	.long	0x1a3c
	.string	"save_command_line"
	.long	0x1a92
	.string	"check_for_saved_option"
	.long	0x1ae0
	.string	"set_current_arg_pos"
	.long	0x1b18
	.string	"cancel_saved_arg"
	.long	0x1cbd
	.string	"skip_old_ii_controls"
	.long	0x1ef0
	.string	"save_ipl_commands"
	.long	0x211b
	.string	"source_file"
	.long	0x212d
	.string	"multiple_source_files"
	.long	0x2151
	.string	"outfile"
	.long	0x2167
	.string	"prof_file"
	.long	0x217f
	.string	"fb_file"
	.long	0x2195
	.string	"internal_fb_file"
	.long	0x21b4
	.string	"opt_file"
	.long	0x21cb
	.string	"fb_xdir"
	.long	0x21e1
	.string	"fb_cdir"
	.long	0x21f7
	.string	"fb_phase"
	.long	0x220e
	.string	"fb_type"
	.long	0x2224
	.string	"coco_setfile"
	.long	0x223f
	.string	"ldscript_file"
	.long	0x2275
	.string	"saved_argc"
	.long	0x228f
	.string	"saved_argv"
	.long	0x22a9
	.string	"command_line"
	.long	0x22c4
	.string	"keep_mp"
	.long	0x22da
	.string	"keep_list"
	.long	0x22f2
	.string	"keep_listing"
	.long	0x230d
	.string	"keep_cif"
	.long	0x2324
	.string	"auto_parallelize"
	.long	0x2343
	.string	"Gen_feedback"
	.long	0x235e
	.string	"Use_feedback"
	.long	0x2379
	.string	"Disable_open_mp"
	.long	0x2397
	.string	"Disable_old_mp"
	.long	0x23b4
	.string	"roundoff"
	.long	0x23cb
	.string	"O3_flag"
	.long	0x23e1
	.string	"nocpp_flag"
	.long	0x23fa
	.string	"use_cpp"
	.long	0x2410
	.string	"expand_ftpp_macros"
	.long	0x2431
	.string	"fortran_line_length"
	.long	0x2453
	.string	"ld_library_path"
	.long	0x2471
	.string	"ld_libraryn32_path"
	.long	0x2492
	.string	"orig_program_name"
	.long	0x24b2
	.string	"dump_outfile_to_stdout"
	.long	0x284f
	.string	"old_ld_library_path"
	.long	0x289a
	.string	"sl_crt"
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
.LASF7:
	.string	"__PRETTY_FUNCTION__"
.LASF14:
	.string	"ii_file_name"
.LASF8:
	.string	"new_name"
.LASF17:
	.string	"source_file"
.LASF1:
	.string	"_IO_FILE"
.LASF5:
	.string	"root_prefix"
.LASF6:
	.string	"comp_target_root"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"link_status"
.LASF4:
	.string	"args"
.LASF11:
	.string	"cmd_path"
.LASF15:
	.string	"quoted"
.LASF2:
	.string	"name"
.LASF3:
	.string	"iflag"
.LASF10:
	.string	"libgcc_s_dir32"
.LASF16:
	.string	"sourcefile"
.LASF12:
	.string	"cmp_tgt_root"
.LASF9:
	.string	"libgcc_s_std"
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
