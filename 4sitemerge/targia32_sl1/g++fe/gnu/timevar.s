	.file	"timevar.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	get_time, @function
get_time:
.LFB15:
	.file 1 "../../../kg++fe/gnu/timevar.c"
	.loc 1 195 0
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
	.loc 1 196 0
	movl	8(%ebp), %edx
	movl	$0x00000000, %eax
	movl	%eax, (%edx)
	.loc 1 197 0
	movl	8(%ebp), %edx
	movl	$0x00000000, %eax
	movl	%eax, 4(%edx)
	.loc 1 198 0
	movl	8(%ebp), %edx
	movl	$0x00000000, %eax
	movl	%eax, 8(%edx)
	.loc 1 200 0
	movl	time_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L4
.LBB2:
	.loc 1 206 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	times@PLT
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	flds	ticks_to_msec@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	8(%eax)
	.loc 1 207 0
	movl	-20(%ebp), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	flds	ticks_to_msec@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	(%eax)
	.loc 1 208 0
	movl	-16(%ebp), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	flds	ticks_to_msec@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	4(%eax)
.L4:
.LBE2:
	.loc 1 220 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	get_time, .-get_time
	.type	timevar_accumulate, @function
timevar_accumulate:
.LFB16:
	.loc 1 229 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	.loc 1 230 0
	movl	8(%ebp), %eax
	flds	(%eax)
	movl	16(%ebp), %eax
	flds	(%eax)
	movl	12(%ebp), %eax
	flds	(%eax)
	fsubrp	%st, %st(1)
	faddp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	(%eax)
	.loc 1 231 0
	movl	8(%ebp), %eax
	flds	4(%eax)
	movl	16(%ebp), %eax
	flds	4(%eax)
	movl	12(%ebp), %eax
	flds	4(%eax)
	fsubrp	%st, %st(1)
	faddp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	4(%eax)
	.loc 1 232 0
	movl	8(%ebp), %eax
	flds	8(%eax)
	movl	16(%ebp), %eax
	flds	8(%eax)
	movl	12(%ebp), %eax
	flds	8(%eax)
	fsubrp	%st, %st(1)
	faddp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	8(%eax)
	.loc 1 233 0
	popl	%ebp
	ret
.LFE16:
	.size	timevar_accumulate, .-timevar_accumulate
	.section	.rodata
.LC1:
	.string	"total time"
.LC2:
	.string	"garbage collection"
.LC3:
	.string	"dump files"
.LC4:
	.string	"cfg construction"
.LC5:
	.string	"cfg cleanup"
.LC6:
	.string	"trivially dead code"
.LC7:
	.string	"life analysis"
.LC8:
	.string	"life info update"
.LC9:
	.string	"preprocessing"
.LC10:
	.string	"lexical analysis"
.LC11:
	.string	"parser"
.LC12:
	.string	"name lookup"
.LC13:
	.string	"overload resolution"
.LC14:
	.string	"template instantiation"
.LC15:
	.string	"expand"
.LC16:
	.string	"varconst"
.LC17:
	.string	"integration"
.LC18:
	.string	"jump"
.LC19:
	.string	"CSE"
.LC20:
	.string	"global CSE"
.LC21:
	.string	"loop analysis"
.LC22:
	.string	"tracer"
.LC23:
	.string	"CSE 2"
.LC24:
	.string	"branch prediction"
.LC25:
	.string	"flow analysis"
.LC26:
	.string	"combiner"
.LC27:
	.string	"if-conversion"
.LC28:
	.string	"regmove"
.LC29:
	.string	"mode switching"
.LC30:
	.string	"scheduling"
.LC31:
	.string	"local alloc"
.LC32:
	.string	"global alloc"
.LC33:
	.string	"reload CSE regs"
.LC34:
	.string	"flow 2"
.LC35:
	.string	"if-conversion 2"
.LC36:
	.string	"peephole 2"
.LC37:
	.string	"rename registers"
.LC38:
	.string	"scheduling 2"
.LC39:
	.string	"machine dep reorg"
.LC40:
	.string	"delay branch sched"
.LC41:
	.string	"reorder blocks"
.LC42:
	.string	"shorten branches"
.LC43:
	.string	"reg stack"
.LC44:
	.string	"convert to SSA"
.LC45:
	.string	"SSA CCP"
.LC46:
	.string	"SSA aggressive DCE"
.LC47:
	.string	"convert from SSA"
.LC48:
	.string	"final"
.LC49:
	.string	"symout"
.LC50:
	.string	"rest of compilation"
	.text
.globl init_timevar
	.type	init_timevar, @function
