	.file	"strsignal.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"SIGHUP"
.LC1:
	.string	"SIGINT"
.LC2:
	.string	"SIGQUIT"
.LC3:
	.string	"SIGILL"
.LC4:
	.string	"SIGTRAP"
.LC5:
	.string	"SIGIOT"
.LC6:
	.string	"SIGABRT"
.LC7:
	.string	"SIGFPE"
.LC8:
	.string	"SIGKILL"
.LC9:
	.string	"SIGBUS"
.LC10:
	.string	"SIGSEGV"
.LC11:
	.string	"SIGSYS"
.LC12:
	.string	"SIGPIPE"
.LC13:
	.string	"SIGALRM"
.LC14:
	.string	"SIGTERM"
.LC15:
	.string	"SIGUSR1"
.LC16:
	.string	"SIGUSR2"
.LC17:
	.string	"SIGCLD"
.LC18:
	.string	"SIGCHLD"
.LC19:
	.string	"SIGPWR"
.LC20:
	.string	"SIGWINCH"
.LC21:
	.string	"SIGURG"
.LC22:
	.string	"SIGIO"
.LC23:
	.string	"SIGPOLL"
.LC24:
	.string	"SIGSTOP"
.LC25:
	.string	"SIGTSTP"
.LC26:
	.string	"SIGCONT"
.LC27:
	.string	"SIGTTIN"
.LC28:
	.string	"SIGTTOU"
.LC29:
	.string	"SIGVTALRM"
.LC30:
	.string	"SIGPROF"
.LC31:
	.string	"SIGXCPU"
.LC32:
	.string	"SIGXFSZ"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	signal_table, @object
	.size	signal_table, 272
signal_table:
	.long	1
	.long	.LC0
	.long	2
	.long	.LC1
	.long	3
	.long	.LC2
	.long	4
	.long	.LC3
	.long	5
	.long	.LC4
	.long	6
	.long	.LC5
	.long	6
	.long	.LC6
	.long	8
	.long	.LC7
	.long	9
	.long	.LC8
	.long	7
	.long	.LC9
	.long	11
	.long	.LC10
	.long	31
	.long	.LC11
	.long	13
	.long	.LC12
	.long	14
	.long	.LC13
	.long	15
	.long	.LC14
	.long	10
	.long	.LC15
	.long	12
	.long	.LC16
	.long	17
	.long	.LC17
	.long	17
	.long	.LC18
	.long	30
	.long	.LC19
	.long	28
	.long	.LC20
	.long	23
	.long	.LC21
	.long	29
	.long	.LC22
	.long	29
	.long	.LC23
	.long	19
	.long	.LC24
	.long	20
	.long	.LC25
	.long	18
	.long	.LC26
	.long	21
	.long	.LC27
	.long	22
	.long	.LC28
	.long	26
	.long	.LC29
	.long	27
	.long	.LC30
	.long	24
	.long	.LC31
	.long	25
	.long	.LC32
	.long	0
	.long	0
	.local	num_signal_names
	.comm	num_signal_names,4,4
	.data
	.align 4
	.type	sys_nsig, @object
	.size	sys_nsig, 4
sys_nsig:
	.long	65
	.text
	.type	init_signal_tables, @function
init_signal_tables:
.LFB5:
	.file 1 "../../libiberty/strsignal.c"
	.loc 1 293 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$32, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 300 0
	movl	num_signal_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 302 0
	leal	signal_table@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L4
.L5:
	.loc 1 304 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	num_signal_names@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jl	.L6
	.loc 1 306 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, num_signal_names@GOTOFF(%ebx)
.L6:
	.loc 1 302 0
	addl	$8, -16(%ebp)
.L4:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L5
.L2:
	.loc 1 314 0
	movl	signal_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L13
	.loc 1 316 0
	movl	num_signal_names@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, -12(%ebp)
	.loc 1 317 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, signal_names@GOTOFF(%ebx)
	movl	signal_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L13
	.loc 1 319 0
	movl	-12(%ebp), %edx
	movl	signal_names@GOTOFF(%ebx), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 320 0
	leal	signal_table@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L11
.L12:
	.loc 1 322 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	signal_names@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 320 0
	addl	$8, -16(%ebp)
.L11:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L12
.L13:
	.loc 1 348 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	init_signal_tables, .-init_signal_tables
.globl signo_max
	.type	signo_max, @function
signo_max:
.LFB6:
	.loc 1 374 0
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
	.loc 1 377 0
	movl	signal_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L15
	.loc 1 379 0
	call	init_signal_tables
