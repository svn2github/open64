	.file	"file_names.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl keep_flag
	.bss
	.align 4
	.type	keep_flag, @object
	.size	keep_flag, 4
keep_flag:
	.zero	4
.globl count_files
	.align 4
	.type	count_files, @object
	.size	count_files, 4
count_files:
	.zero	4
	.local	temp_files
	.comm	temp_files,4,4
	.local	saved_object
	.comm	saved_object,4,4
	.local	temp_obj_files
	.comm	temp_obj_files,4,4
	.section	.rodata
.LC0:
	.string	"o"
	.text
.globl get_object_file
	.type	get_object_file, @function
get_object_file:
.LFB15:
	.file 1 "../../driver/file_names.c"
	.loc 1 78 0
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
	subl	$588, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -560(%ebp)
	.loc 1 78 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 81 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L2
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$33, %eax
	je	.L2
.LBB2:
	.loc 1 82 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-560(%ebp), %eax
	movl	%eax, (%esp)
	call	change_suffix@PLT
	movl	%eax, -556(%ebp)
	.loc 1 84 0
	movl	temp_obj_files@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -552(%ebp)
	jmp	.L6
.L7:
	.loc 1 85 0
	movl	-552(%ebp), %eax
	movl	(%eax), %edx
	movl	-556(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	.loc 1 86 0
	movl	-552(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -568(%ebp)
	jmp	.L10
.L8:
	.loc 1 84 0
	movl	-552(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -552(%ebp)
.L6:
	cmpl	$0, -552(%ebp)
	jne	.L7
	.loc 1 90 0
	leal	-528(%ebp), %eax
	movl	$779051875, (%eax)
	movb	$0, 4(%eax)
	.loc 1 91 0
	movl	tmpdir@GOTOFF(%ebx), %edx
	leal	-528(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tempnam@PLT
	movl	%eax, -548(%ebp)
	.loc 1 92 0
	movl	temp_obj_files@GOTOFF(%ebx), %edx
	movl	-548(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-556(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string_pair@PLT
	.loc 1 93 0
	movl	-548(%ebp), %edx
	movl	%edx, -568(%ebp)
	jmp	.L10
.L2:
.LBE2:
	.loc 1 99 0
	movl	ipa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L12
	movl	$501, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	jne	.L12
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L12
.LBB3:
.LBB4:
	.loc 1 103 0
	movl	-560(%ebp), %eax
	movl	%eax, -540(%ebp)
	movl	-540(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -572(%ebp)
	movl	$0, %eax
	cld
	movl	-572(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -536(%ebp)
	movl	-536(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -564(%ebp)
	movl	-564(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -564(%ebp)
	movl	-564(%ebp), %edx
	movl	%edx, -532(%ebp)
	movl	-532(%ebp), %edi
	movl	%edi, -576(%ebp)
	movl	-540(%ebp), %eax
	movl	-536(%ebp), %edx
	movl	-576(%ebp), %edi
	movl	%eax, %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-576(%ebp), %eax
.LBE4:
	movl	%eax, -560(%ebp)
	.loc 1 104 0
	movl	-560(%ebp), %eax
	movl	%eax, -544(%ebp)
	jmp	.L16
.L17:
	.loc 1 105 0
	movl	-544(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L18
	.loc 1 106 0
	movl	-544(%ebp), %eax
	movb	$37, (%eax)
.L18:
	.loc 1 104 0
	addl	$1, -544(%ebp)
.L16:
	movl	-544(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L17
.L12:
.LBE3:
	.loc 1 110 0
	movl	-560(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	change_suffix@PLT
	movl	%eax, -568(%ebp)
.L10:
	movl	-568(%ebp), %eax
	.loc 1 111 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L21
	call	__stack_chk_fail_local
.L21:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	get_object_file, .-get_object_file
	.section	.rodata
.LC1:
	.string	"cc%s."
.LC2:
	.string	"%s/%s"
	.text
.globl create_temp_file_name
	.type	create_temp_file_name, @function
create_temp_file_name:
.LFB16:
	.loc 1 124 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$1088, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -1068(%ebp)
	.loc 1 124 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 132 0
	movl	-1068(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 133 0
	movl	tmpdir@GOTOFF(%ebx), %edx
	leal	-524(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-1036(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 134 0
	leal	-1036(%ebp), %eax
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
	movl	%eax, -1052(%ebp)
	.loc 1 136 0
	movl	temp_files@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -1044(%ebp)
	jmp	.L23
.L24:
.LBB5:
	.loc 1 146 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %eax
	movl	$47, 4(%esp)
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -1040(%ebp)
	.loc 1 147 0
	cmpl	$0, -1040(%ebp)
	jne	.L25
	.loc 1 148 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1040(%ebp)
.L25:
	.loc 1 149 0
	movl	$46, 4(%esp)
	movl	-1040(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -1048(%ebp)
	.loc 1 152 0
	addl	$1, -1048(%ebp)
	.loc 1 155 0
	movl	-1052(%ebp), %edx
	movl	-1048(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-1052(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-1036(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L27
	.loc 1 157 0
	movl	-1044(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -1072(%ebp)
	jmp	.L29
.L27:
.LBE5:
	.loc 1 136 0
	movl	-1044(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -1044(%ebp)
.L23:
	cmpl	$0, -1044(%ebp)
	jne	.L24
	.loc 1 161 0
	movl	tmpdir@GOTOFF(%ebx), %edx
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tempnam@PLT
	movl	%eax, -1048(%ebp)
	.loc 1 162 0
	movl	temp_files@GOTOFF(%ebx), %edx
	movl	-1048(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string@PLT
	.loc 1 163 0
	movl	-1048(%ebp), %edi
	movl	%edi, -1072(%ebp)
.L29:
	movl	-1072(%ebp), %eax
	.loc 1 164 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L32
	call	__stack_chk_fail_local
.L32:
	addl	$1088, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	create_temp_file_name, .-create_temp_file_name
.globl construct_name
	.type	construct_name, @function
construct_name:
.LFB17:
	.loc 1 168 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$36, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 169 0
	movl	keep_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L34
	movl	current_phase@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L36
.L34:
.LBB6:
	.loc 1 176 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L37
	movl	$501, (%esp)
	call	option_was_seen@PLT
	testl	%eax, %eax
	je	.L37
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	get_suffix@PLT
	testl	%eax, %eax
	je	.L37
	.loc 1 177 0
	movl	outfile@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 176 0
	jmp	.L41
.L37:
	.loc 1 179 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L41:
	.loc 1 180 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	change_suffix@PLT
	movl	%eax, -24(%ebp)
	jmp	.L42
.L36:
.LBE6:
	.loc 1 182 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	create_temp_file_name@PLT
	movl	%eax, -24(%ebp)
.L42:
	movl	-24(%ebp), %eax
	.loc 1 184 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	construct_name, .-construct_name
.globl construct_given_name
	.type	construct_given_name, @function
construct_given_name:
.LFB18:
	.loc 1 189 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$36, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 191 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	change_suffix@PLT
	movl	%eax, -8(%ebp)
	.loc 1 192 0
	cmpl	$0, 16(%ebp)
	jne	.L45
	movl	current_phase@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	remember_last_phase@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L47
.L45:
	.loc 1 193 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L48
.L47:
	.loc 1 195 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -8(%ebp)
	.loc 1 196 0
	movl	temp_files@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string_if_new@PLT
	.loc 1 197 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L48:
	movl	-24(%ebp), %eax
	.loc 1 199 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	construct_given_name, .-construct_given_name
.globl mark_saved_object_for_cleanup
	.type	mark_saved_object_for_cleanup, @function
mark_saved_object_for_cleanup:
.LFB19:
	.loc 1 203 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$20, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 204 0
	movl	saved_object@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L53
	.loc 1 205 0
	movl	saved_object@GOTOFF(%ebx), %eax
	movl	temp_files@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string_if_new@PLT
.L53:
	.loc 1 206 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	mark_saved_object_for_cleanup, .-mark_saved_object_for_cleanup
.globl construct_file_with_extension
	.type	construct_file_with_extension, @function
construct_file_with_extension:
.LFB20:
	.loc 1 211 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$20, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 212 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	change_suffix@PLT
	.loc 1 213 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	construct_file_with_extension, .-construct_file_with_extension
	.section	.rodata
.LC3:
	.string	"TMPDIR"
.LC4:
	.string	"/tmp"
.LC5:
	.string	"$TMPDIR does not exist: %s"
.LC6:
	.string	"$TMPDIR not writable: %s"
	.text
.globl init_temp_files
	.type	init_temp_files, @function
init_temp_files:
.LFB21:
	.loc 1 217 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%edi
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$16, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 218 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, tmpdir@GOTOFF(%ebx)
	.loc 1 219 0
	movl	tmpdir@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L57
	.loc 1 220 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, tmpdir@GOTOFF(%ebx)
	jmp	.L59
.L57:
	.loc 1 222 0
	movl	tmpdir@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	is_directory@PLT
	testl	%eax, %eax
	jne	.L60
	.loc 1 223 0
	movl	tmpdir@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L59
.L60:
	.loc 1 225 0
	movl	tmpdir@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	directory_is_writable@PLT
	testl	%eax, %eax
	jne	.L62
	.loc 1 226 0
	movl	tmpdir@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L59
.L62:
	.loc 1 228 0
	movl	tmpdir@GOTOFF(%ebx), %eax
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
	movl	%eax, %edx
	movl	tmpdir@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L59
	.loc 1 230 0
	movl	tmpdir@GOTOFF(%ebx), %eax
	movl	$-1, %ecx
	movl	%eax, -16(%ebp)
	movl	$0, %eax
	cld
	movl	-16(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	tmpdir@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movb	$0, (%eax)
.L59:
	.loc 1 232 0
	call	init_string_list@PLT
	movl	%eax, temp_files@GOTOFF(%ebx)
	.loc 1 234 0
	call	init_string_pair_list@PLT
	movl	%eax, temp_obj_files@GOTOFF(%ebx)
	.loc 1 235 0
	addl	$16, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	init_temp_files, .-init_temp_files
.globl init_count_files
	.type	init_count_files, @function
init_count_files:
.LFB22:
	.loc 1 239 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$4, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 240 0
	call	init_string_list@PLT
	movl	%eax, %edx
	movl	count_files@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 241 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	init_count_files, .-init_count_files
	.section	.rodata
.LC7:
	.string	"PSC_CRASH_REPORT"
.LC8:
	.string	"%s/ekopath_crash_XXXXXX"
	.text
.globl init_crash_reporting
	.type	init_crash_reporting, @function
init_crash_reporting:
.LFB23:
	.loc 1 247 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$20, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 248 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, report_file@GOTOFF(%ebx)
	movl	report_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L75
	.loc 1 251 0
	movl	tmpdir@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	report_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	cmpl	$-1, %eax
	jne	.L71
	.loc 1 252 0
	movl	$0, report_file@GOTOFF(%ebx)
	.loc 1 253 0
	jmp	.L75
.L71:
	.loc 1 256 0
	movl	report_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	mkstemp@PLT
	cmpl	$-1, %eax
	jne	.L73
	.loc 1 257 0
	movl	$0, report_file@GOTOFF(%ebx)
	.loc 1 258 0
	jmp	.L75
.L73:
	.loc 1 261 0
	movl	report_file@GOTOFF(%ebx), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	setenv@PLT
.L69:
.L75:
	.loc 1 264 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	init_crash_reporting, .-init_crash_reporting
	.section	.rodata
.LC9:
	.string	"cci."
.LC10:
	.string	".i"
.LC11:
	.string	"ccii."
.LC12:
	.string	".ii"
.LC13:
	.string	"r"
.LC14:
	.string	"PSC_PROBLEM_REPORT_DIR"
.LC15:
	.string	"HOME"
.LC16:
	.string	"%s/.ekopath-bugs"
.LC17:
	.string	"%s/%s_error_XXXXXX"
.LC18:
	.string	"w"
	.align 4
.LC19:
	.string	"/*\n\nPathScale EKOPath(TM) compiler problem report - %s"
	.align 4
.LC20:
	.string	"Please report this problem to <support@pathscale.com>.\n"
	.align 4
.LC21:
	.string	"If possible, please attach a copy of this file with your report.\n"
	.align 4
.LC22:
	.string	"\nPLEASE NOTE: This file contains a preprocessed copy of the source file\nthat may have led to this problem occurring.\n"
.LC23:
	.string	"32-bit"
.LC24:
	.string	"64-bit"
	.align 4
.LC25:
	.string	"\nCompiler command line (%s ABI used on %s system):\n"
.LC26:
	.string	"-default_options"
.LC27:
	.string	" %s"
.LC28:
	.string	"\n\n"
	.align 4
.LC29:
	.string	"Version %s build information:\n"
.LC30:
	.string	"  ChangeSet %s\n"
.LC31:
	.string	"  Built by %s@%s in %s\n"
.LC32:
	.string	"  Build date %s\n"
.LC33:
	.string	"\nDetailed problem report:\n"
.LC34:
	.string	"  "
	.align 4
.LC35:
	.string	"\nInformation from compiler driver:\n"
.LC36:
	.string	"  %s\n"
	.align 4
.LC37:
	.string	"\nThe remainder of this file contains a preprocessed copy of the\nsource file that appears to have led to this problem.\n\n*/\n"
	.align 4
.LC38:
	.string	"\n/* End of EKOPath problem report. */\n"
.LC39:
	.string	"%s%s"
.LC40:
	.string	"Problem report saved as %s\n"
	.align 4
.LC41:
	.string	"Could not save problem report to %s: %s\n"
	.text
	.type	save_cpp_output, @function
save_cpp_output:
.LFB24:
	.loc 1 270 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%edi
.LCFI42:
	pushl	%esi
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$4700, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -4672(%ebp)
	.loc 1 270 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 272 0
	movl	$0, -4560(%ebp)
	movl	$0, -4556(%ebp)
	.loc 1 273 0
	movl	-4672(%ebp), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, -4552(%ebp)
	.loc 1 276 0
	movl	$0, -4548(%ebp)
	.loc 1 283 0
	movl	$4, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4552(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L77
	.loc 1 284 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, -4540(%ebp)
	jmp	.L79
.L77:
	.loc 1 285 0
	movl	$5, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4552(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L80
	.loc 1 286 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, -4540(%ebp)
.L79:
	.loc 1 290 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4672(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -4560(%ebp)
	cmpl	$0, -4560(%ebp)
	je	.L80
	.loc 1 293 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -4564(%ebp)
	movl	-4564(%ebp), %eax
	testl	%eax, %eax
	jne	.L83
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -4536(%ebp)
	cmpl	$0, -4536(%ebp)
	je	.L83
	.loc 1 295 0
	movl	-4536(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-4564(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
.L83:
	.loc 1 298 0
	movl	-4564(%ebp), %eax
	testl	%eax, %eax
	je	.L86
	movl	-4564(%ebp), %eax
	movl	$448, 4(%esp)
	movl	%eax, (%esp)
	call	mkdir@PLT
	cmpl	$-1, %eax
	jne	.L86
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$17, %eax
	je	.L86
	.loc 1 299 0
	movl	$0, -4564(%ebp)
.L86:
	.loc 1 302 0
	movl	-4564(%ebp), %eax
	testl	%eax, %eax
	jne	.L90
	.loc 1 303 0
	movl	tmpdir@GOTOFF(%ebx), %eax
	movl	%eax, -4564(%ebp)
.L90:
	.loc 1 306 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-4564(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-4568(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 308 0
	movl	-4568(%ebp), %eax
	movl	%eax, (%esp)
	call	mkstemp@PLT
	cmpl	$-1, %eax
	je	.L92
	.loc 1 312 0
	movl	-4568(%ebp), %eax
	leal	.LC18@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -4556(%ebp)
	cmpl	$0, -4556(%ebp)
	je	.L92
	.loc 1 316 0
	movl	$0, (%esp)
	call	time@PLT
	movl	%eax, -4576(%ebp)
	.loc 1 317 0
	leal	-4576(%ebp), %eax
	movl	%eax, (%esp)
	call	ctime@PLT
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 319 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$55, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 320 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$65, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 322 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$117, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 326 0
	leal	-406(%ebp), %eax
	movl	%eax, (%esp)
	call	uname@PLT
	.loc 1 327 0
	movl	abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L95
	leal	.LC23@GOTOFF(%ebx), %edx
	movl	%edx, -4676(%ebp)
	jmp	.L97
.L95:
	leal	.LC24@GOTOFF(%ebx), %edi
	movl	%edi, -4676(%ebp)
.L97:
	leal	-406(%ebp), %eax
	addl	$260, %eax
	movl	%eax, 12(%esp)
	movl	-4676(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 331 0
	movl	-4556(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	fputc@PLT
	.loc 1 332 0
	movl	$0, -4532(%ebp)
	jmp	.L98
.L99:
	.loc 1 333 0
	movl	-4532(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L100
	movl	-4532(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L100
.LBB7:
	.loc 1 336 0
	movl	-4532(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	saved_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-4502(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	quote_shell_arg@PLT
	movl	%eax, -4528(%ebp)
	.loc 1 337 0
	movl	-4528(%ebp), %eax
	movb	$0, -4502(%ebp,%eax)
	.loc 1 338 0
	leal	-4502(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L100:
.LBE7:
	.loc 1 332 0
	addl	$1, -4532(%ebp)
.L98:
	movl	saved_argc@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -4532(%ebp)
	jl	.L99
	.loc 1 340 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 342 0
	movl	compiler_version@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 344 0
	movl	cset_key@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 345 0
	movl	build_root@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	build_host@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	build_user@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 347 0
	movl	build_date@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 349 0
	movl	report_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L104
.LBB8:
	.loc 1 350 0
	movl	$1, -4524(%ebp)
	.loc 1 354 0
	movl	report_file@GOTOFF(%ebx), %eax
	leal	-4664(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	stat@PLT
	cmpl	$-1, %eax
	je	.L104
	.loc 1 357 0
	movl	-4620(%ebp), %eax
	testl	%eax, %eax
	je	.L104
	.loc 1 360 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 361 0
	movl	report_file@GOTOFF(%ebx), %edx
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, -4520(%ebp)
	cmpl	$0, -4520(%ebp)
	je	.L104
	.loc 1 365 0
	jmp	.L109
.L110:
.LBB9:
	.loc 1 366 0
	leal	-4502(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -4680(%ebp)
	movl	$0, %eax
	cld
	movl	-4680(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -4516(%ebp)
	.loc 1 367 0
	cmpl	$0, -4524(%ebp)
	je	.L111
	.loc 1 368 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L111:
	.loc 1 369 0
	movl	-4556(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-4502(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 370 0
	movl	-4516(%ebp), %eax
	subl	$1, %eax
	movzbl	-4502(%ebp,%eax), %eax
	cmpb	$10, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4524(%ebp)
.L109:
.LBE9:
	.loc 1 365 0
	movl	-4520(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4096, 4(%esp)
	leal	-4502(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	testl	%eax, %eax
	jne	.L110
	.loc 1 372 0
	cmpl	$0, -4524(%ebp)
	jne	.L114
	.loc 1 373 0
	movl	-4556(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	_IO_putc@PLT
.L114:
	.loc 1 375 0
	movl	-4520(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L104:
.LBE8:
	.loc 1 379 0
	movl	error_list@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	string_list_size@PLT
	testl	%eax, %eax
	je	.L116
.LBB10:
	.loc 1 381 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 382 0
	movl	error_list@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4512(%ebp)
	jmp	.L118
.L119:
	.loc 1 383 0
	movl	-4512(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 382 0
	movl	-4512(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4512(%ebp)
.L118:
	cmpl	$0, -4512(%ebp)
	jne	.L119
.L116:
.LBE10:
	.loc 1 387 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$122, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 391 0
	jmp	.L120
.L121:
.LBB11:
	.loc 1 393 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-4544(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-4502(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	%eax, -4508(%ebp)
	movl	-4508(%ebp), %eax
	cmpl	-4544(%ebp), %eax
	jae	.L120
	.loc 1 394 0
	cmpl	$0, -4508(%ebp)
	je	.L92
	.loc 1 395 0
	call	__errno_location@PLT
	movl	$27, (%eax)
	.loc 1 396 0
	jmp	.L92
.L120:
.LBE11:
	.loc 1 391 0
	movl	-4560(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$1, 4(%esp)
	leal	-4502(%ebp), %eax
	movl	%eax, (%esp)
	call	fread@PLT
	movl	%eax, -4544(%ebp)
	cmpl	$0, -4544(%ebp)
	jne	.L121
	.loc 1 400 0
	movl	-4556(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$38, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 402 0
	movl	-4568(%ebp), %edx
	movl	-4540(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-4572(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 403 0
	movl	-4572(%ebp), %eax
	movl	-4568(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rename@PLT
	.loc 1 405 0
	movl	save_count@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L126
	.loc 1 406 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$55, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L126:
	.loc 1 410 0
	movl	-4572(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 411 0
	movl	save_count@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, save_count@GOTOFF(%ebx)
	.loc 1 412 0
	movl	$1, -4548(%ebp)
	.loc 1 414 0
	jmp	.L80
.L92:
	.loc 1 416 0
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror@PLT
	movl	%eax, %edx
	movl	-4568(%ebp), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L80:
	.loc 1 419 0
	cmpl	$0, -4560(%ebp)
	je	.L128
	.loc 1 420 0
	movl	-4560(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L128:
	.loc 1 421 0
	cmpl	$0, -4556(%ebp)
	je	.L130
	.loc 1 422 0
	movl	-4556(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L130:
	.loc 1 424 0
	movl	-4548(%ebp), %eax
	.loc 1 425 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L133
	call	__stack_chk_fail_local
.L133:
	addl	$4700, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	save_cpp_output, .-save_cpp_output
	.section	.rodata
.LC42:
	.string	"unlink %s\n"
.LC43:
	.string	"cannot unlink temp file %s"
.LC44:
	.string	"it"
.LC45:
	.string	"them"
.LC46:
	.string	""
.LC47:
	.string	"s"
	.align 4
.LC48:
	.string	"Please review the above file%s and, if possible, attach %s to your problem report.\n"
	.text
.globl cleanup
	.type	cleanup, @function
cleanup:
.LFB25:
	.loc 1 429 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$52, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 433 0
	movl	temp_files@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L155
	.loc 1 434 0
	movl	temp_files@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L137
.L138:
	.loc 1 435 0
	movl	debug@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L139
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L139:
	.loc 1 436 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L141
	.loc 1 437 0
	movl	internal_error_occurred@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L143
	.loc 1 438 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	save_cpp_output
.L143:
	.loc 1 439 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	unlink@PLT
	movl	%eax, -8(%ebp)
	.loc 1 440 0
	cmpl	$0, -8(%ebp)
	je	.L141
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L141
	.loc 1 441 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 442 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L141:
	.loc 1 434 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L137:
	cmpl	$0, -12(%ebp)
	jne	.L138
	.loc 1 446 0
	movl	temp_files@GOTOFF(%ebx), %edx
	movl	temp_files@GOTOFF(%ebx), %eax
	movl	$0, 4(%eax)
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 448 0
	movl	save_count@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L155
	.loc 1 449 0
	movl	save_count@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L149
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L151
.L149:
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L151:
	movl	save_count@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	jne	.L152
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L154
.L152:
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L154:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L155:
	.loc 1 454 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	cleanup, .-cleanup
.globl mark_for_cleanup
	.type	mark_for_cleanup, @function
mark_for_cleanup:
.LFB26:
	.loc 1 458 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$20, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 459 0
	movl	temp_files@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_string_if_new@PLT
	.loc 1 460 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	mark_for_cleanup, .-mark_for_cleanup
	.section	.rodata
	.align 4
.LC49:
	.string	"cannot unlink temp object file %s"
	.text
.globl cleanup_temp_objects
	.type	cleanup_temp_objects, @function
cleanup_temp_objects:
.LFB27:
	.loc 1 464 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$36, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 467 0
	movl	temp_obj_files@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L159
.L160:
.LBB12:
	.loc 1 468 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 469 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink@PLT
	movl	%eax, -8(%ebp)
	.loc 1 470 0
	cmpl	$0, -8(%ebp)
	je	.L161
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L161
	.loc 1 471 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 472 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L161:
.LBE12:
	.loc 1 467 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
.L159:
	cmpl	$0, -16(%ebp)
	jne	.L160
	.loc 1 475 0
	movl	report_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L167
	.loc 1 476 0
	movl	report_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	unlink@PLT
.L167:
	.loc 1 478 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	cleanup_temp_objects, .-cleanup_temp_objects
	.local	tmpdir
	.comm	tmpdir,4,4
	.local	report_file
	.comm	report_file,4,4
	.local	save_count
	.comm	save_count,4,4
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
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI7
	.byte	0x83
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
	.long	.LCFI11-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0x83
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
	.long	.LCFI15-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
	.byte	0x83
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
	.long	.LCFI19-.LFB19
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI23-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI27-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI28
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI32-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI36-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI37
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
	.long	.LCFI40-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI41
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
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI46-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI50-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI54-.LFB27
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
.LEFDE24:
	.file 2 "../../driver/string_utils.h"
	.file 3 "../../driver/basic.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/include/sys/utsname.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/bits/stat.h"
	.file 11 "../../driver/phases.h"
	.file 12 "../../driver/lang_defs.h"
	.file 13 "../../driver/file_names.h"
	.file 14 "../../driver/errors.h"
	.file 15 "../../driver/opt_actions.h"
	.file 16 "./option_names.h"
	.file 17 "../../driver/run.h"
	.file 18 "../../driver/version.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1407
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/file_names.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x4
	.byte	0xd6
	.long	0x96
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
	.byte	0x7
	.byte	0x3b
	.long	0xfc
	.uleb128 0x2
	.string	"__u_quad_t"
	.byte	0x7
	.byte	0x3c
	.long	0x10d
	.uleb128 0x2
	.string	"__dev_t"
	.byte	0x7
	.byte	0x89
	.long	0x137
	.uleb128 0x2
	.string	"__uid_t"
	.byte	0x7
	.byte	0x8a
	.long	0x96
	.uleb128 0x2
	.string	"__gid_t"
	.byte	0x7
	.byte	0x8b
	.long	0x96
	.uleb128 0x2
	.string	"__ino_t"
	.byte	0x7
	.byte	0x8c
	.long	0xc4
	.uleb128 0x2
	.string	"__mode_t"
	.byte	0x7
	.byte	0x8e
	.long	0x96
	.uleb128 0x2
	.string	"__nlink_t"
	.byte	0x7
	.byte	0x8f
	.long	0x96
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x1b5
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x127
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__time_t"
	.byte	0x7
	.byte	0x98
	.long	0x1b5
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.string	"__blksize_t"
	.byte	0x7
	.byte	0xa7
	.long	0x1b5
	.uleb128 0x2
	.string	"__blkcnt_t"
	.byte	0x7
	.byte	0xac
	.long	0x1b5
	.uleb128 0x6
	.byte	0x4
	.long	0x216
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"FILE"
	.byte	0x5
	.byte	0x2e
	.long	0x22a
	.uleb128 0x7
	.long	0x4a5
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x501
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x507
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x50d
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x51d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0x88
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x523
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4ab
	.uleb128 0x9
	.long	0x216
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0xb
	.long	0x501
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x501
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x507
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0xf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4be
	.uleb128 0x6
	.byte	0x4
	.long	0x22a
	.uleb128 0xd
	.long	0x51d
	.long	0x216
	.uleb128 0xe
	.long	0x1d2
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4b0
	.uleb128 0xd
	.long	0x533
	.long	0x216
	.uleb128 0xe
	.long	0x1d2
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.string	"time_t"
	.byte	0x9
	.byte	0x4d
	.long	0x1d9
	.uleb128 0xb
	.long	0x576
	.string	"timespec"
	.byte	0x8
	.byte	0x9
	.byte	0x7a
	.uleb128 0xc
	.string	"tv_sec"
	.byte	0x9
	.byte	0x7b
	.long	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tv_nsec"
	.byte	0x9
	.byte	0x7c
	.long	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xb
	.long	0x6ba
	.string	"stat"
	.byte	0x58
	.byte	0xa
	.byte	0x25
	.uleb128 0xc
	.string	"st_dev"
	.byte	0xa
	.byte	0x26
	.long	0x149
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"__pad1"
	.byte	0xa
	.byte	0x27
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"st_ino"
	.byte	0xa
	.byte	0x29
	.long	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"st_mode"
	.byte	0xa
	.byte	0x2d
	.long	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"st_nlink"
	.byte	0xa
	.byte	0x2e
	.long	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"st_uid"
	.byte	0xa
	.byte	0x2f
	.long	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"st_gid"
	.byte	0xa
	.byte	0x30
	.long	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"st_rdev"
	.byte	0xa
	.byte	0x31
	.long	0x149
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"__pad2"
	.byte	0xa
	.byte	0x32
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"st_size"
	.byte	0xa
	.byte	0x34
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"st_blksize"
	.byte	0xa
	.byte	0x38
	.long	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"st_blocks"
	.byte	0xa
	.byte	0x3b
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"st_atim"
	.byte	0xa
	.byte	0x46
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"st_mtim"
	.byte	0xa
	.byte	0x47
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"st_ctim"
	.byte	0xa
	.byte	0x48
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"__unused4"
	.byte	0xa
	.byte	0x55
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"__unused5"
	.byte	0xa
	.byte	0x56
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x740
	.string	"utsname"
	.value	0x186
	.byte	0x8
	.byte	0x32
	.uleb128 0xc
	.string	"sysname"
	.byte	0x8
	.byte	0x34
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"nodename"
	.byte	0x8
	.byte	0x37
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xc
	.string	"release"
	.byte	0x8
	.byte	0x3a
	.long	0x740
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xc
	.string	"version"
	.byte	0x8
	.byte	0x3c
	.long	0x740
	.byte	0x3
	.byte	0x23
	.uleb128 0xc3
	.uleb128 0xc
	.string	"machine"
	.byte	0x8
	.byte	0x3f
	.long	0x740
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"domainname"
	.byte	0x8
	.byte	0x44
	.long	0x740
	.byte	0x3
	.byte	0x23
	.uleb128 0x145
	.byte	0x0
	.uleb128 0xd
	.long	0x750
	.long	0x216
	.uleb128 0xe
	.long	0x1d2
	.byte	0x40
	.byte	0x0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x3
	.byte	0x2c
	.long	0xf5
	.uleb128 0x2
	.string	"buffer_t"
	.byte	0x3
	.byte	0x2f
	.long	0x76f
	.uleb128 0xd
	.long	0x780
	.long	0x216
	.uleb128 0x10
	.long	0x1d2
	.value	0x1ff
	.byte	0x0
	.uleb128 0x11
	.long	0x9a7
	.byte	0x4
	.byte	0xc
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
	.byte	0xc
	.byte	0x97
	.long	0x780
	.uleb128 0xb
	.long	0x9ee
	.string	"string_item_rec"
	.byte	0x8
	.byte	0x2
	.byte	0x50
	.uleb128 0xc
	.string	"name"
	.byte	0x2
	.byte	0x51
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"next"
	.byte	0x2
	.byte	0x52
	.long	0x9ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x9b7
	.uleb128 0x2
	.string	"string_item_t"
	.byte	0x2
	.byte	0x53
	.long	0x9b7
	.uleb128 0xb
	.long	0xa40
	.string	"string_list_rec"
	.byte	0x8
	.byte	0x2
	.byte	0x54
	.uleb128 0xc
	.string	"head"
	.byte	0x2
	.byte	0x55
	.long	0xa40
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tail"
	.byte	0x2
	.byte	0x56
	.long	0xa40
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x9f4
	.uleb128 0x2
	.string	"string_list_t"
	.byte	0x2
	.byte	0x57
	.long	0xa09
	.uleb128 0xb
	.long	0xaa4
	.string	"string_pair_item_rec"
	.byte	0xc
	.byte	0x2
	.byte	0x80
	.uleb128 0xc
	.string	"key"
	.byte	0x2
	.byte	0x81
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"val"
	.byte	0x2
	.byte	0x82
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"next"
	.byte	0x2
	.byte	0x83
	.long	0xaa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xa5b
	.uleb128 0x2
	.string	"string_pair_item_t"
	.byte	0x2
	.byte	0x84
	.long	0xa5b
	.uleb128 0xb
	.long	0xb00
	.string	"string_pair_list_rec"
	.byte	0x8
	.byte	0x2
	.byte	0x85
	.uleb128 0xc
	.string	"head"
	.byte	0x2
	.byte	0x86
	.long	0xb00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tail"
	.byte	0x2
	.byte	0x87
	.long	0xb00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xaaa
	.uleb128 0x2
	.string	"string_pair_list_t"
	.byte	0x2
	.byte	0x88
	.long	0xac4
	.uleb128 0x13
	.long	0xc02
	.byte	0x1
	.string	"get_object_file"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	0x210
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0x4d
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x15
	.long	0xbad
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x16
	.string	"obj_name"
	.byte	0x1
	.byte	0x52
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x53
	.long	0xb00
	.byte	0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x59
	.long	0x75f
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x16
	.string	"mapped_name"
	.byte	0x1
	.byte	0x5b
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -556
	.byte	0x0
	.uleb128 0x17
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x66
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x17
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x16
	.string	"__old"
	.byte	0x1
	.byte	0x67
	.long	0x4a5
	.byte	0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x16
	.string	"__len"
	.byte	0x1
	.byte	0x67
	.long	0x88
	.byte	0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x16
	.string	"__new"
	.byte	0x1
	.byte	0x67
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -540
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0xcb3
	.byte	0x1
	.string	"create_temp_file_name"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	0x210
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x18
	.long	.LASF2
	.byte	0x1
	.byte	0x7b
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x7d
	.long	0x75f
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x16
	.string	"pathbuf"
	.byte	0x1
	.byte	0x7e
	.long	0x75f
	.byte	0x3
	.byte	0x91
	.sleb128 -1044
	.uleb128 0x16
	.string	"pathbuf_len"
	.byte	0x1
	.byte	0x7f
	.long	0x88
	.byte	0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x80
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x81
	.long	0xa40
	.byte	0x3
	.byte	0x91
	.sleb128 -1052
	.uleb128 0x17
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x16
	.string	"file_name"
	.byte	0x1
	.byte	0x92
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0xd14
	.byte	0x1
	.string	"construct_name"
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.long	0x210
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0xa7
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF2
	.byte	0x1
	.byte	0xa7
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x16
	.string	"srcname"
	.byte	0x1
	.byte	0xaa
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0xd7a
	.byte	0x1
	.string	"construct_given_name"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	0x210
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0xbc
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF2
	.byte	0x1
	.byte	0xbc
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"keep"
	.byte	0x1
	.byte	0xbc
	.long	0x750
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0xbe
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.string	"mark_saved_object_for_cleanup"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x13
	.long	0xdfd
	.byte	0x1
	.string	"construct_file_with_extension"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.long	0x210
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0xd2
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"ext"
	.byte	0x1
	.byte	0xd2
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.string	"init_temp_files"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x19
	.byte	0x1
	.string	"init_count_files"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x1a
	.long	0xe78
	.byte	0x1
	.string	"init_crash_reporting"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x1b
	.string	"bail"
	.byte	0x1
	.value	0x106
	.long	.L69
	.byte	0x0
	.uleb128 0x1c
	.long	0x1088
	.string	"save_cpp_output"
	.byte	0x1
	.value	0x10e
	.byte	0x1
	.long	0xf5
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x1d
	.string	"path"
	.byte	0x1
	.value	0x10d
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -4680
	.uleb128 0x1e
	.string	"save_dir"
	.byte	0x1
	.value	0x10f
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -4572
	.uleb128 0x1e
	.string	"save_path"
	.byte	0x1
	.value	0x10f
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -4576
	.uleb128 0x1e
	.string	"final_path"
	.byte	0x1
	.value	0x10f
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -4580
	.uleb128 0x1e
	.string	"ifp"
	.byte	0x1
	.value	0x110
	.long	0x1088
	.byte	0x3
	.byte	0x91
	.sleb128 -4568
	.uleb128 0x1e
	.string	"ofp"
	.byte	0x1
	.value	0x110
	.long	0x1088
	.byte	0x3
	.byte	0x91
	.sleb128 -4564
	.uleb128 0x1e
	.string	"name"
	.byte	0x1
	.value	0x111
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -4560
	.uleb128 0x1e
	.string	"uts"
	.byte	0x1
	.value	0x112
	.long	0x6ba
	.byte	0x3
	.byte	0x91
	.sleb128 -414
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.value	0x113
	.long	0x108e
	.byte	0x3
	.byte	0x91
	.sleb128 -4510
	.uleb128 0x1e
	.string	"saved"
	.byte	0x1
	.value	0x114
	.long	0xf5
	.byte	0x3
	.byte	0x91
	.sleb128 -4556
	.uleb128 0x1e
	.string	"nread"
	.byte	0x1
	.value	0x115
	.long	0x88
	.byte	0x3
	.byte	0x91
	.sleb128 -4552
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x1
	.value	0x116
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -4548
	.uleb128 0x1e
	.string	"home"
	.byte	0x1
	.value	0x117
	.long	0x210
	.byte	0x3
	.byte	0x91
	.sleb128 -4544
	.uleb128 0x1e
	.string	"now"
	.byte	0x1
	.value	0x118
	.long	0x533
	.byte	0x3
	.byte	0x91
	.sleb128 -4584
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x119
	.long	0xf5
	.byte	0x3
	.byte	0x91
	.sleb128 -4540
	.uleb128 0x1b
	.string	"bail"
	.byte	0x1
	.value	0x1a2
	.long	.L80
	.uleb128 0x1b
	.string	"b0rked"
	.byte	0x1
	.value	0x19f
	.long	.L92
	.uleb128 0x1b
	.string	"no_report"
	.byte	0x1
	.value	0x17a
	.long	.L104
	.uleb128 0x15
	.long	0xff4
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.value	0x14f
	.long	0xf5
	.byte	0x3
	.byte	0x91
	.sleb128 -4536
	.byte	0x0
	.uleb128 0x15
	.long	0x104f
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1e
	.string	"newline"
	.byte	0x1
	.value	0x15e
	.long	0xf5
	.byte	0x3
	.byte	0x91
	.sleb128 -4532
	.uleb128 0x1e
	.string	"st"
	.byte	0x1
	.value	0x15f
	.long	0x576
	.byte	0x3
	.byte	0x91
	.sleb128 -4672
	.uleb128 0x1e
	.string	"rfp"
	.byte	0x1
	.value	0x160
	.long	0x1088
	.byte	0x3
	.byte	0x91
	.sleb128 -4528
	.uleb128 0x17
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.value	0x16e
	.long	0xf5
	.byte	0x3
	.byte	0x91
	.sleb128 -4524
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x106b
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x17c
	.long	0xa40
	.byte	0x3
	.byte	0x91
	.sleb128 -4520
	.byte	0x0
	.uleb128 0x17
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x1e
	.string	"nwrit"
	.byte	0x1
	.value	0x188
	.long	0x88
	.byte	0x3
	.byte	0x91
	.sleb128 -4516
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x21e
	.uleb128 0xd
	.long	0x109f
	.long	0x216
	.uleb128 0x10
	.long	0x1d2
	.value	0xfff
	.byte	0x0
	.uleb128 0x20
	.long	0x10dd
	.byte	0x1
	.string	"cleanup"
	.byte	0x1
	.value	0x1ad
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x1af
	.long	0xa40
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.string	"status"
	.byte	0x1
	.value	0x1b0
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x20
	.long	0x1112
	.byte	0x1
	.string	"mark_for_cleanup"
	.byte	0x1
	.value	0x1ca
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x1c9
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x21
	.long	0x1173
	.byte	0x1
	.string	"cleanup_temp_objects"
	.byte	0x1
	.value	0x1d0
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x1d2
	.long	0xb00
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x1d4
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.string	"status"
	.byte	0x1
	.value	0x1d5
	.long	0xf5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.string	"temp_files"
	.byte	0x1
	.byte	0x42
	.long	0x118b
	.byte	0x5
	.byte	0x3
	.long	temp_files
	.uleb128 0x6
	.byte	0x4
	.long	0xa46
	.uleb128 0x16
	.string	"tmpdir"
	.byte	0x1
	.byte	0x43
	.long	0x210
	.byte	0x5
	.byte	0x3
	.long	tmpdir
	.uleb128 0x16
	.string	"saved_object"
	.byte	0x1
	.byte	0x44
	.long	0x210
	.byte	0x5
	.byte	0x3
	.long	saved_object
	.uleb128 0x16
	.string	"temp_obj_files"
	.byte	0x1
	.byte	0x48
	.long	0x11db
	.byte	0x5
	.byte	0x3
	.long	temp_obj_files
	.uleb128 0x6
	.byte	0x4
	.long	0xb06
	.uleb128 0x16
	.string	"report_file"
	.byte	0x1
	.byte	0xf3
	.long	0x210
	.byte	0x5
	.byte	0x3
	.long	report_file
	.uleb128 0x1e
	.string	"save_count"
	.byte	0x1
	.value	0x10a
	.long	0xf5
	.byte	0x5
	.byte	0x3
	.long	save_count
	.uleb128 0x22
	.string	"stderr"
	.byte	0x5
	.byte	0x90
	.long	0x507
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"outfile"
	.byte	0xb
	.byte	0x2d
	.long	0x210
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"saved_argc"
	.byte	0xb
	.byte	0x3e
	.long	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"saved_argv"
	.byte	0xb
	.byte	0x3f
	.long	0x125c
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0x210
	.uleb128 0x23
	.string	"dump_outfile_to_stdout"
	.byte	0xb
	.byte	0x57
	.long	0x750
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_outfile_to_stdout
	.uleb128 0x22
	.string	"remember_last_phase"
	.byte	0xc
	.byte	0xa1
	.long	0x9a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"current_phase"
	.byte	0xc
	.byte	0xa3
	.long	0x9a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"keep_flag"
	.byte	0x1
	.byte	0x3f
	.long	0x750
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keep_flag
	.uleb128 0x22
	.string	"error_list"
	.byte	0xd
	.byte	0x2d
	.long	0x118b
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"count_files"
	.byte	0x1
	.byte	0x41
	.long	0x118b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	count_files
	.uleb128 0x22
	.string	"internal_error_occurred"
	.byte	0xe
	.byte	0x2c
	.long	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"program_name"
	.byte	0xe
	.byte	0x2f
	.long	0x210
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"debug"
	.byte	0xf
	.byte	0x64
	.long	0x750
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"abi"
	.byte	0x10
	.value	0x32e
	.long	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"ipa"
	.byte	0x10
	.value	0x335
	.long	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"execute_flag"
	.byte	0x11
	.byte	0x32
	.long	0x750
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x1384
	.long	0x216
	.uleb128 0x25
	.byte	0x0
	.uleb128 0x22
	.string	"compiler_version"
	.byte	0x11
	.byte	0x3a
	.long	0x139e
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x1379
	.uleb128 0x22
	.string	"cset_key"
	.byte	0x12
	.byte	0x1a
	.long	0x13b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4a5
	.uleb128 0x22
	.string	"build_root"
	.byte	0x12
	.byte	0x1b
	.long	0x13b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"build_host"
	.byte	0x12
	.byte	0x1c
	.long	0x13b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"build_user"
	.byte	0x12
	.byte	0x1d
	.long	0x13b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"build_date"
	.byte	0x12
	.byte	0x1e
	.long	0x13b5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x161
	.value	0x2
	.long	.Ldebug_info0
	.long	0x140b
	.long	0xb20
	.string	"get_object_file"
	.long	0xc02
	.string	"create_temp_file_name"
	.long	0xcb3
	.string	"construct_name"
	.long	0xd14
	.string	"construct_given_name"
	.long	0xd7a
	.string	"mark_saved_object_for_cleanup"
	.long	0xda9
	.string	"construct_file_with_extension"
	.long	0xdfd
	.string	"init_temp_files"
	.long	0xe1e
	.string	"init_count_files"
	.long	0xe40
	.string	"init_crash_reporting"
	.long	0x109f
	.string	"cleanup"
	.long	0x10dd
	.string	"mark_for_cleanup"
	.long	0x1112
	.string	"cleanup_temp_objects"
	.long	0x1262
	.string	"dump_outfile_to_stdout"
	.long	0x12bb
	.string	"keep_flag"
	.long	0x12e7
	.string	"count_files"
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
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"suffix"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