init_timevar:
.LFB17:
	.loc 1 239 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$20, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 240 0
	movl	time_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L10
	.loc 1 244 0
	leal	timevars@GOTOFF(%ebx), %edx
	movl	$1600, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.file 2 "../../../kg++fe/gnu/timevar.def"
	.loc 2 34 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 24+timevars@GOTOFF(%ebx)
	.loc 2 37 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 56+timevars@GOTOFF(%ebx)
	.loc 2 40 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 88+timevars@GOTOFF(%ebx)
	.loc 2 43 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 120+timevars@GOTOFF(%ebx)
	.loc 2 45 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 152+timevars@GOTOFF(%ebx)
	.loc 2 46 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 184+timevars@GOTOFF(%ebx)
	.loc 2 48 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 216+timevars@GOTOFF(%ebx)
	.loc 2 49 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 248+timevars@GOTOFF(%ebx)
	.loc 2 51 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 280+timevars@GOTOFF(%ebx)
	.loc 2 52 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 312+timevars@GOTOFF(%ebx)
	.loc 2 53 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 344+timevars@GOTOFF(%ebx)
	.loc 2 54 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 376+timevars@GOTOFF(%ebx)
	.loc 2 55 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 408+timevars@GOTOFF(%ebx)
	.loc 2 56 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 440+timevars@GOTOFF(%ebx)
	.loc 2 57 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 472+timevars@GOTOFF(%ebx)
	.loc 2 58 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 504+timevars@GOTOFF(%ebx)
	.loc 2 59 0
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 536+timevars@GOTOFF(%ebx)
	.loc 2 60 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 568+timevars@GOTOFF(%ebx)
	.loc 2 61 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 600+timevars@GOTOFF(%ebx)
	.loc 2 62 0
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 632+timevars@GOTOFF(%ebx)
	.loc 2 63 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 664+timevars@GOTOFF(%ebx)
	.loc 2 64 0
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 696+timevars@GOTOFF(%ebx)
	.loc 2 65 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 728+timevars@GOTOFF(%ebx)
	.loc 2 66 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 760+timevars@GOTOFF(%ebx)
	.loc 2 67 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 792+timevars@GOTOFF(%ebx)
	.loc 2 68 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 824+timevars@GOTOFF(%ebx)
	.loc 2 69 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 856+timevars@GOTOFF(%ebx)
	.loc 2 70 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 888+timevars@GOTOFF(%ebx)
	.loc 2 71 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 920+timevars@GOTOFF(%ebx)
	.loc 2 72 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, 952+timevars@GOTOFF(%ebx)
	.loc 2 73 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 984+timevars@GOTOFF(%ebx)
	.loc 2 74 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 1016+timevars@GOTOFF(%ebx)
	.loc 2 75 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 1048+timevars@GOTOFF(%ebx)
	.loc 2 76 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 1080+timevars@GOTOFF(%ebx)
	.loc 2 77 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 1112+timevars@GOTOFF(%ebx)
	.loc 2 78 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 1144+timevars@GOTOFF(%ebx)
	.loc 2 79 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 1176+timevars@GOTOFF(%ebx)
	.loc 2 80 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 1208+timevars@GOTOFF(%ebx)
	.loc 2 81 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 1240+timevars@GOTOFF(%ebx)
	.loc 2 82 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 1272+timevars@GOTOFF(%ebx)
	.loc 2 83 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 1304+timevars@GOTOFF(%ebx)
	.loc 2 84 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 1336+timevars@GOTOFF(%ebx)
	.loc 2 85 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 1368+timevars@GOTOFF(%ebx)
	.loc 2 86 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 1400+timevars@GOTOFF(%ebx)
	.loc 2 87 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 1432+timevars@GOTOFF(%ebx)
	.loc 2 88 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 1464+timevars@GOTOFF(%ebx)
	.loc 2 89 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 1496+timevars@GOTOFF(%ebx)
	.loc 2 90 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 1528+timevars@GOTOFF(%ebx)
	.loc 2 91 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, 1560+timevars@GOTOFF(%ebx)
	.loc 2 94 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 1592+timevars@GOTOFF(%ebx)
	.loc 1 253 0
	movl	$2, (%esp)
	call	sysconf@PLT
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fld1
	fdivp	%st, %st(1)
	fstps	ticks_to_msec@GOTOFF(%ebx)
.L10:
	.loc 1 258 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	init_timevar, .-init_timevar
	.section	.rodata
	.type	__FUNCTION__.8395, @object
	.size	__FUNCTION__.8395, 13
__FUNCTION__.8395:
	.string	"timevar_push"
.LC52:
	.string	"../../../kg++fe/gnu/timevar.c"
	.text
.globl timevar_push
	.type	timevar_push, @function
