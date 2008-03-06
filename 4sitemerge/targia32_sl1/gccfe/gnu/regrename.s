	.file	"regrename.c"
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
	.string	"NO_REGS"
.LC1:
	.string	"M16_NA_REGS"
.LC2:
	.string	"M16_REGS"
.LC3:
	.string	"T_REG"
.LC4:
	.string	"M16_T_REGS"
.LC5:
	.string	"GR_REGS"
.LC6:
	.string	"FP_REGS"
.LC7:
	.string	"HI_REG"
.LC8:
	.string	"LO_REG"
.LC9:
	.string	"HILO_REG"
.LC10:
	.string	"MD_REGS"
.LC11:
	.string	"COP0_REGS"
.LC12:
	.string	"COP2_REGS"
.LC13:
	.string	"COP3_REGS"
.LC14:
	.string	"HI_AND_GR_REGS"
.LC15:
	.string	"LO_AND_GR_REGS"
.LC16:
	.string	"HILO_AND_GR_REGS"
.LC17:
	.string	"HI_AND_FP_REGS"
.LC18:
	.string	"COP0_AND_GR_REGS"
.LC19:
	.string	"COP2_AND_GR_REGS"
.LC20:
	.string	"COP3_AND_GR_REGS"
.LC21:
	.string	"ALL_COP_REGS"
.LC22:
	.string	"ALL_COP_AND_GR_REGS"
.LC23:
	.string	"ST_REGS"
.LC24:
	.string	"ALL_REGS"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	reg_class_names, @object
	.size	reg_class_names, 100
reg_class_names:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.section	.rodata
.LC25:
	.string	"terminate_all_read"
.LC26:
	.string	"terminate_overlapping_read"
.LC27:
	.string	"terminate_write"
.LC28:
	.string	"terminate_dead"
.LC29:
	.string	"mark_read"
.LC30:
	.string	"mark_write"
	.section	.data.rel.ro.local
	.align 4
	.type	scan_actions_name, @object
	.size	scan_actions_name, 24
scan_actions_name:
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.section	.rodata
	.type	__FUNCTION__.10540, @object
	.size	__FUNCTION__.10540, 10
__FUNCTION__.10540:
	.string	"note_sets"
	.align 4
.LC31:
	.string	"../../../kgccfe/gnu/regrename.c"
	.text
	.type	note_sets, @function
note_sets:
.LFB15:
	.file 1 "../../../kgccfe/gnu/regrename.c"
	.loc 1 111 0
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
	.loc 1 112 0
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 115 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L8
	.loc 1 117 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 118 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 121 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	cmpl	$176, %eax
	jbe	.L6
	.loc 1 122 0
	leal	__FUNCTION__.10540@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$122, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L7:
	.loc 1 125 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L9
	movl	%esi, %edi
	xorl	%esi, %esi
.L9:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L6:
	.loc 1 124 0
	cmpl	$0, -20(%ebp)
	setg	%al
	subl	$1, -20(%ebp)
	testb	%al, %al
	jne	.L7
.L8:
	.loc 1 126 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	note_sets, .-note_sets
	.section	.rodata
	.type	__FUNCTION__.10577, @object
	.size	__FUNCTION__.10577, 16
__FUNCTION__.10577:
	.string	"clear_dead_regs"
	.text
	.type	clear_dead_regs, @function
clear_dead_regs:
.LFB16:
	.loc 1 136 0
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
	subl	$60, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 138 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L11
.L12:
	.loc 1 139 0
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L13
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L13
.LBB2:
	.loc 1 141 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 142 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 143 0
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 146 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	cmpl	$176, %eax
	jbe	.L18
	.loc 1 147 0
	leal	__FUNCTION__.10577@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$147, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L19:
	.loc 1 150 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L22
	movl	%eax, %edx
	xorl	%eax, %eax
.L22:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L18:
	.loc 1 149 0
	cmpl	$0, -20(%ebp)
	setg	%al
	subl	$1, -20(%ebp)
	testb	%al, %al
	jne	.L19
.L13:
.LBE2:
	.loc 1 138 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L11:
	cmpl	$0, -32(%ebp)
	jne	.L12
	.loc 1 152 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	clear_dead_regs, .-clear_dead_regs
	.type	merge_overlapping_regs, @function