.L15:
	.loc 1 381 0
	movl	num_signal_names@GOTOFF(%ebx), %eax
	movl	sys_nsig@GOTOFF(%ebx), %edx
	movl	%edx, -24(%ebp)
	movl	%eax, -28(%ebp)
	movl	-24(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jge	.L17
	movl	-24(%ebp), %edx
	movl	%edx, -28(%ebp)
.L17:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 382 0
	movl	-8(%ebp), %eax
	subl	$1, %eax
	.loc 1 383 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	signo_max, .-signo_max
	.local	buf.3283
	.comm	buf.3283,32,32
	.section	.rodata
.LC33:
	.string	"Signal %d"
	.text
.globl strsigno
	.type	strsigno, @function
strsigno:
.LFB7:
	.loc 1 475 0
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
	.loc 1 479 0
	movl	signal_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L20
	.loc 1 481 0
	call	init_signal_tables
.L20:
	.loc 1 484 0
	cmpl	$0, 8(%ebp)
	js	.L22
	movl	num_signal_names@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jl	.L24
.L22:
	.loc 1 487 0
	movl	$0, -8(%ebp)
	.loc 1 484 0
	jmp	.L25
.L24:
	.loc 1 489 0
	movl	signal_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L26
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	signal_names@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L28
.L26:
	.loc 1 492 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	buf.3283@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 493 0
	leal	buf.3283@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 489 0
	jmp	.L25
.L28:
	.loc 1 498 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	signal_names@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L25:
	.loc 1 501 0
	movl	-8(%ebp), %eax
	.loc 1 502 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	strsigno, .-strsigno
.globl strtosigno
	.type	strtosigno, @function
strtosigno:
.LFB8:
	.loc 1 519 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$36, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 520 0
	movl	$0, -8(%ebp)
	.loc 1 522 0
	cmpl	$0, 8(%ebp)
	je	.L31
	.loc 1 524 0
	movl	signal_names@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L33
	.loc 1 526 0
	call	init_signal_tables
.L33:
	.loc 1 528 0
	movl	$0, -8(%ebp)
	jmp	.L35
.L36:
	.loc 1 530 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	signal_names@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L37
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	signal_names@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L39
.L37:
	.loc 1 528 0
	addl	$1, -8(%ebp)
.L35:
	movl	num_signal_names@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L36
.L39:
	.loc 1 536 0
	movl	num_signal_names@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L31
	.loc 1 538 0
	movl	$0, -8(%ebp)
.L31:
	.loc 1 541 0
	movl	-8(%ebp), %eax
	.loc 1 542 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	strtosigno, .-strtosigno
	.local	signal_names
	.comm	signal_names,4,4
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
	.section	.debug_info
	.long	0x34a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/strsignal.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"int"
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
	.uleb128 0x4
	.byte	0x4
	.long	0x14c
	.uleb128 0x5
	.long	0xa8
	.uleb128 0x4
	.byte	0x4
	.long	0x146
	.uleb128 0x6
	.long	0x167
	.long	0xa8
	.uleb128 0x7
	.long	0x13f
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.long	0x9a
	.uleb128 0x8
	.long	0x1a0
	.string	"signal_info"
	.byte	0x8
	.byte	0x1
	.byte	0x45
	.uleb128 0x9
	.string	"value"
	.byte	0x1
	.byte	0x46
	.long	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"name"
	.byte	0x1
	.byte	0x47
	.long	0x1a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.long	0x146
	.uleb128 0xa
	.long	0x1ef
	.string	"init_signal_tables"
	.byte	0x1
	.value	0x125
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xb
	.string	"eip"
	.byte	0x1
	.value	0x126
	.long	0x1ef
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"nbytes"
	.byte	0x1
	.value	0x127
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x4
	.byte	0x4
	.long	0x1f5
	.uleb128 0x5
	.long	0x16c
	.uleb128 0xc
	.long	0x232
	.byte	0x1
	.string	"signo_max"
	.byte	0x1
	.value	0x176
	.byte	0x1
	.long	0x9a
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0xb
	.string	"maxsize"
	.byte	0x1
	.value	0x177
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xc
	.long	0x289
	.byte	0x1
	.string	"strsigno"
	.byte	0x1
	.value	0x1db
	.byte	0x1
	.long	0x146
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0xd
	.string	"signo"
	.byte	0x1
	.value	0x1da
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"name"
	.byte	0x1
	.value	0x1dc
	.long	0x146
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.value	0x1dd
	.long	0x157
	.byte	0x5
	.byte	0x3
	.long	buf.3283
	.byte	0x0
	.uleb128 0xc
	.long	0x2d0
	.byte	0x1
	.string	"strtosigno"
	.byte	0x1
	.value	0x207
	.byte	0x1
	.long	0x9a
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0xd
	.string	"name"
	.byte	0x1
	.value	0x206
	.long	0x146
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"signo"
	.byte	0x1
	.value	0x208
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.long	0x2e0
	.long	0x16c
	.uleb128 0x7
	.long	0x13f
	.byte	0x21
	.byte	0x0
	.uleb128 0xe
	.string	"signal_table"
	.byte	0x1
	.byte	0x53
	.long	0x2fa
	.byte	0x5
	.byte	0x3
	.long	signal_table
	.uleb128 0x5
	.long	0x2d0
	.uleb128 0xe
	.string	"signal_names"
	.byte	0x1
	.byte	0xe9
	.long	0x151
	.byte	0x5
	.byte	0x3
	.long	signal_names
	.uleb128 0xe
	.string	"num_signal_names"
	.byte	0x1
	.byte	0xea
	.long	0x9a
	.byte	0x5
	.byte	0x3
	.long	num_signal_names
	.uleb128 0xe
	.string	"sys_nsig"
	.byte	0x1
	.byte	0xfc
	.long	0x9a
	.byte	0x5
	.byte	0x3
	.long	sys_nsig
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x38
	.value	0x2
	.long	.Ldebug_info0
	.long	0x34e
	.long	0x1fa
	.string	"signo_max"
	.long	0x232
	.string	"strsigno"
	.long	0x289
	.string	"strtosigno"
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
