	.file	"run.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl show_flag
	.bss
	.align 4
	.type	show_flag, @object
	.size	show_flag, 4
show_flag:
	.zero	4
.globl show_but_not_run
	.align 4
	.type	show_but_not_run, @object
	.size	show_but_not_run, 4
show_but_not_run:
	.zero	4
.globl execute_flag
	.data
	.align 4
	.type	execute_flag, @object
	.size	execute_flag, 4
execute_flag:
	.long	1
.globl time_flag
	.bss
	.align 4
	.type	time_flag, @object
	.size	time_flag, 4
time_flag:
	.zero	4
.globl prelink_flag
	.data
	.align 4
	.type	prelink_flag, @object
	.size	prelink_flag, 4
prelink_flag:
	.long	1
.globl quiet_flag
	.align 4
	.type	quiet_flag, @object
	.size	quiet_flag, 4
quiet_flag:
	.long	1
.globl memory_flag
	.bss
	.align 4
	.type	memory_flag, @object
	.size	memory_flag, 4
memory_flag:
	.zero	4
.globl run_m4
	.align 4
	.type	run_m4, @object
	.size	run_m4, 4
run_m4:
	.zero	4
	.local	ran_twice
	.comm	ran_twice,4,4
	.local	f90_fe_status
	.comm	f90_fe_status,4,4
	.local	f90_fe_name
	.comm	f90_fe_name,4,4
	.section	.rodata
.LC0:
	.string	"gcc"
.LC1:
	.string	"g++"
.LC2:
	.string	"\"%s\" "
.LC3:
	.string	"cannot exec %s: %m"
	.text
	.type	my_execv, @function