merge_overlapping_regs:
.LFB17:
	.loc 1 162 0
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
	subl	$140, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 163 0
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
.LBB3:
	.loc 1 167 0
	leal	-72(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE3:
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_set_to_hard_reg_set@PLT
	.loc 1 168 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 169 0
	jmp	.L24
.L27:
	.loc 1 175 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L28
	.loc 1 177 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_dead_regs
	.loc 1 178 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	note_sets@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 181 0
	movl	-44(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L30
.LBB4:
	.loc 1 182 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-112(%ebp), %eax
	orl	%esi, %eax
	movl	-108(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L30:
.LBE4:
	.loc 1 183 0
	movl	-40(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_dead_regs
.L28:
	.loc 1 185 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L26:
	.loc 1 173 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L27
.LBB5:
	.loc 1 188 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE5:
	.loc 1 193 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L33
	.loc 1 194 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	note_sets@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
.L33:
	.loc 1 196 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L24:
	.loc 1 169 0
	cmpl	$0, -44(%ebp)
	jne	.L26
	.loc 1 198 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	merge_overlapping_regs, .-merge_overlapping_regs
	.section	.rodata
.LC32:
	.string	"\nBasic block %d:\n"
.LC33:
	.string	"Register %s in insn %d"
.LC34:
	.string	" crosses a call"
.LC35:
	.string	"; no available registers\n"
.LC36:
	.string	", renamed as %s\n"
	.text
.globl regrename_optimize
	.type	regrename_optimize, @function
regrename_optimize:
.LFB18:
	.loc 1 204 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%esi
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$1052, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 206 0
	movl	$0, -152(%ebp)
	.loc 1 210 0
	leal	-928(%ebp), %eax
	movl	%eax, %edx
	movl	$704, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 212 0
	leal	rename_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
.LBB6:
	.loc 1 213 0
	leal	rename_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -140(%ebp)
.LBB7:
	movl	-140(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	-136(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-136(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-132(%ebp), %eax
	jge	.L38
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L38:
	movl	-136(%ebp), %eax
	movl	12(%eax), %edx
	movl	-132(%ebp), %eax
	addl	%eax, %edx
	movl	-136(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE7:
.LBB8:
	movl	-140(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-128(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -124(%ebp)
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-124(%ebp), %eax
	jne	.L40
	movl	-128(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L40:
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-128(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-128(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L42
	movl	-128(%ebp), %eax
	movl	16(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%edx, 12(%eax)
.L42:
	movl	-128(%ebp), %eax
	movl	12(%eax), %edx
	movl	-128(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-124(%ebp), %eax
.LBE8:
.LBE6:
	movl	%eax, -144(%ebp)
	.loc 1 215 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L44
.L45:
.LBB9:
	.loc 1 217 0
	movl	$0, -120(%ebp)
.LBB10:
	.loc 1 221 0
	leal	-176(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-116(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-116(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE10:
	.loc 1 223 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 224 0
	movl	-148(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L46:
	.loc 1 226 0
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	build_def_use
	movl	%eax, -120(%ebp)
	.loc 1 228 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L48
	.loc 1 229 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_def_use_chain
.L48:
.LBB11:
	.loc 1 231 0
	leal	-176(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-112(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-112(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-112(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE11:
	.loc 1 233 0
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L50
.LBB12:
	.loc 1 237 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L52
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L52
	movl	$5, -1048(%ebp)
	jmp	.L55
.L52:
	movl	$4, -1048(%ebp)
.L55:
	movl	-1048(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	$1, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -108(%ebp)
	jmp	.L56
.L57:
	.loc 1 238 0
	movl	-108(%ebp), %eax
	addl	$1, %eax
	shrl	$6, %eax
	movl	%eax, -1044(%ebp)
	movl	-176(%ebp,%eax,8), %edx
	movl	-172(%ebp,%eax,8), %ecx
	movl	%edx, -1040(%ebp)
	movl	%ecx, -1036(%ebp)
	movl	-108(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L133
	movl	%esi, %edi
	xorl	%esi, %esi
.L133:
	movl	-1040(%ebp), %eax
	orl	%esi, %eax
	movl	-1036(%ebp), %edx
	orl	%edi, %edx
	movl	-1044(%ebp), %ecx
	movl	%eax, -176(%ebp,%ecx,8)
	movl	%edx, -172(%ebp,%ecx,8)
.L56:
	.loc 1 237 0
	subl	$1, -108(%ebp)
	cmpl	$-1, -108(%ebp)
	jne	.L57
	.loc 1 241 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L59
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L59
	movl	$5, -1032(%ebp)
	jmp	.L62
.L59:
	movl	$4, -1032(%ebp)
.L62:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L63
	movl	$17, -1028(%ebp)
	jmp	.L65
.L63:
	movl	$30, -1028(%ebp)
.L65:
	movl	-1032(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	-1028(%ebp), %edi
	movl	%edi, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -108(%ebp)
	jmp	.L66
.L67:
	.loc 1 242 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L68
	movl	$17, -1024(%ebp)
	jmp	.L70
.L68:
	movl	$30, -1024(%ebp)
.L70:
	movl	-1024(%ebp), %eax
	addl	-108(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -1020(%ebp)
	movl	-176(%ebp,%eax,8), %edx
	movl	-172(%ebp,%eax,8), %ecx
	movl	%edx, -1016(%ebp)
	movl	%ecx, -1012(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L71
	movl	$17, -1008(%ebp)
	jmp	.L73
.L71:
	movl	$30, -1008(%ebp)
.L73:
	movl	-1008(%ebp), %eax
	addl	-108(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L132
	movl	%esi, %edi
	xorl	%esi, %esi
.L132:
	movl	-1016(%ebp), %eax
	orl	%esi, %eax
	movl	-1012(%ebp), %edx
	orl	%edi, %edx
	movl	-1020(%ebp), %ecx
	movl	%eax, -176(%ebp,%ecx,8)
	movl	%edx, -172(%ebp,%ecx,8)
.L66:
	.loc 1 241 0
	subl	$1, -108(%ebp)
	cmpl	$-1, -108(%ebp)
	jne	.L67
.L50:
.LBE12:
.LBB13:
	.loc 1 246 0
	leal	-200(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-104(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-104(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 247 0
	jmp	.L130
.L75:
.LBE13:
.LBB14:
	.loc 1 249 0
	movl	$-1, -96(%ebp)
	.loc 1 251 0
	movl	-120(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 254 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 257 0
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 268 0
	movl	-76(%ebp), %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L74
	movl	-76(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L74
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L78
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L80
	movl	$17, -1004(%ebp)
	jmp	.L82
.L80:
	movl	$30, -1004(%ebp)
.L82:
	movl	-1004(%ebp), %esi
	cmpl	-76(%ebp), %esi
	je	.L74
.L78:
.LBB15:
	.loc 1 277 0
	leal	-224(%ebp), %eax
	movl	%eax, -68(%ebp)
	leal	-176(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-68(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-68(%ebp), %ecx
	addl	$8, %ecx
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-68(%ebp), %ecx
	addl	$16, %ecx
	movl	-64(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE15:
	.loc 1 282 0
	movl	$0, -92(%ebp)
	.loc 1 283 0
	movl	-88(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L83
.L84:
	.loc 1 285 0
	addl	$1, -92(%ebp)
.LBB16:
	.loc 1 286 0
	leal	-224(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-80(%ebp), %eax
	movl	16(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_class_contents@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -1000(%ebp)
	movl	%ecx, -996(%ebp)
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-1000(%ebp), %eax
	orl	%esi, %eax
	movl	-996(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-60(%ebp), %ecx
	addl	$8, %ecx
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -992(%ebp)
	movl	%edi, -988(%ebp)
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-992(%ebp), %eax
	orl	%esi, %eax
	movl	-988(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-60(%ebp), %ecx
	addl	$16, %ecx
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -984(%ebp)
	movl	%edi, -980(%ebp)
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-984(%ebp), %eax
	orl	%esi, %eax
	movl	-980(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE16:
	.loc 1 283 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
.L83:
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L84
	.loc 1 289 0
	cmpl	$0, -92(%ebp)
	jle	.L74
.LBB17:
	.loc 1 292 0
	leal	-224(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-80(%ebp), %eax
	movl	16(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_class_contents@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -976(%ebp)
	movl	%ecx, -972(%ebp)
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-976(%ebp), %eax
	orl	%esi, %eax
	movl	-972(%ebp), %edx
	orl	%edi, %edx
	movl	-52(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-52(%ebp), %ecx
	addl	$8, %ecx
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -968(%ebp)
	movl	%edi, -964(%ebp)
	movl	-48(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-968(%ebp), %eax
	orl	%esi, %eax
	movl	-964(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-52(%ebp), %ecx
	addl	$16, %ecx
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -960(%ebp)
	movl	%edi, -956(%ebp)
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-960(%ebp), %eax
	orl	%esi, %eax
	movl	-956(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE17:
	.loc 1 295 0
	movl	-88(%ebp), %eax
	movzbl	20(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L87
.LBB18:
	.loc 1 296 0
	leal	-224(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	call_used_reg_set@GOT(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -952(%ebp)
	movl	%ecx, -948(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-952(%ebp), %eax
	orl	%esi, %eax
	movl	-948(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-44(%ebp), %ecx
	addl	$8, %ecx
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -944(%ebp)
	movl	%edi, -940(%ebp)
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-944(%ebp), %eax
	orl	%esi, %eax
	movl	-940(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-44(%ebp), %ecx
	addl	$16, %ecx
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -936(%ebp)
	movl	%edi, -932(%ebp)
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-936(%ebp), %eax
	orl	%esi, %eax
	movl	-932(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L87:
.LBE18:
	.loc 1 298 0
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_overlapping_regs
	.loc 1 302 0
	movl	$0, -100(%ebp)
	jmp	.L89
.L90:
.LBB19:
	.loc 1 304 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -36(%ebp)
	.loc 1 306 0
	movl	-36(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -72(%ebp)
	jmp	.L91
.L92:
	.loc 1 307 0
	movl	-72(%ebp), %eax
	addl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	-224(%ebp,%eax,8), %esi
	movl	-220(%ebp,%eax,8), %edi
	movl	-72(%ebp), %eax
	addl	-100(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L131
	movl	%edx, %eax
	xorl	%edx, %edx
.L131:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L93
	movl	-72(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	%eax, %edx
	movl	fixed_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L93
	movl	-72(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	%eax, %edx
	movl	global_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L93
	movl	-72(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	%eax, %edx
	movl	regs_ever_live@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	jne	.L97
	movl	-72(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	%eax, %edx
	movl	call_used_regs@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L93
.L97:
	.loc 1 306 0
	subl	$1, -72(%ebp)
.L91:
	cmpl	$0, -72(%ebp)
	jns	.L92
.L93:
	.loc 1 324 0
	cmpl	$0, -72(%ebp)
	jns	.L99
	.loc 1 329 0
	movl	-88(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L101
.L102:
	.loc 1 330 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-100(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L103
	.loc 1 329 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
.L101:
	cmpl	$0, -84(%ebp)
	jne	.L102
.L103:
	.loc 1 337 0
	cmpl	$0, -84(%ebp)
	jne	.L99
	.loc 1 339 0
	cmpl	$-1, -96(%ebp)
	je	.L106
	movl	-96(%ebp), %eax
	movl	-928(%ebp,%eax,4), %edx
	movl	-100(%ebp), %eax
	movl	-928(%ebp,%eax,4), %eax
	cmpl	%eax, %edx
	jle	.L99
.L106:
	.loc 1 341 0
	movl	-100(%ebp), %eax
	movl	%eax, -96(%ebp)
.L99:
.LBE19:
	.loc 1 302 0
	addl	$1, -100(%ebp)
.L89:
	cmpl	$175, -100(%ebp)
	jle	.L90
	.loc 1 345 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L109
	.loc 1 347 0
	movl	-80(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %esi
	movl	-76(%ebp), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 349 0
	movl	-80(%ebp), %eax
	movzbl	20(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L109
	.loc 1 350 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L109:
	.loc 1 353 0
	cmpl	$-1, -96(%ebp)
	jne	.L112
	.loc 1 355 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L74
	.loc 1 356 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 357 0
	jmp	.L74
.L112:
	.loc 1 360 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	do_replace
	.loc 1 361 0
	movl	-96(%ebp), %edx
	movl	-152(%ebp), %eax
	movl	%eax, -928(%ebp,%edx,4)
	addl	$1, -152(%ebp)
	.loc 1 363 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L74
	.loc 1 364 0
	movl	-96(%ebp), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L74:
.L130:
.LBE14:
	.loc 1 247 0
	cmpl	$0, -120(%ebp)
	jne	.L75
.LBB20:
	.loc 1 367 0
	leal	rename_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	-144(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jae	.L118
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-28(%ebp), %eax
	jbe	.L118
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L121
.L118:
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L121:
.LBE20:
.LBE9:
	.loc 1 215 0
	movl	-148(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -148(%ebp)
.L44:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -148(%ebp)
	jne	.L45
.LBB21:
	.loc 1 370 0
	leal	rename_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jae	.L123
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-20(%ebp), %eax
	jbe	.L123
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L126
.L123:
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L126:
.LBE21:
	.loc 1 372 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L127
	.loc 1 373 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L127:
	.loc 1 375 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	count_or_remove_death_notes@PLT
	.loc 1 376 0
	movl	$5, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	update_life_info@PLT
	.loc 1 378 0
	addl	$1052, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	regrename_optimize, .-regrename_optimize
	.type	do_replace, @function
do_replace:
.LFB19:
	.loc 1 384 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%esi
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$32, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB22:
	.loc 1 385 0
	jmp	.L135
.L136:
	.loc 1 387 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 388 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	gen_raw_REG@PLT
	movl	%eax, (%esi)
	.loc 1 389 0
	cmpl	$175, -12(%ebp)
	jbe	.L137
	.loc 1 390 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
.L137:
	.loc 1 391 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L135:
.LBE22:
	.loc 1 385 0
	cmpl	$0, 8(%ebp)
	jne	.L136
	.loc 1 393 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE19:
	.size	do_replace, .-do_replace
	.section	.rodata
	.type	__FUNCTION__.11092, @object
	.size	__FUNCTION__.11092, 13
__FUNCTION__.11092:
	.string	"scan_rtx_reg"
	.align 4
.LC37:
	.string	"Closing chain %s at insn %d (%s)\n"
	.align 4
.LC38:
	.string	"Discarding chain %s at insn %d (%s)\n"
	.text
	.type	scan_rtx_reg, @function
scan_rtx_reg:
.LFB20:
	.loc 1 407 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%edi
.LCFI31:
	pushl	%esi
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$124, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 409 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 410 0
	movl	-92(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	.loc 1 411 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 412 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -80(%ebp)
	.loc 1 414 0
	cmpl	$5, 20(%ebp)
	jne	.L142
	.loc 1 416 0
	cmpl	$1, 24(%ebp)
	jne	.L194
.LBB23:
.LBB24:
	.loc 1 419 0
	leal	rename_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
.LBB25:
	movl	-72(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	$24, -64(%ebp)
	movl	-68(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-64(%ebp), %eax
	jge	.L146
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L146:
	movl	-68(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	addl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE25:
.LBB26:
	movl	-72(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-56(%ebp), %eax
	jne	.L148
	movl	-60(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L148:
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L150
	movl	-60(%ebp), %eax
	movl	16(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 12(%eax)
.L150:
	movl	-60(%ebp), %eax
	movl	12(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-56(%ebp), %eax
.LBE26:
.LBE24:
	movl	%eax, -76(%ebp)
	.loc 1 420 0
	movl	-76(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 421 0
	movl	open_chains@GOTOFF(%ebx), %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 422 0
	movl	-76(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 423 0
	movl	-76(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 424 0
	movl	-76(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 425 0
	movl	-76(%ebp), %edx
	movzbl	20(%edx), %eax
	andl	$-2, %eax
	movb	%al, 20(%edx)
	.loc 1 426 0
	movl	28(%ebp), %eax
	andl	$1, %eax
	movl	-76(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	20(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 20(%ecx)
	.loc 1 427 0
	movl	-76(%ebp), %eax
	movl	%eax, open_chains@GOTOFF(%ebx)
	.loc 1 429 0
	jmp	.L194
.L142:
.LBE23:
	.loc 1 432 0
	cmpl	$1, 24(%ebp)
	jne	.L153
	cmpl	$2, 20(%ebp)
	jne	.L194
.L153:
	cmpl	$1, 24(%ebp)
	je	.L156
	cmpl	$2, 20(%ebp)
	jne	.L156
	.loc 1 434 0
	jmp	.L194
.L156:
	.loc 1 436 0
	leal	open_chains@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	jmp	.L195
.L159:
.LBB27:
	.loc 1 438 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 447 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L160
	.loc 1 448 0
	movl	-52(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L158
.L160:
.LBB28:
	.loc 1 451 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 452 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -44(%ebp)
	.loc 1 453 0
	movl	-48(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jne	.L162
	movl	-44(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jne	.L162
	movl	$1, -112(%ebp)
	jmp	.L165
.L162:
	movl	$0, -112(%ebp)
.L165:
	movl	-112(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 455 0
	movl	-44(%ebp), %eax
	addl	-48(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jle	.L166
	movl	-80(%ebp), %eax
	addl	-84(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jg	.L168
.L166:
	.loc 1 458 0
	movl	-52(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 459 0
	jmp	.L158
.L168:
	.loc 1 462 0
	cmpl	$4, 20(%ebp)
	jne	.L169
	.loc 1 464 0
	cmpl	$0, -40(%ebp)
	jne	.L171
	.loc 1 465 0
	leal	__FUNCTION__.11092@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$465, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L171:
	.loc 1 471 0
	cmpl	$0, 16(%ebp)
	je	.L169
.LBB29:
	.loc 1 474 0
	leal	rename_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
.LBB30:
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$24, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-28(%ebp), %eax
	jge	.L174
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L174:
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE30:
.LBB31:
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L176
	movl	-24(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L176:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L178
	movl	-24(%ebp), %eax
	movl	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.L178:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-20(%ebp), %eax
.LBE31:
.LBE29:
	.loc 1 473 0
	movl	%eax, -52(%ebp)
	.loc 1 475 0
	movl	-52(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 476 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 477 0
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 478 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 479 0
	movl	-52(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 480 0
	movl	-52(%ebp), %edx
	movzbl	20(%edx), %eax
	andl	$-2, %eax
	movb	%al, 20(%edx)
	.loc 1 481 0
	jmp	.L180
.L181:
	.loc 1 482 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -96(%ebp)
.L180:
	.loc 1 481 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L181
	.loc 1 483 0
	movl	-96(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 484 0
	jmp	.L194
.L169:
	.loc 1 488 0
	cmpl	$1, 20(%ebp)
	jne	.L183
	cmpl	$0, -40(%ebp)
	jne	.L185
.L183:
.LBB32:
	.loc 1 490 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 496 0
	cmpl	$3, 20(%ebp)
	je	.L186
	cmpl	$2, 20(%ebp)
	jne	.L188
.L186:
	cmpl	$0, -40(%ebp)
	je	.L188
	.loc 1 499 0
	movl	closed_chains@GOTOFF(%ebx), %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 500 0
	movl	-52(%ebp), %eax
	movl	%eax, closed_chains@GOTOFF(%ebx)
	.loc 1 501 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L192
	.loc 1 502 0
	movl	20(%ebp), %eax
	movl	scan_actions_name@GOTOFF(%ebx,%eax,4), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 496 0
	jmp	.L192
.L188:
	.loc 1 509 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L192
	.loc 1 510 0
	movl	20(%ebp), %eax
	movl	scan_actions_name@GOTOFF(%ebx,%eax,4), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L192:
	.loc 1 515 0
	movl	-96(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 488 0
	jmp	.L158
.L185:
.LBE32:
	.loc 1 518 0
	movl	-52(%ebp), %eax
	movl	%eax, -96(%ebp)
.L158:
.L195:
.LBE28:
.LBE27:
	.loc 1 436 0
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L159
.L194:
	.loc 1 521 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	scan_rtx_reg, .-scan_rtx_reg
	.type	scan_rtx_address, @function
scan_rtx_address:
.LFB21:
	.loc 1 533 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$116, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 534 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 535 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -56(%ebp)
	.loc 1 539 0
	cmpl	$5, 20(%ebp)
	je	.L261
	.loc 1 542 0
	movl	-56(%ebp), %eax
	subl	$71, %eax
	movl	%eax, -84(%ebp)
	cmpl	$40, -84(%ebp)
	ja	.L199
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	.L204@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L204:
	.long	.L200@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L201@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L202@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L199@GOTOFF
	.long	.L203@GOTOFF
	.long	.L203@GOTOFF
	.long	.L203@GOTOFF
	.long	.L203@GOTOFF
	.long	.L203@GOTOFF
	.long	.L203@GOTOFF
	.text
.L202:
.LBB33:
	.loc 1 546 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 547 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 548 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
	.loc 1 549 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 550 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 551 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 552 0
	movl	$0, -16(%ebp)
	.loc 1 553 0
	movl	$0, -12(%ebp)
	.loc 1 555 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L205
	.loc 1 557 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 558 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -32(%ebp)
.L205:
	.loc 1 561 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L207
	.loc 1 563 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 564 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
.L207:
	.loc 1 567 0
	cmpl	$88, -32(%ebp)
	je	.L209
	cmpl	$130, -32(%ebp)
	je	.L209
	cmpl	$132, -32(%ebp)
	je	.L209
	cmpl	$131, -32(%ebp)
	je	.L209
	cmpl	$76, -28(%ebp)
	jne	.L214
.L209:
	.loc 1 570 0
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 571 0
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 567 0
	jmp	.L215
.L214:
	.loc 1 573 0
	cmpl	$88, -28(%ebp)
	je	.L216
	cmpl	$130, -28(%ebp)
	je	.L216
	cmpl	$132, -28(%ebp)
	je	.L216
	cmpl	$131, -28(%ebp)
	je	.L216
	cmpl	$76, -32(%ebp)
	jne	.L221
.L216:
	.loc 1 576 0
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 577 0
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
	.loc 1 573 0
	jmp	.L215
.L221:
	.loc 1 579 0
	cmpl	$64, -32(%ebp)
	je	.L222
	cmpl	$68, -32(%ebp)
	je	.L222
	cmpl	$78, -32(%ebp)
	je	.L222
	cmpl	$77, -32(%ebp)
	jne	.L226
.L222:
	.loc 1 581 0
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 579 0
	jmp	.L215
.L226:
	.loc 1 582 0
	cmpl	$64, -28(%ebp)
	je	.L227
	cmpl	$68, -28(%ebp)
	je	.L227
	cmpl	$78, -28(%ebp)
	je	.L227
	cmpl	$77, -28(%ebp)
	jne	.L231
.L227:
	.loc 1 584 0
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
	.loc 1 582 0
	jmp	.L215
.L231:
	.loc 1 585 0
	cmpl	$71, -32(%ebp)
	jne	.L232
	cmpl	$71, -28(%ebp)
	jne	.L232
.LBB34:
	.loc 1 595 0
	movl	$1, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L235
	.loc 1 596 0
	movl	$0, -8(%ebp)
	jmp	.L237
.L235:
	.loc 1 597 0
	movl	$1, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L238
	.loc 1 598 0
	movl	$1, -8(%ebp)
	jmp	.L237
.L238:
	.loc 1 602 0
	movl	$0, -8(%ebp)
.L237:
	.loc 1 604 0
	movl	-8(%ebp), %eax
	sall	$3, %eax
	addl	-60(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 605 0
	cmpl	$0, -8(%ebp)
	sete	%al
	movzbl	%al, %eax
	sall	$3, %eax
	addl	-60(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
	.loc 1 585 0
	jmp	.L215
.L232:
.LBE34:
	.loc 1 607 0
	cmpl	$71, -32(%ebp)
	jne	.L240
	.loc 1 609 0
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	.loc 1 610 0
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	jmp	.L215
.L240:
	.loc 1 612 0
	cmpl	$71, -28(%ebp)
	jne	.L215
	.loc 1 614 0
	movl	-60(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 615 0
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
.L215:
	.loc 1 618 0
	cmpl	$0, -16(%ebp)
	je	.L243
	.loc 1 619 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_address
.L243:
	.loc 1 620 0
	cmpl	$0, -12(%ebp)
	je	.L261
	.loc 1 621 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L247
	movl	$2, -80(%ebp)
	jmp	.L249
.L247:
	movl	$5, -80(%ebp)
.L249:
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_address
	.loc 1 622 0
	jmp	.L261
.L203:
.LBE33:
	.loc 1 634 0
	movl	$0, 20(%ebp)
	.loc 1 636 0
	jmp	.L199
.L201:
	.loc 1 639 0
	movl	-60(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L250
	movl	$2, -72(%ebp)
	jmp	.L252
.L250:
	movl	$5, -72(%ebp)
.L252:
	movl	-60(%ebp), %eax
	addl	$4, %eax
	movl	-76(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_address
	.loc 1 642 0
	jmp	.L261
.L200:
	.loc 1 645 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_reg
	.loc 1 646 0
	jmp	.L261
.L199:
	.loc 1 652 0
	movl	-56(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -52(%ebp)
	.loc 1 653 0
	movl	-56(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	jmp	.L253
.L254:
	.loc 1 655 0
	movl	-48(%ebp), %eax
	addl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L255
	.loc 1 656 0
	movl	-48(%ebp), %eax
	sall	$3, %eax
	addl	-60(%ebp), %eax
	leal	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_address
	jmp	.L257
.L255:
	.loc 1 657 0
	movl	-48(%ebp), %eax
	addl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L257
	.loc 1 658 0
	movl	-48(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	jmp	.L259
.L260:
	.loc 1 659 0
	movl	-48(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_address
	.loc 1 658 0
	subl	$1, -44(%ebp)
.L259:
	cmpl	$0, -44(%ebp)
	jns	.L260
.L257:
	.loc 1 653 0
	subl	$1, -48(%ebp)
.L253:
	cmpl	$0, -48(%ebp)
	jns	.L254
.L261:
	.loc 1 661 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	scan_rtx_address, .-scan_rtx_address
	.section	.rodata
	.type	__FUNCTION__.11438, @object
	.size	__FUNCTION__.11438, 9
__FUNCTION__.11438:
	.string	"scan_rtx"
	.text
	.type	scan_rtx, @function
scan_rtx:
.LFB22:
	.loc 1 671 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$84, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 673 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 674 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 677 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 678 0
	movl	-16(%ebp), %eax
	subl	$3, %eax
	movl	%eax, -52(%ebp)
	cmpl	$140, -52(%ebp)
	ja	.L263
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	.L273@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L273:
	.long	.L264@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L265@GOTOFF
	.long	.L263@GOTOFF
	.long	.L266@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L291@GOTOFF
	.long	.L291@GOTOFF
	.long	.L291@GOTOFF
	.long	.L263@GOTOFF
	.long	.L291@GOTOFF
	.long	.L291@GOTOFF
	.long	.L263@GOTOFF
	.long	.L268@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L269@GOTOFF
	.long	.L263@GOTOFF
	.long	.L270@GOTOFF
	.long	.L291@GOTOFF
	.long	.L291@GOTOFF
	.long	.L291@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L271@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L272@GOTOFF
	.long	.L272@GOTOFF
	.text
.L268:
	.loc 1 691 0
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_reg
	.loc 1 692 0
	jmp	.L291
.L270:
	.loc 1 695 0
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L275
	movl	$2, -44(%ebp)
	jmp	.L277
.L275:
	movl	$5, -44(%ebp)
.L277:
	movl	-20(%ebp), %eax
	addl	$4, %eax
	movl	-48(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_address
	.loc 1 698 0
	jmp	.L291
.L265:
	.loc 1 701 0
	movl	-20(%ebp), %edx
	addl	$12, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 702 0
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	$0, 20(%esp)
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 703 0
	jmp	.L291
.L269:
	.loc 1 706 0
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$2, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 707 0
	jmp	.L291
.L272:
	.loc 1 711 0
	cmpl	$0, 24(%ebp)
	jne	.L278
	movl	$0, -40(%ebp)
	jmp	.L280
.L278:
	movl	$2, -40(%ebp)
.L280:
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 713 0
	movl	-20(%ebp), %edx
	addl	$12, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 714 0
	movl	-20(%ebp), %edx
	addl	$20, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 715 0
	jmp	.L291
.L271:
	.loc 1 724 0
	leal	__FUNCTION__.11438@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$724, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L266:
	.loc 1 727 0
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 728 0
	jmp	.L291
.L264:
	.loc 1 731 0
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 732 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L291
	.loc 1 733 0
	movl	-20(%ebp), %edx
	addl	$12, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 734 0
	jmp	.L291
.L263:
	.loc 1 740 0
	movl	-16(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 741 0
	movl	-16(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L283
.L284:
	.loc 1 743 0
	movl	-12(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L285
	.loc 1 744 0
	movl	-12(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	leal	4(%eax), %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	jmp	.L287
.L285:
	.loc 1 745 0
	movl	-12(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L287
	.loc 1 746 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L289
.L290:
	.loc 1 747 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 746 0
	subl	$1, -8(%ebp)
.L289:
	cmpl	$0, -8(%ebp)
	jns	.L290
.L287:
	.loc 1 741 0
	subl	$1, -12(%ebp)
.L283:
	cmpl	$0, -12(%ebp)
	jns	.L284
.L291:
	.loc 1 749 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	scan_rtx, .-scan_rtx
	.section	.rodata
	.type	__FUNCTION__.11518, @object
	.size	__FUNCTION__.11518, 14
__FUNCTION__.11518:
	.string	"build_def_use"
	.text
	.type	build_def_use, @function
build_def_use:
.LFB23:
	.loc 1 756 0
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
	subl	$300, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 759 0
	movl	$0, closed_chains@GOTOFF(%ebx)
	movl	closed_chains@GOTOFF(%ebx), %eax
	movl	%eax, open_chains@GOTOFF(%ebx)
	.loc 1 761 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
.L293:
	.loc 1 763 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L294
.LBB35:
	.loc 1 789 0
	movl	-104(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L296
	movl	-104(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -276(%ebp)
	jmp	.L298
.L296:
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	movl	%eax, -276(%ebp)
.L298:
	movl	-276(%ebp), %eax
	movl	%eax, -88(%ebp)
	.loc 1 790 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 791 0
	movl	$1, (%esp)
	call	constrain_operands@PLT
	testl	%eax, %eax
	jne	.L299
	.loc 1 792 0
	leal	__FUNCTION__.11518@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$792, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	_fatal_insn_not_found@PLT
.L299:
	.loc 1 793 0
	call	preprocess_constraints@PLT
	.loc 1 794 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 795 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	.loc 1 801 0
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 802 0
	movl	$0, -92(%ebp)
	jmp	.L301
.L302:
.LBB36:
	.loc 1 804 0
	movl	-92(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 805 0
	cmpl	$0, -76(%ebp)
	js	.L303
	.loc 1 806 0
	movl	-92(%ebp), %edi
	movl	-84(%ebp), %ecx
	movl	%ecx, -272(%ebp)
	movl	-76(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	-272(%ebp), %eax
	addl	%eax, %eax
	addl	-272(%ebp), %eax
	leal	0(,%eax,8), %edx
	imull	$720, %edi, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	%ecx, (%eax)
.L303:
	.loc 1 807 0
	cmpl	$0, -76(%ebp)
	jns	.L305
	movl	-92(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L305
	cmpl	$0, -80(%ebp)
	je	.L308
	movl	-92(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	480(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L308
.L305:
	.loc 1 809 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	$2, 480(%eax,%edx,4)
.L308:
.LBE36:
	.loc 1 802 0
	addl	$1, -92(%ebp)
.L301:
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L302
	.loc 1 813 0
	movl	$0, -92(%ebp)
	jmp	.L311
.L312:
	.loc 1 814 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	480(%eax,%edx,4), %ecx
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	$0, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 813 0
	addl	$1, -92(%ebp)
.L311:
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L312
	.loc 1 822 0
	movl	$0, -92(%ebp)
	jmp	.L314
.L315:
	.loc 1 824 0
	movl	-92(%ebp), %ecx
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -240(%ebp,%ecx,4)
	.loc 1 828 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L316
	.loc 1 830 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
.L316:
	.loc 1 822 0
	addl	$1, -92(%ebp)
.L314:
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L315
	.loc 1 832 0
	movl	$0, -92(%ebp)
	jmp	.L319
.L320:
.LBB37:
	.loc 1 834 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	.loc 1 836 0
	movl	-92(%ebp), %ecx
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp,%ecx,4)
	.loc 1 837 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 841 0
	cmpl	$0, -88(%ebp)
	js	.L321
	movl	-88(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %ecx
	movl	-72(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movzbl	11(%eax), %eax
	testb	%al, %al
	jne	.L321
	.loc 1 843 0
	movl	-92(%ebp), %ecx
	movl	-72(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -120(%ebp,%ecx,4)
.L321:
.LBE37:
	.loc 1 832 0
	addl	$1, -92(%ebp)
.L319:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	cmpl	-92(%ebp), %eax
	jg	.L320
	.loc 1 846 0
	movl	-104(%ebp), %eax
	addl	$44, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 849 0
	movl	$0, -92(%ebp)
	jmp	.L325
.L326:
	.loc 1 850 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %edx
	movl	-92(%ebp), %eax
	movl	-120(%ebp,%eax,4), %eax
	movl	%eax, (%edx)
	.loc 1 849 0
	addl	$1, -92(%ebp)
.L325:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	cmpl	-92(%ebp), %eax
	jg	.L326
	.loc 1 851 0
	movl	$0, -92(%ebp)
	jmp	.L328
.L329:
	.loc 1 852 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	-92(%ebp), %eax
	movl	-240(%ebp,%eax,4), %eax
	movl	%eax, (%edx)
	.loc 1 851 0
	addl	$1, -92(%ebp)
.L328:
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L329
	.loc 1 855 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L331
	movl	-104(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L331
	.loc 1 856 0
	movl	-104(%ebp), %eax
	addl	$76, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
.L331:
	.loc 1 861 0
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	jle	.L334
	.loc 1 862 0
	movl	$0, -92(%ebp)
	jmp	.L336
.L337:
.LBB38:
	.loc 1 864 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	%eax, -68(%ebp)
	.loc 1 865 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 867 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L338
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L338
	movl	-92(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	480(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L341
	movl	-92(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	480(%edx,%eax,4), %eax
	cmpl	$2, %eax
	jne	.L338
.L341:
	.loc 1 871 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
.L338:
.LBE38:
	.loc 1 862 0
	addl	$1, -92(%ebp)
.L336:
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L337
.L334:
	.loc 1 875 0
	movl	$0, -92(%ebp)
	jmp	.L343
.L344:
.LBB39:
	.loc 1 877 0
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L345
	movl	-100(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -268(%ebp)
	jmp	.L347
.L345:
	movl	-92(%ebp), %eax
	movl	%eax, -268(%ebp)
.L347:
	movl	-268(%ebp), %ecx
	movl	%ecx, -60(%ebp)
	.loc 1 880 0
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jge	.L348
	movl	-60(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -264(%ebp)
	jmp	.L350
.L348:
	movl	-100(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %edx
	movl	%edx, -264(%ebp)
.L350:
	movl	-264(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 881 0
	movl	-60(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 882 0
	movl	-60(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	480(%eax,%edx,4), %eax
	movl	%eax, -48(%ebp)
	.loc 1 887 0
	movl	-60(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L351
	.loc 1 890 0
	movl	-60(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$16, %eax
	movzbl	4(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L353
	.loc 1 891 0
	movl	$0, 16(%esp)
	movl	$4, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx_address
	jmp	.L351
.L353:
	.loc 1 893 0
	movl	$0, 20(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$4, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
.L351:
.LBE39:
	.loc 1 875 0
	addl	$1, -92(%ebp)
.L343:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	addl	-100(%ebp), %eax
	cmpl	-92(%ebp), %eax
	jg	.L344
	.loc 1 898 0
	movl	-104(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L356
.L357:
	.loc 1 900 0
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L358
	.loc 1 901 0
	movl	-96(%ebp), %eax
	addl	$4, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$3, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	jmp	.L360
.L358:
	.loc 1 903 0
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$2, %al
	jne	.L360
	.loc 1 904 0
	movl	-96(%ebp), %eax
	addl	$4, %eax
	movl	$0, 20(%esp)
	movl	$2, 16(%esp)
	movl	$4, 12(%esp)
	movl	$24, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
.L360:
	.loc 1 898 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
.L356:
	cmpl	$0, -96(%ebp)
	jne	.L357
	.loc 1 910 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L363
.LBB40:
	.loc 1 913 0
	movl	open_chains@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
	jmp	.L365
.L366:
	.loc 1 914 0
	movl	-44(%ebp), %edx
	movzbl	20(%edx), %eax
	orl	$1, %eax
	movb	%al, 20(%edx)
	.loc 1 913 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L365:
	cmpl	$0, -44(%ebp)
	jne	.L366
.L363:
.LBE40:
	.loc 1 921 0
	movl	$0, -92(%ebp)
	jmp	.L367
.L368:
	.loc 1 923 0
	movl	-92(%ebp), %ecx
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -240(%ebp,%ecx,4)
	.loc 1 924 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	480(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L369
	.loc 1 925 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
.L369:
	.loc 1 921 0
	addl	$1, -92(%ebp)
.L367:
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L368
	.loc 1 927 0
	movl	$0, -92(%ebp)
	jmp	.L372
.L373:
.LBB41:
	.loc 1 929 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 930 0
	movl	-92(%ebp), %ecx
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp,%ecx,4)
	.loc 1 931 0
	movl	-40(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	480(%eax,%edx,4), %eax
	cmpl	$2, %eax
	jne	.L374
	.loc 1 932 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
.L374:
.LBE41:
	.loc 1 927 0
	addl	$1, -92(%ebp)
.L372:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	cmpl	-92(%ebp), %eax
	jg	.L373
	.loc 1 935 0
	movl	-104(%ebp), %eax
	addl	$44, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$2, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
	.loc 1 937 0
	movl	$0, -92(%ebp)
	jmp	.L377
.L378:
	.loc 1 938 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %edx
	movl	-92(%ebp), %eax
	movl	-120(%ebp,%eax,4), %eax
	movl	%eax, (%edx)
	.loc 1 937 0
	addl	$1, -92(%ebp)
.L377:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	cmpl	-92(%ebp), %eax
	jg	.L378
	.loc 1 939 0
	movl	$0, -92(%ebp)
	jmp	.L380
.L381:
	.loc 1 940 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	-92(%ebp), %eax
	movl	-240(%ebp,%eax,4), %eax
	movl	%eax, (%edx)
	.loc 1 939 0
	addl	$1, -92(%ebp)
.L380:
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L381
	.loc 1 948 0
	movl	-104(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	jle	.L383
	.loc 1 950 0
	movl	$0, -92(%ebp)
	jmp	.L385
.L386:
	.loc 1 951 0
	movl	-92(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	480(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L387
.LBB42:
	.loc 1 953 0
	movl	-92(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 954 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 955 0
	movl	-92(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 957 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L389
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L387
.L389:
	.loc 1 961 0
	movl	-92(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$16, %eax
	movzbl	4(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$5, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
.L387:
.LBE42:
	.loc 1 950 0
	addl	$1, -92(%ebp)
.L385:
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L386
	jmp	.L392
.L383:
	.loc 1 965 0
	movl	-104(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L392
	.loc 1 966 0
	movl	$0, -92(%ebp)
	jmp	.L394
.L395:
.LBB43:
	.loc 1 968 0
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jl	.L396
	movl	-100(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -260(%ebp)
	jmp	.L398
.L396:
	movl	-92(%ebp), %eax
	movl	%eax, -260(%ebp)
.L398:
	movl	-260(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	.loc 1 971 0
	movl	-92(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jge	.L399
	movl	-24(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	%edx, -256(%ebp)
	jmp	.L401
.L399:
	movl	-100(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %edx
	movl	%edx, -256(%ebp)
.L401:
	movl	-256(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 972 0
	movl	-24(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 974 0
	movl	-24(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	480(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L402
	.loc 1 975 0
	movl	-24(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$16, %eax
	movzbl	4(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$5, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
.L402:
.LBE43:
	.loc 1 966 0
	addl	$1, -92(%ebp)
.L394:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	addl	-100(%ebp), %eax
	cmpl	-92(%ebp), %eax
	jg	.L395
.L392:
	.loc 1 981 0
	movl	-104(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L404
.L405:
	.loc 1 982 0
	movl	-96(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$10, %al
	jne	.L406
	.loc 1 983 0
	movl	-96(%ebp), %eax
	addl	$4, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$3, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	scan_rtx
.L406:
	.loc 1 981 0
	movl	-96(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -96(%ebp)
.L404:
	cmpl	$0, -96(%ebp)
	jne	.L405
.L294:
.LBE35:
	.loc 1 986 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-104(%ebp), %eax
	je	.L408
	.loc 1 761 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 988 0
	jmp	.L293
.L408:
	.loc 1 992 0
	movl	closed_chains@GOTOFF(%ebx), %eax
	.loc 1 993 0
	addl	$300, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	build_def_use, .-build_def_use
	.section	.rodata
.LC39:
	.string	"Register %s (%d):"
.LC40:
	.string	" %d [%s]"
	.text
	.type	dump_def_use_chain, @function
dump_def_use_chain:
.LFB24:
	.loc 1 1001 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%esi
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$32, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB44:
	.loc 1 1002 0
	jmp	.L412
.L413:
	.loc 1 1004 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1005 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1006 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1007 0
	movl	-16(%ebp), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1008 0
	jmp	.L414
.L415:
	.loc 1 1010 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	reg_class_names@GOTOFF(%ebx,%eax,4), %esi
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1012 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L414:
	.loc 1 1008 0
	cmpl	$0, -20(%ebp)
	jne	.L415
	.loc 1 1014 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1015 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L412:
.LBE44:
	.loc 1 1002 0
	cmpl	$0, 8(%ebp)
	jne	.L413
	.loc 1 1017 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	dump_def_use_chain, .-dump_def_use_chain
	.type	kill_value_regno, @function
kill_value_regno:
.LFB25:
	.loc 1 1080 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%esi
.LCFI56:
	subl	$16, %esp
.LCFI57:
	.loc 1 1083 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L420
	.loc 1 1085 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1086 0
	jmp	.L422
.L423:
	.loc 1 1087 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L422:
	.loc 1 1086 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L423
	.loc 1 1089 0
	movl	-12(%ebp), %esi
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	$8, %eax
	movl	%ecx, (%eax)
	jmp	.L425
.L420:
	.loc 1 1091 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$-1, -8(%ebp)
	je	.L425
	.loc 1 1093 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L427
.L428:
	.loc 1 1094 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1093 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L427:
	cmpl	$-1, -12(%ebp)
	jne	.L428
.L425:
	.loc 1 1097 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, (%eax,%ecx)
	.loc 1 1098 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1099 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	$-1, (%eax)
	.loc 1 1104 0
	addl	$16, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	kill_value_regno, .-kill_value_regno
	.type	kill_value, @function
kill_value:
.LFB26:
	.loc 1 1113 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%esi
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$32, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1119 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L431
	.loc 1 1120 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, 8(%ebp)
.L431:
	.loc 1 1122 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L448
.LBB45:
	.loc 1 1124 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1125 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1129 0
	movl	$0, -16(%ebp)
	jmp	.L435
.L436:
	.loc 1 1130 0
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	kill_value_regno
	.loc 1 1129 0
	addl	$1, -16(%ebp)
.L435:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L436
	.loc 1 1133 0
	movl	12(%ebp), %eax
	movl	2112(%eax), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L438
	.loc 1 1134 0
	movl	$0, -12(%ebp)
	jmp	.L441
.L438:
	.loc 1 1136 0
	movl	12(%ebp), %eax
	movl	2112(%eax), %edx
	movl	-24(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1137 0
	jmp	.L441
.L442:
	.loc 1 1139 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	testl	%eax, %eax
	je	.L443
	.loc 1 1141 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1142 0
	movl	-20(%ebp), %eax
	addl	-12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L443
	.loc 1 1143 0
	movl	$0, -16(%ebp)
	jmp	.L446
.L447:
	.loc 1 1144 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	kill_value_regno
	.loc 1 1143 0
	addl	$1, -16(%ebp)
.L446:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L447
.L443:
	.loc 1 1137 0
	addl	$1, -12(%ebp)
.L441:
	movl	-12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L442
.L448:
.LBE45:
	.loc 1 1147 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	kill_value, .-kill_value
	.type	set_value_regno, @function
set_value_regno:
.LFB27:
	.loc 1 1156 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$36, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1159 0
	movl	8(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx,%ecx)
	.loc 1 1161 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1162 0
	movl	16(%ebp), %eax
	movl	2112(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L452
	.loc 1 1163 0
	movl	16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 2112(%edx)
.L452:
	.loc 1 1164 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	set_value_regno, .-set_value_regno
	.type	init_value_data, @function
init_value_data:
.LFB28:
	.loc 1 1171 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%esi
.LCFI69:
	subl	$16, %esp
.LCFI70:
	.loc 1 1173 0
	movl	$0, -8(%ebp)
	jmp	.L454
.L455:
	.loc 1 1175 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, (%eax,%ecx)
	.loc 1 1176 0
	movl	-8(%ebp), %edx
	movl	-8(%ebp), %esi
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	%esi, (%eax)
	.loc 1 1177 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	$-1, (%eax)
	.loc 1 1173 0
	addl	$1, -8(%ebp)
.L454:
	cmpl	$175, -8(%ebp)
	jle	.L455
	.loc 1 1179 0
	movl	8(%ebp), %eax
	movl	$0, 2112(%eax)
	.loc 1 1180 0
	addl	$16, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	init_value_data, .-init_value_data
	.type	kill_clobbered_value, @function
kill_clobbered_value:
.LFB29:
	.loc 1 1189 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	subl	$24, %esp
.LCFI73:
	.loc 1 1190 0
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1191 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L461
	.loc 1 1192 0
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	kill_value
.L461:
	.loc 1 1193 0
	leave
	ret
.LFE29:
	.size	kill_clobbered_value, .-kill_clobbered_value
	.type	kill_set_value, @function
kill_set_value:
.LFB30:
	.loc 1 1203 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	subl	$40, %esp
.LCFI76:
	.loc 1 1204 0
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1205 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L466
	.loc 1 1207 0
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	kill_value
	.loc 1 1208 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L466
	.loc 1 1209 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	set_value_regno
.L466:
	.loc 1 1211 0
	leave
	ret
.LFE30:
	.size	kill_set_value, .-kill_set_value
	.type	kill_autoinc_value, @function
kill_autoinc_value:
.LFB31:
	.loc 1 1221 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$36, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1222 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1223 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1225 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$97, %al
	jne	.L468
	.loc 1 1227 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1228 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	kill_value
	.loc 1 1229 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L470
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L470
	movl	$5, -28(%ebp)
	jmp	.L473
.L470:
	movl	$4, -28(%ebp)
.L473:
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	set_value_regno
	.loc 1 1230 0
	movl	$-1, -24(%ebp)
	jmp	.L474
.L468:
	.loc 1 1233 0
	movl	$0, -24(%ebp)
.L474:
	movl	-24(%ebp), %eax
	.loc 1 1234 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	kill_autoinc_value, .-kill_autoinc_value
	.type	copy_value, @function
copy_value:
.LFB32:
	.loc 1 1244 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%esi
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$48, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1245 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1246 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1252 0
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L499
	.loc 1 1257 0
	cmpl	$29, -28(%ebp)
	je	.L499
	.loc 1 1261 0
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L480
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L482
	movl	$17, -44(%ebp)
	jmp	.L484
.L482:
	movl	$30, -44(%ebp)
.L484:
	movl	-44(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L499
.L480:
	.loc 1 1265 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1266 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1267 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L485
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	ja	.L499
.L485:
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jbe	.L488
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jbe	.L488
	.loc 1 1269 0
	jmp	.L499
.L488:
	.loc 1 1274 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	testl	%eax, %eax
	jne	.L490
	.loc 1 1275 0
	movl	-28(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	set_value_regno
	jmp	.L492
.L490:
	.loc 1 1292 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	-16(%ebp), %eax
	jbe	.L493
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L493
	.loc 1 1295 0
	jmp	.L499
.L493:
	.loc 1 1300 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	-16(%ebp), %eax
	jb	.L499
.L492:
	.loc 1 1305 0
	movl	-28(%ebp), %esi
	movl	-24(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	16(%ebp), %edx
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	%ecx, (%eax)
	.loc 1 1307 0
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L496
.L497:
	movl	-12(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L496:
	movl	-12(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	jne	.L497
	.loc 1 1309 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L499:
	.loc 1 1314 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	copy_value, .-copy_value
	.type	mode_change_ok, @function
mode_change_ok:
.LFB33:
	.loc 1 1322 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%ebx
.LCFI88:
	subl	$20, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1323 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jae	.L501
	.loc 1 1324 0
	movl	$0, -8(%ebp)
	jmp	.L503
.L501:
	.loc 1 1327 0
	movl	16(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_cannot_change_mode_class@PLT
	movzbl	%al, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L503:
	movl	-8(%ebp), %eax
	.loc 1 1331 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	mode_change_ok, .-mode_change_ok
	.type	maybe_mode_change, @function
maybe_mode_change:
.LFB34:
	.loc 1 1342 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$68, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1343 0
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L506
	.loc 1 1344 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$71, (%esp)
	call	gen_rtx_fmt_i0@PLT
	movl	%eax, -52(%ebp)
	jmp	.L508
.L506:
	.loc 1 1345 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mode_change_ok
	testb	%al, %al
	je	.L509
.LBB46:
	.loc 1 1347 0
	movl	24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1348 0
	movl	24(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1350 0
	movl	12(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-28(%ebp)
	movl	%eax, %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	subl	%edx, %eax
	imull	%ecx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1352 0
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %ecx
	movl	16(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1353 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L511
	movl	$8, -48(%ebp)
	jmp	.L513
.L511:
	movl	$4, -48(%ebp)
.L513:
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	-48(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 1354 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1356 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L514
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L516
.L514:
	movl	$0, -44(%ebp)
.L516:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L517
	movl	-12(%ebp), %edx
	movl	%edx, -40(%ebp)
	jmp	.L519
.L517:
	movl	$0, -40(%ebp)
.L519:
	movl	-44(%ebp), %eax
	addl	-40(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1358 0
	movl	-16(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno_offset@PLT
	addl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$71, (%esp)
	call	gen_rtx_fmt_i0@PLT
	movl	%eax, -52(%ebp)
	jmp	.L508
.L509:
.LBE46:
	.loc 1 1363 0
	movl	$0, -52(%ebp)
.L508:
	movl	-52(%ebp), %eax
	.loc 1 1364 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	maybe_mode_change, .-maybe_mode_change
	.type	find_oldest_value_reg, @function
find_oldest_value_reg:
.LFB35:
	.loc 1 1375 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	pushl	%edi
.LCFI96:
	pushl	%esi
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$60, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1376 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1377 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1387 0
	movl	-32(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	cmpl	-28(%ebp), %eax
	je	.L522
	.loc 1 1389 0
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %esi
	movl	-32(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	-32(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	%eax, %esi
	jbe	.L522
	.loc 1 1391 0
	movl	$0, -48(%ebp)
	jmp	.L525
.L522:
	.loc 1 1394 0
	movl	-32(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L526
.L527:
.LBB47:
	.loc 1 1396 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1399 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	reg_class_contents@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	4(%esi,%eax,8), %edi
	movl	(%esi,%eax,8), %esi
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L533
	movl	%edx, %eax
	xorl	%edx, %edx
.L533:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L528
	movl	-32(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_mode_change
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L528
	.loc 1 1403 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1404 0
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L525
.L528:
.LBE47:
	.loc 1 1394 0
	movl	-24(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L526:
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	.L527
	.loc 1 1408 0
	movl	$0, -48(%ebp)
.L525:
	movl	-48(%ebp), %eax
	.loc 1 1409 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	find_oldest_value_reg, .-find_oldest_value_reg
	.section	.rodata
	.align 4
.LC41:
	.string	"insn %u: replaced reg %u with %u\n"
	.text
	.type	replace_oldest_value_reg, @function
replace_oldest_value_reg:
.LFB36:
	.loc 1 1420 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%edi
.LCFI102:
	pushl	%esi
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$44, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1421 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_oldest_value_reg
	movl	%eax, -16(%ebp)
	.loc 1 1422 0
	cmpl	$0, -16(%ebp)
	je	.L535
	.loc 1 1424 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L537
	.loc 1 1425 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %esi
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
.L537:
	.loc 1 1428 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1429 0
	movl	$1, -32(%ebp)
	jmp	.L539
.L535:
	.loc 1 1431 0
	movl	$0, -32(%ebp)
.L539:
	movl	-32(%ebp), %eax
	.loc 1 1432 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	replace_oldest_value_reg, .-replace_oldest_value_reg
	.type	replace_oldest_value_addr, @function
replace_oldest_value_addr:
.LFB37:
	.loc 1 1445 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%esi
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$112, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1446 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1447 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -64(%ebp)
	.loc 1 1450 0
	movb	$0, -9(%ebp)
	.loc 1 1452 0
	movl	-64(%ebp), %eax
	subl	$71, %eax
	movl	%eax, -88(%ebp)
	cmpl	$40, -88(%ebp)
	ja	.L542
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	.L547@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L547:
	.long	.L543@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L544@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L545@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L542@GOTOFF
	.long	.L546@GOTOFF
	.long	.L546@GOTOFF
	.long	.L546@GOTOFF
	.long	.L546@GOTOFF
	.long	.L546@GOTOFF
	.long	.L546@GOTOFF
	.text
.L545:
.LBB48:
	.loc 1 1456 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1457 0
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1458 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 1459 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1460 0
	movl	-48(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1461 0
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1462 0
	movl	$0, -24(%ebp)
	.loc 1 1463 0
	movl	$0, -20(%ebp)
	.loc 1 1465 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L548
	.loc 1 1467 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1468 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
.L548:
	.loc 1 1471 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L550
	.loc 1 1473 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1474 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -36(%ebp)
.L550:
	.loc 1 1477 0
	cmpl	$88, -40(%ebp)
	je	.L552
	cmpl	$130, -40(%ebp)
	je	.L552
	cmpl	$132, -40(%ebp)
	je	.L552
	cmpl	$131, -40(%ebp)
	je	.L552
	cmpl	$76, -36(%ebp)
	jne	.L557
.L552:
	.loc 1 1480 0
	movl	-68(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1481 0
	movl	-68(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1477 0
	jmp	.L558
.L557:
	.loc 1 1483 0
	cmpl	$88, -36(%ebp)
	je	.L559
	cmpl	$130, -36(%ebp)
	je	.L559
	cmpl	$132, -36(%ebp)
	je	.L559
	cmpl	$131, -36(%ebp)
	je	.L559
	cmpl	$76, -40(%ebp)
	jne	.L564
.L559:
	.loc 1 1486 0
	movl	-68(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1487 0
	movl	-68(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1483 0
	jmp	.L558
.L564:
	.loc 1 1489 0
	cmpl	$64, -40(%ebp)
	je	.L565
	cmpl	$68, -40(%ebp)
	je	.L565
	cmpl	$78, -40(%ebp)
	je	.L565
	cmpl	$77, -40(%ebp)
	jne	.L569
.L565:
	.loc 1 1491 0
	movl	-68(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1489 0
	jmp	.L558
.L569:
	.loc 1 1492 0
	cmpl	$64, -36(%ebp)
	je	.L570
	cmpl	$68, -36(%ebp)
	je	.L570
	cmpl	$78, -36(%ebp)
	je	.L570
	cmpl	$77, -36(%ebp)
	jne	.L574
.L570:
	.loc 1 1494 0
	movl	-68(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1492 0
	jmp	.L558
.L574:
	.loc 1 1495 0
	cmpl	$71, -40(%ebp)
	jne	.L575
	cmpl	$71, -36(%ebp)
	jne	.L575
.LBB49:
	.loc 1 1505 0
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L578
	.loc 1 1506 0
	movl	$0, -16(%ebp)
	jmp	.L580
.L578:
	.loc 1 1507 0
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_reg_mode_ok_for_base_p@PLT
	testl	%eax, %eax
	je	.L581
	.loc 1 1508 0
	movl	$1, -16(%ebp)
	jmp	.L580
.L581:
	.loc 1 1512 0
	movl	$0, -16(%ebp)
.L580:
	.loc 1 1514 0
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	-68(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1515 0
	cmpl	$0, -16(%ebp)
	sete	%al
	movzbl	%al, %eax
	sall	$3, %eax
	addl	-68(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1495 0
	jmp	.L558
.L575:
.LBE49:
	.loc 1 1517 0
	cmpl	$71, -40(%ebp)
	jne	.L583
	.loc 1 1519 0
	movl	-68(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1520 0
	movl	-68(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	jmp	.L558
.L583:
	.loc 1 1522 0
	cmpl	$71, -36(%ebp)
	jne	.L558
	.loc 1 1524 0
	movl	-68(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1525 0
	movl	-68(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
.L558:
	.loc 1 1528 0
	cmpl	$0, -24(%ebp)
	je	.L586
	.loc 1 1529 0
	movzbl	-9(%ebp), %esi
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_oldest_value_addr
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
.L586:
	.loc 1 1531 0
	cmpl	$0, -20(%ebp)
	je	.L588
	.loc 1 1532 0
	movzbl	-9(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L590
	movl	$2, -80(%ebp)
	jmp	.L592
.L590:
	movl	$5, -80(%ebp)
.L592:
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_oldest_value_addr
	movzbl	%al, %eax
	orl	-84(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
.L588:
	.loc 1 1535 0
	movzbl	-9(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L593
.L546:
.LBE48:
	.loc 1 1544 0
	movl	$0, -76(%ebp)
	jmp	.L593
.L544:
	.loc 1 1547 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_oldest_value_mem
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	jmp	.L593
.L543:
	.loc 1 1550 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_oldest_value_reg
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	jmp	.L593
.L542:
	.loc 1 1556 0
	movl	-64(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1557 0
	movl	-64(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -56(%ebp)
	jmp	.L594
.L595:
	.loc 1 1559 0
	movl	-56(%ebp), %eax
	addl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L596
	.loc 1 1560 0
	movzbl	-9(%ebp), %esi
	movl	-56(%ebp), %eax
	sall	$3, %eax
	addl	-68(%ebp), %eax
	leal	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_oldest_value_addr
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
	jmp	.L598
.L596:
	.loc 1 1562 0
	movl	-56(%ebp), %eax
	addl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L598
	.loc 1 1563 0
	movl	-56(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	jmp	.L600
.L601:
	.loc 1 1564 0
	movzbl	-9(%ebp), %esi
	movl	-56(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	leal	4(%eax), %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_oldest_value_addr
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
	.loc 1 1563 0
	subl	$1, -52(%ebp)
.L600:
	cmpl	$0, -52(%ebp)
	jns	.L601
.L598:
	.loc 1 1557 0
	subl	$1, -56(%ebp)
.L594:
	cmpl	$0, -56(%ebp)
	jns	.L595
	.loc 1 1568 0
	movzbl	-9(%ebp), %eax
	movl	%eax, -76(%ebp)
.L593:
	movl	-76(%ebp), %eax
	.loc 1 1569 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE37:
	.size	replace_oldest_value_addr, .-replace_oldest_value_addr
	.type	replace_oldest_value_mem, @function
replace_oldest_value_mem:
.LFB38:
	.loc 1 1578 0
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
	.loc 1 1579 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L605
	movl	$2, -8(%ebp)
	jmp	.L607
.L605:
	movl	$5, -8(%ebp)
.L607:
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_oldest_value_addr
	movzbl	%al, %eax
	.loc 1 1582 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	replace_oldest_value_mem, .-replace_oldest_value_mem
	.section	.rodata
	.type	__FUNCTION__.12494, @object
	.size	__FUNCTION__.12494, 27
__FUNCTION__.12494:
	.string	"copyprop_hardreg_forward_1"
	.text
	.type	copyprop_hardreg_forward_1, @function
copyprop_hardreg_forward_1:
.LFB39:
	.loc 1 1590 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%edi
.LCFI117:
	pushl	%esi
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$108, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1591 0
	movb	$0, -15(%ebp)
	.loc 1 1594 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
.L610:
.LBB50:
	.loc 1 1600 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L611
	.loc 1 1602 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-72(%ebp), %eax
	je	.L613
	.loc 1 1605 0
	jmp	.L614
.L611:
	.loc 1 1608 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L615
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L617
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L619
.L617:
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -84(%ebp)
.L619:
	movl	-84(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L620
.L615:
	movl	$0, -88(%ebp)
.L620:
	movl	-88(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1609 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 1610 0
	movl	$1, (%esp)
	call	constrain_operands@PLT
	testl	%eax, %eax
	jne	.L621
	.loc 1 1611 0
	leal	__FUNCTION__.12494@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$1611, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_fatal_insn_not_found@PLT
.L621:
	.loc 1 1612 0
	call	preprocess_constraints@PLT
	.loc 1 1613 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1614 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	.loc 1 1615 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	notl	%eax
	shrl	$31, %eax
	movb	%al, -14(%ebp)
	.loc 1 1621 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	.loc 1 1622 0
	movl	$0, -64(%ebp)
	jmp	.L623
.L624:
.LBB51:
	.loc 1 1624 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1625 0
	cmpl	$0, -48(%ebp)
	js	.L625
	.loc 1 1626 0
	movl	-64(%ebp), %edi
	movl	-60(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-48(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	-80(%ebp), %eax
	addl	%eax, %eax
	addl	-80(%ebp), %eax
	leal	0(,%eax,8), %edx
	imull	$720, %edi, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	%ecx, (%eax)
.L625:
	.loc 1 1627 0
	cmpl	$0, -48(%ebp)
	jns	.L627
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$16, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L627
	cmpl	$0, -56(%ebp)
	je	.L630
	movl	-64(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	480(%edx,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L630
.L627:
	.loc 1 1629 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	$2, 480(%eax,%edx,4)
.L630:
.LBE51:
	.loc 1 1622 0
	addl	$1, -64(%ebp)
.L623:
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L624
	.loc 1 1633 0
	movl	$0, -64(%ebp)
	jmp	.L633
.L634:
	.loc 1 1634 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$16, %eax
	movzbl	4(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L635
	.loc 1 1635 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	kill_value
.L635:
	.loc 1 1633 0
	addl	$1, -64(%ebp)
.L633:
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L634
	.loc 1 1640 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	kill_clobbered_value@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 1644 0
	movl	-72(%ebp), %edx
	addl	$44, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	kill_autoinc_value@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	.loc 1 1647 0
	movl	$0, -64(%ebp)
	jmp	.L638
.L639:
	.loc 1 1648 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$16, %eax
	movzbl	4(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L640
	.loc 1 1649 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	kill_value
.L640:
	.loc 1 1647 0
	addl	$1, -64(%ebp)
.L638:
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L639
	.loc 1 1653 0
	cmpl	$0, -52(%ebp)
	je	.L643
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L643
.LBB52:
	.loc 1 1655 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1656 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1657 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 1663 0
	movl	-40(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	cmpl	-36(%ebp), %eax
	je	.L646
	.loc 1 1665 0
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %esi
	movl	-40(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	-40(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	cmpl	%eax, %esi
	ja	.L643
.L646:
	.loc 1 1672 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L648
	.loc 1 1674 0
	movl	-40(%ebp), %edx
	movl	mips_regno_to_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_oldest_value_reg
	movl	%eax, -28(%ebp)
	.loc 1 1675 0
	cmpl	$0, -28(%ebp)
	je	.L648
	movl	-52(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L648
	.loc 1 1677 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L652
	.loc 1 1678 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-72(%ebp), %eax
	movl	4(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L652:
	.loc 1 1681 0
	movb	$1, -15(%ebp)
	.loc 1 1682 0
	jmp	.L654
.L648:
	.loc 1 1687 0
	movl	-40(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L655
.L656:
	.loc 1 1690 0
	movl	-40(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %esi
	movl	-32(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	maybe_mode_change
	movl	%eax, -28(%ebp)
	.loc 1 1692 0
	cmpl	$0, -28(%ebp)
	je	.L657
	.loc 1 1694 0
	movl	-52(%ebp), %edx
	addl	$12, %edx
	movl	$0, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	testl	%eax, %eax
	je	.L657
	.loc 1 1696 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1697 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L660
	.loc 1 1698 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-72(%ebp), %eax
	movl	4(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L660:
	.loc 1 1701 0
	movb	$1, -15(%ebp)
	.loc 1 1702 0
	jmp	.L654
.L657:
	.loc 1 1688 0
	movl	-32(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L655:
	.loc 1 1687 0
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L656
.L643:
.LBE52:
	.loc 1 1711 0
	movl	$0, -64(%ebp)
	jmp	.L662
.L663:
.LBB53:
	.loc 1 1713 0
	movb	$0, -13(%ebp)
	.loc 1 1718 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L664
	.loc 1 1722 0
	cmpb	$0, -14(%ebp)
	je	.L666
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L666
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	4(%eax), %ecx
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %ecx
	je	.L664
.L666:
	.loc 1 1727 0
	movl	-64(%ebp), %eax
	movl	recog_data@GOT(%ebx), %edx
	movl	480(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L669
	.loc 1 1729 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$16, %eax
	movzbl	4(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	testb	%al, %al
	je	.L671
	.loc 1 1730 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	replace_oldest_value_addr
	movb	%al, -13(%ebp)
	jmp	.L677
.L671:
	.loc 1 1734 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L674
	.loc 1 1735 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	recog_op_alt@GOT(%ebx), %esi
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	imull	$720, %ecx, %eax
	leal	(%edx,%eax), %eax
	addl	%esi, %eax
	addl	$4, %eax
	movl	(%eax), %ecx
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	replace_oldest_value_reg
	movb	%al, -13(%ebp)
	jmp	.L677
.L674:
	.loc 1 1739 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L677
	.loc 1 1740 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_oldest_value_mem
	movb	%al, -13(%ebp)
	jmp	.L677
.L669:
	.loc 1 1743 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L677
	.loc 1 1744 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	replace_oldest_value_mem
	movb	%al, -13(%ebp)
.L677:
	.loc 1 1748 0
	cmpb	$0, -13(%ebp)
	je	.L664
.LBB54:
	.loc 1 1753 0
	movb	$1, -15(%ebp)
	.loc 1 1755 0
	movl	-64(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1756 0
	movl	-64(%ebp), %ecx
	movl	recog_data@GOT(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx,%ecx,4)
	.loc 1 1757 0
	movl	$0, -24(%ebp)
	jmp	.L680
.L681:
	.loc 1 1758 0
	movl	-24(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movzbl	616(%edx,%eax), %eax
	movzbl	%al, %eax
	cmpl	-64(%ebp), %eax
	jne	.L682
	.loc 1 1759 0
	movl	-24(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
.L682:
	.loc 1 1757 0
	addl	$1, -24(%ebp)
.L680:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	cmpl	-24(%ebp), %eax
	jg	.L681
.L664:
.LBE54:
.LBE53:
	.loc 1 1711 0
	addl	$1, -64(%ebp)
.L662:
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L663
.L654:
	.loc 1 1765 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L684
	.loc 1 1766 0
	movl	$0, -64(%ebp)
	jmp	.L686
.L687:
	.loc 1 1767 0
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-64(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L695
	movl	%edx, %eax
	xorl	%edx, %edx
.L695:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L688
	.loc 1 1768 0
	movl	-64(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	kill_value_regno
.L688:
	.loc 1 1766 0
	addl	$1, -64(%ebp)
.L686:
	cmpl	$175, -64(%ebp)
	jle	.L687
.L684:
	.loc 1 1771 0
	movl	-72(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	kill_set_value@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 1774 0
	cmpl	$0, -52(%ebp)
	je	.L690
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L690
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L690
	.loc 1 1775 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	copy_value
.L690:
	.loc 1 1777 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-72(%ebp), %eax
	je	.L613
.L614:
.LBE50:
	.loc 1 1594 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1779 0
	jmp	.L610
.L613:
	.loc 1 1781 0
	movzbl	-15(%ebp), %eax
	.loc 1 1782 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	copyprop_hardreg_forward_1, .-copyprop_hardreg_forward_1
	.section	.rodata
.LC42:
	.string	"\n\n"
	.text
.globl copyprop_hardreg_forward
	.type	copyprop_hardreg_forward, @function
copyprop_hardreg_forward:
.LFB40:
	.loc 1 1788 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%ebx
.LCFI123:
	subl	$36, %esp
.LCFI124:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1791 0
	movl	$0, -12(%ebp)
	.loc 1 1793 0
	movb	$0, -5(%ebp)
	.loc 1 1795 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	$2116, %eax, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1797 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L697
.L698:
	.loc 1 1803 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L699
	.loc 1 1804 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L701
.L702:
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
.L701:
	cmpl	$0, -12(%ebp)
	je	.L699
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L702
.L699:
	.loc 1 1805 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L704
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L704
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %eax
	andl	$12, %eax
	testl	%eax, %eax
	jne	.L704
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L704
	cmpl	$0, -12(%ebp)
	je	.L704
	.loc 1 1810 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	imull	$2116, %eax, %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	imull	$2116, %eax, %eax
	addl	-20(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$2116, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	.loc 1 1805 0
	jmp	.L710
.L704:
	.loc 1 1812 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	imull	$2116, %eax, %eax
	addl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	init_value_data
.L710:
	.loc 1 1814 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	imull	$2116, %eax, %eax
	addl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	copyprop_hardreg_forward_1
	testb	%al, %al
	je	.L711
	.loc 1 1815 0
	movb	$1, -5(%ebp)
.L711:
	.loc 1 1797 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L697:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L698
	.loc 1 1818 0
	cmpb	$0, -5(%ebp)
	je	.L714
	.loc 1 1820 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L716
	.loc 1 1821 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L716:
	.loc 1 1826 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	delete_noop_moves@PLT
	.loc 1 1827 0
	movl	$25, 8(%esp)
	movl	$2, 4(%esp)
	movl	$0, (%esp)
	call	update_life_info@PLT
.L714:
	.loc 1 1833 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1834 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	copyprop_hardreg_forward, .-copyprop_hardreg_forward
	.section	.rodata
	.align 4
.LC43:
	.string	"[%u] Bad next_regno for empty chain (%u)\n"
.LC44:
	.string	"[%u %s] "
.LC45:
	.string	"[%u] Loop in regno chain\n"
.LC46:
	.string	"[%u] Bad oldest_regno (%u)\n"
	.align 4
.LC47:
	.string	"[%u] Non-empty reg in chain (%s %u %i)\n"
	.text
.globl debug_value_data
	.type	debug_value_data, @function
debug_value_data:
.LFB41:
	.loc 1 1841 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	pushl	%edi
.LCFI127:
	pushl	%esi
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$108, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB55:
	.loc 1 1845 0
	leal	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE55:
	.loc 1 1847 0
	movl	$0, -28(%ebp)
	jmp	.L720
.L721:
	.loc 1 1848 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L722
	.loc 1 1850 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	testl	%eax, %eax
	jne	.L724
	.loc 1 1852 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L722
	.loc 1 1853 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1855 0
	jmp	.L722
.L724:
	.loc 1 1858 0
	movl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -92(%ebp)
	movl	-56(%ebp,%eax,8), %edx
	movl	-52(%ebp,%eax,8), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L748
	movl	%esi, %edi
	xorl	%esi, %esi
.L748:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-92(%ebp), %ecx
	movl	%eax, -56(%ebp,%ecx,8)
	movl	%edx, -52(%ebp,%ecx,8)
	.loc 1 1859 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1861 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1862 0
	jmp	.L728
.L729:
	.loc 1 1865 0
	movl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	-56(%ebp,%eax,8), %esi
	movl	-52(%ebp,%eax,8), %edi
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L747
	movl	%edx, %eax
	xorl	%edx, %edx
.L747:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L730
	.loc 1 1867 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1868 0
	jmp	.L744
.L730:
	.loc 1 1871 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L733
	.loc 1 1873 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1875 0
	jmp	.L744
.L733:
	.loc 1 1877 0
	movl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	-56(%ebp,%eax,8), %edx
	movl	-52(%ebp,%eax,8), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L746
	movl	%esi, %edi
	xorl	%esi, %esi
.L746:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %ecx
	movl	%eax, -56(%ebp,%ecx,8)
	movl	%edx, -52(%ebp,%ecx,8)
	.loc 1 1878 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1863 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L728:
	.loc 1 1862 0
	cmpl	$-1, -24(%ebp)
	jne	.L729
	.loc 1 1880 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L722:
	.loc 1 1847 0
	addl	$1, -28(%ebp)
.L720:
	cmpl	$175, -28(%ebp)
	jbe	.L721
	.loc 1 1883 0
	movl	$0, -28(%ebp)
	jmp	.L737
.L738:
	.loc 1 1884 0
	movl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	-56(%ebp,%eax,8), %esi
	movl	-52(%ebp,%eax,8), %edi
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L745
	movl	%edx, %eax
	xorl	%edx, %edx
.L745:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L739
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	testl	%eax, %eax
	jne	.L741
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L741
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L739
.L741:
	.loc 1 1888 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %edi
	movl	-28(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L739:
	.loc 1 1883 0
	addl	$1, -28(%ebp)
.L737:
	cmpl	$175, -28(%ebp)
	jbe	.L738
.L744:
	.loc 1 1891 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	debug_value_data, .-debug_value_data
	.local	rename_obstack
	.comm	rename_obstack,44,32
	.local	open_chains
	.comm	open_chains,4,4
	.local	closed_chains
	.comm	closed_chains,4,4
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI12-.LFB17
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI19
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
	.long	.LCFI24-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI25
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI29-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI30
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI35-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI39-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI40
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
	.long	.LCFI43-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI49-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI54-.LFB25
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
	.byte	0x86
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
	.long	.LCFI58-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI59
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
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI63-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI67-.LFB28
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
	.byte	0x86
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
	.long	.LCFI71-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI74-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
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
	.long	.LCFI80-.LCFI78
	.byte	0x83
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
	.long	.LCFI81-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI82
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI86-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI89-.LCFI87
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI90-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI94-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI95
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI100-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI101
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI106-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI107
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI111-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI115-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI120-.LCFI116
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI121-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI124-.LCFI122
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI125-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI126
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE52:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 9 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "../../../include/gnu/obstack.h"
	.file 12 "../../../kgccfe/gnu/recog.h"
	.file 13 "/usr/include/libio.h"
	.file 14 "/usr/include/bits/types.h"
	.file 15 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 16 "../../../kgccfe/gnu/regs.h"
	.file 17 "../../../kgccfe/gnu/output.h"
	.file 18 "../../../kgccfe/gnu/flags.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI25-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI81-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI82-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI125-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI126-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3f42
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/regrename.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa9
	.uleb128 0x3
	.byte	0x4
	.long	0xaf
	.uleb128 0x4
	.long	0x19e
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x9e1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.byte	0x8d
	.long	0x798
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x94
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x3
	.byte	0x97
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x3
	.byte	0x9f
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x3
	.byte	0xa8
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x3
	.byte	0xba
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x3
	.byte	0xc1
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x3
	.byte	0xc6
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x3
	.byte	0xcf
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x3
	.byte	0xd4
	.long	0x1600
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1b1
	.uleb128 0x4
	.long	0x1e6
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1610
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x1f8
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20a
	.uleb128 0x9
	.long	0x20f
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x394
	.string	"reg_class"
	.byte	0x4
	.byte	0x9
	.value	0x7ec
	.uleb128 0xc
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xc
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xc
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xc
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xc
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xc
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xc
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xc
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xc
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xc
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xc
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xc
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xc
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xc
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xc
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xc
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xc
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xc
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xc
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xc
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xc
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xc
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xc
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xc
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xc
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xc
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xf
	.byte	0xd6
	.long	0x394
	.uleb128 0xa
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xa
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xa
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xa
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xa
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0xe
	.byte	0x3b
	.long	0x408
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xe
	.byte	0x90
	.long	0x452
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xe
	.byte	0x91
	.long	0x433
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20f
	.uleb128 0x2
	.string	"FILE"
	.byte	0xa
	.byte	0x2e
	.long	0x483
	.uleb128 0xf
	.long	0x6fe
	.long	.LASF2
	.byte	0x94
	.byte	0xa
	.byte	0x2e
	.uleb128 0x10
	.string	"_flags"
	.byte	0xd
	.value	0x10c
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"_IO_read_ptr"
	.byte	0xd
	.value	0x111
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"_IO_read_end"
	.byte	0xd
	.value	0x112
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"_IO_read_base"
	.byte	0xd
	.value	0x113
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"_IO_write_base"
	.byte	0xd
	.value	0x114
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"_IO_write_ptr"
	.byte	0xd
	.value	0x115
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"_IO_write_end"
	.byte	0xd
	.value	0x116
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"_IO_buf_base"
	.byte	0xd
	.value	0x117
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"_IO_buf_end"
	.byte	0xd
	.value	0x118
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"_IO_save_base"
	.byte	0xd
	.value	0x11a
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"_IO_backup_base"
	.byte	0xd
	.value	0x11b
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"_IO_save_end"
	.byte	0xd
	.value	0x11c
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"_markers"
	.byte	0xd
	.value	0x11e
	.long	0x75f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"_chain"
	.byte	0xd
	.value	0x120
	.long	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"_fileno"
	.byte	0xd
	.value	0x122
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"_flags2"
	.byte	0xd
	.value	0x126
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"_old_offset"
	.byte	0xd
	.value	0x128
	.long	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"_cur_column"
	.byte	0xd
	.value	0x12c
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"_vtable_offset"
	.byte	0xd
	.value	0x12d
	.long	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x10
	.string	"_shortbuf"
	.byte	0xd
	.value	0x12e
	.long	0x76b
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x10
	.string	"_lock"
	.byte	0xd
	.value	0x132
	.long	0x77b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"_offset"
	.byte	0xd
	.value	0x13b
	.long	0x45e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"__pad1"
	.byte	0xd
	.value	0x144
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"__pad2"
	.byte	0xd
	.value	0x145
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"__pad3"
	.byte	0xd
	.value	0x146
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"__pad4"
	.byte	0xd
	.value	0x147
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"__pad5"
	.byte	0xd
	.value	0x148
	.long	0x3a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"_mode"
	.byte	0xd
	.value	0x14a
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"_unused2"
	.byte	0xd
	.value	0x14c
	.long	0x781
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x11
	.long	0x70e
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0x3
	.byte	0x0
	.uleb128 0x13
	.string	"_IO_lock_t"
	.byte	0xd
	.byte	0xb0
	.uleb128 0x4
	.long	0x75f
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xd
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xd
	.byte	0xb7
	.long	0x75f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xd
	.byte	0xb8
	.long	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xd
	.byte	0xbc
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71c
	.uleb128 0x3
	.byte	0x4
	.long	0x483
	.uleb128 0x11
	.long	0x77b
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70e
	.uleb128 0x11
	.long	0x791
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x797
	.uleb128 0x14
	.uleb128 0x15
	.long	0x9e1
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0xc
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xc
	.string	"BImode"
	.sleb128 1
	.uleb128 0xc
	.string	"QImode"
	.sleb128 2
	.uleb128 0xc
	.string	"HImode"
	.sleb128 3
	.uleb128 0xc
	.string	"SImode"
	.sleb128 4
	.uleb128 0xc
	.string	"DImode"
	.sleb128 5
	.uleb128 0xc
	.string	"TImode"
	.sleb128 6
	.uleb128 0xc
	.string	"OImode"
	.sleb128 7
	.uleb128 0xc
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xc
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xc
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xc
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xc
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xc
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xc
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xc
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xc
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xc
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xc
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xc
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xc
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xc
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xc
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xc
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xc
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xc
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xc
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xc
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xc
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xc
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xc
	.string	"COImode"
	.sleb128 30
	.uleb128 0xc
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xc
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xc
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xc
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xc
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xc
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xc
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xc
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xc
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xc
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xc
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xc
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xc
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xc
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xc
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xc
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xc
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xc
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xc
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xc
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xc
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xc
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xc
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xc
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x15
	.long	0x11b0
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0xc
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xc
	.string	"NIL"
	.sleb128 1
	.uleb128 0xc
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xc
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xc
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xc
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xc
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xc
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xc
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xc
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xc
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xc
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xc
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xc
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xc
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xc
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xc
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xc
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xc
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xc
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xc
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xc
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xc
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xc
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xc
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xc
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xc
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xc
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xc
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xc
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xc
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xc
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xc
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xc
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xc
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xc
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xc
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xc
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xc
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xc
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xc
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xc
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xc
	.string	"INSN"
	.sleb128 42
	.uleb128 0xc
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xc
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xc
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xc
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xc
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xc
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xc
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xc
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xc
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xc
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xc
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xc
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xc
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xc
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xc
	.string	"SET"
	.sleb128 57
	.uleb128 0xc
	.string	"USE"
	.sleb128 58
	.uleb128 0xc
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xc
	.string	"CALL"
	.sleb128 60
	.uleb128 0xc
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xc
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xc
	.string	"RESX"
	.sleb128 63
	.uleb128 0xc
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xc
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xc
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xc
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xc
	.string	"CONST"
	.sleb128 68
	.uleb128 0xc
	.string	"PC"
	.sleb128 69
	.uleb128 0xc
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xc
	.string	"REG"
	.sleb128 71
	.uleb128 0xc
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xc
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xc
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xc
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xc
	.string	"MEM"
	.sleb128 76
	.uleb128 0xc
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xc
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xc
	.string	"CC0"
	.sleb128 79
	.uleb128 0xc
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xc
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xc
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xc
	.string	"COND"
	.sleb128 83
	.uleb128 0xc
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xc
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xc
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xc
	.string	"NEG"
	.sleb128 87
	.uleb128 0xc
	.string	"MULT"
	.sleb128 88
	.uleb128 0xc
	.string	"DIV"
	.sleb128 89
	.uleb128 0xc
	.string	"MOD"
	.sleb128 90
	.uleb128 0xc
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xc
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xc
	.string	"AND"
	.sleb128 93
	.uleb128 0xc
	.string	"IOR"
	.sleb128 94
	.uleb128 0xc
	.string	"XOR"
	.sleb128 95
	.uleb128 0xc
	.string	"NOT"
	.sleb128 96
	.uleb128 0xc
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xc
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xc
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xc
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xc
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xc
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xc
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xc
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xc
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xc
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xc
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xc
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xc
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xc
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xc
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xc
	.string	"NE"
	.sleb128 112
	.uleb128 0xc
	.string	"EQ"
	.sleb128 113
	.uleb128 0xc
	.string	"GE"
	.sleb128 114
	.uleb128 0xc
	.string	"GT"
	.sleb128 115
	.uleb128 0xc
	.string	"LE"
	.sleb128 116
	.uleb128 0xc
	.string	"LT"
	.sleb128 117
	.uleb128 0xc
	.string	"GEU"
	.sleb128 118
	.uleb128 0xc
	.string	"GTU"
	.sleb128 119
	.uleb128 0xc
	.string	"LEU"
	.sleb128 120
	.uleb128 0xc
	.string	"LTU"
	.sleb128 121
	.uleb128 0xc
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xc
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xc
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xc
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xc
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xc
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xc
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xc
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xc
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xc
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xc
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xc
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xc
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xc
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xc
	.string	"FIX"
	.sleb128 136
	.uleb128 0xc
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xc
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xc
	.string	"ABS"
	.sleb128 139
	.uleb128 0xc
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xc
	.string	"FFS"
	.sleb128 141
	.uleb128 0xc
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xc
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xc
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xc
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xc
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xc
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xc
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xc
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xc
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xc
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xc
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xc
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xc
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xc
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xc
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xc
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xc
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xc
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xc
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xc
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xc
	.string	"PHI"
	.sleb128 162
	.uleb128 0xc
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x16
	.long	0x128a
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x394
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x51
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x52
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x54
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x3
	.byte	0x56
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x3
	.byte	0x58
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x5b
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x3
	.byte	0x5d
	.long	0x394
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x3
	.byte	0x5e
	.long	0x11b0
	.uleb128 0xf
	.long	0x1301
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x408
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.long	.LASF3
	.byte	0x3
	.byte	0x6e
	.long	0x12a5
	.uleb128 0x18
	.long	0x13de
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x408
	.uleb128 0x19
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x217
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x394
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x204
	.uleb128 0x19
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9e
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19e
	.uleb128 0x19
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x798
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x128a
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x13f2
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x145a
	.uleb128 0x19
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e6
	.uleb128 0x19
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x15e5
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x15eb
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x13de
	.uleb128 0x4
	.long	0x145a
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x170a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x170a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13f8
	.uleb128 0x4
	.long	0x15e5
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x185d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x185d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x178d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x178d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x178d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x178d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x15e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x15e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x1ad9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x179b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1460
	.uleb128 0x3
	.byte	0x4
	.long	0x1301
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x130c
	.uleb128 0x11
	.long	0x1610
	.long	0x15f1
	.uleb128 0x12
	.long	0x39b
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x1620
	.long	0x9e
	.uleb128 0x12
	.long	0x39b
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e
	.uleb128 0x11
	.long	0x1636
	.long	0x419
	.uleb128 0x12
	.long	0x39b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x8
	.byte	0x29
	.long	0x419
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x8
	.byte	0x34
	.long	0x1663
	.uleb128 0x11
	.long	0x1673
	.long	0x1636
	.uleb128 0x12
	.long	0x39b
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x3d7
	.uleb128 0x4
	.long	0x16de
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x7
	.string	"next"
	.byte	0x5
	.byte	0x35
	.long	0x16de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x16de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x16e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1686
	.uleb128 0x11
	.long	0x16f4
	.long	0x1673
	.uleb128 0x12
	.long	0x39b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x1686
	.uleb128 0x3
	.byte	0x4
	.long	0x16f4
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x145a
	.uleb128 0x4
	.long	0x1778
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x1626
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x1787
	.uleb128 0x3
	.byte	0x4
	.long	0x171e
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1710
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x408
	.uleb128 0x4
	.long	0x1857
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1857
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1857
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x15e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x15e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x179b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x17ac
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1857
	.uleb128 0x4
	.long	0x1ad9
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0x10
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x1adf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x1adf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x1adf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x1af2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x1adf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x1adf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x1778
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x1af2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x1af2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x1778
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x1af8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x1ad9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x1ad9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"next"
	.byte	0x6
	.value	0x1b7
	.long	0x1ad9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1869
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x15e5
	.uleb128 0x3
	.byte	0x4
	.long	0x185d
	.uleb128 0x3
	.byte	0x4
	.long	0x1ad9
	.uleb128 0x1b
	.long	0x1c2b
	.string	"obstack"
	.byte	0x2c
	.byte	0xa
	.value	0x31b
	.uleb128 0x7
	.string	"chunk_size"
	.byte	0xb
	.byte	0xaa
	.long	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"chunk"
	.byte	0xb
	.byte	0xab
	.long	0x20a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"object_base"
	.byte	0xb
	.byte	0xac
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next_free"
	.byte	0xb
	.byte	0xad
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"chunk_limit"
	.byte	0xb
	.byte	0xae
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"temp"
	.byte	0xb
	.byte	0xaf
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"alignment_mask"
	.byte	0xb
	.byte	0xb0
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"chunkfun"
	.byte	0xb
	.byte	0xb5
	.long	0x20be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"freefun"
	.byte	0xb
	.byte	0xb6
	.long	0x20d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"extra_arg"
	.byte	0xb
	.byte	0xb7
	.long	0x46f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0xb
	.byte	0xbd
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0xb
	.byte	0xbe
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0xb
	.byte	0xc2
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1afe
	.uleb128 0x15
	.long	0x1c5e
	.string	"op_type"
	.byte	0x4
	.byte	0xc
	.byte	0x1c
	.uleb128 0xc
	.string	"OP_IN"
	.sleb128 0
	.uleb128 0xc
	.string	"OP_OUT"
	.sleb128 1
	.uleb128 0xc
	.string	"OP_INOUT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x1d80
	.string	"operand_alternative"
	.byte	0x18
	.byte	0xc
	.byte	0x23
	.uleb128 0x1c
	.long	.LASF4
	.byte	0xc
	.byte	0x26
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF5
	.byte	0xc
	.byte	0x29
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"reject"
	.byte	0xc
	.byte	0x2d
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF6
	.byte	0xc
	.byte	0x30
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"matched"
	.byte	0xc
	.byte	0x34
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.long	.LASF7
	.byte	0xc
	.byte	0x37
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"memory_ok"
	.byte	0xc
	.byte	0x39
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"offmem_ok"
	.byte	0xc
	.byte	0x3b
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"nonoffmem_ok"
	.byte	0xc
	.byte	0x3d
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"decmem_ok"
	.byte	0xc
	.byte	0x3f
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"incmem_ok"
	.byte	0xc
	.byte	0x41
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"is_address"
	.byte	0xc
	.byte	0x43
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"anything_ok"
	.byte	0xc
	.byte	0x46
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1d
	.long	0x1e62
	.long	.LASF8
	.value	0x274
	.byte	0xc
	.byte	0x9b
	.uleb128 0x7
	.string	"operand"
	.byte	0xc
	.byte	0xa3
	.long	0x1e62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"operand_loc"
	.byte	0xc
	.byte	0xa6
	.long	0x1e72
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"constraints"
	.byte	0xc
	.byte	0xa9
	.long	0x1e82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x7
	.string	"operand_mode"
	.byte	0xc
	.byte	0xac
	.long	0x1e92
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x7
	.string	"operand_type"
	.byte	0xc
	.byte	0xaf
	.long	0x1ea2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x7
	.string	"dup_loc"
	.byte	0xc
	.byte	0xb3
	.long	0x1eb2
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x7
	.string	"dup_num"
	.byte	0xc
	.byte	0xb7
	.long	0x6fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0x1c
	.long	.LASF9
	.byte	0xc
	.byte	0xc4
	.long	0x20f
	.byte	0x3
	.byte	0x23
	.uleb128 0x26c
	.uleb128 0x7
	.string	"n_dups"
	.byte	0xc
	.byte	0xc7
	.long	0x20f
	.byte	0x3
	.byte	0x23
	.uleb128 0x26d
	.uleb128 0x1c
	.long	.LASF10
	.byte	0xc
	.byte	0xca
	.long	0x20f
	.byte	0x3
	.byte	0x23
	.uleb128 0x26e
	.uleb128 0x1c
	.long	.LASF11
	.byte	0xc
	.byte	0xcd
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.byte	0x0
	.uleb128 0x11
	.long	0x1e72
	.long	0x9e
	.uleb128 0x12
	.long	0x39b
	.byte	0x1d
	.byte	0x0
	.uleb128 0x11
	.long	0x1e82
	.long	0x1620
	.uleb128 0x12
	.long	0x39b
	.byte	0x1d
	.byte	0x0
	.uleb128 0x11
	.long	0x1e92
	.long	0x204
	.uleb128 0x12
	.long	0x39b
	.byte	0x1d
	.byte	0x0
	.uleb128 0x11
	.long	0x1ea2
	.long	0x798
	.uleb128 0x12
	.long	0x39b
	.byte	0x1d
	.byte	0x0
	.uleb128 0x11
	.long	0x1eb2
	.long	0x1c31
	.uleb128 0x12
	.long	0x39b
	.byte	0x1d
	.byte	0x0
	.uleb128 0x11
	.long	0x1ec2
	.long	0x1620
	.uleb128 0x12
	.long	0x39b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0xc
	.byte	0xd9
	.long	0x1ee3
	.uleb128 0x3
	.byte	0x4
	.long	0x1ee9
	.uleb128 0x1e
	.long	0x1efe
	.byte	0x1
	.long	0x217
	.uleb128 0x1f
	.long	0x9e
	.uleb128 0x1f
	.long	0x798
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0xc
	.byte	0xdb
	.long	0x1f11
	.uleb128 0x3
	.byte	0x4
	.long	0x1f17
	.uleb128 0x1e
	.long	0x1f28
	.byte	0x1
	.long	0x9e
	.uleb128 0x1f
	.long	0x9e
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x4
	.long	0x1fa0
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0xc
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0xc
	.byte	0xdf
	.long	0x1fa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF4
	.byte	0xc
	.byte	0xe1
	.long	0x1fa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF0
	.byte	0xc
	.byte	0xe3
	.long	0x1faa
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"strict_low"
	.byte	0xc
	.byte	0xe5
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"eliminable"
	.byte	0xc
	.byte	0xe7
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x1ec2
	.uleb128 0x9
	.long	0x204
	.uleb128 0x9
	.long	0x798
	.uleb128 0xf
	.long	0x2044
	.long	.LASF12
	.byte	0x14
	.byte	0xc
	.byte	0xf2
	.uleb128 0x7
	.string	"name"
	.byte	0xc
	.byte	0xf3
	.long	0x1fa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"output"
	.byte	0xc
	.byte	0xf4
	.long	0x791
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0xc
	.byte	0xf5
	.long	0x2044
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"operand"
	.byte	0xc
	.byte	0xf6
	.long	0x2049
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF9
	.byte	0xc
	.byte	0xf8
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0xc
	.byte	0xf9
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x1c
	.long	.LASF10
	.byte	0xc
	.byte	0xfa
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0xc
	.byte	0xfb
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x1efe
	.uleb128 0x9
	.long	0x204e
	.uleb128 0x3
	.byte	0x4
	.long	0x2054
	.uleb128 0x9
	.long	0x1f28
	.uleb128 0x4
	.long	0x20a3
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xb
	.byte	0xa2
	.uleb128 0x7
	.string	"limit"
	.byte	0xb
	.byte	0xa3
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0xb
	.byte	0xa4
	.long	0x20a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"contents"
	.byte	0xb
	.byte	0xa5
	.long	0x6fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2059
	.uleb128 0x1e
	.long	0x20be
	.byte	0x1
	.long	0x20a3
	.uleb128 0x1f
	.long	0x46f
	.uleb128 0x1f
	.long	0x452
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20a9
	.uleb128 0x21
	.long	0x20d5
	.byte	0x1
	.uleb128 0x1f
	.long	0x46f
	.uleb128 0x1f
	.long	0x20a3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20c4
	.uleb128 0x4
	.long	0x2172
	.string	"du_chain"
	.byte	0x18
	.byte	0x1
	.byte	0x38
	.uleb128 0x7
	.string	"next_chain"
	.byte	0x1
	.byte	0x39
	.long	0x2172
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"next_use"
	.byte	0x1
	.byte	0x3a
	.long	0x2172
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x1
	.byte	0x3c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"loc"
	.byte	0x1
	.byte	0x3d
	.long	0x1620
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.byte	0x3e
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"need_caller_save_reg"
	.byte	0x1
	.byte	0x3f
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.long	.LASF7
	.byte	0x1
	.byte	0x40
	.long	0x394
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20db
	.uleb128 0x15
	.long	0x21fc
	.string	"scan_actions"
	.byte	0x4
	.byte	0x1
	.byte	0x44
	.uleb128 0xc
	.string	"terminate_all_read"
	.sleb128 0
	.uleb128 0xc
	.string	"terminate_overlapping_read"
	.sleb128 1
	.uleb128 0xc
	.string	"terminate_write"
	.sleb128 2
	.uleb128 0xc
	.string	"terminate_dead"
	.sleb128 3
	.uleb128 0xc
	.string	"mark_read"
	.sleb128 4
	.uleb128 0xc
	.string	"mark_write"
	.sleb128 5
	.byte	0x0
	.uleb128 0x22
	.long	0x227f
	.string	"note_sets"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0x6c
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"set"
	.byte	0x1
	.byte	0x6d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"data"
	.byte	0x1
	.byte	0x6e
	.long	0x46f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"pset"
	.byte	0x1
	.byte	0x70
	.long	0x227f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF13
	.byte	0x1
	.byte	0x71
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF14
	.byte	0x1
	.byte	0x72
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF15
	.long	0x3b1d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10540
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x164f
	.uleb128 0x22
	.long	0x232f
	.string	"clear_dead_regs"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x23
	.string	"pset"
	.byte	0x1
	.byte	0x85
	.long	0x227f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"kind"
	.byte	0x1
	.byte	0x86
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"notes"
	.byte	0x1
	.byte	0x87
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"note"
	.byte	0x1
	.byte	0x89
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	0x231e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.byte	0x8d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF13
	.byte	0x1
	.byte	0x8e
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF14
	.byte	0x1
	.byte	0x8f
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x3b08
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10577
	.byte	0x0
	.uleb128 0x22
	.long	0x241c
	.string	"merge_overlapping_regs"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.byte	0x9f
	.long	0x1adf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"pset"
	.byte	0x1
	.byte	0xa0
	.long	0x227f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"chain"
	.byte	0x1
	.byte	0xa1
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"t"
	.byte	0x1
	.byte	0xa3
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF11
	.byte	0x1
	.byte	0xa4
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"live"
	.byte	0x1
	.byte	0xa5
	.long	0x164f
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	0x23cb
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.byte	0xa7
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x27
	.long	0x23f5
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.byte	0xb6
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF17
	.byte	0x1
	.byte	0xb6
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x28
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.byte	0xbc
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF17
	.byte	0x1
	.byte	0xbc
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1636
	.uleb128 0x29
	.long	0x279d
	.byte	0x1
	.string	"regrename_optimize"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x24
	.string	"tick"
	.byte	0x1
	.byte	0xcd
	.long	0x279d
	.byte	0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x24
	.string	"this_tick"
	.byte	0x1
	.byte	0xce
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.byte	0xcf
	.long	0x1adf
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x24
	.string	"first_obj"
	.byte	0x1
	.byte	0xd0
	.long	0x471
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.long	0x2508
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x24
	.string	"__h"
	.byte	0x1
	.byte	0xd5
	.long	0x1c2b
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x27
	.long	0x24dc
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x24
	.string	"__o"
	.byte	0x1
	.byte	0xd5
	.long	0x1c2b
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.string	"__len"
	.byte	0x1
	.byte	0xd5
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x28
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x24
	.string	"__o1"
	.byte	0x1
	.byte	0xd5
	.long	0x1c2b
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.string	"value"
	.byte	0x1
	.byte	0xd5
	.long	0x46f
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x2772
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x24
	.string	"all_chains"
	.byte	0x1
	.byte	0xd9
	.long	0x2172
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.string	"unavailable"
	.byte	0x1
	.byte	0xda
	.long	0x164f
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.string	"regs_seen"
	.byte	0x1
	.byte	0xdb
	.long	0x164f
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x27
	.long	0x2574
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.byte	0xdd
	.long	0x241c
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x27
	.long	0x2591
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.byte	0xe7
	.long	0x241c
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x27
	.long	0x25ac
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xeb
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x27
	.long	0x25c9
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x25
	.long	.LASF16
	.byte	0x1
	.byte	0xf6
	.long	0x241c
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x27
	.long	0x2747
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x24
	.string	"new_reg"
	.byte	0x1
	.byte	0xf9
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x24
	.string	"best_new_reg"
	.byte	0x1
	.byte	0xf9
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.string	"n_uses"
	.byte	0x1
	.byte	0xfa
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.string	"this"
	.byte	0x1
	.byte	0xfb
	.long	0x2172
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"tmp"
	.byte	0x1
	.byte	0xfc
	.long	0x2172
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.string	"last"
	.byte	0x1
	.byte	0xfc
	.long	0x2172
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.string	"this_unavailable"
	.byte	0x1
	.byte	0xfd
	.long	0x164f
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.byte	0xfe
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xff
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	0x26a8
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x115
	.long	0x241c
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x115
	.long	0x241c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x27
	.long	0x26d5
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x11e
	.long	0x241c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x11e
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x27
	.long	0x2701
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x124
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x124
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x27
	.long	0x272d
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x128
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.value	0x128
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x28
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x130
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x16f
	.long	0x1c2b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"__obj"
	.byte	0x1
	.value	0x16f
	.long	0x46f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x172
	.long	0x1c2b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"__obj"
	.byte	0x1
	.value	0x172
	.long	0x46f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x27ad
	.long	0x217
	.uleb128 0x12
	.long	0x39b
	.byte	0xaf
	.byte	0x0
	.uleb128 0x2c
	.long	0x2807
	.string	"do_replace"
	.byte	0x1
	.value	0x180
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2d
	.string	"chain"
	.byte	0x1
	.value	0x17e
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x17f
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x183
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x2a71
	.string	"scan_rtx_reg"
	.byte	0x1
	.value	0x197
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2e
	.long	.LASF11
	.byte	0x1
	.value	0x191
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"loc"
	.byte	0x1
	.value	0x192
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x193
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF18
	.byte	0x1
	.value	0x194
	.long	0x2178
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"type"
	.byte	0x1
	.value	0x195
	.long	0x1c31
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x196
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x198
	.long	0x2a71
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x199
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x19a
	.long	0x798
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"this_regno"
	.byte	0x1
	.value	0x19b
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"this_nregs"
	.byte	0x1
	.value	0x19c
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	0x2973
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2b
	.string	"this"
	.byte	0x1
	.value	0x1a2
	.long	0x2172
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x1a3
	.long	0x1c2b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	0x2945
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x1a3
	.long	0x1c2b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"__len"
	.byte	0x1
	.value	0x1a3
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x28
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x1a3
	.long	0x1c2b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"value"
	.byte	0x1
	.value	0x1a3
	.long	0x46f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x2a60
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"this"
	.byte	0x1
	.value	0x1b6
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x1c3
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x1c4
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"exact_match"
	.byte	0x1
	.value	0x1c5
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	0x2a44
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.value	0x1da
	.long	0x1c2b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	0x2a18
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.value	0x1da
	.long	0x1c2b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"__len"
	.byte	0x1
	.value	0x1da
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x28
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"__o1"
	.byte	0x1
	.value	0x1da
	.long	0x1c2b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"value"
	.byte	0x1
	.value	0x1da
	.long	0x46f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2b
	.string	"next"
	.byte	0x1
	.value	0x1ea
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x3af3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11092
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2172
	.uleb128 0x2c
	.long	0x2bd1
	.string	"scan_rtx_address"
	.byte	0x1
	.value	0x215
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2e
	.long	.LASF11
	.byte	0x1
	.value	0x210
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"loc"
	.byte	0x1
	.value	0x211
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x212
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF18
	.byte	0x1
	.value	0x213
	.long	0x2178
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x214
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x216
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0x217
	.long	0x9e1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x218
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x219
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x219
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x222
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x223
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"code0"
	.byte	0x1
	.value	0x224
	.long	0x9e1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"code1"
	.byte	0x1
	.value	0x225
	.long	0x9e1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"op0"
	.byte	0x1
	.value	0x226
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"op1"
	.byte	0x1
	.value	0x227
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"locI"
	.byte	0x1
	.value	0x228
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"locB"
	.byte	0x1
	.value	0x229
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x24b
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x2ca1
	.string	"scan_rtx"
	.byte	0x1
	.value	0x29f
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2e
	.long	.LASF11
	.byte	0x1
	.value	0x299
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"loc"
	.byte	0x1
	.value	0x29a
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x29b
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF18
	.byte	0x1
	.value	0x29c
	.long	0x2178
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"type"
	.byte	0x1
	.value	0x29d
	.long	0x1c31
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x29e
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x2a0
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x2a1
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0x2a2
	.long	0x9e1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2a3
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x2a3
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.long	.LASF15
	.long	0x3ade
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11438
	.byte	0x0
	.uleb128 0x2f
	.long	0x2ef8
	.string	"build_def_use"
	.byte	0x1
	.value	0x2f4
	.byte	0x1
	.long	0x2172
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x2f3
	.long	0x1adf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x2f5
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	0x2ee7
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2b
	.string	"n_ops"
	.byte	0x1
	.value	0x2fd
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"note"
	.byte	0x1
	.value	0x2fe
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"old_operands"
	.byte	0x1
	.value	0x2ff
	.long	0x1e62
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2b
	.string	"old_dups"
	.byte	0x1
	.value	0x300
	.long	0x2ef8
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x301
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"icode"
	.byte	0x1
	.value	0x301
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"alt"
	.byte	0x1
	.value	0x302
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x303
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	0x2da2
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0x324
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x27
	.long	0x2dc4
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2b
	.string	"dup_num"
	.byte	0x1
	.value	0x342
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x27
	.long	0x2df1
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2b
	.string	"loc"
	.byte	0x1
	.value	0x360
	.long	0x1620
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"op"
	.byte	0x1
	.value	0x361
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x27
	.long	0x2e3d
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2b
	.string	"opn"
	.byte	0x1
	.value	0x36d
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"loc"
	.byte	0x1
	.value	0x36e
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x371
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"type"
	.byte	0x1
	.value	0x372
	.long	0x1c31
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x27
	.long	0x2e58
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x390
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x27
	.long	0x2e75
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2b
	.string	"opn"
	.byte	0x1
	.value	0x3a1
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x27
	.long	0x2eaf
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2b
	.string	"loc"
	.byte	0x1
	.value	0x3b9
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"op"
	.byte	0x1
	.value	0x3ba
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x3bb
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x28
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2b
	.string	"opn"
	.byte	0x1
	.value	0x3c8
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"loc"
	.byte	0x1
	.value	0x3c9
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x1
	.value	0x3cc
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x3ac9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11518
	.byte	0x0
	.uleb128 0x11
	.long	0x2f08
	.long	0x9e
	.uleb128 0x12
	.long	0x39b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2c
	.long	0x2f79
	.string	"dump_def_use_chain"
	.byte	0x1
	.value	0x3e9
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2d
	.string	"chains"
	.byte	0x1
	.value	0x3e8
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2b
	.string	"this"
	.byte	0x1
	.value	0x3ec
	.long	0x2172
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x3ed
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x3ee
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2fd1
	.string	"value_data_entry"
	.byte	0xc
	.byte	0x1
	.value	0x408
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x409
	.long	0x798
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"oldest_regno"
	.byte	0x1
	.value	0x40a
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"next_regno"
	.byte	0x1
	.value	0x40b
	.long	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x31
	.long	0x300f
	.string	"value_data"
	.value	0x844
	.byte	0x1
	.value	0x40f
	.uleb128 0x10
	.string	"e"
	.byte	0x1
	.value	0x410
	.long	0x300f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"max_value_regs"
	.byte	0x1
	.value	0x411
	.long	0x394
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.byte	0x0
	.uleb128 0x11
	.long	0x301f
	.long	0x2f79
	.uleb128 0x12
	.long	0x39b
	.byte	0xaf
	.byte	0x0
	.uleb128 0x2c
	.long	0x3080
	.string	"kill_value_regno"
	.byte	0x1
	.value	0x438
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2e
	.long	.LASF13
	.byte	0x1
	.value	0x436
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x437
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x439
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"next"
	.byte	0x1
	.value	0x439
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fd1
	.uleb128 0x2c
	.long	0x3102
	.string	"kill_value"
	.byte	0x1
	.value	0x459
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x457
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x458
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x464
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x465
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x466
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x466
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x3163
	.string	"set_value_regno"
	.byte	0x1
	.value	0x484
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2e
	.long	.LASF13
	.byte	0x1
	.value	0x481
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x482
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x483
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF14
	.byte	0x1
	.value	0x485
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x31a4
	.string	"init_value_data"
	.byte	0x1
	.value	0x493
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x492
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x494
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x3209
	.string	"kill_clobbered_value"
	.byte	0x1
	.value	0x4a5
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x4a2
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0x4a3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"data"
	.byte	0x1
	.value	0x4a4
	.long	0x46f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"vd"
	.byte	0x1
	.value	0x4a6
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2c
	.long	0x3268
	.string	"kill_set_value"
	.byte	0x1
	.value	0x4b3
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x4b0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0x4b1
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"data"
	.byte	0x1
	.value	0x4b2
	.long	0x46f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"vd"
	.byte	0x1
	.value	0x4b4
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x32ce
	.string	"kill_autoinc_value"
	.byte	0x1
	.value	0x4c5
	.byte	0x1
	.long	0x217
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2d
	.string	"px"
	.byte	0x1
	.value	0x4c3
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"data"
	.byte	0x1
	.value	0x4c4
	.long	0x46f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x4c6
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"vd"
	.byte	0x1
	.value	0x4c7
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x3361
	.string	"copy_value"
	.byte	0x1
	.value	0x4dc
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2d
	.string	"dest"
	.byte	0x1
	.value	0x4d9
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"src"
	.byte	0x1
	.value	0x4da
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x4db
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"dr"
	.byte	0x1
	.value	0x4dd
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"sr"
	.byte	0x1
	.value	0x4de
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"dn"
	.byte	0x1
	.value	0x4df
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"sn"
	.byte	0x1
	.value	0x4df
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4e0
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x33b7
	.string	"mode_change_ok"
	.byte	0x1
	.value	0x52a
	.byte	0x1
	.long	0x33b7
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0x528
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x528
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF13
	.byte	0x1
	.value	0x529
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x2f
	.long	0x34ce
	.string	"maybe_mode_change"
	.byte	0x1
	.value	0x53e
	.byte	0x1
	.long	0x9e
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0x53c
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"copy_mode"
	.byte	0x1
	.value	0x53c
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x53c
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF13
	.byte	0x1
	.value	0x53d
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"copy_regno"
	.byte	0x1
	.value	0x53d
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2b
	.string	"copy_nregs"
	.byte	0x1
	.value	0x543
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"use_nregs"
	.byte	0x1
	.value	0x544
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"copy_offset"
	.byte	0x1
	.value	0x545
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"offset"
	.byte	0x1
	.value	0x547
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"byteoffset"
	.byte	0x1
	.value	0x549
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"wordoffset"
	.byte	0x1
	.value	0x54a
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x3581
	.string	"find_oldest_value_reg"
	.byte	0x1
	.value	0x55f
	.byte	0x1
	.long	0x9e
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x55c
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x55d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x55e
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x560
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x561
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x562
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2b
	.string	"oldmode"
	.byte	0x1
	.value	0x574
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x575
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x35fe
	.string	"replace_oldest_value_reg"
	.byte	0x1
	.value	0x58c
	.byte	0x1
	.long	0x33b7
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2d
	.string	"loc"
	.byte	0x1
	.value	0x588
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x589
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF11
	.byte	0x1
	.value	0x58a
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x58b
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x58d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	0x3779
	.string	"replace_oldest_value_addr"
	.byte	0x1
	.value	0x5a5
	.byte	0x1
	.long	0x33b7
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2d
	.string	"loc"
	.byte	0x1
	.value	0x5a0
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x5a1
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x5a2
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF11
	.byte	0x1
	.value	0x5a3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x5a4
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x5a6
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"code"
	.byte	0x1
	.value	0x5a7
	.long	0x9e1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x5a8
	.long	0x204
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x5a9
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x5a9
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"changed"
	.byte	0x1
	.value	0x5aa
	.long	0x33b7
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x28
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x5b0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x5b1
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"code0"
	.byte	0x1
	.value	0x5b2
	.long	0x9e1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"code1"
	.byte	0x1
	.value	0x5b3
	.long	0x9e1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"op0"
	.byte	0x1
	.value	0x5b4
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"op1"
	.byte	0x1
	.value	0x5b5
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"locI"
	.byte	0x1
	.value	0x5b6
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"locB"
	.byte	0x1
	.value	0x5b7
	.long	0x1620
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.value	0x5d9
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x37d6
	.string	"replace_oldest_value_mem"
	.byte	0x1
	.value	0x62a
	.byte	0x1
	.long	0x33b7
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x627
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF11
	.byte	0x1
	.value	0x628
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x629
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2f
	.long	0x39b5
	.string	"copyprop_hardreg_forward_1"
	.byte	0x1
	.value	0x636
	.byte	0x1
	.long	0x33b7
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x634
	.long	0x1adf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x635
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"changed"
	.byte	0x1
	.value	0x637
	.long	0x33b7
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x2a
	.long	.LASF11
	.byte	0x1
	.value	0x638
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"no_move_special_case"
	.byte	0x1
	.value	0x6ab
	.long	.L643
	.uleb128 0x32
	.string	"did_replacement"
	.byte	0x1
	.value	0x6e3
	.long	.L654
	.uleb128 0x27
	.long	0x39a4
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2b
	.string	"n_ops"
	.byte	0x1
	.value	0x63c
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x63c
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"alt"
	.byte	0x1
	.value	0x63c
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF22
	.byte	0x1
	.value	0x63c
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"is_asm"
	.byte	0x1
	.value	0x63d
	.long	0x33b7
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x63e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	0x3908
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0x658
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x27
	.long	0x395f
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x677
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF13
	.byte	0x1
	.value	0x678
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF0
	.byte	0x1
	.value	0x679
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x67a
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x67b
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x28
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2b
	.string	"replaced"
	.byte	0x1
	.value	0x6b1
	.long	0x33b7
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x28
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x6d6
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x6d7
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x3ab4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12494
	.byte	0x0
	.uleb128 0x33
	.long	0x3a2c
	.byte	0x1
	.string	"copyprop_hardreg_forward"
	.byte	0x1
	.value	0x6fc
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2b
	.string	"all_vd"
	.byte	0x1
	.value	0x6fd
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"need_refresh"
	.byte	0x1
	.value	0x6fe
	.long	0x33b7
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x6ff
	.long	0x1adf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"bbp"
	.byte	0x1
	.value	0x6ff
	.long	0x1adf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x3aa4
	.byte	0x1
	.string	"debug_value_data"
	.byte	0x1
	.value	0x731
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2d
	.string	"vd"
	.byte	0x1
	.value	0x730
	.long	0x3080
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x732
	.long	0x164f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x733
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x733
	.long	0x394
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2a
	.long	.LASF16
	.byte	0x1
	.value	0x735
	.long	0x241c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x3ab4
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0x1a
	.byte	0x0
	.uleb128 0x9
	.long	0x3aa4
	.uleb128 0x11
	.long	0x3ac9
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x3ab9
	.uleb128 0x11
	.long	0x3ade
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x3ace
	.uleb128 0x11
	.long	0x3af3
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0x3ae3
	.uleb128 0x11
	.long	0x3b08
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x3af8
	.uleb128 0x11
	.long	0x3b1d
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0x9
	.byte	0x0
	.uleb128 0x9
	.long	0x3b0d
	.uleb128 0x11
	.long	0x3b32
	.long	0x204
	.uleb128 0x12
	.long	0x39b
	.byte	0x18
	.byte	0x0
	.uleb128 0x24
	.string	"reg_class_names"
	.byte	0x1
	.byte	0x35
	.long	0x3b4f
	.byte	0x5
	.byte	0x3
	.long	reg_class_names
	.uleb128 0x9
	.long	0x3b22
	.uleb128 0x11
	.long	0x3b64
	.long	0x204
	.uleb128 0x12
	.long	0x39b
	.byte	0x5
	.byte	0x0
	.uleb128 0x24
	.string	"scan_actions_name"
	.byte	0x1
	.byte	0x4d
	.long	0x3b83
	.byte	0x5
	.byte	0x3
	.long	scan_actions_name
	.uleb128 0x9
	.long	0x3b54
	.uleb128 0x24
	.string	"rename_obstack"
	.byte	0x1
	.byte	0x57
	.long	0x1afe
	.byte	0x5
	.byte	0x3
	.long	rename_obstack
	.uleb128 0x2b
	.string	"open_chains"
	.byte	0x1
	.value	0x18c
	.long	0x2172
	.byte	0x5
	.byte	0x3
	.long	open_chains
	.uleb128 0x2b
	.string	"closed_chains"
	.byte	0x1
	.value	0x18d
	.long	0x2172
	.byte	0x5
	.byte	0x3
	.long	closed_chains
	.uleb128 0x11
	.long	0x3bea
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0xaf
	.byte	0x0
	.uleb128 0x34
	.string	"call_used_regs"
	.byte	0x8
	.value	0x196
	.long	0x3bda
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"target_flags"
	.byte	0x9
	.byte	0x21
	.long	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3c2a
	.long	0x20f
	.uleb128 0x36
	.uleb128 0x12
	.long	0x39b
	.byte	0xaf
	.byte	0x0
	.uleb128 0x34
	.string	"mips_hard_regno_mode_ok"
	.byte	0x9
	.value	0x778
	.long	0x3c19
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3c57
	.long	0x21e
	.uleb128 0x36
	.byte	0x0
	.uleb128 0x34
	.string	"mips_regno_to_class"
	.byte	0x9
	.value	0x85d
	.long	0x3c75
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3c4c
	.uleb128 0x35
	.string	"stderr"
	.byte	0xa
	.byte	0x90
	.long	0x765
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3c9a
	.long	0x204
	.uleb128 0x12
	.long	0x39b
	.byte	0x35
	.byte	0x0
	.uleb128 0x35
	.string	"mode_name"
	.byte	0x4
	.byte	0x29
	.long	0x3cad
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3c8a
	.uleb128 0x11
	.long	0x3cc2
	.long	0x3b0
	.uleb128 0x12
	.long	0x39b
	.byte	0x35
	.byte	0x0
	.uleb128 0x35
	.string	"mode_size"
	.byte	0x4
	.byte	0x59
	.long	0x3cd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3cb2
	.uleb128 0x11
	.long	0x3cea
	.long	0x3b0
	.uleb128 0x12
	.long	0x39b
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x3cfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3cda
	.uleb128 0x11
	.long	0x3d13
	.long	0x204
	.uleb128 0x12
	.long	0x39b
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x3d27
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3d03
	.uleb128 0x11
	.long	0x3d3c
	.long	0x20f
	.uleb128 0x12
	.long	0x39b
	.byte	0xa2
	.byte	0x0
	.uleb128 0x35
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x3d4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3d2c
	.uleb128 0x11
	.long	0x3d64
	.long	0x9e
	.uleb128 0x12
	.long	0x39b
	.byte	0xa
	.byte	0x0
	.uleb128 0x34
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x3d54
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"fixed_regs"
	.byte	0x8
	.value	0x18b
	.long	0x3bda
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"call_used_reg_set"
	.byte	0x8
	.value	0x19e
	.long	0x164f
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"global_regs"
	.byte	0x8
	.value	0x1b4
	.long	0x3bda
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"regs_invalidated_by_call"
	.byte	0x8
	.value	0x1bd
	.long	0x164f
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3df9
	.long	0x1636
	.uleb128 0x12
	.long	0x39b
	.byte	0x18
	.uleb128 0x12
	.long	0x39b
	.byte	0x2
	.byte	0x0
	.uleb128 0x34
	.string	"reg_class_contents"
	.byte	0x8
	.value	0x1cb
	.long	0x3de3
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3e26
	.long	0x204
	.uleb128 0x12
	.long	0x39b
	.byte	0xaf
	.byte	0x0
	.uleb128 0x35
	.string	"reg_names"
	.byte	0x10
	.byte	0xa3
	.long	0x3e16
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"last_basic_block"
	.byte	0x6
	.byte	0xf6
	.long	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3e63
	.long	0x1460
	.uleb128 0x12
	.long	0x39b
	.byte	0x1
	.byte	0x0
	.uleb128 0x34
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x3e53
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"regs_ever_live"
	.byte	0x10
	.byte	0x9f
	.long	0x3bda
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"rtl_dump_file"
	.byte	0x11
	.value	0x1b8
	.long	0x3eaf
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x477
	.uleb128 0x35
	.string	"which_alternative"
	.byte	0xc
	.byte	0x96
	.long	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	.LASF8
	.byte	0xc
	.byte	0xd0
	.long	0x1d80
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3ef3
	.long	0x1c5e
	.uleb128 0x12
	.long	0x39b
	.byte	0x1d
	.uleb128 0x12
	.long	0x39b
	.byte	0x1d
	.byte	0x0
	.uleb128 0x35
	.string	"recog_op_alt"
	.byte	0xc
	.byte	0xd4
	.long	0x3edd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3f14
	.long	0x1faf
	.uleb128 0x36
	.byte	0x0
	.uleb128 0x37
	.long	.LASF12
	.byte	0xc
	.byte	0xfe
	.long	0x3f21
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3f09
	.uleb128 0x34
	.string	"frame_pointer_needed"
	.byte	0x12
	.value	0x266
	.long	0x217
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x4
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x4
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x16
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
	.uleb128 0x18
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x57
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3f46
	.long	0x2422
	.string	"regrename_optimize"
	.long	0x39b5
	.string	"copyprop_hardreg_forward"
	.long	0x3a2c
	.string	"debug_value_data"
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
.LASF11:
	.string	"insn"
.LASF12:
	.string	"insn_data"
.LASF0:
	.string	"mode"
.LASF5:
	.string	"class"
.LASF19:
	.string	"orig_op0"
.LASF16:
	.string	"scan_tp_"
.LASF3:
	.string	"mem_attrs"
.LASF14:
	.string	"nregs"
.LASF7:
	.string	"earlyclobber"
.LASF10:
	.string	"n_alternatives"
.LASF4:
	.string	"constraint"
.LASF24:
	.string	"new_mode"
.LASF8:
	.string	"recog_data"
.LASF21:
	.string	"index_op"
.LASF15:
	.string	"__FUNCTION__"
.LASF9:
	.string	"n_operands"
.LASF22:
	.string	"predicated"
.LASF2:
	.string	"_IO_FILE"
.LASF23:
	.string	"orig_mode"
.LASF18:
	.string	"action"
.LASF6:
	.string	"matches"
.LASF20:
	.string	"orig_op1"
.LASF17:
	.string	"scan_fp_"
.LASF1:
	.string	"unsigned int"
.LASF13:
	.string	"regno"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