timevar_push:
.LFB18:
	.loc 1 270 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$52, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 271 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	leal	timevars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 275 0
	movl	time_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L21
	.loc 1 279 0
	movl	-12(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$2, %eax
	movb	%al, 28(%edx)
	.loc 1 282 0
	movl	-12(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L14
	.loc 1 283 0
	leal	__FUNCTION__.8395@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$283, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L14:
	.loc 1 286 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	get_time
	.loc 1 290 0
	movl	stack@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L16
	.loc 1 291 0
	movl	stack@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	start_time@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	timevar_accumulate
.L16:
	.loc 1 295 0
	movl	-24(%ebp), %eax
	movl	%eax, start_time@GOTOFF(%ebx)
	movl	-20(%ebp), %eax
	movl	%eax, 4+start_time@GOTOFF(%ebx)
	movl	-16(%ebp), %eax
	movl	%eax, 8+start_time@GOTOFF(%ebx)
	.loc 1 299 0
	movl	unused_stack_instances@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L18
	.loc 1 301 0
	movl	unused_stack_instances@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 302 0
	movl	unused_stack_instances@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, unused_stack_instances@GOTOFF(%ebx)
	jmp	.L20
.L18:
	.loc 1 305 0
	movl	$8, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
.L20:
	.loc 1 309 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 310 0
	movl	stack@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 311 0
	movl	-8(%ebp), %eax
	movl	%eax, stack@GOTOFF(%ebx)
.L21:
	.loc 1 312 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	timevar_push, .-timevar_push
	.section	.rodata
	.type	__FUNCTION__.8424, @object
	.size	__FUNCTION__.8424, 12
__FUNCTION__.8424:
	.string	"timevar_pop"
	.align 4
.LC53:
	.string	"cannot timevar_pop '%s' when top of timevars stack is '%s'"
	.text
.globl timevar_pop
	.type	timevar_pop, @function
timevar_pop:
.LFB19:
	.loc 1 323 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$36, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 325 0
	movl	stack@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 327 0
	movl	time_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L27
	.loc 1 330 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	leal	timevars@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	stack@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L25
	.loc 1 332 0
	movl	stack@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %ecx
	movl	8(%ebp), %eax
	leal	8+timevars@GOTOFF(%ebx), %edx
	sall	$5, %eax
	addl	%edx, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	.loc 1 334 0
	leal	__FUNCTION__.8424@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$334, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L25:
	.loc 1 338 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_time
	.loc 1 341 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	start_time@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	timevar_accumulate
	.loc 1 345 0
	movl	-20(%ebp), %eax
	movl	%eax, start_time@GOTOFF(%ebx)
	movl	-16(%ebp), %eax
	movl	%eax, 4+start_time@GOTOFF(%ebx)
	movl	-12(%ebp), %eax
	movl	%eax, 8+start_time@GOTOFF(%ebx)
	.loc 1 348 0
	movl	stack@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, stack@GOTOFF(%ebx)
	.loc 1 352 0
	movl	unused_stack_instances@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 353 0
	movl	-8(%ebp), %eax
	movl	%eax, unused_stack_instances@GOTOFF(%ebx)
.L27:
	.loc 1 354 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	timevar_pop, .-timevar_pop
	.section	.rodata
	.type	__FUNCTION__.8449, @object
	.size	__FUNCTION__.8449, 14
__FUNCTION__.8449:
	.string	"timevar_start"
	.text
.globl timevar_start
	.type	timevar_start, @function
timevar_start:
.LFB20:
	.loc 1 363 0
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
	.loc 1 364 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	leal	timevars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 366 0
	movl	time_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 370 0
	movl	-8(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$2, %eax
	movb	%al, 28(%edx)
	.loc 1 374 0
	movl	-8(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L31
	.loc 1 375 0
	leal	__FUNCTION__.8449@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$375, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L31:
	.loc 1 376 0
	movl	-8(%ebp), %edx
	movzbl	28(%edx), %eax
	orl	$1, %eax
	movb	%al, 28(%edx)
	.loc 1 378 0
	movl	-8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	get_time
.L33:
	.loc 1 379 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	timevar_start, .-timevar_start
	.section	.rodata
	.type	__FUNCTION__.8465, @object
	.size	__FUNCTION__.8465, 13
__FUNCTION__.8465:
	.string	"timevar_stop"
	.text
.globl timevar_stop
	.type	timevar_stop, @function
timevar_stop:
.LFB21:
	.loc 1 387 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$36, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 388 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	leal	timevars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 391 0
	movl	time_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L39
	.loc 1 395 0
	movl	-8(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L37
	.loc 1 396 0
	leal	__FUNCTION__.8465@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$396, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L37:
	.loc 1 398 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_time
	.loc 1 399 0
	movl	-8(%ebp), %edx
	addl	$12, %edx
	movl	-8(%ebp), %ecx
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	timevar_accumulate
.L39:
	.loc 1 400 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	timevar_stop, .-timevar_stop
.globl timevar_get
	.type	timevar_get, @function
timevar_get:
.LFB22:
	.loc 1 409 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$36, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 410 0
	movl	8(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	leal	timevars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 413 0
	movl	12(%ebp), %ecx
	movl	-8(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	.loc 1 416 0
	movl	-8(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L41
	.loc 1 418 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_time
	.loc 1 419 0
	movl	-8(%ebp), %edx
	addl	$12, %edx
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	timevar_accumulate
	jmp	.L45
.L41:
	.loc 1 422 0
	movl	stack@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L45
	.loc 1 424 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_time
	.loc 1 425 0
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	start_time@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	timevar_accumulate
.L45:
	.loc 1 427 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	timevar_get, .-timevar_get
	.section	.rodata
.LC54:
	.string	"\nExecution times (seconds)\n"
.LC56:
	.string	" %-22s:"
.LC60:
	.string	"%7.2f (%2.0f%%) usr"
.LC61:
	.string	"%7.2f (%2.0f%%) sys"
.LC62:
	.string	"%7.2f (%2.0f%%) wall"
.LC63:
	.string	" TOTAL                 :"
.LC64:
	.string	"%7.2f          "
.LC65:
	.string	"%7.2f\n"
	.align 4
.LC59:
	.long	1120403456
	.text
.globl timevar_print
	.type	timevar_print, @function
timevar_print:
.LFB23:
	.loc 1 436 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$84, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 440 0
	leal	timevars@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 443 0
	movl	time_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L76
	.loc 1 448 0
	cmpl	$0, 8(%ebp)
	jne	.L49
	.loc 1 449 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L49:
	.loc 1 452 0
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_time
	.loc 1 456 0
	movl	stack@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L51
	.loc 1 457 0
	movl	stack@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	start_time@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	timevar_accumulate
.L51:
	.loc 1 461 0
	movl	-36(%ebp), %eax
	movl	%eax, start_time@GOTOFF(%ebx)
	movl	-32(%ebp), %eax
	movl	%eax, 4+start_time@GOTOFF(%ebx)
	movl	-28(%ebp), %eax
	movl	%eax, 8+start_time@GOTOFF(%ebx)
	.loc 1 463 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 464 0
	movl	$0, -24(%ebp)
	jmp	.L53
.L54:
.LBB3:
	.loc 1 466 0
	movl	-24(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	leal	timevars@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 467 0
	movl	$0x3ba3d70a, %eax
	movl	%eax, -12(%ebp)
	.loc 1 471 0
	cmpl	$0, -24(%ebp)
	je	.L55
	.loc 1 475 0
	movl	-16(%ebp), %eax
	movzbl	28(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L55
	.loc 1 480 0
	movl	-16(%ebp), %eax
	flds	(%eax)
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L60
	jmp	.L58
.L60:
	movl	-16(%ebp), %eax
	flds	4(%eax)
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L62
	jmp	.L58
.L62:
	movl	-16(%ebp), %eax
	flds	8(%eax)
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L55
.L58:
	.loc 1 486 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 490 0
	movl	-20(%ebp), %eax
	flds	(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jp	.L79
	je	.L65
.L79:
	jmp	.L63
.L65:
	fldz
	fstpl	-64(%ebp)
	jmp	.L66
.L63:
	movl	-16(%ebp), %eax
	flds	(%eax)
	movl	-20(%ebp), %eax
	flds	(%eax)
	fdivrp	%st, %st(1)
	flds	.LC59@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fstpl	-64(%ebp)
.L66:
	movl	-16(%ebp), %eax
	flds	(%eax)
	fldl	-64(%ebp)
	fstpl	16(%esp)
	fstpl	8(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 497 0
	movl	-20(%ebp), %eax
	flds	4(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jp	.L78
	je	.L69
.L78:
	jmp	.L67
.L69:
	fldz
	fstpl	-56(%ebp)
	jmp	.L70
.L67:
	movl	-16(%ebp), %eax
	flds	4(%eax)
	movl	-20(%ebp), %eax
	flds	4(%eax)
	fdivrp	%st, %st(1)
	flds	.LC59@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fstpl	-56(%ebp)
.L70:
	movl	-16(%ebp), %eax
	flds	4(%eax)
	fldl	-56(%ebp)
	fstpl	16(%esp)
	fstpl	8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 504 0
	movl	-20(%ebp), %eax
	flds	8(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jp	.L77
	je	.L73
.L77:
	jmp	.L71
.L73:
	fldz
	fstpl	-48(%ebp)
	jmp	.L74
.L71:
	movl	-16(%ebp), %eax
	flds	8(%eax)
	movl	-20(%ebp), %eax
	flds	8(%eax)
	fdivrp	%st, %st(1)
	flds	.LC59@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fstpl	-48(%ebp)
.L74:
	movl	-16(%ebp), %eax
	flds	8(%eax)
	fldl	-48(%ebp)
	fstpl	16(%esp)
	fstpl	8(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 509 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L55:
.LBE3:
	.loc 1 464 0
	addl	$1, -24(%ebp)
.L53:
	cmpl	$49, -24(%ebp)
	jbe	.L54
	.loc 1 513 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 515 0
	movl	-20(%ebp), %eax
	flds	(%eax)
	fstpl	8(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 518 0
	movl	-20(%ebp), %eax
	flds	4(%eax)
	fstpl	8(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 521 0
	movl	-20(%ebp), %eax
	flds	8(%eax)
	fstpl	8(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L76:
	.loc 1 526 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	timevar_print, .-timevar_print
.globl get_run_time
	.type	get_run_time, @function
get_run_time:
.LFB24:
	.loc 1 533 0
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
	.loc 1 535 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	timevar_get@PLT
	.loc 1 536 0
	flds	-16(%ebp)
	flds	-12(%ebp)
	faddp	%st, %st(1)
	fnstcw	-22(%ebp)
	movzwl	-22(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -24(%ebp)
	fldcw	-24(%ebp)
	fistpl	-28(%ebp)
	fldcw	-22(%ebp)
	movl	-28(%ebp), %eax
	.loc 1 537 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	get_run_time, .-get_run_time
	.section	.rodata
	.align 4
.LC68:
	.string	"time in %s: %ld.%06ld (%ld%%)\n"
	.align 8
.LC66:
	.long	0
	.long	1079574528
	.align 8
.LC67:
	.long	0
	.long	1071644672
	.text
.globl print_time
	.type	print_time, @function
print_time:
.LFB25:
	.loc 1 546 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$64, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 547 0
	call	get_run_time@PLT
	movl	%eax, -12(%ebp)
	.loc 1 548 0
	cmpl	$0, -12(%ebp)
	je	.L83
	fildl	12(%ebp)
	fldl	.LC66@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fildl	-12(%ebp)
	fdivrp	%st, %st(1)
	fldl	.LC67@GOTOFF(%ebx)
	faddp	%st, %st(1)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-40(%ebp)
	fldcw	-26(%ebp)
	jmp	.L85
.L83:
	movl	$0, -40(%ebp)
.L85:
	movl	12(%ebp), %ecx
	movl	$1125899907, -44(%ebp)
	movl	-44(%ebp), %eax
	imull	%ecx
	sarl	$18, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -36(%ebp)
	imull	$1000000, -36(%ebp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -36(%ebp)
	movl	12(%ebp), %ecx
	movl	$1125899907, -44(%ebp)
	movl	-44(%ebp), %eax
	imull	%ecx
	sarl	$18, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %esi
	movl	%esi, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 553 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	print_time, .-print_time
	.local	ticks_to_msec
	.comm	ticks_to_msec,4,4
	.local	timevars
	.comm	timevars,1600,32
	.local	stack
	.comm	stack,4,4
	.local	unused_stack_instances
	.comm	unused_stack_instances,4,4
	.local	start_time
	.comm	start_time,12,4
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
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI6-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI10-.LFB18
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI14-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI15
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
	.long	.LCFI18-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI22-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI26-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI30-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI34-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI38-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI39
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE20:
	.file 3 "../../../kg++fe/gnu/timevar.h"
	.file 4 "/usr/include/sys/times.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 10 "../../../kg++fe/gnu/flags.h"
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
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI5-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xdd6
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/timevar.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa2
	.uleb128 0x3
	.long	0xa7
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.string	"size_t"
	.byte	0x9
	.byte	0xd6
	.long	0xb6
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
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x6
	.string	"__quad_t"
	.byte	0x6
	.byte	0x3b
	.long	0x12a
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x174
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x155
	.uleb128 0x6
	.string	"__clock_t"
	.byte	0x6
	.byte	0x94
	.long	0x174
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa7
	.uleb128 0x6
	.string	"FILE"
	.byte	0x7
	.byte	0x2e
	.long	0x1b6
	.uleb128 0x8
	.long	0x431
	.long	.LASF1
	.byte	0x94
	.byte	0x7
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x8
	.value	0x10c
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x8
	.value	0x111
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x8
	.value	0x112
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x8
	.value	0x113
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x8
	.value	0x114
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x8
	.value	0x115
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x8
	.value	0x116
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x8
	.value	0x117
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x8
	.value	0x118
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x8
	.value	0x11a
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x8
	.value	0x11b
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x8
	.value	0x11c
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x8
	.value	0x11e
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x8
	.value	0x120
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x8
	.value	0x122
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x8
	.value	0x126
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x8
	.value	0x128
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x8
	.value	0x12c
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x8
	.value	0x12d
	.long	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x8
	.value	0x12e
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x8
	.value	0x132
	.long	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x8
	.value	0x13b
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x8
	.value	0x144
	.long	0x1a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x8
	.value	0x145
	.long	0x1a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x8
	.value	0x146
	.long	0x1a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x8
	.value	0x147
	.long	0x1a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x8
	.value	0x148
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x8
	.value	0x14a
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x8
	.value	0x14c
	.long	0x4a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x8
	.byte	0xb0
	.uleb128 0xb
	.long	0x482
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x8
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x8
	.byte	0xb7
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x8
	.byte	0xb8
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x8
	.byte	0xbc
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x43f
	.uleb128 0x2
	.byte	0x4
	.long	0x1b6
	.uleb128 0xd
	.long	0x49e
	.long	0xa7
	.uleb128 0xe
	.long	0xbd
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x431
	.uleb128 0xd
	.long	0x4b4
	.long	0xa7
	.uleb128 0xe
	.long	0xbd
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.string	"clock_t"
	.byte	0x5
	.byte	0x3d
	.long	0x191
	.uleb128 0xb
	.long	0x522
	.string	"tms"
	.byte	0x10
	.byte	0x4
	.byte	0x24
	.uleb128 0xc
	.string	"tms_utime"
	.byte	0x4
	.byte	0x25
	.long	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"tms_stime"
	.byte	0x4
	.byte	0x26
	.long	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"tms_cutime"
	.byte	0x4
	.byte	0x28
	.long	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"tms_cstime"
	.byte	0x4
	.byte	0x29
	.long	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xb
	.long	0x568
	.string	"timevar_time_def"
	.byte	0xc
	.byte	0x3
	.byte	0x36
	.uleb128 0xc
	.string	"user"
	.byte	0x3
	.byte	0x38
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"sys"
	.byte	0x3
	.byte	0x3c
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"wall"
	.byte	0x3
	.byte	0x3f
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0xf
	.long	0x84a
	.byte	0x4
	.byte	0x3
	.byte	0x48
	.uleb128 0x10
	.string	"TV_TOTAL"
	.sleb128 0
	.uleb128 0x10
	.string	"TV_GC"
	.sleb128 1
	.uleb128 0x10
	.string	"TV_DUMP"
	.sleb128 2
	.uleb128 0x10
	.string	"TV_CFG"
	.sleb128 3
	.uleb128 0x10
	.string	"TV_CLEANUP_CFG"
	.sleb128 4
	.uleb128 0x10
	.string	"TV_DELETE_TRIVIALLY_DEAD"
	.sleb128 5
	.uleb128 0x10
	.string	"TV_LIFE"
	.sleb128 6
	.uleb128 0x10
	.string	"TV_LIFE_UPDATE"
	.sleb128 7
	.uleb128 0x10
	.string	"TV_CPP"
	.sleb128 8
	.uleb128 0x10
	.string	"TV_LEX"
	.sleb128 9
	.uleb128 0x10
	.string	"TV_PARSE"
	.sleb128 10
	.uleb128 0x10
	.string	"TV_NAME_LOOKUP"
	.sleb128 11
	.uleb128 0x10
	.string	"TV_OVERLOAD"
	.sleb128 12
	.uleb128 0x10
	.string	"TV_TEMPLATE_INSTANTIATION"
	.sleb128 13
	.uleb128 0x10
	.string	"TV_EXPAND"
	.sleb128 14
	.uleb128 0x10
	.string	"TV_VARCONST"
	.sleb128 15
	.uleb128 0x10
	.string	"TV_INTEGRATION"
	.sleb128 16
	.uleb128 0x10
	.string	"TV_JUMP"
	.sleb128 17
	.uleb128 0x10
	.string	"TV_CSE"
	.sleb128 18
	.uleb128 0x10
	.string	"TV_GCSE"
	.sleb128 19
	.uleb128 0x10
	.string	"TV_LOOP"
	.sleb128 20
	.uleb128 0x10
	.string	"TV_TRACER"
	.sleb128 21
	.uleb128 0x10
	.string	"TV_CSE2"
	.sleb128 22
	.uleb128 0x10
	.string	"TV_BRANCH_PROB"
	.sleb128 23
	.uleb128 0x10
	.string	"TV_FLOW"
	.sleb128 24
	.uleb128 0x10
	.string	"TV_COMBINE"
	.sleb128 25
	.uleb128 0x10
	.string	"TV_IFCVT"
	.sleb128 26
	.uleb128 0x10
	.string	"TV_REGMOVE"
	.sleb128 27
	.uleb128 0x10
	.string	"TV_MODE_SWITCH"
	.sleb128 28
	.uleb128 0x10
	.string	"TV_SCHED"
	.sleb128 29
	.uleb128 0x10
	.string	"TV_LOCAL_ALLOC"
	.sleb128 30
	.uleb128 0x10
	.string	"TV_GLOBAL_ALLOC"
	.sleb128 31
	.uleb128 0x10
	.string	"TV_RELOAD_CSE_REGS"
	.sleb128 32
	.uleb128 0x10
	.string	"TV_FLOW2"
	.sleb128 33
	.uleb128 0x10
	.string	"TV_IFCVT2"
	.sleb128 34
	.uleb128 0x10
	.string	"TV_PEEPHOLE2"
	.sleb128 35
	.uleb128 0x10
	.string	"TV_RENAME_REGISTERS"
	.sleb128 36
	.uleb128 0x10
	.string	"TV_SCHED2"
	.sleb128 37
	.uleb128 0x10
	.string	"TV_MACH_DEP"
	.sleb128 38
	.uleb128 0x10
	.string	"TV_DBR_SCHED"
	.sleb128 39
	.uleb128 0x10
	.string	"TV_REORDER_BLOCKS"
	.sleb128 40
	.uleb128 0x10
	.string	"TV_SHORTEN_BRANCH"
	.sleb128 41
	.uleb128 0x10
	.string	"TV_REG_STACK"
	.sleb128 42
	.uleb128 0x10
	.string	"TV_TO_SSA"
	.sleb128 43
	.uleb128 0x10
	.string	"TV_SSA_CCP"
	.sleb128 44
	.uleb128 0x10
	.string	"TV_SSA_DCE"
	.sleb128 45
	.uleb128 0x10
	.string	"TV_FROM_SSA"
	.sleb128 46
	.uleb128 0x10
	.string	"TV_FINAL"
	.sleb128 47
	.uleb128 0x10
	.string	"TV_SYMOUT"
	.sleb128 48
	.uleb128 0x10
	.string	"TV_REST_OF_COMPILATION"
	.sleb128 49
	.uleb128 0x10
	.string	"TIMEVAR_LAST"
	.sleb128 50
	.byte	0x0
	.uleb128 0x6
	.string	"timevar_id_t"
	.byte	0x3
	.byte	0x4c
	.long	0x571
	.uleb128 0xb
	.long	0x8cc
	.string	"timevar_def"
	.byte	0x20
	.byte	0x1
	.byte	0x86
	.uleb128 0xc
	.string	"elapsed"
	.byte	0x1
	.byte	0x88
	.long	0x522
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.byte	0x8c
	.long	0x522
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"name"
	.byte	0x1
	.byte	0x8f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"standalone"
	.byte	0x1
	.byte	0x93
	.long	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"used"
	.byte	0x1
	.byte	0x97
	.long	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0xb
	.long	0x904
	.string	"timevar_stack_def"
	.byte	0x8
	.byte	0x1
	.byte	0x9e
	.uleb128 0x11
	.long	.LASF3
	.byte	0x1
	.byte	0xa0
	.long	0x904
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"next"
	.byte	0x1
	.byte	0xa3
	.long	0x90a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x85e
	.uleb128 0x2
	.byte	0x4
	.long	0x8cc
	.uleb128 0x13
	.long	0x954
	.string	"get_time"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x14
	.string	"now"
	.byte	0x1
	.byte	0xc2
	.long	0x954
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x16
	.string	"tms"
	.byte	0x1
	.byte	0xcd
	.long	0x4c3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x522
	.uleb128 0x13
	.long	0x9b4
	.string	"timevar_accumulate"
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x14
	.string	"timer"
	.byte	0x1
	.byte	0xe2
	.long	0x954
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.byte	0xe3
	.long	0x954
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"stop_time"
	.byte	0x1
	.byte	0xe4
	.long	0x954
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.string	"init_timevar"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x19
	.long	0xa45
	.byte	0x1
	.string	"timevar_push"
	.byte	0x1
	.value	0x10e
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.value	0x10d
	.long	0x84a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"tv"
	.byte	0x1
	.value	0x10f
	.long	0x904
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.string	"context"
	.byte	0x1
	.value	0x110
	.long	0x90a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.string	"now"
	.byte	0x1
	.value	0x111
	.long	0x522
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF4
	.long	0xd26
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8395
	.byte	0x0
	.uleb128 0x19
	.long	0xaa8
	.byte	0x1
	.string	"timevar_pop"
	.byte	0x1
	.value	0x143
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.value	0x142
	.long	0x84a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"now"
	.byte	0x1
	.value	0x144
	.long	0x522
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"popped"
	.byte	0x1
	.value	0x145
	.long	0x90a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF4
	.long	0xd21
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8424
	.byte	0x0
	.uleb128 0x19
	.long	0xafa
	.byte	0x1
	.string	"timevar_start"
	.byte	0x1
	.value	0x16b
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.value	0x16a
	.long	0x84a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"tv"
	.byte	0x1
	.value	0x16c
	.long	0x904
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF4
	.long	0xd0c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8449
	.byte	0x0
	.uleb128 0x19
	.long	0xb5a
	.byte	0x1
	.string	"timevar_stop"
	.byte	0x1
	.value	0x183
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.value	0x182
	.long	0x84a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"tv"
	.byte	0x1
	.value	0x184
	.long	0x904
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.string	"now"
	.byte	0x1
	.value	0x185
	.long	0x522
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LASF4
	.long	0xcf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.8465
	.byte	0x0
	.uleb128 0x19
	.long	0xbbc
	.byte	0x1
	.string	"timevar_get"
	.byte	0x1
	.value	0x199
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.value	0x197
	.long	0x84a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"elapsed"
	.byte	0x1
	.value	0x198
	.long	0x954
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"tv"
	.byte	0x1
	.value	0x19a
	.long	0x904
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.string	"now"
	.byte	0x1
	.value	0x19b
	.long	0x522
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x19
	.long	0xc45
	.byte	0x1
	.string	"timevar_print"
	.byte	0x1
	.value	0x1b4
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x1d
	.string	"fp"
	.byte	0x1
	.value	0x1b3
	.long	0xc45
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"id"
	.byte	0x1
	.value	0x1b7
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"total"
	.byte	0x1
	.value	0x1b8
	.long	0x954
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"now"
	.byte	0x1
	.value	0x1b9
	.long	0x522
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1b
	.string	"tv"
	.byte	0x1
	.value	0x1d2
	.long	0x904
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"tiny"
	.byte	0x1
	.value	0x1d3
	.long	0xc4b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1aa
	.uleb128 0x3
	.long	0x568
	.uleb128 0x1e
	.long	0xc91
	.byte	0x1
	.string	"get_run_time"
	.byte	0x1
	.value	0x215
	.byte	0x1
	.long	0x174
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x1b
	.string	"total_elapsed"
	.byte	0x1
	.value	0x216
	.long	0x522
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x19
	.long	0xce7
	.byte	0x1
	.string	"print_time"
	.byte	0x1
	.value	0x222
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x1d
	.string	"str"
	.byte	0x1
	.value	0x220
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"total"
	.byte	0x1
	.value	0x221
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"all_time"
	.byte	0x1
	.value	0x223
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xd
	.long	0xcf7
	.long	0xa7
	.uleb128 0xe
	.long	0xbd
	.byte	0xc
	.byte	0x0
	.uleb128 0x3
	.long	0xce7
	.uleb128 0xd
	.long	0xd0c
	.long	0xa7
	.uleb128 0xe
	.long	0xbd
	.byte	0xd
	.byte	0x0
	.uleb128 0x3
	.long	0xcfc
	.uleb128 0xd
	.long	0xd21
	.long	0xa7
	.uleb128 0xe
	.long	0xbd
	.byte	0xb
	.byte	0x0
	.uleb128 0x3
	.long	0xd11
	.uleb128 0x3
	.long	0xce7
	.uleb128 0x16
	.string	"ticks_to_msec"
	.byte	0x1
	.byte	0x71
	.long	0x568
	.byte	0x5
	.byte	0x3
	.long	ticks_to_msec
	.uleb128 0xd
	.long	0xd56
	.long	0x85e
	.uleb128 0xe
	.long	0xbd
	.byte	0x31
	.byte	0x0
	.uleb128 0x16
	.string	"timevars"
	.byte	0x1
	.byte	0xa8
	.long	0xd46
	.byte	0x5
	.byte	0x3
	.long	timevars
	.uleb128 0x16
	.string	"stack"
	.byte	0x1
	.byte	0xab
	.long	0x90a
	.byte	0x5
	.byte	0x3
	.long	stack
	.uleb128 0x16
	.string	"unused_stack_instances"
	.byte	0x1
	.byte	0xaf
	.long	0x90a
	.byte	0x5
	.byte	0x3
	.long	unused_stack_instances
	.uleb128 0x1f
	.long	.LASF2
	.byte	0x1
	.byte	0xb4
	.long	0x522
	.byte	0x5
	.byte	0x3
	.long	start_time
	.uleb128 0x20
	.string	"stderr"
	.byte	0x7
	.byte	0x90
	.long	0x488
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"time_report"
	.byte	0xa
	.byte	0x4e
	.long	0xaf
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xa5
	.value	0x2
	.long	.Ldebug_info0
	.long	0xdda
	.long	0x9b4
	.string	"init_timevar"
	.long	0x9d2
	.string	"timevar_push"
	.long	0xa45
	.string	"timevar_pop"
	.long	0xaa8
	.string	"timevar_start"
	.long	0xafa
	.string	"timevar_stop"
	.long	0xb5a
	.string	"timevar_get"
	.long	0xbbc
	.string	"timevar_print"
	.long	0xc50
	.string	"get_run_time"
	.long	0xc91
	.string	"print_time"
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
.LASF3:
	.string	"timevar"
.LASF4:
	.string	"__FUNCTION__"
.LASF2:
	.string	"start_time"
.LASF1:
	.string	"_IO_FILE"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