my_execv:
.LFB15:
	.file 1 "../../driver/run.c"
	.loc 1 106 0
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
	.loc 1 107 0
	movl	8(%ebp), %eax
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
	movl	%eax, -24(%ebp)
	.loc 1 110 0
	cmpl	$4, -24(%ebp)
	jle	.L2
	movl	-24(%ebp), %eax
	addl	8(%ebp), %eax
	subl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L2
	movl	-24(%ebp), %eax
	addl	8(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -40(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	movl	$4, -48(%ebp)
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
	je	.L5
	movl	-24(%ebp), %eax
	addl	8(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -52(%ebp)
	leal	.LC1@GOTOFF(%ebx), %esi
	movl	%esi, -56(%ebp)
	movl	$4, -60(%ebp)
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
	jne	.L2
.L5:
	movl	$1, -32(%ebp)
	jmp	.L7
.L2:
	movl	$0, -32(%ebp)
.L7:
	movl	-32(%ebp), %esi
	movl	%esi, -20(%ebp)
	.loc 1 112 0
	movl	show_but_not_run@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L8
.LBB2:
	.loc 1 115 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 116 0
	movl	$1, -16(%ebp)
	jmp	.L10
.L11:
	.loc 1 117 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 116 0
	addl	$1, -16(%ebp)
.L10:
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L11
	.loc 1 118 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 119 0
	cmpl	$0, -20(%ebp)
	jne	.L8
	.loc 1 120 0
	movl	$0, (%esp)
	call	do_exit@PLT
.L8:
.LBE2:
	.loc 1 123 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	execv@PLT
	.loc 1 124 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 125 0
	call	cleanup@PLT
	.loc 1 126 0
	movl	$32, (%esp)
	call	do_exit@PLT
.LFE15:
	.size	my_execv, .-my_execv
	.section	.rodata
.LC4:
	.string	"no more processes"
.LC5:
	.string	"cannot create output file %s"
.LC6:
	.string	"bad return from wait"
	.align 4
.LC7:
	.string	"STOPPED signal received from %s"
	.align 4
.LC8:
	.string	"%s returned non-zero status %d"
.LC9:
	.string	"%s died due to signal %d"
.LC10:
	.string	"core dumped"
.LC11:
	.string	"/var/log/messages"
	.align 4
.LC12:
	.string	"Probably caused by running out of swap space -- check %s"
.LC13:
	.string	"driver exec'ing is confused"
	.text
.globl run_simple_program
	.type	run_simple_program, @function
run_simple_program:
.LFB16:
	.loc 1 134 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$84, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 142 0
	call	fork@PLT
	movl	%eax, -28(%ebp)
	.loc 1 143 0
	cmpl	$-1, -28(%ebp)
	jne	.L16
	.loc 1 144 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 145 0
	call	cleanup@PLT
	.loc 1 146 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L16:
	.loc 1 150 0
	cmpl	$0, -28(%ebp)
	jne	.L23
	.loc 1 152 0
	movl	$438, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	creat@PLT
	movl	%eax, -24(%ebp)
	cmpl	$-1, -24(%ebp)
	jne	.L20
	.loc 1 153 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 154 0
	call	cleanup@PLT
	.loc 1 155 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L20:
	.loc 1 158 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fileno@PLT
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dup2@PLT
	.loc 1 160 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	my_execv
	jmp	.L42
.L24:
.LBB3:
	.loc 1 165 0
	cmpl	$-1, -20(%ebp)
	jne	.L23
	.loc 1 166 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 167 0
	call	cleanup@PLT
	.loc 1 168 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L23:
	.loc 1 164 0
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	wait@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L24
.LBB4:
	.loc 1 172 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
.LBE4:
	andl	$255, %eax
	cmpl	$127, %eax
	jne	.L27
.LBB5:
	.loc 1 173 0
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
.LBE5:
	andl	$65280, %eax
	sarl	$8, %eax
	movl	%eax, -16(%ebp)
	.loc 1 174 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 175 0
	call	cleanup@PLT
	.loc 1 176 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L27:
.LBB6:
	.loc 1 178 0
	movl	-32(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
.LBE6:
	andl	$127, %eax
	testl	%eax, %eax
	jne	.L29
.LBB7:
.LBB8:
	.loc 1 179 0
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
.LBE8:
	andl	$65280, %eax
	sarl	$8, %eax
	movl	%eax, -8(%ebp)
	.loc 1 180 0
	cmpl	$0, -8(%ebp)
	je	.L42
	.loc 1 183 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 186 0
	jmp	.L42
.L29:
.LBE7:
.LBB9:
	.loc 1 187 0
	movl	-32(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
.LBE9:
	andl	$127, %eax
	addl	$1, %eax
	sarb	%al
	testb	%al, %al
	jle	.L33
.LBB10:
	.loc 1 188 0
	movl	-32(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
.LBE10:
	andl	$127, %eax
	movl	%eax, -16(%ebp)
	.loc 1 189 0
	cmpl	$15, -16(%ebp)
	ja	.L35
	movl	-16(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	andl	$33294, %eax
	testl	%eax, %eax
	jne	.L36
	jmp	.L35
.L36:
	.loc 1 195 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 196 0
	jmp	.L37
.L35:
	.loc 1 198 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L37:
	.loc 1 203 0
	movl	-32(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 204 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L38:
	.loc 1 206 0
	cmpl	$9, -16(%ebp)
	jne	.L40
	.loc 1 207 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L40:
	.loc 1 209 0
	call	cleanup@PLT
	.loc 1 210 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L33:
	.loc 1 213 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L42:
.LBE3:
	.loc 1 217 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	run_simple_program, .-run_simple_program
	.section	.rodata
.LC14:
	.string	"cannot allocate memory"
.LC15:
	.string	"%s=\"%s\" "
.LC16:
	.string	"%s=%s"
	.text
	.type	my_putenv, @function
my_putenv:
.LFB17:
	.loc 1 223 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$36, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 225 0
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 229 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	vasprintf@PLT
	cmpl	$-1, %eax
	jne	.L44
	.loc 1 230 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 231 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L44:
	.loc 1 234 0
	movl	show_but_not_run@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 235 0
	movl	-16(%ebp), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L46:
	.loc 1 240 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	cmpl	$-1, %eax
	jne	.L48
	.loc 1 241 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 242 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L48:
	.loc 1 245 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	putenv@PLT
	.loc 1 248 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	my_putenv, .-my_putenv
	.section	.rodata
.LC17:
	.string	"../i686-pc-linux-gnu//lib"
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	binutils_library_path.5120, @object
	.size	binutils_library_path.5120, 4
binutils_library_path.5120:
	.long	.LC17
	.section	.rodata
.LC18:
	.string	"%s/%s"
	.text
.globl get_binutils_lib_path
	.type	get_binutils_lib_path, @function
get_binutils_lib_path:
.LFB18:
	.loc 1 252 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%esi
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$32, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 256 0
	movl	binutils_library_path.5120@GOTOFF(%ebx), %esi
	call	get_executable_dir@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 258 0
	movl	-12(%ebp), %eax
	.loc 1 259 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	get_binutils_lib_path, .-get_binutils_lib_path
	.section	.rodata
.LC19:
	.string	"%s "
.LC20:
	.string	"<"
.LC21:
	.string	">"
.LC22:
	.string	">&"
.LC23:
	.string	"cannot open input file %s"
.LC24:
	.string	"%s:%s"
.LC25:
	.string	"LD_LIBRARY_PATH"
.LC26:
	.string	"LD_LIBRARYN32_PATH"
.LC27:
	.string	"NLSPATH"
.LC28:
	.string	"%s:%s/%%N.cat"
.LC29:
	.string	"%s/%%N.cat"
.LC30:
	.string	"ORIG_CMD_NAME"
.LC31:
	.string	"%s"
.LC32:
	.string	"FORTRAN_SYSTEM_MODULES="
.LC33:
	.string	"/usr/lib/f90modules"
.LC34:
	.string	"TOOLROOT"
.LC35:
	.string	"%s/%s:%s"
.LC36:
	.string	"FORTRAN_SYSTEM_MODULES"
.LC37:
	.string	"%s%s"
.LC38:
	.string	"COMPILER_PATH"
.LC39:
	.string	"%s/cc-"
.LC40:
	.string	"COMPILER_BIN"
	.align 4
.LC41:
	.string	"No count file was specified for a prof run"
.LC42:
	.string	"T"
.LC43:
	.string	"-TENV:long_eh_offsets"
.LC44:
	.string	"-TENV:large_stack"
	.text
.globl run_phase
	.type	run_phase, @function
run_phase:
.LFB19:
	.loc 1 264 0
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
	subl	$364, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -256(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -260(%ebp)
	.loc 1 264 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 268 0
	movl	$0, -112(%ebp)
	.loc 1 269 0
	movl	$0, -108(%ebp)
	.loc 1 270 0
	movl	$0, -104(%ebp)
	.loc 1 285 0
	cmpl	$19, 8(%ebp)
	je	.L54
	cmpl	$10, 8(%ebp)
	je	.L54
	cmpl	$20, 8(%ebp)
	jne	.L57
.L54:
	movl	$1, -276(%ebp)
	jmp	.L58
.L57:
	movl	$0, -276(%ebp)
.L58:
	movl	-276(%ebp), %ecx
	movl	%ecx, -72(%ebp)
	.loc 1 287 0
	movl	show_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L59
	.loc 1 289 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-256(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 290 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-260(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_string_list@PLT
.L59:
	.loc 1 292 0
	movl	execute_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L190
	.loc 1 294 0
	movl	time_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L63
	call	init_time
.L63:
	.loc 1 297 0
	movl	$1, -120(%ebp)
	.loc 1 298 0
	movl	-260(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L65
.L66:
	.loc 1 300 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L67
	.loc 1 302 0
	addl	$1, -120(%ebp)
.L67:
	.loc 1 298 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
.L65:
	cmpl	$0, -116(%ebp)
	jne	.L66
	.loc 1 304 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -124(%ebp)
	.loc 1 305 0
	movl	-124(%ebp), %edx
	movl	-256(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 306 0
	movl	$1, -120(%ebp)
	movl	-260(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L70
.L71:
	.loc 1 308 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L72
	.loc 1 309 0
	subl	$1, -120(%ebp)
	.loc 1 310 0
	jmp	.L74
.L72:
	.loc 1 313 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -280(%ebp)
	leal	.LC20@GOTOFF(%ebx), %esi
	movl	%esi, -284(%ebp)
	movl	$2, -288(%ebp)
	cld
	movl	-280(%ebp), %esi
	movl	-284(%ebp), %edi
	movl	-288(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L75
	.loc 1 315 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 316 0
	jmp	.L77
.L75:
	.loc 1 317 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -292(%ebp)
	leal	.LC21@GOTOFF(%ebx), %esi
	movl	%esi, -296(%ebp)
	movl	$2, -300(%ebp)
	cld
	movl	-292(%ebp), %esi
	movl	-296(%ebp), %edi
	movl	-300(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L78
	.loc 1 319 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 320 0
	jmp	.L77
.L78:
	.loc 1 321 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -304(%ebp)
	leal	.LC22@GOTOFF(%ebx), %esi
	movl	%esi, -308(%ebp)
	movl	$3, -312(%ebp)
	cld
	movl	-304(%ebp), %esi
	movl	-308(%ebp), %edi
	movl	-312(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L80
	.loc 1 323 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 324 0
	movl	$1, -104(%ebp)
	.loc 1 325 0
	jmp	.L77
.L80:
	.loc 1 327 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-124(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
.L74:
	.loc 1 306 0
	addl	$1, -120(%ebp)
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
.L70:
	cmpl	$0, -116(%ebp)
	jne	.L71
.L77:
	.loc 1 329 0
	movl	-120(%ebp), %eax
	sall	$2, %eax
	addl	-124(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 346 0
	call	fork@PLT
	movl	%eax, -92(%ebp)
	.loc 1 347 0
	cmpl	$-1, -92(%ebp)
	jne	.L82
	.loc 1 348 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 349 0
	call	cleanup@PLT
	.loc 1 350 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L82:
	.loc 1 354 0
	cmpl	$0, -92(%ebp)
	jne	.L117
.LBB11:
	.loc 1 364 0
	cmpl	$0, -108(%ebp)
	je	.L86
	.loc 1 365 0
	movl	$0, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	open@PLT
	movl	%eax, -100(%ebp)
	cmpl	$-1, -100(%ebp)
	jne	.L88
	.loc 1 366 0
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 367 0
	call	cleanup@PLT
	.loc 1 368 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L88:
	.loc 1 371 0
	movl	stdin@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fileno@PLT
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	dup2@PLT
.L86:
	.loc 1 373 0
	cmpl	$0, -112(%ebp)
	je	.L90
	.loc 1 374 0
	movl	$438, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	creat@PLT
	movl	%eax, -96(%ebp)
	cmpl	$-1, -96(%ebp)
	jne	.L92
	.loc 1 375 0
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 376 0
	call	cleanup@PLT
	.loc 1 377 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L92:
	.loc 1 380 0
	cmpl	$0, -104(%ebp)
	je	.L94
	.loc 1 381 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fileno@PLT
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	dup2@PLT
	jmp	.L90
.L94:
	.loc 1 383 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fileno@PLT
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	dup2@PLT
.L90:
	.loc 1 387 0
	call	get_binutils_lib_path@PLT
	movl	%eax, -132(%ebp)
	.loc 1 388 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_ld_library_path@PLT
	movl	%eax, -76(%ebp)
	.loc 1 390 0
	cmpl	$0, -76(%ebp)
	je	.L96
	.loc 1 391 0
	movl	-132(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
.L96:
	.loc 1 393 0
	movl	-132(%ebp), %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 395 0
	movl	ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L98
	.loc 1 396 0
	movl	ld_library_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
.L98:
	.loc 1 398 0
	movl	ld_libraryn32_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L100
	.loc 1 399 0
	movl	ld_libraryn32_path@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
.L100:
	.loc 1 402 0
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	my_putenv
	.loc 1 403 0
	movl	-140(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	my_putenv
	.loc 1 429 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -68(%ebp)
	.loc 1 430 0
	movl	$19, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, -64(%ebp)
	.loc 1 432 0
	cmpl	$0, -68(%ebp)
	je	.L102
	.loc 1 433 0
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	my_putenv
	jmp	.L104
.L102:
	.loc 1 435 0
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	my_putenv
.L104:
	.loc 1 439 0
	cmpl	$0, -72(%ebp)
	je	.L105
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	testl	%eax, %eax
	jne	.L105
	.loc 1 440 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	my_putenv
.L105:
	.loc 1 442 0
	cmpl	$19, 8(%ebp)
	jne	.L108
.LBB12:
	.loc 1 447 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	.loc 1 448 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 449 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -60(%ebp)
	.loc 1 450 0
	cmpl	$0, -60(%ebp)
	je	.L110
	.loc 1 451 0
	movl	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -316(%ebp)
	movl	$0, %eax
	cld
	movl	-316(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -320(%ebp)
	movl	$0, %eax
	cld
	movl	-320(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -324(%ebp)
	movl	$0, %eax
	cld
	movl	-324(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%edx,%eax), %eax
	addl	$3, %eax
	movl	%eax, -52(%ebp)
	.loc 1 452 0
	movl	-52(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -272(%ebp)
	movl	-272(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -272(%ebp)
	movl	-272(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	.loc 1 453 0
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 454 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
.L110:
	.loc 1 456 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -56(%ebp)
	.loc 1 457 0
	cmpl	$0, -56(%ebp)
	je	.L112
	.loc 1 459 0
	movl	-56(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -328(%ebp)
	movl	$0, %eax
	cld
	movl	-328(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-56(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	.L114
	.loc 1 461 0
	movl	-56(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -332(%ebp)
	movl	$0, %eax
	cld
	movl	-332(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -336(%ebp)
	movl	$0, %eax
	cld
	movl	-336(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movl	%eax, -52(%ebp)
	.loc 1 462 0
	movl	-52(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -268(%ebp)
	movl	-268(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -268(%ebp)
	movl	-268(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	.loc 1 463 0
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	jmp	.L116
.L114:
	.loc 1 466 0
	movl	-56(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -340(%ebp)
	movl	$0, %eax
	cld
	movl	-340(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -344(%ebp)
	movl	$0, %eax
	cld
	movl	-344(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	movl	%eax, -52(%ebp)
	.loc 1 467 0
	movl	-52(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -264(%ebp)
	movl	-264(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -264(%ebp)
	movl	-264(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	.loc 1 468 0
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L116:
	.loc 1 470 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
.L112:
	.loc 1 473 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	my_putenv
.L108:
.LBE12:
	.loc 1 477 0
	movl	$36, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	my_putenv
	.loc 1 480 0
	call	get_executable_dir@PLT
	movl	%eax, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	my_putenv
	.loc 1 485 0
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	my_execv
	jmp	.L190
.L118:
.LBE11:
.LBB13:
	.loc 1 532 0
	cmpl	$-1, -88(%ebp)
	jne	.L117
	.loc 1 533 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 534 0
	call	cleanup@PLT
	.loc 1 535 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L117:
	.loc 1 531 0
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	wait@PLT
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	cmpl	-92(%ebp), %eax
	jne	.L118
	.loc 1 543 0
	movl	time_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L121
	movl	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	print_time
.L121:
.LBB14:
	.loc 1 548 0
	movl	-128(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-144(%ebp), %eax
.LBE14:
	andl	$255, %eax
	cmpl	$127, %eax
	jne	.L123
.LBB15:
	.loc 1 549 0
	movl	-128(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %eax
.LBE15:
	andl	$65280, %eax
	sarl	$8, %eax
	movl	%eax, -84(%ebp)
	.loc 1 550 0
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 551 0
	call	cleanup@PLT
	.loc 1 552 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L123:
.LBB16:
	.loc 1 554 0
	movl	-128(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-152(%ebp), %eax
.LBE16:
	andl	$127, %eax
	testl	%eax, %eax
	jne	.L125
.LBB17:
.LBB18:
	.loc 1 555 0
	movl	-128(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	-156(%ebp), %eax
.LBE18:
	andl	$65280, %eax
	sarl	$8, %eax
	movl	%eax, -32(%ebp)
	.loc 1 557 0
	movl	$0, -28(%ebp)
	.loc 1 558 0
	movl	$0, -24(%ebp)
	.loc 1 560 0
	cmpl	$42, 8(%ebp)
	jne	.L127
	.loc 1 563 0
	movl	prof_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L129
	.loc 1 564 0
	movl	fb_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-252(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	je	.L131
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L127
.L131:
	.loc 1 565 0
	movl	$0, -32(%ebp)
	jmp	.L127
.L129:
	.loc 1 567 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	.loc 1 568 0
	movl	program_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
.L127:
	.loc 1 572 0
	cmpl	$19, 8(%ebp)
	jne	.L134
	movl	keep_listing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L134
.LBB19:
	.loc 1 574 0
	movl	source_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	drop_path@PLT
	movl	%eax, %edx
	movl	$1, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	construct_given_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 576 0
	leal	-252(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	je	.L137
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L139
.L137:
	.loc 1 577 0
	movl	-32(%ebp), %eax
	movl	%eax, f90_fe_status@GOTOFF(%ebx)
.L139:
	.loc 1 578 0
	movl	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, f90_fe_name@GOTOFF(%ebx)
	.loc 1 586 0
	movl	$0, -32(%ebp)
.L134:
.LBE19:
	.loc 1 589 0
	cmpl	$26, 8(%ebp)
	jne	.L140
	.loc 1 590 0
	cmpl	$0, -32(%ebp)
	jne	.L140
	movl	f90_fe_status@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L140
	.loc 1 600 0
	movl	f90_fe_status@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 601 0
	movl	f90_fe_name@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	string_copy@PLT
	movl	%eax, -256(%ebp)
	.loc 1 607 0
	movl	$0, f90_fe_status@GOTOFF(%ebx)
.L140:
	.loc 1 611 0
	cmpl	$64, -32(%ebp)
	ja	.L144
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L150@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L150:
	.long	.L145@GOTOFF
	.long	.L146@GOTOFF
	.long	.L147@GOTOFF
	.long	.L144@GOTOFF
	.long	.L147@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L148@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L147@GOTOFF
	.long	.L147@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L144@GOTOFF
	.long	.L149@GOTOFF
	.text
.L145:
	.loc 1 613 0
	movl	inline_t@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L154
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_mask@PLT
	movl	$23, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	is_matching_phase@PLT
	testl	%eax, %eax
	je	.L154
	.loc 1 617 0
	movl	inline_t@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 619 0
	jmp	.L154
.L148:
	.loc 1 621 0
	movl	inline_t@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L154
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_phase_mask@PLT
	movl	$23, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	is_matching_phase@PLT
	testl	%eax, %eax
	je	.L154
	.loc 1 625 0
	movl	inline_t@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 628 0
	jmp	.L154
.L147:
	.loc 1 634 0
	movl	$1, -24(%ebp)
	.loc 1 635 0
	jmp	.L154
.L149:
	.loc 1 638 0
	movl	ran_twice@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L158
	cmpl	$30, 8(%ebp)
	jne	.L158
	.loc 1 640 0
	movl	$1, ran_twice@GOTOFF(%ebx)
	.loc 1 641 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 642 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, (%esp)
	call	add_string@PLT
	.loc 1 643 0
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	run_phase@PLT
	.loc 1 644 0
	jmp	.L190
.L158:
	.loc 1 646 0
	movl	$1, -28(%ebp)
	.loc 1 647 0
	jmp	.L154
.L146:
	.loc 1 649 0
	movl	$1, -28(%ebp)
	.loc 1 650 0
	jmp	.L154
.L144:
	.loc 1 652 0
	movl	$1, -28(%ebp)
.L154:
	.loc 1 655 0
	cmpl	$0, -28(%ebp)
	je	.L161
	.loc 1 656 0
	cmpl	$37, 8(%ebp)
	je	.L163
	cmpl	$38, 8(%ebp)
	je	.L163
	cmpl	$32, 8(%ebp)
	je	.L163
	cmpl	$11, 8(%ebp)
	je	.L163
	cmpl	$5, 8(%ebp)
	je	.L163
	cmpl	$6, 8(%ebp)
	jne	.L169
.L163:
	.loc 1 660 0
	cmpl	$32, 8(%ebp)
	jne	.L170
	.loc 1 661 0
	movl	internal_error_occurred@GOT(%ebx), %eax
	movl	$1, (%eax)
.L170:
	.loc 1 662 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	log_error@PLT
	.loc 1 664 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	nomsg_error@PLT
	.loc 1 656 0
	jmp	.L173
.L169:
	.loc 1 666 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
	jmp	.L173
.L161:
	.loc 1 670 0
	cmpl	$0, -24(%ebp)
	je	.L173
	.loc 1 672 0
	cmpl	$21, 8(%ebp)
	je	.L175
	cmpl	$22, 8(%ebp)
	jne	.L177
.L175:
	.loc 1 673 0
	movl	$1, (%esp)
	call	nomsg_error@PLT
	.loc 1 672 0
	jmp	.L173
.L177:
	.loc 1 675 0
	movl	show_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L178
	cmpl	$0, -104(%ebp)
	je	.L180
.L178:
	.loc 1 676 0
	movl	$2, (%esp)
	call	nomsg_error@PLT
	.loc 1 675 0
	jmp	.L173
.L180:
	.loc 1 678 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L173:
	.loc 1 682 0
	movl	$0, ran_twice@GOTOFF(%ebx)
	.loc 1 683 0
	jmp	.L190
.L125:
.LBE17:
.LBB20:
	.loc 1 684 0
	movl	-128(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	-160(%ebp), %eax
.LBE20:
	andl	$127, %eax
	addl	$1, %eax
	sarb	%al
	testb	%al, %al
	jle	.L181
.LBB21:
	.loc 1 685 0
	movl	-128(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	-164(%ebp), %eax
.LBE21:
	andl	$127, %eax
	movl	%eax, -84(%ebp)
	.loc 1 686 0
	cmpl	$15, -84(%ebp)
	ja	.L183
	movl	-84(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	andl	$33294, %eax
	testl	%eax, %eax
	jne	.L184
	jmp	.L183
.L184:
	.loc 1 692 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 693 0
	jmp	.L185
.L183:
	.loc 1 695 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L185:
	.loc 1 699 0
	movl	-128(%ebp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L186
	.loc 1 700 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L186:
	.loc 1 702 0
	cmpl	$9, -84(%ebp)
	jne	.L188
	.loc 1 703 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L188:
	.loc 1 705 0
	call	cleanup@PLT
	.loc 1 706 0
	movl	$32, (%esp)
	call	do_exit@PLT
.L181:
	.loc 1 709 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L190:
.LBE13:
	.loc 1 713 0
	movl	-16(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L191
	call	__stack_chk_fail_local
.L191:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	run_phase, .-run_phase
	.section	.rodata
	.align 4
.LC45:
	.string	"signal %s caught, stop processing"
	.text
.globl handler
	.type	handler, @function
handler:
.LFB20:
	.loc 1 720 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$20, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 721 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strsignal@PLT
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 722 0
	call	cleanup@PLT
	.loc 1 723 0
	movl	$32, (%esp)
	call	do_exit@PLT
.LFE20:
	.size	handler, .-handler
.globl catch_signals
	.type	catch_signals, @function
catch_signals:
.LFB21:
	.loc 1 729 0
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
	.loc 1 731 0
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L195
	.loc 1 732 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	signal@PLT
.L195:
	.loc 1 733 0
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L197
	.loc 1 734 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	signal@PLT
.L197:
	.loc 1 735 0
	movl	$1, 4(%esp)
	movl	$3, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L199
	.loc 1 736 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	signal@PLT
.L199:
	.loc 1 737 0
	movl	$1, 4(%esp)
	movl	$4, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L201
	.loc 1 738 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	signal@PLT
.L201:
	.loc 1 739 0
	movl	$1, 4(%esp)
	movl	$5, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L203
	.loc 1 740 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	signal@PLT
.L203:
	.loc 1 741 0
	movl	$1, 4(%esp)
	movl	$6, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L205
	.loc 1 742 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$6, (%esp)
	call	signal@PLT
.L205:
	.loc 1 747 0
	movl	$1, 4(%esp)
	movl	$8, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L207
	.loc 1 748 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	signal@PLT
.L207:
	.loc 1 749 0
	movl	$1, 4(%esp)
	movl	$7, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L209
	.loc 1 750 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	signal@PLT
.L209:
	.loc 1 751 0
	movl	$1, 4(%esp)
	movl	$11, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L211
	.loc 1 752 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	call	signal@PLT
.L211:
	.loc 1 753 0
	movl	$1, 4(%esp)
	movl	$15, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L213
	.loc 1 754 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	call	signal@PLT
.L213:
	.loc 1 755 0
	movl	$1, 4(%esp)
	movl	$13, (%esp)
	call	signal@PLT
	cmpl	$1, %eax
	je	.L217
	.loc 1 756 0
	movl	handler@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$13, (%esp)
	call	signal@PLT
.L217:
	.loc 1 757 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	catch_signals, .-catch_signals
	.type	init_time, @function
init_time:
.LFB22:
	.loc 1 767 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$4, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 768 0
	movl	tm0@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	times@PLT
	movl	%eax, %edx
	movl	time0@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 769 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	init_time, .-init_time
	.section	.rodata
	.align 4
.LC47:
	.string	"%s phase time:  %.2fu %.2fs %lu:%04.1f %.0f%%\n"
	.align 8
.LC46:
	.long	0
	.long	1079574528
	.text
	.type	print_time, @function
print_time:
.LFB23:
	.loc 1 774 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$112, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 779 0
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	times@PLT
	movl	%eax, -16(%ebp)
	.loc 1 780 0
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	tm0@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	tm0@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	.LC46@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstpl	-32(%ebp)
	.loc 1 782 0
	movl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	%eax, %edx
	movl	tm0@GOT(%ebx), %eax
	movl	4(%eax), %eax
	subl	%eax, %edx
	movl	tm0@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	.LC46@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstpl	-24(%ebp)
	.loc 1 784 0
	movl	time0@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 786 0
	fldl	-32(%ebp)
	faddl	-24(%ebp)
	fildl	-12(%ebp)
	fldl	.LC46@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fdivrp	%st, %st(1)
	fldl	.LC46@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	-12(%ebp), %ecx
	movl	$91625969, -68(%ebp)
	movl	-68(%ebp), %eax
	imull	%ecx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -60(%ebp)
	imull	$6000, -60(%ebp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -60(%ebp)
	fildl	-60(%ebp)
	fldl	.LC46@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fxch	%st(1)
	movl	-12(%ebp), %ecx
	movl	$91625969, -68(%ebp)
	movl	-68(%ebp), %eax
	imull	%ecx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	fstpl	40(%esp)
	fstpl	32(%esp)
	movl	%edx, 28(%esp)
	fldl	-24(%ebp)
	fstpl	20(%esp)
	fldl	-32(%ebp)
	fstpl	12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 790 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE23:
	.size	print_time, .-print_time
	.local	Pipe
	.comm	Pipe,8,4
	.comm	dump_outfile_to_stdout,4,4
	.comm	time0,4,4
	.comm	tm0,16,4
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
	.long	.LCFI9-.LCFI7
	.byte	0x83
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
	.long	.LCFI10-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
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
	.long	.LCFI14-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI15
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
	.long	.LCFI24-.LCFI20
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI25-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI29-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI33-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI37-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI38
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE16:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 4 "../../driver/lang_defs.h"
	.file 5 "../../driver/string_utils.h"
	.file 6 "../../driver/basic.h"
	.file 7 "/usr/include/bits/stat.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/sys/times.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../driver/errors.h"
	.file 14 "../../driver/phases.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x15cd
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/run.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x8f
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
	.byte	0x8
	.byte	0x3b
	.long	0xf5
	.uleb128 0x2
	.string	"__u_quad_t"
	.byte	0x8
	.byte	0x3c
	.long	0x106
	.uleb128 0x2
	.string	"__dev_t"
	.byte	0x8
	.byte	0x89
	.long	0x130
	.uleb128 0x2
	.string	"__uid_t"
	.byte	0x8
	.byte	0x8a
	.long	0x8f
	.uleb128 0x2
	.string	"__gid_t"
	.byte	0x8
	.byte	0x8b
	.long	0x8f
	.uleb128 0x2
	.string	"__ino_t"
	.byte	0x8
	.byte	0x8c
	.long	0xbd
	.uleb128 0x2
	.string	"__mode_t"
	.byte	0x8
	.byte	0x8e
	.long	0x8f
	.uleb128 0x2
	.string	"__nlink_t"
	.byte	0x8
	.byte	0x8f
	.long	0x8f
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x8
	.byte	0x90
	.long	0x1ae
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x8
	.byte	0x91
	.long	0x120
	.uleb128 0x5
	.long	0x1db
	.long	0xee
	.uleb128 0x6
	.long	0x1db
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__clock_t"
	.byte	0x8
	.byte	0x94
	.long	0x1ae
	.uleb128 0x2
	.string	"__time_t"
	.byte	0x8
	.byte	0x98
	.long	0x1ae
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.string	"__blksize_t"
	.byte	0x8
	.byte	0xa7
	.long	0x1ae
	.uleb128 0x2
	.string	"__blkcnt_t"
	.byte	0x8
	.byte	0xac
	.long	0x1ae
	.uleb128 0x8
	.byte	0x4
	.long	0x230
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.long	0x4b3
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0xa
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x52b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x537
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xa
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x54d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x4b9
	.uleb128 0xb
	.long	0x230
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x3
	.byte	0x2b
	.long	0x4d4
	.uleb128 0x8
	.byte	0x4
	.long	0x230
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0xd
	.long	0x52b
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x52b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x4e8
	.uleb128 0x8
	.byte	0x4
	.long	0x238
	.uleb128 0x5
	.long	0x547
	.long	0x230
	.uleb128 0x6
	.long	0x1db
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x4da
	.uleb128 0x5
	.long	0x55d
	.long	0x230
	.uleb128 0x6
	.long	0x1db
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.string	"va_list"
	.byte	0x2
	.byte	0x4d
	.long	0x4be
	.uleb128 0x2
	.string	"clock_t"
	.byte	0x9
	.byte	0x3d
	.long	0x1e2
	.uleb128 0xd
	.long	0x5b0
	.string	"timespec"
	.byte	0x8
	.byte	0x9
	.byte	0x7a
	.uleb128 0xe
	.string	"tv_sec"
	.byte	0x9
	.byte	0x7b
	.long	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tv_nsec"
	.byte	0x9
	.byte	0x7c
	.long	0x1ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	0x6f4
	.string	"stat"
	.byte	0x58
	.byte	0x7
	.byte	0x25
	.uleb128 0xe
	.string	"st_dev"
	.byte	0x7
	.byte	0x26
	.long	0x142
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x7
	.byte	0x27
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"st_ino"
	.byte	0x7
	.byte	0x29
	.long	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"st_mode"
	.byte	0x7
	.byte	0x2d
	.long	0x17e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"st_nlink"
	.byte	0x7
	.byte	0x2e
	.long	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"st_uid"
	.byte	0x7
	.byte	0x2f
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st_gid"
	.byte	0x7
	.byte	0x30
	.long	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"st_rdev"
	.byte	0x7
	.byte	0x31
	.long	0x142
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x7
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"st_size"
	.byte	0x7
	.byte	0x34
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"st_blksize"
	.byte	0x7
	.byte	0x38
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"st_blocks"
	.byte	0x7
	.byte	0x3b
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"st_atim"
	.byte	0x7
	.byte	0x46
	.long	0x57b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"st_mtim"
	.byte	0x7
	.byte	0x47
	.long	0x57b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"st_ctim"
	.byte	0x7
	.byte	0x48
	.long	0x57b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"__unused4"
	.byte	0x7
	.byte	0x55
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"__unused5"
	.byte	0x7
	.byte	0x56
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0xd
	.long	0x753
	.string	"tms"
	.byte	0x10
	.byte	0xa
	.byte	0x24
	.uleb128 0xe
	.string	"tms_utime"
	.byte	0xa
	.byte	0x25
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tms_stime"
	.byte	0xa
	.byte	0x26
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"tms_cutime"
	.byte	0xa
	.byte	0x28
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"tms_cstime"
	.byte	0xa
	.byte	0x29
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"boolean"
	.byte	0x6
	.byte	0x2c
	.long	0xee
	.uleb128 0xd
	.long	0x799
	.string	"string_item_rec"
	.byte	0x8
	.byte	0x5
	.byte	0x50
	.uleb128 0xe
	.string	"name"
	.byte	0x5
	.byte	0x51
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"next"
	.byte	0x5
	.byte	0x52
	.long	0x799
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x762
	.uleb128 0x2
	.string	"string_item_t"
	.byte	0x5
	.byte	0x53
	.long	0x762
	.uleb128 0xd
	.long	0x7eb
	.string	"string_list_rec"
	.byte	0x8
	.byte	0x5
	.byte	0x54
	.uleb128 0xe
	.string	"head"
	.byte	0x5
	.byte	0x55
	.long	0x7eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tail"
	.byte	0x5
	.byte	0x56
	.long	0x7eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x79f
	.uleb128 0x2
	.string	"string_list_t"
	.byte	0x5
	.byte	0x57
	.long	0x7b4
	.uleb128 0xf
	.long	0xa2d
	.byte	0x4
	.byte	0x4
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
	.byte	0x4
	.byte	0x97
	.long	0x806
	.uleb128 0x11
	.long	0xab0
	.string	"my_execv"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x12
	.string	"name"
	.byte	0x1
	.byte	0x69
	.long	0x4b3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"argv"
	.byte	0x1
	.byte	0x69
	.long	0xab0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x6b
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"passthru"
	.byte	0x1
	.byte	0x6c
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x71
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0xab6
	.uleb128 0xb
	.long	0x22a
	.uleb128 0x15
	.long	0xcfb
	.byte	0x1
	.string	"run_simple_program"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x12
	.string	"name"
	.byte	0x1
	.byte	0x85
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"argv"
	.byte	0x1
	.byte	0x85
	.long	0xcfb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"output"
	.byte	0x1
	.byte	0x85
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"forkpid"
	.byte	0x1
	.byte	0x87
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"fdout"
	.byte	0x1
	.byte	0x88
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"waitpid"
	.byte	0x1
	.byte	0x89
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LASF2
	.byte	0x1
	.byte	0x8a
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"termsig"
	.byte	0x1
	.byte	0x8b
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x13
	.string	"procid"
	.byte	0x1
	.byte	0xa3
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	0xbbb
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x18
	.long	0xbac
	.byte	0x4
	.byte	0x1
	.byte	0xac
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.byte	0xac
	.long	0xee
	.uleb128 0x1a
	.string	"__i"
	.byte	0x1
	.byte	0xac
	.long	0xee
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0xac
	.long	0xb8d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x17
	.long	0xbf6
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x18
	.long	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0xad
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.byte	0xad
	.long	0xee
	.uleb128 0x1a
	.string	"__i"
	.byte	0x1
	.byte	0xad
	.long	0xee
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0xad
	.long	0xbc8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x17
	.long	0xc31
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x18
	.long	0xc22
	.byte	0x4
	.byte	0x1
	.byte	0xb2
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.byte	0xb2
	.long	0xee
	.uleb128 0x1a
	.string	"__i"
	.byte	0x1
	.byte	0xb2
	.long	0xee
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0xb2
	.long	0xc03
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x17
	.long	0xc87
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x13
	.string	"status"
	.byte	0x1
	.byte	0xb3
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x18
	.long	0xc77
	.byte	0x4
	.byte	0x1
	.byte	0xb3
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.byte	0xb3
	.long	0xee
	.uleb128 0x1a
	.string	"__i"
	.byte	0x1
	.byte	0xb3
	.long	0xee
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0xb3
	.long	0xc58
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0xcc2
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x18
	.long	0xcb3
	.byte	0x4
	.byte	0x1
	.byte	0xbb
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.byte	0xbb
	.long	0xee
	.uleb128 0x1a
	.string	"__i"
	.byte	0x1
	.byte	0xbb
	.long	0xee
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0xbb
	.long	0xc94
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x14
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x18
	.long	0xcea
	.byte	0x4
	.byte	0x1
	.byte	0xbc
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.byte	0xbc
	.long	0xee
	.uleb128 0x1a
	.string	"__i"
	.byte	0x1
	.byte	0xbc
	.long	0xee
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0xbc
	.long	0xccb
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x22a
	.uleb128 0x11
	.long	0xd75
	.string	"my_putenv"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x12
	.string	"name"
	.byte	0x1
	.byte	0xde
	.long	0x4b3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"fmt"
	.byte	0x1
	.byte	0xde
	.long	0x4b3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.uleb128 0x13
	.string	"ap"
	.byte	0x1
	.byte	0xe0
	.long	0x55d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"rhs"
	.byte	0x1
	.byte	0xe2
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"env"
	.byte	0x1
	.byte	0xe2
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0xe3
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1c
	.long	0xdda
	.byte	0x1
	.string	"get_binutils_lib_path"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	0x22a
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x13
	.string	"my_path"
	.byte	0x1
	.byte	0xfe
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.string	"binutils_library_path"
	.byte	0x1
	.byte	0xfd
	.long	0x4b3
	.byte	0x5
	.byte	0x3
	.long	binutils_library_path.5120
	.byte	0x0
	.uleb128 0x1d
	.long	0x1259
	.byte	0x1
	.string	"run_phase"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1e
	.string	"phase"
	.byte	0x1
	.value	0x107
	.long	0xa2d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"name"
	.byte	0x1
	.value	0x107
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1e
	.string	"args"
	.byte	0x1
	.value	0x107
	.long	0x1259
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x1f
	.string	"argv"
	.byte	0x1
	.value	0x109
	.long	0xcfb
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1f
	.string	"argc"
	.byte	0x1
	.value	0x10a
	.long	0xee
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x10b
	.long	0x7eb
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1f
	.string	"output"
	.byte	0x1
	.value	0x10c
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1f
	.string	"input"
	.byte	0x1
	.value	0x10d
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1f
	.string	"save_stderr"
	.byte	0x1
	.value	0x10e
	.long	0x753
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.string	"fdin"
	.byte	0x1
	.value	0x10f
	.long	0xee
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1f
	.string	"fdout"
	.byte	0x1
	.value	0x10f
	.long	0xee
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.string	"forkpid"
	.byte	0x1
	.value	0x110
	.long	0xee
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1f
	.string	"waitpid"
	.byte	0x1
	.value	0x111
	.long	0xee
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF2
	.byte	0x1
	.value	0x112
	.long	0xee
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.string	"termsig"
	.byte	0x1
	.value	0x113
	.long	0xee
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.string	"num_maps"
	.byte	0x1
	.value	0x118
	.long	0xee
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.string	"rld_path"
	.byte	0x1
	.value	0x119
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.string	"stat_buf"
	.byte	0x1
	.value	0x11a
	.long	0x5b0
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x1f
	.string	"uses_message_system"
	.byte	0x1
	.value	0x11b
	.long	0x125f
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.long	0x1056
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x1f
	.string	"my_path"
	.byte	0x1
	.value	0x163
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1f
	.string	"l_path"
	.byte	0x1
	.value	0x163
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1f
	.string	"l32_path"
	.byte	0x1
	.value	0x163
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1f
	.string	"nls_path"
	.byte	0x1
	.value	0x163
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.string	"env_path"
	.byte	0x1
	.value	0x163
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1f
	.string	"root"
	.byte	0x1
	.value	0x1bb
	.long	0x22a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.string	"modulepath"
	.byte	0x1
	.value	0x1bc
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.value	0x1bd
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.string	"new_env"
	.byte	0x1
	.value	0x1be
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"env_name"
	.byte	0x1
	.value	0x1bf
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"env_val"
	.byte	0x1
	.value	0x1c0
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1f
	.string	"procid"
	.byte	0x1
	.value	0x1e8
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	0x10b1
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x21
	.long	0x10a0
	.byte	0x4
	.byte	0x1
	.value	0x224
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x224
	.long	0xee
	.uleb128 0x23
	.string	"__i"
	.byte	0x1
	.value	0x224
	.long	0xee
	.byte	0x0
	.uleb128 0x1f
	.string	"__u"
	.byte	0x1
	.value	0x224
	.long	0x107e
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x0
	.uleb128 0x17
	.long	0x10f1
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x21
	.long	0x10e0
	.byte	0x4
	.byte	0x1
	.value	0x225
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x225
	.long	0xee
	.uleb128 0x23
	.string	"__i"
	.byte	0x1
	.value	0x225
	.long	0xee
	.byte	0x0
	.uleb128 0x1f
	.string	"__u"
	.byte	0x1
	.value	0x225
	.long	0x10be
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x0
	.uleb128 0x17
	.long	0x1131
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x21
	.long	0x1120
	.byte	0x4
	.byte	0x1
	.value	0x22a
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x22a
	.long	0xee
	.uleb128 0x23
	.string	"__i"
	.byte	0x1
	.value	0x22a
	.long	0xee
	.byte	0x0
	.uleb128 0x1f
	.string	"__u"
	.byte	0x1
	.value	0x22a
	.long	0x10fe
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0x0
	.uleb128 0x17
	.long	0x11db
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x1f
	.string	"status"
	.byte	0x1
	.value	0x22b
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"internal_err"
	.byte	0x1
	.value	0x22d
	.long	0x753
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"user_err"
	.byte	0x1
	.value	0x22e
	.long	0x753
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	0x11bc
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x21
	.long	0x11ab
	.byte	0x4
	.byte	0x1
	.value	0x22b
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x22b
	.long	0xee
	.uleb128 0x23
	.string	"__i"
	.byte	0x1
	.value	0x22b
	.long	0xee
	.byte	0x0
	.uleb128 0x1f
	.string	"__u"
	.byte	0x1
	.value	0x22b
	.long	0x1189
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x0
	.uleb128 0x14
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x1f
	.string	"cif_file"
	.byte	0x1
	.value	0x23d
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x121b
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x21
	.long	0x120a
	.byte	0x4
	.byte	0x1
	.value	0x2ac
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x2ac
	.long	0xee
	.uleb128 0x23
	.string	"__i"
	.byte	0x1
	.value	0x2ac
	.long	0xee
	.byte	0x0
	.uleb128 0x1f
	.string	"__u"
	.byte	0x1
	.value	0x2ac
	.long	0x11e8
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x0
	.uleb128 0x14
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x21
	.long	0x1246
	.byte	0x4
	.byte	0x1
	.value	0x2ad
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x2ad
	.long	0xee
	.uleb128 0x23
	.string	"__i"
	.byte	0x1
	.value	0x2ad
	.long	0xee
	.byte	0x0
	.uleb128 0x1f
	.string	"__u"
	.byte	0x1
	.value	0x2ad
	.long	0x1224
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x7f1
	.uleb128 0xb
	.long	0x753
	.uleb128 0x1d
	.long	0x1292
	.byte	0x1
	.string	"handler"
	.byte	0x1
	.value	0x2d0
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1e
	.string	"sig"
	.byte	0x1
	.value	0x2cf
	.long	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.string	"catch_signals"
	.byte	0x1
	.value	0x2d9
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x25
	.string	"init_time"
	.byte	0x1
	.value	0x2ff
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x26
	.long	0x1352
	.string	"print_time"
	.byte	0x1
	.value	0x306
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x1e
	.string	"phase"
	.byte	0x1
	.value	0x305
	.long	0x22a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"time1"
	.byte	0x1
	.value	0x307
	.long	0x56c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"wtime"
	.byte	0x1
	.value	0x307
	.long	0x56c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"utime"
	.byte	0x1
	.value	0x308
	.long	0x1352
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"stime"
	.byte	0x1
	.value	0x308
	.long	0x1352
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"tm1"
	.byte	0x1
	.value	0x309
	.long	0x6f4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x13
	.string	"ran_twice"
	.byte	0x1
	.byte	0x50
	.long	0x753
	.byte	0x5
	.byte	0x3
	.long	ran_twice
	.uleb128 0x13
	.string	"f90_fe_status"
	.byte	0x1
	.byte	0x51
	.long	0xee
	.byte	0x5
	.byte	0x3
	.long	f90_fe_status
	.uleb128 0x13
	.string	"f90_fe_name"
	.byte	0x1
	.byte	0x52
	.long	0x22a
	.byte	0x5
	.byte	0x3
	.long	f90_fe_name
	.uleb128 0x13
	.string	"Pipe"
	.byte	0x1
	.byte	0x5b
	.long	0x1cb
	.byte	0x5
	.byte	0x3
	.long	Pipe
	.uleb128 0x27
	.string	"stdin"
	.byte	0x2
	.byte	0x8e
	.long	0x531
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"stdout"
	.byte	0x2
	.byte	0x8f
	.long	0x531
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"stderr"
	.byte	0x2
	.byte	0x90
	.long	0x531
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"show_but_not_run"
	.byte	0x1
	.byte	0x49
	.long	0x753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	show_but_not_run
	.uleb128 0x28
	.string	"show_flag"
	.byte	0x1
	.byte	0x48
	.long	0x753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	show_flag
	.uleb128 0x28
	.string	"execute_flag"
	.byte	0x1
	.byte	0x4a
	.long	0x753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	execute_flag
	.uleb128 0x28
	.string	"time_flag"
	.byte	0x1
	.byte	0x4b
	.long	0x753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_flag
	.uleb128 0x28
	.string	"run_m4"
	.byte	0x1
	.byte	0x4f
	.long	0x753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	run_m4
	.uleb128 0x28
	.string	"prelink_flag"
	.byte	0x1
	.byte	0x4c
	.long	0x753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prelink_flag
	.uleb128 0x28
	.string	"quiet_flag"
	.byte	0x1
	.byte	0x4d
	.long	0x753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	quiet_flag
	.uleb128 0x27
	.string	"internal_error_occurred"
	.byte	0xd
	.byte	0x2c
	.long	0xee
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"program_name"
	.byte	0xd
	.byte	0x2f
	.long	0x22a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"source_file"
	.byte	0xe
	.byte	0x2a
	.long	0x22a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"prof_file"
	.byte	0xe
	.byte	0x2e
	.long	0x22a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"fb_file"
	.byte	0xe
	.byte	0x2f
	.long	0x22a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"keep_listing"
	.byte	0xe
	.byte	0x44
	.long	0x753
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"ld_library_path"
	.byte	0xe
	.byte	0x52
	.long	0x22a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"ld_libraryn32_path"
	.byte	0xe
	.byte	0x53
	.long	0x22a
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"dump_outfile_to_stdout"
	.byte	0xe
	.byte	0x57
	.long	0x753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_outfile_to_stdout
	.uleb128 0x29
	.string	"inline_t"
	.byte	0x1
	.value	0x22c
	.long	0xee
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"memory_flag"
	.byte	0x1
	.byte	0x4e
	.long	0xee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	memory_flag
	.uleb128 0x2a
	.string	"time0"
	.byte	0x1
	.value	0x2fa
	.long	0x56c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time0
	.uleb128 0x2a
	.string	"tm0"
	.byte	0x1
	.value	0x2fb
	.long	0x6f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tm0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x17
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
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x17
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
	.uleb128 0x22
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x115
	.value	0x2
	.long	.Ldebug_info0
	.long	0x15d1
	.long	0xabb
	.string	"run_simple_program"
	.long	0xd75
	.string	"get_binutils_lib_path"
	.long	0xdda
	.string	"run_phase"
	.long	0x1264
	.string	"handler"
	.long	0x1292
	.string	"catch_signals"
	.long	0x13e8
	.string	"show_but_not_run"
	.long	0x1407
	.string	"show_flag"
	.long	0x141f
	.string	"execute_flag"
	.long	0x143a
	.string	"time_flag"
	.long	0x1452
	.string	"run_m4"
	.long	0x1467
	.string	"prelink_flag"
	.long	0x1482
	.string	"quiet_flag"
	.long	0x1556
	.string	"dump_outfile_to_stdout"
	.long	0x158e
	.string	"memory_flag"
	.long	0x15a8
	.string	"time0"
	.long	0x15bd
	.string	"tm0"
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
	.string	"waitstatus"
.LASF3:
	.string	"__in"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
