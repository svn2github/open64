	.file	"print_sections.c"
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
	.string	"cfa"
.LC1:
	.string	"r1/at"
.LC2:
	.string	"r2/v0"
.LC3:
	.string	"r3/v1"
.LC4:
	.string	"r4/a0"
.LC5:
	.string	"r5/a1"
.LC6:
	.string	"r6/a2"
.LC7:
	.string	"r7/a3"
.LC8:
	.string	"r8/t0"
.LC9:
	.string	"r9/t1"
.LC10:
	.string	"r10/t2"
.LC11:
	.string	"r11/t3"
.LC12:
	.string	"r12/t4"
.LC13:
	.string	"r13/t5"
.LC14:
	.string	"r14/t6"
.LC15:
	.string	"r15/t7"
.LC16:
	.string	"r16/s0"
.LC17:
	.string	"r17/s1"
.LC18:
	.string	"r18/s2"
.LC19:
	.string	"r19/s3"
.LC20:
	.string	"r20/s4"
.LC21:
	.string	"r21/s5"
.LC22:
	.string	"r22/s6"
.LC23:
	.string	"r23/s7"
.LC24:
	.string	"r24/t8"
.LC25:
	.string	"r25/t9"
.LC26:
	.string	"r26/k0"
.LC27:
	.string	"r27/k1"
.LC28:
	.string	"r28/gp"
.LC29:
	.string	"r29/sp"
.LC30:
	.string	"r30/s8"
.LC31:
	.string	"r31"
.LC32:
	.string	"$f0"
.LC33:
	.string	"$f1"
.LC34:
	.string	"$f2"
.LC35:
	.string	"$f3"
.LC36:
	.string	"$f4"
.LC37:
	.string	"$f5"
.LC38:
	.string	"$f6"
.LC39:
	.string	"$f7"
.LC40:
	.string	"$f8"
.LC41:
	.string	"$f9"
.LC42:
	.string	"$f10"
.LC43:
	.string	"$f11"
.LC44:
	.string	"$f12"
.LC45:
	.string	"$f13"
.LC46:
	.string	"$f14"
.LC47:
	.string	"$f15"
.LC48:
	.string	"$f16"
.LC49:
	.string	"$f17"
.LC50:
	.string	"$f18"
.LC51:
	.string	"$f19"
.LC52:
	.string	"$f20"
.LC53:
	.string	"$f21"
.LC54:
	.string	"$f22"
.LC55:
	.string	"$f23"
.LC56:
	.string	"$f24"
.LC57:
	.string	"$f25"
.LC58:
	.string	"$f26"
.LC59:
	.string	"$f27"
.LC60:
	.string	"$f28"
.LC61:
	.string	"$f29"
.LC62:
	.string	"$f30"
.LC63:
	.string	"$f31"
.LC64:
	.string	"ra"
.LC65:
	.string	"slk"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	regnames, @object
	.size	regnames, 264
regnames:
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
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.section	.rodata
.LC66:
	.string	"\nline number info"
.LC67:
	.string	"dwarf_srclines details"
.LC68:
	.string	"dwarf_srclines"
	.align 4
.LC69:
	.string	"<source>\t[row,column]\t<pc>\t//<new statement or basic block"
.LC70:
	.string	"dwarf_linesrc"
.LC71:
	.string	"<unknown>"
.LC72:
	.string	"dwarf_lineaddr"
.LC73:
	.string	"dwarf_lineno"
.LC74:
	.string	"dwarf_lineoff"
.LC75:
	.string	"%s:\t[%3llu,%2lld]\t%#llx"
.LC76:
	.string	"\t// new statement"
.LC77:
	.string	"linebeginstatment failed"
.LC78:
	.string	"\t// new basic block"
.LC79:
	.string	"lineblock failed"
.LC80:
	.string	"\t// end of text sequence"
	.text
.globl print_line_numbers_this_cu
	.type	print_line_numbers_this_cu, @function
print_line_numbers_this_cu:
.LFB5:
	.file 1 "../../libdwarf/dwarfdump/print_sections.c"
	.loc 1 87 0
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
	subl	$156, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 104 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 105 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L2
	.loc 1 106 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_print_lines@PLT
	movl	%eax, -44(%ebp)
	.loc 1 107 0
	cmpl	$1, -44(%ebp)
	jne	.L50
	.loc 1 108 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 110 0
	jmp	.L50
.L2:
	.loc 1 112 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_srclines@PLT
	movl	%eax, -44(%ebp)
	.loc 1 113 0
	cmpl	$1, -44(%ebp)
	jne	.L7
	.loc 1 114 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L50
.L7:
	.loc 1 115 0
	cmpl	$-1, -44(%ebp)
	je	.L50
	.loc 1 118 0
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 121 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L10
.L11:
.LBB2:
	.loc 1 122 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 125 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_linesrc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 126 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_lineaddr@PLT
	movl	%eax, -36(%ebp)
	.loc 1 127 0
	cmpl	$1, -40(%ebp)
	jne	.L12
	.loc 1 128 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L12:
	.loc 1 130 0
	cmpl	$-1, -40(%ebp)
	jne	.L14
	.loc 1 131 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
.L14:
	.loc 1 133 0
	cmpl	$1, -36(%ebp)
	jne	.L16
	.loc 1 134 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L16:
	.loc 1 136 0
	cmpl	$-1, -36(%ebp)
	jne	.L18
	.loc 1 137 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
.L18:
	.loc 1 139 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_lineno@PLT
	movl	%eax, -32(%ebp)
	.loc 1 140 0
	cmpl	$1, -32(%ebp)
	jne	.L20
	.loc 1 141 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L20:
	.loc 1 143 0
	cmpl	$-1, -32(%ebp)
	jne	.L22
	.loc 1 144 0
	movl	$-1, -96(%ebp)
	movl	$-1, -92(%ebp)
.L22:
	.loc 1 146 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_lineoff@PLT
	movl	%eax, -28(%ebp)
	.loc 1 147 0
	cmpl	$1, -28(%ebp)
	jne	.L24
	.loc 1 148 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L24:
	.loc 1 150 0
	cmpl	$-1, -28(%ebp)
	jne	.L26
	.loc 1 151 0
	movl	$-1, -104(%ebp)
	movl	$-1, -100(%ebp)
.L26:
	.loc 1 153 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-52(%ebp), %ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 155 0
	cmpl	$0, -40(%ebp)
	jne	.L28
	.loc 1 156 0
	movl	-52(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L28:
	.loc 1 158 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_linebeginstatement@PLT
	movl	%eax, -20(%ebp)
	.loc 1 159 0
	cmpl	$0, -20(%ebp)
	jne	.L30
	.loc 1 160 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	.L34
	.loc 1 161 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L34
.L30:
	.loc 1 163 0
	cmpl	$1, -20(%ebp)
	jne	.L34
	.loc 1 164 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L34:
	.loc 1 167 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_lineblock@PLT
	movl	%eax, -20(%ebp)
	.loc 1 168 0
	cmpl	$0, -20(%ebp)
	jne	.L36
	.loc 1 169 0
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 170 0
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L40
.L36:
	.loc 1 172 0
	cmpl	$1, -20(%ebp)
	jne	.L40
	.loc 1 173 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L40:
	.loc 1 175 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_lineendsequence@PLT
	movl	%eax, -20(%ebp)
	.loc 1 176 0
	cmpl	$0, -20(%ebp)
	jne	.L42
	.loc 1 177 0
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 178 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L46
.L42:
	.loc 1 180 0
	cmpl	$1, -20(%ebp)
	jne	.L46
	.loc 1 181 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L46:
	.loc 1 183 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 185 0
	movl	$9, 8(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.LBE2:
	.loc 1 121 0
	addl	$1, -72(%ebp)
	adcl	$0, -68(%ebp)
.L10:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	jl	.L11
	movl	-116(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jg	.L49
	movl	-120(%ebp), %edx
	cmpl	%edx, -72(%ebp)
	jb	.L11
.L49:
	.loc 1 187 0
	movl	-48(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L50:
	.loc 1 189 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	print_line_numbers_this_cu, .-print_line_numbers_this_cu
	.type	safe_strcpy, @function
safe_strcpy:
.LFB6:
	.loc 1 199 0
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
	.loc 1 200 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	20(%ebp), %eax
	jg	.L52
	.loc 1 201 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncpy@PLT
	.loc 1 202 0
	movl	12(%ebp), %eax
	addl	8(%ebp), %eax
	subl	$1, %eax
	movb	$0, (%eax)
	jmp	.L55
.L52:
	.loc 1 204 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
.L55:
	.loc 1 206 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	safe_strcpy, .-safe_strcpy
	.section	.rodata
.LC81:
	.string	"dwarf_attrlist"
.LC82:
	.string	"get_proc_name whatattr error"
	.align 4
.LC83:
	.string	"formstring in get_proc_name failed"
.LC84:
	.string	"ERROR in dwarf_formstring!"
	.align 4
.LC85:
	.string	"NO ENTRY on dwarf_formstring?!"
	.align 4
.LC86:
	.string	"formaddr in get_proc_name failed"
	.text
	.type	get_proc_name, @function
get_proc_name:
.LFB7:
	.loc 1 217 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%edi
.LCFI12:
	pushl	%esi
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$140, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 220 0
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 222 0
	movl	$1, -48(%ebp)
	.loc 1 223 0
	movl	$0, -44(%ebp)
	.loc 1 224 0
	movl	$1, -40(%ebp)
	.loc 1 226 0
	movl	24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 227 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_attrlist@PLT
	movl	%eax, -52(%ebp)
	.loc 1 228 0
	cmpl	$1, -52(%ebp)
	jne	.L57
	.loc 1 229 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 230 0
	movl	$0, -128(%ebp)
	jmp	.L59
.L57:
	.loc 1 232 0
	cmpl	$-1, -52(%ebp)
	jne	.L60
	.loc 1 233 0
	movl	$0, -128(%ebp)
	jmp	.L59
.L60:
	.loc 1 235 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L62
.L63:
.LBB3:
	.loc 1 242 0
	cmpl	$1, -40(%ebp)
	jne	.L64
	cmpl	$1, -44(%ebp)
	je	.L66
.L64:
	.loc 1 246 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_whatattr@PLT
	movl	%eax, -36(%ebp)
	.loc 1 247 0
	cmpl	$1, -36(%ebp)
	jne	.L67
	.loc 1 248 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L69
.L67:
	.loc 1 249 0
	cmpl	$0, -36(%ebp)
	jne	.L69
	.loc 1 250 0
	movzwl	-18(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -124(%ebp)
	cmpl	$3, -124(%ebp)
	je	.L71
	cmpl	$17, -124(%ebp)
	je	.L72
	jmp	.L69
.L71:
	.loc 1 252 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_formstring@PLT
	movl	%eax, -32(%ebp)
	.loc 1 253 0
	cmpl	$1, -32(%ebp)
	jne	.L73
	.loc 1 254 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 257 0
	movl	$50, 12(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_strcpy
	jmp	.L75
.L73:
	.loc 1 264 0
	cmpl	$-1, -32(%ebp)
	jne	.L76
	.loc 1 265 0
	movl	$50, 12(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_strcpy
	jmp	.L75
.L76:
.LBB4:
	.loc 1 273 0
	movl	-60(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -132(%ebp)
	movl	$0, %eax
	cld
	movl	-132(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 275 0
	movl	-60(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_strcpy
	.loc 1 277 0
	movl	-60(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L75:
.LBE4:
	.loc 1 279 0
	movl	$1, -40(%ebp)
	.loc 1 280 0
	jmp	.L69
.L72:
	.loc 1 282 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_formaddr@PLT
	movl	%eax, -28(%ebp)
	.loc 1 283 0
	cmpl	$1, -28(%ebp)
	jne	.L78
	.loc 1 284 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 286 0
	movl	-104(%ebp), %ecx
	movl	-100(%ebp), %esi
	movl	%ecx, %eax
	notl	%eax
	movl	%esi, %edx
	notl	%edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
.L78:
	.loc 1 289 0
	movl	$1, -44(%ebp)
.L69:
.LBE3:
	.loc 1 235 0
	addl	$1, -72(%ebp)
	adcl	$0, -68(%ebp)
.L62:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	jl	.L63
	movl	-116(%ebp), %edi
	cmpl	%edi, -68(%ebp)
	jg	.L66
	movl	-120(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jb	.L63
.L66:
	.loc 1 297 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L81
.L82:
	.loc 1 298 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$10, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 297 0
	addl	$1, -72(%ebp)
	adcl	$0, -68(%ebp)
.L81:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-108(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	jl	.L82
	movl	-108(%ebp), %edi
	cmpl	%edi, -68(%ebp)
	jg	.L84
	movl	-112(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jb	.L82
.L84:
	.loc 1 300 0
	movl	-56(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 301 0
	cmpl	$0, -40(%ebp)
	je	.L85
	cmpl	$0, -44(%ebp)
	je	.L85
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-100(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-104(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L88
.L85:
	.loc 1 302 0
	movl	$0, -48(%ebp)
.L88:
	.loc 1 304 0
	movl	-48(%ebp), %edx
	movl	%edx, -128(%ebp)
.L59:
	movl	-128(%ebp), %eax
	.loc 1 305 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	get_proc_name, .-get_proc_name
	.section	.rodata
	.align 4
.LC87:
	.string	"get_nested_proc_name dwarf_child() failed "
.LC88:
	.string	"no tag on child read "
	.align 4
.LC89:
	.string	"dwarf_cu_header On Child read "
	.text
	.type	get_nested_proc_name, @function
get_nested_proc_name:
.LFB8:
	.loc 1 320 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$8320, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -8268(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -8272(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -8280(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -8276(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -8284(%ebp)
	.loc 1 320 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 322 0
	movl	-8272(%ebp), %eax
	movl	%eax, -8240(%ebp)
	.loc 1 323 0
	movl	$0, -8236(%ebp)
	.loc 1 324 0
	movl	$0, -8232(%ebp)
	.loc 1 325 0
	movl	$0, -8244(%ebp)
	.loc 1 326 0
	movl	$0, -8248(%ebp)
	.loc 1 328 0
	movl	$0, -8252(%ebp)
	.loc 1 329 0
	movl	$0, -8228(%ebp)
	.loc 1 331 0
	movl	-8284(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 332 0
	jmp	.L91
.L92:
.LBB5:
	.loc 1 335 0
	leal	-8252(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-8206(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -8224(%ebp)
	.loc 1 336 0
	movl	$0, -8244(%ebp)
	.loc 1 337 0
	movl	$0, -8252(%ebp)
	.loc 1 338 0
	cmpl	$0, -8224(%ebp)
	jne	.L93
.LBB6:
	.loc 1 341 0
	movzwl	-8206(%ebp), %eax
	cmpw	$46, %ax
	jne	.L95
.LBB7:
	.loc 1 344 0
	movl	$8192, 20(%esp)
	leal	-8204(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8280(%ebp), %eax
	movl	-8276(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	get_proc_name
	movl	%eax, -8216(%ebp)
	.loc 1 346 0
	cmpl	$0, -8216(%ebp)
	je	.L97
	.loc 1 348 0
	leal	-8204(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -8292(%ebp)
	movl	$0, %eax
	cld
	movl	-8292(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, 12(%esp)
	leal	-8204(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8284(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_strcpy
	.loc 1 350 0
	cmpl	$0, -8236(%ebp)
	je	.L99
	.loc 1 353 0
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L99:
	.loc 1 355 0
	movl	$1, -8288(%ebp)
	jmp	.L101
.L97:
	.loc 1 360 0
	leal	-8252(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-8244(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_child@PLT
	movl	%eax, -8220(%ebp)
	.loc 1 361 0
	cmpl	$0, -8220(%ebp)
	jne	.L102
.LBB8:
	.loc 1 365 0
	movl	-8244(%ebp), %ecx
	movl	$8192, 20(%esp)
	leal	-8204(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8280(%ebp), %eax
	movl	-8276(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	get_nested_proc_name
	movl	%eax, -8212(%ebp)
	.loc 1 366 0
	movl	-8244(%ebp), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 367 0
	cmpl	$0, -8212(%ebp)
	je	.L95
	.loc 1 371 0
	leal	-8204(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -8296(%ebp)
	movl	$0, %eax
	cld
	movl	-8296(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, 12(%esp)
	leal	-8204(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8284(%ebp), %eax
	movl	%eax, (%esp)
	call	safe_strcpy
	.loc 1 373 0
	movl	$1, -8288(%ebp)
	jmp	.L101
.L102:
.LBE8:
	.loc 1 375 0
	cmpl	$-1, -8220(%ebp)
	je	.L95
	.loc 1 378 0
	movl	-8252(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 381 0
	cmpl	$0, -8236(%ebp)
	je	.L107
	.loc 1 384 0
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L107:
	.loc 1 386 0
	movl	$0, -8288(%ebp)
	jmp	.L101
.L95:
.LBE7:
.LBE6:
	.loc 1 399 0
	movl	-8240(%ebp), %eax
	movl	%eax, -8232(%ebp)
	.loc 1 400 0
	leal	-8252(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-8248(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_siblingof@PLT
	movl	%eax, -8228(%ebp)
	.loc 1 401 0
	cmpl	$1, -8228(%ebp)
	je	.L109
	jmp	.L110
.L93:
	.loc 1 390 0
	movl	-8252(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8224(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 391 0
	cmpl	$0, -8236(%ebp)
	je	.L111
	.loc 1 394 0
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L111:
	.loc 1 396 0
	movl	$0, -8288(%ebp)
	jmp	.L101
.L109:
	.loc 1 402 0
	movl	-8252(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 404 0
	cmpl	$0, -8236(%ebp)
	je	.L113
	.loc 1 407 0
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L113:
	.loc 1 409 0
	movl	$0, -8288(%ebp)
	jmp	.L101
.L110:
	.loc 1 410 0
	cmpl	$-1, -8228(%ebp)
	jne	.L115
	.loc 1 411 0
	movl	$0, -8288(%ebp)
	jmp	.L101
.L115:
	.loc 1 413 0
	movl	-8248(%ebp), %eax
	movl	%eax, -8240(%ebp)
	.loc 1 414 0
	cmpl	$0, -8236(%ebp)
	je	.L117
	.loc 1 417 0
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	-8232(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L117:
	.loc 1 419 0
	movl	$0, -8232(%ebp)
	.loc 1 420 0
	movl	$1, -8236(%ebp)
.L91:
.LBE5:
	.loc 1 332 0
	cmpl	$0, -8228(%ebp)
	je	.L92
	.loc 1 424 0
	cmpl	$0, -8236(%ebp)
	je	.L120
	.loc 1 427 0
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	-8240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8268(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L120:
	.loc 1 429 0
	movl	$0, -8288(%ebp)
.L101:
	movl	-8288(%ebp), %eax
	.loc 1 430 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L123
	call	__stack_chk_fail_local
.L123:
	addl	$8320, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE8:
	.size	get_nested_proc_name, .-get_nested_proc_name
	.local	proc_name.4723
	.comm	proc_name.4723,8192,32
	.section	.rodata
	.align 4
.LC90:
	.string	"dwarf_cu_header on child read "
	.align 4
.LC91:
	.string	"dwarf_cu_header Child Read finding proc name for .debug_frame"
.LC92:
	.string	"looping  on cu headers!"
.LC93:
	.string	"dwarf Child Read "
	.text
.globl get_fde_proc_name
	.type	get_fde_proc_name, @function
get_fde_proc_name:
.LFB9:
	.loc 1 447 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$116, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 453 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 454 0
	movl	$0, -40(%ebp)
	.loc 1 455 0
	movl	$0, -36(%ebp)
	.loc 1 456 0
	movl	$0, -32(%ebp)
	.loc 1 457 0
	movl	$0, -28(%ebp)
	.loc 1 459 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L125
	.loc 1 460 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_next_cu_header@PLT
	movl	%eax, -40(%ebp)
	.loc 1 465 0
	cmpl	$1, -40(%ebp)
	jne	.L127
	.loc 1 466 0
	movl	$0, -84(%ebp)
	jmp	.L129
.L127:
	.loc 1 467 0
	cmpl	$-1, -40(%ebp)
	jne	.L130
	.loc 1 469 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 470 0
	addl	$1, -28(%ebp)
	jmp	.L125
.L130:
	.loc 1 472 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_siblingof@PLT
	movl	%eax, -36(%ebp)
	.loc 1 475 0
	cmpl	$1, -36(%ebp)
	jne	.L125
	.loc 1 476 0
	movl	$0, -84(%ebp)
	jmp	.L129
.L125:
	.loc 1 480 0
	cmpl	$0, -36(%ebp)
	jne	.L159
.LBB9:
	.loc 1 481 0
	movl	$0, -44(%ebp)
	.loc 1 483 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L135
	.loc 1 485 0
	movl	$0, -84(%ebp)
	jmp	.L129
.L135:
	.loc 1 487 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_child@PLT
	movl	%eax, -32(%ebp)
	.loc 1 489 0
	cmpl	$1, -32(%ebp)
	jne	.L137
	.loc 1 490 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L159
.L137:
	.loc 1 492 0
	cmpl	$-1, -32(%ebp)
	je	.L159
.LBB10:
	.loc 1 496 0
	movl	-44(%ebp), %ecx
	movl	$8192, 20(%esp)
	leal	proc_name.4723@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_nested_proc_name
	movl	%eax, -24(%ebp)
	.loc 1 497 0
	cmpl	$0, -24(%ebp)
	je	.L140
	.loc 1 498 0
	leal	proc_name.4723@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L129
.L140:
	.loc 1 500 0
	movl	-44(%ebp), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 501 0
	movl	$0, -44(%ebp)
	jmp	.L159
.L133:
.L159:
.LBE10:
.LBE9:
.LBB11:
	.loc 1 507 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_next_cu_header@PLT
	movl	%eax, -40(%ebp)
	.loc 1 512 0
	cmpl	$0, -40(%ebp)
	jne	.L142
	.loc 1 517 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_siblingof@PLT
	movl	%eax, -36(%ebp)
	.loc 1 519 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L144
	.loc 1 520 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L144:
	.loc 1 523 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 524 0
	cmpl	$1, -36(%ebp)
	jne	.L146
	.loc 1 525 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 528 0
	jmp	.L133
.L146:
	.loc 1 529 0
	cmpl	$-1, -36(%ebp)
	jne	.L149
	.loc 1 530 0
	addl	$1, -28(%ebp)
	.loc 1 531 0
	cmpl	$1, -28(%ebp)
	jle	.L133
	.loc 1 532 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	.loc 1 533 0
	movl	$0, -84(%ebp)
	jmp	.L129
.L149:
	.loc 1 538 0
	movl	-44(%ebp), %edx
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	%edx, (%eax)
.LBB12:
	.loc 1 543 0
	movl	current_cu_die_for_print_frames@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_child@PLT
	movl	%eax, -20(%ebp)
	.loc 1 546 0
	cmpl	$1, -20(%ebp)
	jne	.L153
	.loc 1 547 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L133
.L153:
	.loc 1 548 0
	cmpl	$-1, -20(%ebp)
	je	.L133
.LBB13:
	.loc 1 555 0
	movl	-48(%ebp), %ecx
	movl	$8192, 20(%esp)
	leal	proc_name.4723@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_nested_proc_name
	movl	%eax, -16(%ebp)
	.loc 1 556 0
	cmpl	$0, -16(%ebp)
	je	.L156
	.loc 1 557 0
	leal	proc_name.4723@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L129
.L156:
	.loc 1 559 0
	movl	-48(%ebp), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 562 0
	jmp	.L133
.L142:
.LBE13:
.LBE12:
.LBE11:
	.loc 1 563 0
	movl	$0, -84(%ebp)
.L129:
	movl	-84(%ebp), %eax
	.loc 1 564 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	get_fde_proc_name, .-get_fde_proc_name
	.section	.rodata
.LC94:
	.string	"\t%2u DW_CFA_advance_loc %d"
.LC95:
	.string	"  (%d * %d)"
.LC96:
	.string	"\t%2u DW_CFA_offset "
.LC97:
	.string	" %lld"
.LC98:
	.string	"  (%llu * %d)"
.LC99:
	.string	"\t%2u DW_CFA_restore \n"
	.align 4
.LC100:
	.string	"Error: Unexpected address size %d in DW_CFA_set_loc!\n"
.LC101:
	.string	"\t%2u DW_CFA_set_loc %llu\n"
	.align 4
.LC102:
	.string	"\t%2u DW_CFA_advance_loc1 %llu\n"
	.align 4
.LC103:
	.string	"\t%2u DW_CFA_advance_loc2 %llu\n"
	.align 4
.LC104:
	.string	"\t%2u DW_CFA_advance_loc4 %llu\n"
	.align 4
.LC105:
	.string	"\t%2u DW_CFA_MIPS_advance_loc8 %llu\n"
.LC106:
	.string	"\t%2u DW_CFA_offset_extended "
.LC107:
	.string	"\t%2u DW_CFA_restore_extended "
.LC108:
	.string	"\t%2u DW_CFA_undefined "
.LC109:
	.string	"\t%2u DW_CFA_same_value "
.LC110:
	.string	"\t%2u DW_CFA_register "
.LC111:
	.string	" = "
.LC112:
	.string	"\t%2u DW_CFA_remember_state\n"
.LC113:
	.string	"\t%2u DW_CFA_restore_state\n"
.LC114:
	.string	"\t%2u DW_CFA_def_cfa "
.LC115:
	.string	" %llu"
.LC116:
	.string	"\t%2u DW_CFA_def_cfa_register "
	.align 4
.LC117:
	.string	"\t%2u DW_CFA_def_cfa_offset %llu\n"
.LC118:
	.string	"\t%2u DW_CFA_nop\n"
.LC119:
	.string	"\t%2u DW_CFA_GNU_window_save \n"
	.align 4
.LC120:
	.string	"\t%2u DW_CFA_GNU_args_size arg size: %llu\n"
	.align 4
.LC121:
	.string	"\t%u Unexpected op 0x%x: unable to print more\n"
	.text
	.type	print_frame_inst_bytes, @function
print_frame_inst_bytes:
.LFB10:
	.loc 1 571 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%edi
.LCFI27:
	pushl	%esi
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$140, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	36(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -108(%ebp)
	movw	%dx, -116(%ebp)
	.loc 1 572 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 576 0
	movl	$0, -44(%ebp)
	.loc 1 577 0
	movl	$0, -40(%ebp)
	.loc 1 582 0
	jmp	.L161
.L162:
.LBB14:
	.loc 1 583 0
	movl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -17(%ebp)
	.loc 1 584 0
	movzbl	-17(%ebp), %eax
	andl	$192, %eax
	movl	%eax, -36(%ebp)
	.loc 1 585 0
	movzbl	-17(%ebp), %eax
	andl	$63, %eax
	movl	%eax, -32(%ebp)
	.loc 1 589 0
	movl	-36(%ebp), %eax
	movl	%eax, -124(%ebp)
	cmpl	$128, -124(%ebp)
	je	.L165
	cmpl	$192, -124(%ebp)
	je	.L166
	cmpl	$64, -124(%ebp)
	je	.L164
	jmp	.L163
.L164:
	.loc 1 591 0
	movzbl	-17(%ebp), %eax
	andl	$63, %eax
	movl	%eax, -28(%ebp)
	.loc 1 592 0
	movl	-28(%ebp), %eax
	imull	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 594 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L167
	.loc 1 595 0
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L167:
	.loc 1 598 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 599 0
	jmp	.L169
.L165:
	.loc 1 601 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 602 0
	movzbl	-17(%ebp), %eax
	andl	$63, %eax
	movl	%eax, -24(%ebp)
	.loc 1 603 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 604 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 605 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 606 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 607 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 608 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 609 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %esi
	imull	-112(%ebp), %esi
	movl	-108(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-112(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 611 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L170
	.loc 1 612 0
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L170:
	.loc 1 615 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 616 0
	jmp	.L169
.L166:
	.loc 1 619 0
	movzbl	-17(%ebp), %eax
	andl	$63, %eax
	movl	%eax, -24(%ebp)
	.loc 1 620 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 621 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 622 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 623 0
	jmp	.L169
.L163:
	.loc 1 626 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 627 0
	cmpl	$46, -32(%ebp)
	ja	.L172
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L196@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L196:
	.long	.L173@GOTOFF
	.long	.L174@GOTOFF
	.long	.L175@GOTOFF
	.long	.L176@GOTOFF
	.long	.L177@GOTOFF
	.long	.L178@GOTOFF
	.long	.L179@GOTOFF
	.long	.L180@GOTOFF
	.long	.L181@GOTOFF
	.long	.L182@GOTOFF
	.long	.L183@GOTOFF
	.long	.L184@GOTOFF
	.long	.L185@GOTOFF
	.long	.L186@GOTOFF
	.long	.L187@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L193@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L172@GOTOFF
	.long	.L194@GOTOFF
	.long	.L195@GOTOFF
	.text
.L174:
	.loc 1 631 0
	movzwl	-116(%ebp), %eax
	movl	%eax, -120(%ebp)
	cmpl	$4, -120(%ebp)
	je	.L198
	cmpl	$8, -120(%ebp)
	je	.L199
	jmp	.L197
.L198:
.LBB15:
	.loc 1 636 0
	movzwl	-116(%ebp), %ecx
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-96(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 637 0
	movl	-96(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 639 0
	jmp	.L200
.L199:
.LBE15:
.LBB16:
	.loc 1 644 0
	movzwl	-116(%ebp), %ecx
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-96(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 645 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.L197:
.LBE16:
	.loc 1 648 0
	movzwl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 651 0
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
.L200:
	.loc 1 654 0
	movzwl	-116(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 655 0
	movzwl	-116(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 656 0
	movzwl	-116(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 657 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 659 0
	jmp	.L169
.L175:
	.loc 1 661 0
	movl	-48(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 662 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 663 0
	addl	$1, -48(%ebp)
	.loc 1 664 0
	addl	$-1, -104(%ebp)
	adcl	$-1, -100(%ebp)
	.loc 1 665 0
	addl	$1, -44(%ebp)
	.loc 1 666 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 668 0
	jmp	.L169
.L176:
	.loc 1 670 0
	movl	-48(%ebp), %eax
	addl	$1, %eax
	leal	-20(%ebp), %edx
	movzwl	(%eax), %eax
	movw	%ax, (%edx)
	.loc 1 671 0
	movzwl	-20(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 672 0
	addl	$2, -48(%ebp)
	.loc 1 673 0
	addl	$-2, -104(%ebp)
	adcl	$-1, -100(%ebp)
	.loc 1 674 0
	addl	$2, -44(%ebp)
	.loc 1 675 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 677 0
	jmp	.L169
.L177:
	.loc 1 679 0
	movl	-48(%ebp), %eax
	addl	$1, %eax
	leal	-56(%ebp), %edx
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 680 0
	movl	-56(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 681 0
	addl	$4, -48(%ebp)
	.loc 1 682 0
	addl	$-4, -104(%ebp)
	adcl	$-1, -100(%ebp)
	.loc 1 683 0
	addl	$4, -44(%ebp)
	.loc 1 684 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 686 0
	jmp	.L169
.L193:
	.loc 1 688 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-88(%ebp), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 689 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 690 0
	addl	$8, -48(%ebp)
	.loc 1 691 0
	addl	$-8, -104(%ebp)
	adcl	$-1, -100(%ebp)
	.loc 1 692 0
	addl	$8, -44(%ebp)
	.loc 1 693 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 695 0
	jmp	.L169
.L178:
	.loc 1 697 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 698 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 699 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 700 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 701 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 703 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 704 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 705 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 706 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 707 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 708 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, %esi
	imull	-112(%ebp), %esi
	movl	-108(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-112(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 711 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L201
	.loc 1 712 0
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L201:
	.loc 1 715 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 716 0
	jmp	.L169
.L179:
	.loc 1 719 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 720 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 721 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 722 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 723 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 724 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 725 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 726 0
	jmp	.L169
.L180:
	.loc 1 728 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 729 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 730 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 731 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 732 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 733 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 734 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 735 0
	jmp	.L169
.L181:
	.loc 1 737 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 738 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 739 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 740 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 741 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 742 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 743 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 744 0
	jmp	.L169
.L182:
	.loc 1 746 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 747 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 748 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 749 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 750 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 752 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 753 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 754 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 755 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 756 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 757 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 758 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 759 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 760 0
	jmp	.L169
.L183:
	.loc 1 762 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 763 0
	jmp	.L169
.L184:
	.loc 1 765 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 766 0
	jmp	.L169
.L185:
	.loc 1 768 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 769 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 770 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 771 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 772 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 774 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 775 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 776 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 777 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 778 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 779 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 780 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 781 0
	jmp	.L169
.L186:
	.loc 1 783 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 784 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 785 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 786 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 787 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 788 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 789 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 790 0
	jmp	.L169
.L187:
	.loc 1 792 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 793 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 794 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 795 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 796 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 798 0
	jmp	.L169
.L173:
	.loc 1 801 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 802 0
	jmp	.L169
.L194:
	.loc 1 820 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 821 0
	jmp	.L169
.L195:
.LBB17:
	.loc 1 830 0
	movl	-48(%ebp), %edx
	addl	$1, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	local_dwarf_decode_u_leb128
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 833 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 836 0
	movl	-52(%ebp), %eax
	addl	%eax, -48(%ebp)
	.loc 1 837 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	subl	%eax, -104(%ebp)
	sbbl	%edx, -100(%ebp)
	.loc 1 838 0
	movl	-52(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 840 0
	jmp	.L169
.L172:
.LBE17:
	.loc 1 845 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 848 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
.L169:
	.loc 1 852 0
	addl	$1, -48(%ebp)
	.loc 1 853 0
	addl	$-1, -104(%ebp)
	adcl	$-1, -100(%ebp)
	.loc 1 854 0
	addl	$1, -44(%ebp)
.L161:
.LBE14:
	.loc 1 582 0
	cmpl	$0, -100(%ebp)
	jg	.L162
	cmpl	$0, -100(%ebp)
	js	.L205
	cmpl	$0, -104(%ebp)
	ja	.L162
.L205:
	.loc 1 856 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE10:
	.size	print_frame_inst_bytes, .-print_frame_inst_bytes
	.section	.rodata
.LC122:
	.string	"dwarf_get_address_size"
.LC123:
	.string	".debug_frame"
.LC124:
	.string	".eh_frame"
.LC125:
	.string	"\n%s\n"
.LC126:
	.string	"dwarf_get_fde_list"
.LC127:
	.string	"\nfde:"
.LC128:
	.string	"dwarf_get_fde_range"
.LC129:
	.string	"dwarf_get_fde_exception_info"
.LC130:
	.string	""
	.align 4
.LC131:
	.string	"<%3lld><%#llx:%#llx><%s><fde offset 0x%llx length: 0x%llx>"
.LC132:
	.string	"none"
.LC133:
	.string	"<eh offset %s>\n"
.LC134:
	.string	"unknown"
.LC135:
	.string	"<eh offset 0x%llx>\n"
.LC136:
	.string	"dwarf_get_fde_info_for_reg"
.LC137:
	.string	"    %08llx:\t"
.LC138:
	.string	"=u "
.LC139:
	.string	"%02lld"
.LC140:
	.string	") "
	.align 4
.LC141:
	.string	"\tfde sec. offset %llu 0x%llx cie offset for fde: %llu 0x%llx\n"
	.align 4
.LC142:
	.string	"Bad cie index %lld with fde index %lld!\n"
.LC143:
	.string	"dwarf_get_cie_info"
	.align 4
.LC144:
	.string	"Impossible: no instr bytes for fde index %d?\n"
	.align 4
.LC145:
	.string	"Error: on gettinginstr bytes for fde index %d?\n"
.LC146:
	.string	"dwarf_get_fde_instr_bytes"
.LC147:
	.string	"\ncie:"
.LC148:
	.string	"<%3lld>\tversion\t\t\t\t%d\n"
.LC149:
	.string	"\tcie sec. offset %llu 0x%llx\n"
.LC150:
	.string	"\taugmentation\t\t\t%s\n"
.LC151:
	.string	"\tcode_alignment_factor\t\t%llu\n"
.LC152:
	.string	"\tdata_alignment_factor\t\t%lld\n"
.LC153:
	.string	"\treturn_address_register\t\t%d\n"
	.align 4
.LC154:
	.string	"\tbytes of initial instructions:\t%lld\n"
.LC155:
	.string	"\tcie length :\t\t\t%lld\n"
	.text
.globl print_frames
	.type	print_frames, @function
print_frames:
.LFB11:
	.loc 1 861 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%edi
.LCFI33:
	pushl	%esi
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$460, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 881 0
	movl	$0, -60(%ebp)
	.loc 1 883 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_address_size@PLT
	movl	%eax, -68(%ebp)
	.loc 1 884 0
	cmpl	$0, -68(%ebp)
	je	.L207
	.loc 1 885 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L207:
	.loc 1 887 0
	movl	$0, -60(%ebp)
	jmp	.L209
.L210:
.LBB18:
	.loc 1 888 0
	movl	$0, -56(%ebp)
	.loc 1 889 0
	movl	$0, -52(%ebp)
	.loc 1 891 0
	cmpl	$0, -60(%ebp)
	jne	.L211
	.loc 1 892 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 900 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_fde_list@PLT
	movl	%eax, -68(%ebp)
	jmp	.L213
.L211:
	.loc 1 921 0
	movl	$1, -52(%ebp)
	.loc 1 922 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 923 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_fde_list_eh@PLT
	movl	%eax, -68(%ebp)
.L213:
	.loc 1 928 0
	cmpl	$1, -68(%ebp)
	jne	.L214
	.loc 1 929 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 930 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L216
.L214:
	.loc 1 931 0
	cmpl	$-1, -68(%ebp)
	jne	.L217
	.loc 1 932 0
	cmpl	$0, -52(%ebp)
	jne	.L216
	.loc 1 933 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L216
.L217:
	.loc 1 937 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 938 0
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 940 0
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	jmp	.L221
.L222:
.LBB19:
	.loc 1 941 0
	movl	$0, -48(%ebp)
	.loc 1 944 0
	movl	-112(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 32(%esp)
	leal	-176(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-168(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_fde_range@PLT
	movl	%eax, -44(%ebp)
	.loc 1 950 0
	cmpl	$1, -44(%ebp)
	jne	.L223
	.loc 1 951 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L223:
	.loc 1 953 0
	cmpl	$-1, -44(%ebp)
	je	.L225
	.loc 1 956 0
	movl	cu_name_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L227
	movl	fde_offset_for_cu_low@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L227
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -408(%ebp)
	movl	%edx, -404(%ebp)
	movl	fde_offset_for_cu_low@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -400(%ebp)
	movl	%ecx, -396(%ebp)
	movl	-396(%ebp), %ecx
	cmpl	%ecx, -404(%ebp)
	jb	.L225
	movl	-396(%ebp), %esi
	cmpl	%esi, -404(%ebp)
	ja	.L231
	movl	-400(%ebp), %edi
	cmpl	%edi, -408(%ebp)
	jb	.L225
.L231:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, -392(%ebp)
	movl	%edx, -388(%ebp)
	movl	fde_offset_for_cu_high@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -384(%ebp)
	movl	%ecx, -380(%ebp)
	movl	-380(%ebp), %ecx
	cmpl	%ecx, -388(%ebp)
	ja	.L225
	movl	-380(%ebp), %esi
	cmpl	%esi, -388(%ebp)
	jb	.L227
	movl	-384(%ebp), %edi
	cmpl	%edi, -392(%ebp)
	ja	.L225
.L227:
	.loc 1 962 0
	movl	-112(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_fde_exception_info@PLT
	movl	%eax, -44(%ebp)
	.loc 1 965 0
	cmpl	$1, -44(%ebp)
	jne	.L233
	.loc 1 966 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L233:
	.loc 1 969 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_fde_proc_name@PLT
	movl	%eax, -48(%ebp)
	.loc 1 970 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, -376(%ebp)
	movl	%edx, -372(%ebp)
	movl	-176(%ebp), %edx
	movl	-172(%ebp), %ecx
	movl	%edx, -368(%ebp)
	movl	%ecx, -364(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L235
	movl	-48(%ebp), %ecx
	movl	%ecx, -356(%ebp)
	jmp	.L237
.L235:
	leal	.LC130@GOTOFF(%ebx), %esi
	movl	%esi, -356(%ebp)
.L237:
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -416(%ebp)
	movl	%edx, -412(%ebp)
	movl	-416(%ebp), %edx
	movl	-412(%ebp), %ecx
	addl	%esi, %edx
	adcl	%edi, %ecx
	movl	%edx, -416(%ebp)
	movl	%ecx, -412(%ebp)
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	movl	-376(%ebp), %edx
	movl	-372(%ebp), %ecx
	movl	%edx, 40(%esp)
	movl	%ecx, 44(%esp)
	movl	-368(%ebp), %eax
	movl	-364(%ebp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	-356(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-352(%ebp), %edx
	movl	-348(%ebp), %ecx
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 975 0
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L238
	.loc 1 976 0
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L240
.L238:
	.loc 1 977 0
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-2, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L241
	.loc 1 979 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L240
.L241:
	.loc 1 981 0
	movl	-200(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L240:
	.loc 1 985 0
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	jmp	.L243
.L244:
	.loc 1 986 0
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	jmp	.L245
.L246:
.LBB20:
	.loc 1 990 0
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-96(%ebp), %eax
	movzwl	%ax, %ecx
	movl	-112(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 32(%esp)
	leal	-208(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-216(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_fde_info_for_reg@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1000 0
	cmpl	$1, -40(%ebp)
	jne	.L247
	.loc 1 1001 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L247:
	.loc 1 1005 0
	cmpl	$-1, -40(%ebp)
	je	.L249
	.loc 1 1008 0
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-208(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L251
	.loc 1 1012 0
	movl	-96(%ebp), %eax
	orl	-92(%ebp), %eax
	testl	%eax, %eax
	jne	.L253
	.loc 1 1013 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L253:
	.loc 1 1014 0
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	%esi, -344(%ebp)
	movl	%edi, -340(%ebp)
	movl	-344(%ebp), %eax
	xorl	$1034, %eax
	orl	-340(%ebp), %eax
	testl	%eax, %eax
	je	.L256
	movl	-344(%ebp), %eax
	xorl	$1035, %eax
	orl	-340(%ebp), %eax
	testl	%eax, %eax
	je	.L258
	jmp	.L255
.L256:
	.loc 1 1016 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 1017 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1018 0
	jmp	.L258
.L255:
	.loc 1 1022 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 1023 0
	movl	$61, (%esp)
	call	putchar@PLT
	.loc 1 1024 0
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L259
	.loc 1 1025 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 1026 0
	movl	$32, (%esp)
	call	putchar@PLT
	jmp	.L258
.L259:
	.loc 1 1028 0
	movl	-192(%ebp), %eax
	movl	-188(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1029 0
	movl	$40, (%esp)
	call	putchar@PLT
	.loc 1 1030 0
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	printreg
	.loc 1 1031 0
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L258:
	.loc 1 1035 0
	movl	-96(%ebp), %eax
	xorl	$65, %eax
	orl	-92(%ebp), %eax
	testl	%eax, %eax
	jne	.L249
	.loc 1 1036 0
	movl	$10, (%esp)
	call	putchar@PLT
.L249:
.LBE20:
	.loc 1 986 0
	addl	$1, -96(%ebp)
	adcl	$0, -92(%ebp)
.L245:
	cmpl	$0, -92(%ebp)
	js	.L246
	cmpl	$0, -92(%ebp)
	jg	.L251
	cmpl	$65, -96(%ebp)
	jbe	.L246
.L251:
	.loc 1 985 0
	addl	$1, -104(%ebp)
	adcl	$0, -100(%ebp)
.L243:
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -336(%ebp)
	movl	%edx, -332(%ebp)
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%edx, -424(%ebp)
	movl	%ecx, -420(%ebp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	-424(%ebp), %esi
	movl	-420(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -328(%ebp)
	movl	%edi, -324(%ebp)
	movl	-324(%ebp), %edi
	cmpl	%edi, -332(%ebp)
	jb	.L244
	movl	-324(%ebp), %eax
	cmpl	%eax, -332(%ebp)
	ja	.L264
	movl	-328(%ebp), %edx
	cmpl	%edx, -336(%ebp)
	jb	.L244
.L264:
	.loc 1 1040 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L225
.LBB21:
	.loc 1 1050 0
	movl	-112(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_fde_instr_bytes@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1053 0
	movl	-112(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-232(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-224(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_fde_section_offset@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1057 0
	cmpl	$0, -64(%ebp)
	jne	.L266
	.loc 1 1058 0
	movl	-232(%ebp), %esi
	movl	-228(%ebp), %edi
	movl	%esi, -416(%ebp)
	movl	%edi, -412(%ebp)
	movl	-232(%ebp), %esi
	movl	-228(%ebp), %edi
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-224(%ebp), %edx
	movl	-220(%ebp), %ecx
	movl	%edx, -312(%ebp)
	movl	%ecx, -308(%ebp)
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	-320(%ebp), %edx
	movl	-316(%ebp), %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	-312(%ebp), %esi
	movl	-308(%ebp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L266:
	.loc 1 1068 0
	cmpl	$0, -36(%ebp)
	jne	.L268
.LBB22:
	.loc 1 1079 0
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	sall	$2, %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 36(%esp)
	leal	-240(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-22(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-248(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-216(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-17(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_cie_info@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1089 0
	cmpl	$1, -32(%ebp)
	jne	.L270
	.loc 1 1090 0
	movl	-168(%ebp), %esi
	movl	-164(%ebp), %edi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1093 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L270:
	.loc 1 1096 0
	cmpl	$-1, -32(%ebp)
	je	.L225
	.loc 1 1101 0
	movzwl	-20(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -304(%ebp)
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %edx
	movl	%eax, -300(%ebp)
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	%eax, -416(%ebp)
	movl	%edx, -412(%ebp)
	movl	-84(%ebp), %ecx
	movl	-304(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-300(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-416(%ebp), %esi
	movl	-412(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_frame_inst_bytes
	jmp	.L225
.L268:
.LBE22:
	.loc 1 1106 0
	cmpl	$-1, -36(%ebp)
	jne	.L274
	.loc 1 1107 0
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L225
.L274:
	.loc 1 1112 0
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1115 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L225:
.LBE21:
.LBE19:
	.loc 1 940 0
	addl	$1, -112(%ebp)
	adcl	$0, -108(%ebp)
.L221:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -296(%ebp)
	movl	%edx, -292(%ebp)
	movl	-292(%ebp), %edx
	cmpl	%edx, -108(%ebp)
	jl	.L222
	movl	-292(%ebp), %ecx
	cmpl	%ecx, -108(%ebp)
	jg	.L277
	movl	-296(%ebp), %esi
	cmpl	%esi, -112(%ebp)
	jb	.L222
.L277:
	.loc 1 1123 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L278
	.loc 1 1124 0
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1125 0
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	jmp	.L280
.L281:
.LBB23:
	.loc 1 1137 0
	movl	-112(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 36(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-216(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-22(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-248(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-17(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_cie_info@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1147 0
	cmpl	$1, -28(%ebp)
	jne	.L282
	.loc 1 1148 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L282:
	.loc 1 1154 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L284
	.loc 1 1155 0
	movzbl	-17(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1157 0
	movl	-112(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dwarf_cie_section_offset@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1160 0
	cmpl	$0, -28(%ebp)
	jne	.L286
	.loc 1 1161 0
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	-272(%ebp), %esi
	movl	-268(%ebp), %edi
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L286:
	.loc 1 1167 0
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1168 0
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1170 0
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1172 0
	movzwl	-22(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1174 0
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1177 0
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1179 0
	movzwl	-20(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -288(%ebp)
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, -284(%ebp)
	movl	-256(%ebp), %esi
	movl	-252(%ebp), %edi
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	%eax, -416(%ebp)
	movl	%edx, -412(%ebp)
	movl	-216(%ebp), %ecx
	movl	-288(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-284(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-416(%ebp), %esi
	movl	-412(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_frame_inst_bytes
.L284:
.LBE23:
	.loc 1 1125 0
	addl	$1, -112(%ebp)
	adcl	$0, -108(%ebp)
.L280:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -280(%ebp)
	movl	%edx, -276(%ebp)
	movl	-276(%ebp), %edx
	cmpl	%edx, -108(%ebp)
	jl	.L281
	movl	-276(%ebp), %ecx
	cmpl	%ecx, -108(%ebp)
	jg	.L278
	movl	-280(%ebp), %esi
	cmpl	%esi, -112(%ebp)
	jb	.L281
.L278:
	.loc 1 1188 0
	movl	-72(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 1189 0
	movl	-76(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L216:
.LBE18:
	.loc 1 887 0
	addl	$1, -60(%ebp)
.L209:
	cmpl	$1, -60(%ebp)
	jle	.L210
	.loc 1 1192 0
	addl	$460, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE11:
	.size	print_frames, .-print_frames
	.section	.rodata
.LC156:
	.string	"\n.debug_pubnames"
.LC157:
	.string	"dwarf_get_globals"
.LC158:
	.string	"dwarf_global_name_offsets"
.LC159:
	.string	"dwarf_offdie"
.LC160:
	.string	"dwarf_die_CU_offset"
	.align 4
.LC161:
	.string	"global %-15s die %lld, cu-die %lld, off-in-cu %lld, cu %lld"
.LC162:
	.string	"dwarf_global_cu_offset"
.LC163:
	.string	" error: real cuhdr %llu"
.LC164:
	.string	"hassattr on DW_AT_external"
	.align 4
.LC165:
	.string	"pubname does not have DW_AT_external"
.LC166:
	.string	"*** DWARF CHECK: %s: %s ***\n"
	.text
.globl print_pubnames
	.type	print_pubnames, @function
print_pubnames:
.LFB12:
	.loc 1 1197 0
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
	subl	$188, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1209 0
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1210 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_globals@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1211 0
	cmpl	$1, -44(%ebp)
	jne	.L292
	.loc 1 1212 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L319
.L292:
	.loc 1 1213 0
	cmpl	$-1, -44(%ebp)
	je	.L319
	.loc 1 1217 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L296
.L297:
.LBB24:
	.loc 1 1223 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_global_name_offsets@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1226 0
	cmpl	$0, -40(%ebp)
	je	.L298
	.loc 1 1227 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L298:
	.loc 1 1232 0
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1233 0
	cmpl	$0, -36(%ebp)
	je	.L300
	.loc 1 1234 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L300:
	.loc 1 1237 0
	movl	-52(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_die_CU_offset@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1238 0
	cmpl	$0, -32(%ebp)
	je	.L302
	.loc 1 1239 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L302:
	.loc 1 1243 0
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1244 0
	cmpl	$0, -28(%ebp)
	je	.L304
	.loc 1 1245 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L304:
	.loc 1 1247 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	-152(%ebp), %esi
	movl	-148(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-60(%ebp), %ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.LBB25:
	.loc 1 1258 0
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	.loc 1 1260 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_global_cu_offset@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1262 0
	cmpl	$0, -24(%ebp)
	je	.L306
	.loc 1 1263 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L306:
	.loc 1 1266 0
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L308
	.loc 1 1267 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1268 0
	movl	$1, (%esp)
	call	exit@PLT
.L308:
.LBE25:
	.loc 1 1272 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 1273 0
	movl	-60(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 1276 0
	movl	check_pubname_attr@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L310
.LBB26:
	.loc 1 1280 0
	movl	-52(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$63, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_hasattr@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1282 0
	cmpl	$1, -20(%ebp)
	jne	.L312
	.loc 1 1283 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L312:
	.loc 1 1286 0
	movl	pubname_attr_result@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	pubname_attr_result@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1287 0
	cmpl	$0, -20(%ebp)
	jne	.L314
	movl	-112(%ebp), %eax
	testl	%eax, %eax
	je	.L314
	jmp	.L310
.L314:
	.loc 1 1290 0
	movl	pubname_attr_result@GOT(%ebx), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	pubname_attr_result@GOT(%ebx), %eax
	movl	%edx, 4(%eax)
	.loc 1 1291 0
	movl	-60(%ebp), %edx
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	movl	check_error@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	check_error@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L310:
.LBE26:
	.loc 1 1296 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$13, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.LBE24:
	.loc 1 1217 0
	addl	$1, -72(%ebp)
	adcl	$0, -68(%ebp)
.L296:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	jl	.L297
	movl	-116(%ebp), %esi
	cmpl	%esi, -68(%ebp)
	jg	.L318
	movl	-120(%ebp), %edi
	cmpl	%edi, -72(%ebp)
	jb	.L297
.L318:
	.loc 1 1298 0
	movl	-48(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L319:
	.loc 1 1300 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	print_pubnames, .-print_pubnames
	.section	.rodata
	.align 4
.LC167:
	.string	"%3ld %s: %6llu %2lld [%4lld] \"%s\" \n"
	.align 4
.LC168:
	.string	"%3ld %s: %6llu %2lld [%4lld] 0\n"
	.text
	.type	print_one_macro_entry_detail, @function
print_one_macro_entry_detail:
.LFB13:
	.loc 1 1317 0
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
	subl	$76, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1319 0
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L321
	.loc 1 1320 0
	movl	16(%ebp), %eax
	movl	28(%eax), %ecx
	movl	16(%ebp), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	movl	16(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	%ecx, 36(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L324
.L321:
	.loc 1 1328 0
	movl	16(%ebp), %eax
	movl	12(%eax), %esi
	movl	16(%eax), %edi
	movl	%esi, -24(%ebp)
	movl	%edi, -20(%ebp)
	movl	16(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L324:
	.loc 1 1336 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE13:
	.size	print_one_macro_entry_detail, .-print_one_macro_entry_detail
	.section	.rodata
.LC169:
	.string	"DW_MACINFO_type-code-0"
.LC170:
	.string	"DW_MACINFO_start_file"
.LC171:
	.string	"DW_MACINFO_end_file  "
.LC172:
	.string	"DW_MACINFO_vendor_ext"
.LC173:
	.string	"DW_MACINFO_define    "
.LC174:
	.string	"DW_MACINFO_undef     "
.LC175:
	.string	"DW_MACINFO_0x%x"
	.text
	.type	print_one_macro_entry, @function
print_one_macro_entry:
.LFB14:
	.loc 1 1342 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$100, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1342 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1344 0
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	cmpl	$2, -80(%ebp)
	je	.L329
	cmpl	$2, -80(%ebp)
	jg	.L333
	cmpl	$0, -80(%ebp)
	je	.L327
	cmpl	$1, -80(%ebp)
	je	.L328
	jmp	.L326
.L333:
	cmpl	$4, -80(%ebp)
	je	.L331
	cmpl	$4, -80(%ebp)
	jl	.L330
	cmpl	$255, -80(%ebp)
	je	.L332
	jmp	.L326
.L327:
	.loc 1 1346 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1347 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_macro_entry_detail
	.loc 1 1348 0
	jmp	.L335
.L330:
	.loc 1 1351 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1352 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_macro_entry_detail
	.loc 1 1353 0
	jmp	.L335
.L331:
	.loc 1 1356 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1357 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_macro_entry_detail
	.loc 1 1358 0
	jmp	.L335
.L332:
	.loc 1 1361 0
	movl	-76(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1362 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_macro_entry_detail
	.loc 1 1363 0
	jmp	.L335
.L328:
	.loc 1 1366 0
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1367 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_macro_entry_detail
	.loc 1 1368 0
	jmp	.L335
.L329:
	.loc 1 1371 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1372 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_macro_entry_detail
	.loc 1 1373 0
	jmp	.L335
.L326:
.LBB27:
	.loc 1 1378 0
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1379 0
	movl	-72(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$50, 4(%esp)
	leal	-58(%ebp), %eax
	movl	%eax, (%esp)
	call	snprintf@PLT
	.loc 1 1381 0
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-58(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_macro_entry_detail
.L335:
.LBE27:
	.loc 1 1385 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L336
	call	__stack_chk_fail_local
.L336:
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE14:
	.size	print_one_macro_entry, .-print_one_macro_entry
	.section	.rodata
.LC176:
	.string	"\n.debug_macinfo"
	.align 4
.LC177:
	.string	"compilation-unit .debug_macinfo # %ld\n"
	.align 4
.LC178:
	.string	"num name section-offset file-index [line] \"string\""
	.align 4
.LC179:
	.string	"DW_MACINFO file count of zero is invalid DWARF2/3"
	.align 4
.LC180:
	.string	"Counts of DW_MACINFO file (%ld) end_file (%ld) do not match!.\n"
	.align 4
.LC181:
	.string	"Count of zeros in macro group should be non-zero (1 preferred), count is %ld\n"
	.align 4
.LC182:
	.string	"Macro counts: start file %ld, end file %ld, define %ld, undef %ld ext %ld, code-zero %ld, unknown %ld\n"
.LC183:
	.string	"dwarf_get_macro_details"
	.text
.globl print_macinfo
	.type	print_macinfo, @function
print_macinfo:
.LFB15:
	.loc 1 1393 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%edi
.LCFI55:
	pushl	%esi
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$156, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1394 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 1 1395 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 1397 0
	movl	$0, -32(%ebp)
	.loc 1 1401 0
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1403 0
	jmp	.L338
.L339:
.LBB28:
	.loc 1 1410 0
	leal	-92(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 1412 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 1413 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1414 0
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1415 0
	movl	$0, -24(%ebp)
	jmp	.L340
.L341:
.LBB29:
	.loc 1 1417 0
	movl	-24(%ebp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1418 0
	leal	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_macro_entry
.LBE29:
	.loc 1 1415 0
	addl	$1, -24(%ebp)
.L340:
	movl	-24(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -116(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-108(%ebp), %edx
	cmpl	%edx, -116(%ebp)
	jl	.L341
	movl	-108(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jg	.L343
	movl	-112(%ebp), %edx
	cmpl	%edx, -120(%ebp)
	jb	.L341
.L343:
	.loc 1 1421 0
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	jne	.L344
	.loc 1 1422 0
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L344:
	.loc 1 1424 0
	movl	-92(%ebp), %edx
	movl	-88(%ebp), %eax
	cmpl	%eax, %edx
	je	.L346
	.loc 1 1425 0
	movl	-88(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L346:
	.loc 1 1429 0
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	jg	.L348
	.loc 1 1430 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L348:
	.loc 1 1434 0
	movl	-68(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	-72(%ebp), %edx
	movl	-76(%ebp), %ecx
	movl	-80(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-92(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	-104(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1453 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	sall	$5, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$32, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 1454 0
	movl	-36(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 1455 0
	addl	$1, -32(%ebp)
.L338:
.LBE28:
	.loc 1 1403 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_macro_details@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L339
	.loc 1 1457 0
	cmpl	$1, -28(%ebp)
	jne	.L353
	.loc 1 1458 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L353:
	.loc 1 1460 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	print_macinfo, .-print_macinfo
	.section	.rodata
	.align 4
.LC184:
	.string	"\n.debug_loc format <o b e l> means section-offset begin-addr end-addr length-of-block-entry"
	.align 4
.LC185:
	.string	"\t <obel> 0x%08llx 0x%09llx 0x%08llx %8lld\n"
.LC186:
	.string	"dwarf_get_loclist_entry"
	.text
.globl print_locs
	.type	print_locs, @function
print_locs:
.LFB16:
	.loc 1 1465 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%edi
.LCFI61:
	pushl	%esi
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$124, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1466 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 1474 0
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1476 0
	jmp	.L355
.L356:
	.loc 1 1481 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1484 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L355:
	.loc 1 1476 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 32(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_loclist_entry@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L356
	.loc 1 1486 0
	cmpl	$1, -20(%ebp)
	jne	.L360
	.loc 1 1487 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L360:
	.loc 1 1489 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	print_locs, .-print_locs
	.section	.rodata
.LC187:
	.string	"\n.debug_abbrev"
.LC188:
	.string	"null .debug_abbrev entry"
.LC189:
	.string	"<%lld><%lld><%lld><%s>\n"
	.align 4
.LC190:
	.string	"<%4lld><%5lld><code: %2lld> %-20s\n"
.LC191:
	.string	"dwarf_get_abbrev_tag"
.LC192:
	.string	"dwarf_get_abbrev_code"
.LC193:
	.string	"<%lld><%lld><%lld><%s>"
	.align 4
.LC194:
	.string	"<%4lld><%5lld><code: %2lld> %-20s"
	.align 4
.LC195:
	.string	"dwarf_get_abbrev_children_flag"
.LC196:
	.string	" %s"
.LC197:
	.string	"dwarf_get_abbrev_entry"
.LC198:
	.string	" <%ld>%s<%s>"
.LC199:
	.string	"      <%5ld>\t%-28s%s\n"
.LC200:
	.string	"dwarf_get_abbrev"
	.text
.globl print_abbrevs
	.type	print_abbrevs, @function
print_abbrevs:
.LFB17:
	.loc 1 1494 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%esi
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$160, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1496 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 1505 0
	movl	$1, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 1510 0
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	.loc 1 1512 0
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1513 0
	jmp	.L399
.L363:
	.loc 1 1517 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L364
	.loc 1 1519 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L366
	.loc 1 1520 0
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L368
.L366:
	.loc 1 1525 0
	leal	.LC188@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L368:
	.loc 1 1531 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	%eax, -64(%ebp)
	adcl	%edx, -60(%ebp)
	.loc 1 1532 0
	addl	$1, -48(%ebp)
	adcl	$0, -44(%ebp)
	.loc 1 1533 0
	jmp	.L362
.L364:
	.loc 1 1535 0
	movl	-36(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_abbrev_tag@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1536 0
	cmpl	$0, -24(%ebp)
	je	.L369
	.loc 1 1537 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC191@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L369:
	.loc 1 1539 0
	movl	-36(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_abbrev_code@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1540 0
	cmpl	$0, -24(%ebp)
	je	.L371
	.loc 1 1541 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC192@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L371:
	.loc 1 1543 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L373
	.loc 1 1544 0
	movzwl	-10(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_TAG_name@PLT
	movl	%eax, %ecx
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%ecx, 28(%esp)
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L375
.L373:
	.loc 1 1547 0
	movzwl	-10(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_TAG_name@PLT
	movl	%eax, %ecx
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%ecx, 28(%esp)
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L375:
	.loc 1 1549 0
	addl	$1, -48(%ebp)
	adcl	$0, -44(%ebp)
	.loc 1 1550 0
	movl	-36(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_abbrev_children_flag@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1551 0
	cmpl	$1, -20(%ebp)
	jne	.L376
	.loc 1 1552 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC195@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L376:
	.loc 1 1555 0
	cmpl	$-1, -20(%ebp)
	jne	.L378
	.loc 1 1556 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
.L378:
	.loc 1 1558 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_children_name@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1559 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L380
	.loc 1 1560 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC196@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L382
.L380:
	.loc 1 1562 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L382:
	.loc 1 1566 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L383
.L384:
.LBB30:
	.loc 1 1569 0
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	-36(%ebp), %esi
	movl	err@GOT(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, (%esp)
	call	dwarf_get_abbrev_entry@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1571 0
	cmpl	$1, -16(%ebp)
	jne	.L385
	.loc 1 1572 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L385:
	.loc 1 1574 0
	cmpl	$-1, -16(%ebp)
	jne	.L387
	.loc 1 1575 0
	movw	$-1, -12(%ebp)
	.loc 1 1576 0
	movl	$-1, -88(%ebp)
	movl	$-1, -84(%ebp)
.L387:
	.loc 1 1578 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L389
	.loc 1 1579 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_FORM_name@PLT
	movl	%eax, %esi
	movzwl	-12(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_AT_name@PLT
	movl	%eax, %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC198@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L391
.L389:
	.loc 1 1583 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_FORM_name@PLT
	movl	%eax, %esi
	movzwl	-12(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_AT_name@PLT
	movl	%eax, %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC199@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L391:
.LBE30:
	.loc 1 1566 0
	addl	$1, -56(%ebp)
	adcl	$0, -52(%ebp)
.L383:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-124(%ebp), %edx
	cmpl	%edx, -52(%ebp)
	jb	.L384
	movl	-124(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	ja	.L393
	movl	-128(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	jb	.L384
.L393:
	.loc 1 1587 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	%eax, -64(%ebp)
	adcl	%edx, -60(%ebp)
	.loc 1 1588 0
	movl	dense@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L362
	.loc 1 1589 0
	movl	$10, (%esp)
	call	putchar@PLT
.L362:
.L399:
	.loc 1 1513 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_abbrev@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L363
	.loc 1 1591 0
	cmpl	$1, -28(%ebp)
	jne	.L398
	.loc 1 1592 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L398:
	.loc 1 1594 0
	addl	$160, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	print_abbrevs, .-print_abbrevs
	.section	.rodata
.LC201:
	.string	"\n.debug_string"
	.align 4
.LC202:
	.string	"name at offset %lld, length %lld is %s\n"
.LC203:
	.string	"get_str failure"
	.text
.globl print_strings
	.type	print_strings, @function
print_strings:
.LFB18:
	.loc 1 1599 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$68, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1602 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 1605 0
	leal	.LC201@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1606 0
	jmp	.L401
.L402:
	.loc 1 1608 0
	movl	-16(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%ecx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC202@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1610 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	-24(%ebp), %eax
	adcl	-20(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.L401:
	.loc 1 1606 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_str@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L402
	.loc 1 1612 0
	cmpl	$1, -12(%ebp)
	jne	.L406
	.loc 1 1613 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC203@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L406:
	.loc 1 1615 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	print_strings, .-print_strings
	.section	.rodata
.LC204:
	.string	"\n.debug_aranges"
.LC205:
	.string	"dwarf_get_aranges"
.LC206:
	.string	"dwarf_get_arange_info"
.LC207:
	.string	"dwarf_tag in aranges"
	.align 4
.LC208:
	.string	"dwarf_attr arange derived die has no name"
.LC209:
	.string	"arange: string missing"
	.align 4
.LC210:
	.string	"dwarf_whatform unexpected value"
	.align 4
.LC211:
	.string	"\narange starts at %llx, length of %lld, cu_die_offset = %lld"
.LC212:
	.string	"dwarf_get_cu_hdr_offset"
.LC213:
	.string	" cuhdr %llu"
	.text
.globl print_aranges
	.type	print_aranges, @function
print_aranges:
.LFB19:
	.loc 1 1620 0
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
	subl	$172, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1631 0
	leal	.LC204@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1632 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_aranges@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1633 0
	cmpl	$1, -56(%ebp)
	jne	.L408
	.loc 1 1634 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC205@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L446
.L408:
	.loc 1 1635 0
	cmpl	$-1, -56(%ebp)
	je	.L446
	.loc 1 1638 0
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	jmp	.L412
.L413:
	.loc 1 1639 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_arange_info@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1642 0
	cmpl	$0, -52(%ebp)
	je	.L414
	.loc 1 1643 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC206@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L416
.L414:
.LBB31:
	.loc 1 1647 0
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1648 0
	cmpl	$0, -48(%ebp)
	je	.L417
	.loc 1 1649 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L416
.L417:
	.loc 1 1651 0
	movl	cu_name_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L419
.LBB32:
	.loc 1 1659 0
	movl	-64(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_tag@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1660 0
	cmpl	$0, -44(%ebp)
	je	.L421
	.loc 1 1661 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC207@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L421:
	.loc 1 1664 0
	movl	-64(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_attr@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1667 0
	cmpl	$0, -40(%ebp)
	je	.L423
	.loc 1 1668 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC208@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L423:
	.loc 1 1672 0
	movl	-68(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_whatform@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1673 0
	cmpl	$0, -36(%ebp)
	jne	.L425
	.loc 1 1674 0
	movzwl	-20(%ebp), %eax
	cmpw	$8, %ax
	je	.L427
	movzwl	-20(%ebp), %eax
	cmpw	$14, %ax
	jne	.L439
.L427:
.LBB33:
	.loc 1 1679 0
	movl	-68(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_formstring@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1682 0
	cmpl	$0, -32(%ebp)
	jne	.L430
.LBB34:
	.loc 1 1683 0
	movl	-120(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1685 0
	movl	cu_name@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L432
	.loc 1 1686 0
	movl	-120(%ebp), %eax
	movl	$47, 4(%esp)
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1687 0
	cmpl	$0, -28(%ebp)
	jne	.L434
	.loc 1 1688 0
	movl	-120(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L432
.L434:
	.loc 1 1690 0
	addl	$1, -28(%ebp)
.L432:
	.loc 1 1693 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	cu_name@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L436
	.loc 1 1694 0
	movl	-120(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	jmp	.L439
.L436:
	.loc 1 1697 0
	movl	-120(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 1699 0
	jmp	.L438
.L430:
.LBE34:
	.loc 1 1702 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC209@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L439
.L425:
.LBE33:
	.loc 1 1708 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC210@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L439:
	.loc 1 1712 0
	movl	-68(%ebp), %eax
	movl	$10, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L419:
.LBE32:
	.loc 1 1714 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC211@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.LBB35:
	.loc 1 1720 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	.loc 1 1725 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_get_arange_cu_header_offset@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1726 0
	cmpl	$0, -24(%ebp)
	je	.L440
	.loc 1 1727 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC212@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L440:
	.loc 1 1730 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L442
	.loc 1 1731 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC213@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L442:
.LBE35:
	.loc 1 1733 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 1734 0
	movl	-64(%ebp), %eax
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_one_die@PLT
	.loc 1 1738 0
	movl	-64(%ebp), %eax
	movl	$8, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L416:
.LBE31:
	.loc 1 1742 0
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$17, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L438:
	.loc 1 1638 0
	addl	$1, -80(%ebp)
	adcl	$0, -76(%ebp)
.L412:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-132(%ebp), %edx
	cmpl	%edx, -76(%ebp)
	jl	.L413
	movl	-132(%ebp), %eax
	cmpl	%eax, -76(%ebp)
	jg	.L445
	movl	-136(%ebp), %edx
	cmpl	%edx, -80(%ebp)
	jb	.L413
.L445:
	.loc 1 1744 0
	movl	-60(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L446:
	.loc 1 1746 0
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	print_aranges, .-print_aranges
	.section	.rodata
.LC214:
	.string	"\n.debug_static_func"
.LC215:
	.string	"dwarf_get_funcs"
.LC216:
	.string	"dwarf_func_name_offsets"
.LC217:
	.string	"dwarf_offdie on statics"
.LC218:
	.string	"dwarf_offdie2"
	.align 4
.LC219:
	.string	"static-func %-15s die %lld, cu-die %lld, off-in-cu %lld, cu %lld"
.LC220:
	.string	"dwarf_arange_cu_offset"
	.text
.globl print_static_funcs
	.type	print_static_funcs, @function
print_static_funcs:
.LFB20:
	.loc 1 1751 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%edi
.LCFI82:
	pushl	%esi
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$188, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1763 0
	leal	.LC214@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1764 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_funcs@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1765 0
	cmpl	$1, -40(%ebp)
	jne	.L448
	.loc 1 1766 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC215@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L469
.L448:
	.loc 1 1767 0
	cmpl	$-1, -40(%ebp)
	je	.L469
	.loc 1 1770 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L452
.L453:
.LBB36:
	.loc 1 1776 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_func_name_offsets@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1779 0
	cmpl	$0, -36(%ebp)
	je	.L454
	.loc 1 1780 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC216@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L454:
	.loc 1 1782 0
	movl	-80(%ebp), %edx
	movl	-76(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1783 0
	cmpl	$0, -32(%ebp)
	je	.L456
	.loc 1 1784 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC217@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L456:
	.loc 1 1785 0
	movl	-48(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_die_CU_offset@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1786 0
	cmpl	$0, -28(%ebp)
	je	.L458
	.loc 1 1787 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L458:
	.loc 1 1789 0
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1790 0
	cmpl	$0, -24(%ebp)
	je	.L460
	.loc 1 1791 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC218@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L460:
	.loc 1 1793 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-152(%ebp), %esi
	movl	-148(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-56(%ebp), %ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC219@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1801 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L462
.LBB37:
	.loc 1 1802 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	.loc 1 1804 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_func_cu_offset@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1806 0
	cmpl	$0, -20(%ebp)
	je	.L464
	.loc 1 1807 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L464:
	.loc 1 1810 0
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L462
	.loc 1 1811 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1812 0
	movl	$1, (%esp)
	call	exit@PLT
.L462:
.LBE37:
	.loc 1 1815 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 1816 0
	movl	-56(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 1818 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$24, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.LBE36:
	.loc 1 1770 0
	addl	$1, -64(%ebp)
	adcl	$0, -60(%ebp)
.L452:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %edx
	cmpl	%edx, -60(%ebp)
	jl	.L453
	movl	-116(%ebp), %esi
	cmpl	%esi, -60(%ebp)
	jg	.L468
	movl	-120(%ebp), %edi
	cmpl	%edi, -64(%ebp)
	jb	.L453
.L468:
	.loc 1 1820 0
	movl	-44(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L469:
	.loc 1 1822 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	print_static_funcs, .-print_static_funcs
	.section	.rodata
.LC221:
	.string	"\n.debug_static_vars"
.LC222:
	.string	"dwarf_get_vars"
.LC223:
	.string	"dwarf_var_name_offsets"
	.align 4
.LC224:
	.string	"static-var %-15s die %lld, cu-die %lld, off-in-cu %lld, cu %lld"
	.text
.globl print_static_vars
	.type	print_static_vars, @function
print_static_vars:
.LFB21:
	.loc 1 1827 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%edi
.LCFI88:
	pushl	%esi
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$188, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1839 0
	leal	.LC221@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1840 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_vars@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1841 0
	cmpl	$1, -40(%ebp)
	jne	.L471
	.loc 1 1842 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC222@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L493
.L471:
	.loc 1 1843 0
	cmpl	$-1, -40(%ebp)
	je	.L493
	.loc 1 1846 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L475
.L476:
.LBB38:
	.loc 1 1852 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_var_name_offsets@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1855 0
	cmpl	$0, -36(%ebp)
	je	.L477
	.loc 1 1856 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC223@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L477:
	.loc 1 1858 0
	movl	-80(%ebp), %edx
	movl	-76(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1859 0
	cmpl	$0, -32(%ebp)
	je	.L479
	.loc 1 1860 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L479:
	.loc 1 1861 0
	movl	-48(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_die_CU_offset@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1862 0
	cmpl	$0, -28(%ebp)
	je	.L481
	.loc 1 1863 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L481:
	.loc 1 1865 0
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1866 0
	cmpl	$0, -24(%ebp)
	je	.L483
	.loc 1 1867 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC218@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L483:
	.loc 1 1869 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-152(%ebp), %esi
	movl	-148(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-56(%ebp), %ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC224@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.LBB39:
	.loc 1 1878 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	.loc 1 1880 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_var_cu_offset@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1882 0
	cmpl	$0, -20(%ebp)
	je	.L485
	.loc 1 1883 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L485:
	.loc 1 1886 0
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L487
	.loc 1 1887 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1888 0
	movl	$1, (%esp)
	call	exit@PLT
.L487:
	.loc 1 1890 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L489
	.loc 1 1891 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC213@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L489:
.LBE39:
	.loc 1 1894 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 1897 0
	movl	-56(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 1899 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$26, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.LBE38:
	.loc 1 1846 0
	addl	$1, -64(%ebp)
	adcl	$0, -60(%ebp)
.L475:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %edx
	cmpl	%edx, -60(%ebp)
	jl	.L476
	movl	-116(%ebp), %esi
	cmpl	%esi, -60(%ebp)
	jg	.L492
	movl	-120(%ebp), %edi
	cmpl	%edi, -64(%ebp)
	jb	.L476
.L492:
	.loc 1 1901 0
	movl	-44(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L493:
	.loc 1 1903 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	print_static_vars, .-print_static_vars
	.section	.rodata
.LC225:
	.string	"\n.debug_types"
.LC226:
	.string	"dwarf_get_types"
.LC227:
	.string	"dwarf_type_name_offsets"
	.align 4
.LC228:
	.string	"type %-15s die %lld, cu-die %lld, off-in-cu %lld, cu %lld"
	.text
.globl print_types
	.type	print_types, @function
print_types:
.LFB22:
	.loc 1 1908 0
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
	subl	$188, %esp
.LCFI97:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1920 0
	leal	.LC225@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 1921 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_types@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1922 0
	cmpl	$1, -40(%ebp)
	jne	.L495
	.loc 1 1923 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC226@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L517
.L495:
	.loc 1 1924 0
	cmpl	$-1, -40(%ebp)
	je	.L517
	.loc 1 1927 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L499
.L500:
.LBB40:
	.loc 1 1933 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_type_name_offsets@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1935 0
	cmpl	$0, -36(%ebp)
	je	.L501
	.loc 1 1936 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC227@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L501:
	.loc 1 1938 0
	movl	-80(%ebp), %edx
	movl	-76(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1939 0
	cmpl	$0, -32(%ebp)
	je	.L503
	.loc 1 1940 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L503:
	.loc 1 1941 0
	movl	-48(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_die_CU_offset@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1942 0
	cmpl	$0, -28(%ebp)
	je	.L505
	.loc 1 1943 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L505:
	.loc 1 1945 0
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1946 0
	cmpl	$0, -24(%ebp)
	je	.L507
	.loc 1 1947 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC218@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L507:
	.loc 1 1949 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-152(%ebp), %esi
	movl	-148(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-56(%ebp), %ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC228@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.LBB41:
	.loc 1 1958 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	.loc 1 1960 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_type_cu_offset@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1962 0
	cmpl	$0, -20(%ebp)
	je	.L509
	.loc 1 1963 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L509:
	.loc 1 1966 0
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L511
	.loc 1 1967 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 1968 0
	movl	$1, (%esp)
	call	exit@PLT
.L511:
	.loc 1 1970 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L513
	.loc 1 1971 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC213@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L513:
.LBE41:
	.loc 1 1974 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 1976 0
	movl	-56(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 1978 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$25, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.LBE40:
	.loc 1 1927 0
	addl	$1, -64(%ebp)
	adcl	$0, -60(%ebp)
.L499:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %edx
	cmpl	%edx, -60(%ebp)
	jl	.L500
	movl	-116(%ebp), %esi
	cmpl	%esi, -60(%ebp)
	jg	.L516
	movl	-120(%ebp), %edi
	cmpl	%edi, -64(%ebp)
	jb	.L500
.L516:
	.loc 1 1980 0
	movl	-44(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L517:
	.loc 1 1982 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	print_types, .-print_types
	.section	.rodata
.LC229:
	.string	"\n.debug_weaknames"
.LC230:
	.string	"dwarf_get_weaks"
.LC231:
	.string	"dwarf_weak_name_offsets"
	.align 4
.LC232:
	.string	"weakname %-15s die %lld, cu-die %lld, off-in-cu %lld, cu %lld"
	.text
.globl print_weaknames
	.type	print_weaknames, @function
print_weaknames:
.LFB23:
	.loc 1 1987 0
	pushl	%ebp
.LCFI98:
	movl	%esp, %ebp
.LCFI99:
	pushl	%edi
.LCFI100:
	pushl	%esi
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$188, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1999 0
	leal	.LC229@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 2000 0
	movl	err@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_get_weaks@PLT
	movl	%eax, -40(%ebp)
	.loc 1 2001 0
	cmpl	$1, -40(%ebp)
	jne	.L519
	.loc 1 2002 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC230@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
	jmp	.L541
.L519:
	.loc 1 2003 0
	cmpl	$-1, -40(%ebp)
	je	.L541
	.loc 1 2006 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L523
.L524:
.LBB42:
	.loc 1 2012 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_weak_name_offsets@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2015 0
	cmpl	$0, -36(%ebp)
	je	.L525
	.loc 1 2016 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC231@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L525:
	.loc 1 2018 0
	movl	-80(%ebp), %edx
	movl	-76(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2019 0
	cmpl	$0, -32(%ebp)
	je	.L527
	.loc 1 2020 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L527:
	.loc 1 2021 0
	movl	-48(%ebp), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_die_CU_offset@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2022 0
	cmpl	$0, -28(%ebp)
	je	.L529
	.loc 1 2023 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L529:
	.loc 1 2025 0
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_offdie@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2026 0
	cmpl	$0, -24(%ebp)
	je	.L531
	.loc 1 2027 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC218@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L531:
	.loc 1 2029 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-152(%ebp), %esi
	movl	-148(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-56(%ebp), %ecx
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC232@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.LBB43:
	.loc 1 2039 0
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	.loc 1 2041 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	err@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf_weak_cu_offset@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2043 0
	cmpl	$0, -20(%ebp)
	je	.L533
	.loc 1 2044 0
	movl	err@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC220@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_error@PLT
.L533:
	.loc 1 2047 0
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L535
	.loc 1 2048 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2049 0
	movl	$1, (%esp)
	call	exit@PLT
.L535:
	.loc 1 2051 0
	movl	verbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L537
	.loc 1 2052 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC213@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L537:
.LBE43:
	.loc 1 2055 0
	movl	$10, (%esp)
	call	putchar@PLT
	.loc 1 2058 0
	movl	-56(%ebp), %eax
	movl	$1, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
	.loc 1 2060 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$27, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.LBE42:
	.loc 1 2006 0
	addl	$1, -64(%ebp)
	adcl	$0, -60(%ebp)
.L523:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	-116(%ebp), %edx
	cmpl	%edx, -60(%ebp)
	jl	.L524
	movl	-116(%ebp), %esi
	cmpl	%esi, -60(%ebp)
	jg	.L540
	movl	-120(%ebp), %edi
	cmpl	%edi, -64(%ebp)
	jb	.L524
.L540:
	.loc 1 2062 0
	movl	-44(%ebp), %eax
	movl	$15, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf_dealloc@PLT
.L541:
	.loc 1 2064 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	print_weaknames, .-print_weaknames
	.section	.rodata
.LC233:
	.string	"%s"
	.text
	.type	printreg, @function
printreg:
.LFB24:
	.loc 1 2068 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$20, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2069 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	regnames@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 4(%esp)
	leal	.LC233@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 2070 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	printreg, .-printreg
	.type	local_dwarf_decode_u_leb128, @function
local_dwarf_decode_u_leb128:
.LFB25:
	.loc 1 2079 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	pushl	%edi
.LCFI110:
	pushl	%esi
.LCFI111:
	subl	$40, %esp
.LCFI112:
	.loc 1 2085 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 2086 0
	movl	$0, -20(%ebp)
	.loc 1 2087 0
	movl	$1, -16(%ebp)
	.loc 1 2088 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
.L545:
	.loc 1 2090 0
	movzbl	-9(%ebp), %eax
	andl	$127, %eax
	movl	-20(%ebp), %ecx
	sall	%cl, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-32(%ebp), %eax
	orl	%esi, %eax
	movl	-28(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 2091 0
	addl	$7, -20(%ebp)
	.loc 1 2093 0
	movzbl	-9(%ebp), %eax
	testb	%al, %al
	js	.L546
	.loc 1 2094 0
	cmpl	$0, 12(%ebp)
	je	.L548
	.loc 1 2095 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L548:
	.loc 1 2096 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	jmp	.L544
.L546:
	.loc 1 2099 0
	addl	$1, -16(%ebp)
	.loc 1 2100 0
	addl	$1, 8(%ebp)
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	.loc 1 2101 0
	jmp	.L545
.L544:
	.loc 1 2102 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	$40, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	local_dwarf_decode_u_leb128, .-local_dwarf_decode_u_leb128
	.comm	current_cu_die_for_print_frames,4,4
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
	.long	.LCFI9-.LCFI7
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
	.long	.LCFI10-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI11
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
	.long	.LCFI16-.LFB8
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
	.byte	0x83
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
	.long	.LCFI21-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI22
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
	.long	.LCFI25-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI26
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
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI31-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI32
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
	.long	.LCFI37-.LFB12
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI43-.LFB13
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
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI49-.LFB14
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI53-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI54
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
	.long	.LCFI59-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI60
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
	.long	.LCFI65-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI66
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI70-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI71
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
	.long	.LCFI74-.LFB19
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI80-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI81
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI86-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI87
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
	.long	.LCFI92-.LFB22
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI98-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI99
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
	.long	.LCFI104-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI105
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
	.long	.LCFI108-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI109
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE40:
	.file 2 "../../libdwarf/libdwarf/libdwarf.h"
	.file 3 "../../libdwarf/dwarfdump/globals.h"
	.file 4 "/usr/include/bits/types.h"
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI59-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI60-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI70-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI71-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI104-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI105-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI108-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI109-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x2296
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libdwarf/dwarfdump/print_sections.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libdwarf"
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
	.uleb128 0x4
	.string	"__uint32_t"
	.byte	0x4
	.byte	0x2d
	.long	0xa7
	.uleb128 0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"__uint64_t"
	.byte	0x4
	.byte	0x33
	.long	0x142
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x177
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.string	"Dwarf_Bool"
	.byte	0x2
	.byte	0x5a
	.long	0x106
	.uleb128 0x4
	.string	"Dwarf_Off"
	.byte	0x2
	.byte	0x5b
	.long	0x142
	.uleb128 0x4
	.string	"Dwarf_Unsigned"
	.byte	0x2
	.byte	0x5c
	.long	0x142
	.uleb128 0x4
	.string	"Dwarf_Half"
	.byte	0x2
	.byte	0x5d
	.long	0xbf
	.uleb128 0x4
	.string	"Dwarf_Small"
	.byte	0x2
	.byte	0x5e
	.long	0xae
	.uleb128 0x4
	.string	"Dwarf_Signed"
	.byte	0x2
	.byte	0x5f
	.long	0x11f
	.uleb128 0x4
	.string	"Dwarf_Addr"
	.byte	0x2
	.byte	0x60
	.long	0x142
	.uleb128 0x4
	.string	"Dwarf_Ptr"
	.byte	0x2
	.byte	0x62
	.long	0x16f
	.uleb128 0x4
	.string	"Dwarf_Debug"
	.byte	0x2
	.byte	0xc2
	.long	0x22d
	.uleb128 0x6
	.byte	0x4
	.long	0x233
	.uleb128 0x7
	.string	"Dwarf_Debug_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Die"
	.byte	0x2
	.byte	0xc3
	.long	0x254
	.uleb128 0x6
	.byte	0x4
	.long	0x25a
	.uleb128 0x7
	.string	"Dwarf_Die_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Line"
	.byte	0x2
	.byte	0xc4
	.long	0x27a
	.uleb128 0x6
	.byte	0x4
	.long	0x280
	.uleb128 0x7
	.string	"Dwarf_Line_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Global"
	.byte	0x2
	.byte	0xc5
	.long	0x2a3
	.uleb128 0x6
	.byte	0x4
	.long	0x2a9
	.uleb128 0x7
	.string	"Dwarf_Global_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Func"
	.byte	0x2
	.byte	0xc6
	.long	0x2cc
	.uleb128 0x6
	.byte	0x4
	.long	0x2d2
	.uleb128 0x7
	.string	"Dwarf_Func_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Type"
	.byte	0x2
	.byte	0xc7
	.long	0x2f3
	.uleb128 0x6
	.byte	0x4
	.long	0x2f9
	.uleb128 0x7
	.string	"Dwarf_Type_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Var"
	.byte	0x2
	.byte	0xc8
	.long	0x319
	.uleb128 0x6
	.byte	0x4
	.long	0x31f
	.uleb128 0x7
	.string	"Dwarf_Var_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Weak"
	.byte	0x2
	.byte	0xc9
	.long	0x33f
	.uleb128 0x6
	.byte	0x4
	.long	0x345
	.uleb128 0x7
	.string	"Dwarf_Weak_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Error"
	.byte	0x2
	.byte	0xca
	.long	0x367
	.uleb128 0x6
	.byte	0x4
	.long	0x36d
	.uleb128 0x7
	.string	"Dwarf_Error_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Attribute"
	.byte	0x2
	.byte	0xcb
	.long	0x394
	.uleb128 0x6
	.byte	0x4
	.long	0x39a
	.uleb128 0x7
	.string	"Dwarf_Attribute_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Abbrev"
	.byte	0x2
	.byte	0xcc
	.long	0x3c2
	.uleb128 0x6
	.byte	0x4
	.long	0x3c8
	.uleb128 0x7
	.string	"Dwarf_Abbrev_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Fde"
	.byte	0x2
	.byte	0xcd
	.long	0x3ea
	.uleb128 0x6
	.byte	0x4
	.long	0x3f0
	.uleb128 0x7
	.string	"Dwarf_Fde_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Cie"
	.byte	0x2
	.byte	0xce
	.long	0x40f
	.uleb128 0x6
	.byte	0x4
	.long	0x415
	.uleb128 0x7
	.string	"Dwarf_Cie_s"
	.byte	0x1
	.uleb128 0x4
	.string	"Dwarf_Arange"
	.byte	0x2
	.byte	0xcf
	.long	0x437
	.uleb128 0x6
	.byte	0x4
	.long	0x43d
	.uleb128 0x7
	.string	"Dwarf_Arange_s"
	.byte	0x1
	.uleb128 0x8
	.long	0x4dc
	.string	"Dwarf_Macro_Details_s"
	.byte	0x20
	.byte	0x2
	.value	0x45b
	.uleb128 0x9
	.string	"dmd_offset"
	.byte	0x2
	.value	0x45c
	.long	0x197
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"dmd_type"
	.byte	0x2
	.value	0x45e
	.long	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"dmd_lineno"
	.byte	0x2
	.value	0x45f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"dmd_fileindex"
	.byte	0x2
	.value	0x464
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"dmd_macro"
	.byte	0x2
	.value	0x467
	.long	0x171
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0xa
	.string	"Dwarf_Macro_Details"
	.byte	0x2
	.value	0x490
	.long	0x44e
	.uleb128 0x4
	.string	"string"
	.byte	0x3
	.byte	0x63
	.long	0x171
	.uleb128 0x4
	.string	"boolean"
	.byte	0x3
	.byte	0x64
	.long	0x106
	.uleb128 0xb
	.long	0x540
	.byte	0x8
	.byte	0x3
	.byte	0x6f
	.uleb128 0xc
	.string	"checks"
	.byte	0x3
	.byte	0x70
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"errors"
	.byte	0x3
	.byte	0x71
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.string	"Dwarf_Check_Result"
	.byte	0x3
	.byte	0x72
	.long	0x515
	.uleb128 0xd
	.long	0x6e3
	.byte	0x1
	.string	"print_line_numbers_this_cu"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xe
	.string	"dbg"
	.byte	0x1
	.byte	0x56
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x1
	.byte	0x56
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"linecount"
	.byte	0x1
	.byte	0x58
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.string	"linebuf"
	.byte	0x1
	.byte	0x59
	.long	0x6e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"pc"
	.byte	0x1
	.byte	0x5b
	.long	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.string	"lineno"
	.byte	0x1
	.byte	0x5c
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x10
	.string	"column"
	.byte	0x1
	.byte	0x5d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.string	"filename"
	.byte	0x1
	.byte	0x5e
	.long	0x4f8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.string	"newstatement"
	.byte	0x1
	.byte	0x5f
	.long	0x185
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"lineendsequence"
	.byte	0x1
	.byte	0x60
	.long	0x185
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.string	"new_basic_block"
	.byte	0x1
	.byte	0x61
	.long	0x185
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.string	"lres"
	.byte	0x1
	.byte	0x62
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"sres"
	.byte	0x1
	.byte	0x63
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"ares"
	.byte	0x1
	.byte	0x64
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"lires"
	.byte	0x1
	.byte	0x65
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"cores"
	.byte	0x1
	.byte	0x66
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x10
	.string	"line"
	.byte	0x1
	.byte	0x7a
	.long	0x268
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"nsres"
	.byte	0x1
	.byte	0x7b
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x268
	.uleb128 0x12
	.long	0x746
	.string	"safe_strcpy"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.byte	0xc6
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"outlen"
	.byte	0x1
	.byte	0xc6
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0xc6
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.string	"inlen"
	.byte	0x1
	.byte	0xc6
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x13
	.long	0x8d1
	.string	"get_proc_name"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.long	0x106
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0xe
	.string	"dbg"
	.byte	0x1
	.byte	0xd7
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"die"
	.byte	0x1
	.byte	0xd7
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0xd7
	.long	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xe
	.string	"proc_name_buf"
	.byte	0x1
	.byte	0xd8
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xe
	.string	"proc_name_buf_len"
	.byte	0x1
	.byte	0xd8
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"atcnt"
	.byte	0x1
	.byte	0xda
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xda
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"atlist"
	.byte	0x1
	.byte	0xdb
	.long	0x8d1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"low_pc_die"
	.byte	0x1
	.byte	0xdc
	.long	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.string	"atres"
	.byte	0x1
	.byte	0xdd
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.string	"funcres"
	.byte	0x1
	.byte	0xde
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"funcpcfound"
	.byte	0x1
	.byte	0xdf
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"funcnamefound"
	.byte	0x1
	.byte	0xe0
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x10
	.string	"attr"
	.byte	0x1
	.byte	0xec
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x10
	.string	"ares"
	.byte	0x1
	.byte	0xed
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"temps"
	.byte	0x1
	.byte	0xee
	.long	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.string	"sres"
	.byte	0x1
	.byte	0xef
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"dres"
	.byte	0x1
	.byte	0xf0
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x111
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x37d
	.uleb128 0x15
	.long	0xab0
	.string	"get_nested_proc_name"
	.byte	0x1
	.value	0x140
	.byte	0x1
	.long	0x106
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x13e
	.long	0x21a
	.byte	0x4
	.byte	0x91
	.sleb128 -8276
	.uleb128 0x16
	.string	"die"
	.byte	0x1
	.value	0x13e
	.long	0x243
	.byte	0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x13e
	.long	0x1f7
	.byte	0x4
	.byte	0x91
	.sleb128 -8288
	.uleb128 0x16
	.string	"ret_name_buf"
	.byte	0x1
	.value	0x13f
	.long	0x171
	.byte	0x4
	.byte	0x91
	.sleb128 -8292
	.uleb128 0x16
	.string	"ret_name_buf_len"
	.byte	0x1
	.value	0x13f
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x14
	.string	"name_buf"
	.byte	0x1
	.value	0x141
	.long	0xab0
	.byte	0x4
	.byte	0x91
	.sleb128 -8212
	.uleb128 0x14
	.string	"curdie"
	.byte	0x1
	.value	0x142
	.long	0x243
	.byte	0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x14
	.string	"die_locally_gotten"
	.byte	0x1
	.value	0x143
	.long	0x106
	.byte	0x4
	.byte	0x91
	.sleb128 -8244
	.uleb128 0x14
	.string	"prev_child"
	.byte	0x1
	.value	0x144
	.long	0x243
	.byte	0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x14
	.string	"newchild"
	.byte	0x1
	.value	0x145
	.long	0x243
	.byte	0x4
	.byte	0x91
	.sleb128 -8252
	.uleb128 0x14
	.string	"newsibling"
	.byte	0x1
	.value	0x146
	.long	0x243
	.byte	0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.value	0x147
	.long	0x1be
	.byte	0x4
	.byte	0x91
	.sleb128 -8214
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.value	0x148
	.long	0x354
	.byte	0x4
	.byte	0x91
	.sleb128 -8260
	.uleb128 0x14
	.string	"chres"
	.byte	0x1
	.value	0x149
	.long	0x106
	.byte	0x4
	.byte	0x91
	.sleb128 -8236
	.uleb128 0x11
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x14
	.string	"tres"
	.byte	0x1
	.value	0x14d
	.long	0x106
	.byte	0x4
	.byte	0x91
	.sleb128 -8232
	.uleb128 0x11
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x14
	.string	"lchres"
	.byte	0x1
	.value	0x153
	.long	0x106
	.byte	0x4
	.byte	0x91
	.sleb128 -8228
	.uleb128 0x11
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x14
	.string	"proc_name_v"
	.byte	0x1
	.value	0x156
	.long	0x106
	.byte	0x4
	.byte	0x91
	.sleb128 -8224
	.uleb128 0x11
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x14
	.string	"newprog"
	.byte	0x1
	.value	0x16b
	.long	0x106
	.byte	0x4
	.byte	0x91
	.sleb128 -8220
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0xac1
	.long	0x177
	.uleb128 0x19
	.long	0x168
	.value	0x1fff
	.byte	0x0
	.uleb128 0x1a
	.long	0xc84
	.byte	0x1
	.string	"get_fde_proc_name"
	.byte	0x1
	.value	0x1bf
	.byte	0x1
	.long	0x4f8
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x1be
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x1
	.value	0x1be
	.long	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"cu_header_length"
	.byte	0x1
	.value	0x1c1
	.long	0x1a8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"abbrev_offset"
	.byte	0x1
	.value	0x1c2
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"version_stamp"
	.byte	0x1
	.value	0x1c3
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.value	0x1c4
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"next_cu_offset"
	.byte	0x1
	.value	0x1c5
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x1c6
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"dres"
	.byte	0x1
	.value	0x1c7
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"chres"
	.byte	0x1
	.value	0x1c8
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"looping"
	.byte	0x1
	.value	0x1c9
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	0xc04
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x14
	.string	"child"
	.byte	0x1
	.value	0x1e1
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x14
	.string	"gotname"
	.byte	0x1
	.value	0x1ee
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xc6b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x14
	.string	"ldie"
	.byte	0x1
	.value	0x1f9
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x14
	.string	"chres"
	.byte	0x1
	.value	0x21c
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"child"
	.byte	0x1
	.value	0x21d
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x14
	.string	"gotname"
	.byte	0x1
	.value	0x229
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.string	"proc_name"
	.byte	0x1
	.value	0x1c0
	.long	0xab0
	.byte	0x5
	.byte	0x3
	.long	proc_name.4723
	.byte	0x0
	.uleb128 0x1d
	.long	0xe65
	.string	"print_frame_inst_bytes"
	.byte	0x1
	.value	0x23b
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x237
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"cie_init_inst"
	.byte	0x1
	.value	0x238
	.long	0x209
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.value	0x238
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.long	.LASF5
	.byte	0x1
	.value	0x239
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.long	.LASF6
	.byte	0x1
	.value	0x23a
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x16
	.string	"addr_size"
	.byte	0x1
	.value	0x23a
	.long	0x1be
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x14
	.string	"instp"
	.byte	0x1
	.value	0x23c
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"uval"
	.byte	0x1
	.value	0x23d
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"uval2"
	.byte	0x1
	.value	0x23e
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"uleblen"
	.byte	0x1
	.value	0x23f
	.long	0xa7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.string	"off"
	.byte	0x1
	.value	0x240
	.long	0xa7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"loff"
	.byte	0x1
	.value	0x241
	.long	0xa7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"u16"
	.byte	0x1
	.value	0x242
	.long	0xbf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"u32"
	.byte	0x1
	.value	0x243
	.long	0xa7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"u64"
	.byte	0x1
	.value	0x244
	.long	0x142
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x14
	.string	"ibyte"
	.byte	0x1
	.value	0x247
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x14
	.string	"top"
	.byte	0x1
	.value	0x248
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"bottom"
	.byte	0x1
	.value	0x249
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"delta"
	.byte	0x1
	.value	0x24a
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"reg"
	.byte	0x1
	.value	0x24b
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	0xe2a
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x14
	.string	"v32"
	.byte	0x1
	.value	0x27a
	.long	0x10d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x1c
	.long	0xe48
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x14
	.string	"v64"
	.byte	0x1
	.value	0x282
	.long	0x130
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x11
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x14
	.string	"lreg"
	.byte	0x1
	.value	0x33c
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x12b5
	.byte	0x1
	.string	"print_frames"
	.byte	0x1
	.value	0x35d
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x35c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"cie_data"
	.byte	0x1
	.value	0x35e
	.long	0x12b5
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"cie_element_count"
	.byte	0x1
	.value	0x35f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.string	"fde_data"
	.byte	0x1
	.value	0x360
	.long	0x12bb
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x14
	.string	"fde_element_count"
	.byte	0x1
	.value	0x361
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x362
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.value	0x362
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.value	0x362
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.value	0x363
	.long	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x14
	.string	"func_length"
	.byte	0x1
	.value	0x364
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x14
	.string	"fde_bytes"
	.byte	0x1
	.value	0x365
	.long	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"fde_bytes_length"
	.byte	0x1
	.value	0x366
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x14
	.string	"cie_offset"
	.byte	0x1
	.value	0x367
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x14
	.string	"cie_index"
	.byte	0x1
	.value	0x368
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x14
	.string	"fde_offset"
	.byte	0x1
	.value	0x369
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x14
	.string	"reg"
	.byte	0x1
	.value	0x36a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.value	0x36b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x14
	.string	"eh_table_offset"
	.byte	0x1
	.value	0x36c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x14
	.string	"row_pc"
	.byte	0x1
	.value	0x36d
	.long	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.string	"fres"
	.byte	0x1
	.value	0x36e
	.long	0x106
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.value	0x36f
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"offres"
	.byte	0x1
	.value	0x370
	.long	0x106
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"framed"
	.byte	0x1
	.value	0x371
	.long	0x106
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x14
	.string	"framename"
	.byte	0x1
	.value	0x378
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"silent_if_missing"
	.byte	0x1
	.value	0x379
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.long	0x1202
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x14
	.string	"temps"
	.byte	0x1
	.value	0x3ad
	.long	0x4f8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"fres"
	.byte	0x1
	.value	0x3ae
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	0x10ff
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x14
	.string	"offset_relevant"
	.byte	0x1
	.value	0x3db
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x14
	.string	"fires"
	.byte	0x1
	.value	0x3dc
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x11
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x14
	.string	"fde_off"
	.byte	0x1
	.value	0x411
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x14
	.string	"cie_off"
	.byte	0x1
	.value	0x412
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x14
	.string	"instrs"
	.byte	0x1
	.value	0x416
	.long	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x14
	.string	"ilen"
	.byte	0x1
	.value	0x417
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.value	0x418
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x14
	.string	"cires"
	.byte	0x1
	.value	0x42d
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x1
	.value	0x42e
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x14
	.string	"version"
	.byte	0x1
	.value	0x42f
	.long	0x1d0
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x1
	.value	0x430
	.long	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x1
	.value	0x431
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.value	0x432
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x1
	.value	0x433
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x1
	.value	0x434
	.long	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x435
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x14
	.string	"cires"
	.byte	0x1
	.value	0x466
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x1
	.value	0x467
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x14
	.string	"version"
	.byte	0x1
	.value	0x468
	.long	0x1d0
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x1
	.value	0x469
	.long	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x1
	.value	0x46a
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.value	0x46b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x1
	.value	0x46c
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x1
	.value	0x46d
	.long	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x1
	.value	0x46e
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x14
	.string	"cie_off"
	.byte	0x1
	.value	0x46f
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x3fe
	.uleb128 0x6
	.byte	0x4
	.long	0x3d9
	.uleb128 0x1e
	.long	0x143d
	.byte	0x1
	.string	"print_pubnames"
	.byte	0x1
	.value	0x4ad
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x4ac
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"globbuf"
	.byte	0x1
	.value	0x4ae
	.long	0x143d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x1
	.value	0x4af
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x4b0
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"die"
	.byte	0x1
	.value	0x4b1
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.long	.LASF14
	.byte	0x1
	.value	0x4b2
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF15
	.byte	0x1
	.value	0x4b3
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.value	0x4b4
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF16
	.byte	0x1
	.value	0x4b5
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x1
	.value	0x4b6
	.long	0x171
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.value	0x4b7
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x14
	.string	"nres"
	.byte	0x1
	.value	0x4c2
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"dres"
	.byte	0x1
	.value	0x4c3
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"ddres"
	.byte	0x1
	.value	0x4c4
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"cudres"
	.byte	0x1
	.value	0x4c5
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	0x140c
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x14
	.string	"off"
	.byte	0x1
	.value	0x4ea
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x1
	.value	0x4eb
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x11
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x14
	.string	"has_attr"
	.byte	0x1
	.value	0x4fd
	.long	0x185
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x14
	.string	"ares"
	.byte	0x1
	.value	0x4fe
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x28f
	.uleb128 0x8
	.long	0x14fb
	.string	"macro_counts_s"
	.byte	0x1c
	.byte	0x1
	.value	0x517
	.uleb128 0x9
	.string	"mc_start_file"
	.byte	0x1
	.value	0x518
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"mc_end_file"
	.byte	0x1
	.value	0x519
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"mc_define"
	.byte	0x1
	.value	0x51a
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"mc_undef"
	.byte	0x1
	.value	0x51b
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"mc_extension"
	.byte	0x1
	.value	0x51c
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"mc_code_zero"
	.byte	0x1
	.value	0x51d
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"mc_unknown"
	.byte	0x1
	.value	0x51e
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x155a
	.string	"print_one_macro_entry_detail"
	.byte	0x1
	.value	0x525
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x522
	.long	0x15c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"type"
	.byte	0x1
	.value	0x523
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.string	"mdp"
	.byte	0x1
	.value	0x524
	.long	0x155a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x44e
	.uleb128 0x1d
	.long	0x15de
	.string	"print_one_macro_entry"
	.byte	0x1
	.value	0x53e
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x53b
	.long	0x15c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"mdp"
	.byte	0x1
	.value	0x53c
	.long	0x155a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.string	"counts"
	.byte	0x1
	.value	0x53d
	.long	0x15de
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x11
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x14
	.string	"create_type"
	.byte	0x1
	.value	0x561
	.long	0x15e4
	.byte	0x3
	.byte	0x91
	.sleb128 -66
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1443
	.uleb128 0x18
	.long	0x15f4
	.long	0x177
	.uleb128 0x1f
	.long	0x168
	.byte	0x31
	.byte	0x0
	.uleb128 0x1e
	.long	0x16cd
	.byte	0x1
	.string	"print_macinfo"
	.byte	0x1
	.value	0x571
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x570
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.value	0x572
	.long	0x197
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"max"
	.byte	0x1
	.value	0x573
	.long	0x1a8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x1
	.value	0x574
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"group"
	.byte	0x1
	.value	0x575
	.long	0x15c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"maclist"
	.byte	0x1
	.value	0x576
	.long	0x16cd
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"lres"
	.byte	0x1
	.value	0x577
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x57e
	.long	0x15c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"counts"
	.byte	0x1
	.value	0x57f
	.long	0x1443
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x11
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x14
	.string	"mdp"
	.byte	0x1
	.value	0x588
	.long	0x155a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4dc
	.uleb128 0x1e
	.long	0x178d
	.byte	0x1
	.string	"print_locs"
	.byte	0x1
	.value	0x5b9
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x5b8
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.value	0x5ba
	.long	0x1a8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"hipc_offset"
	.byte	0x1
	.value	0x5bb
	.long	0x1f7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"lopc_offset"
	.byte	0x1
	.value	0x5bc
	.long	0x1f7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"data"
	.byte	0x1
	.value	0x5bd
	.long	0x209
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"entry_len"
	.byte	0x1
	.value	0x5be
	.long	0x1a8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"next_entry"
	.byte	0x1
	.value	0x5bf
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"lres"
	.byte	0x1
	.value	0x5c0
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1e
	.long	0x18fb
	.byte	0x1
	.string	"print_abbrevs"
	.byte	0x1
	.value	0x5d6
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x5d5
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"ab"
	.byte	0x1
	.value	0x5d7
	.long	0x3ae
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.value	0x5d8
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x1
	.value	0x5d9
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"attr_count"
	.byte	0x1
	.value	0x5da
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.value	0x5db
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x14
	.string	"attr"
	.byte	0x1
	.value	0x5dc
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"form"
	.byte	0x1
	.value	0x5dd
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.string	"off"
	.byte	0x1
	.value	0x5de
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x5df
	.long	0x1a8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"child_name"
	.byte	0x1
	.value	0x5e0
	.long	0x4f8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"abbrev_num"
	.byte	0x1
	.value	0x5e1
	.long	0x1a8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"child_flag"
	.byte	0x1
	.value	0x5e2
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.string	"abres"
	.byte	0x1
	.value	0x5e3
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"tres"
	.byte	0x1
	.value	0x5e4
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"acres"
	.byte	0x1
	.value	0x5e5
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"abbrev_code"
	.byte	0x1
	.value	0x5e6
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x11
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x14
	.string	"aeres"
	.byte	0x1
	.value	0x61f
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x196c
	.byte	0x1
	.string	"print_strings"
	.byte	0x1
	.value	0x63f
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x63e
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x1
	.value	0x640
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x1
	.value	0x641
	.long	0x4f8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.value	0x642
	.long	0x197
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"sres"
	.byte	0x1
	.value	0x643
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1e
	.long	0x1b3c
	.byte	0x1
	.string	"print_aranges"
	.byte	0x1
	.value	0x654
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x653
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x1
	.value	0x655
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x656
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"arange_buf"
	.byte	0x1
	.value	0x657
	.long	0x1b3c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"start"
	.byte	0x1
	.value	0x658
	.long	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x1
	.value	0x659
	.long	0x1a8
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.string	"cu_die_offset"
	.byte	0x1
	.value	0x65a
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.value	0x65b
	.long	0x243
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"ares"
	.byte	0x1
	.value	0x65c
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"aires"
	.byte	0x1
	.value	0x65d
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x14
	.string	"dres"
	.byte	0x1
	.value	0x66d
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	0x1b11
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.value	0x674
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x14
	.string	"attrib"
	.byte	0x1
	.value	0x675
	.long	0x37d
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x14
	.string	"theform"
	.byte	0x1
	.value	0x676
	.long	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"tres"
	.byte	0x1
	.value	0x677
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"dares"
	.byte	0x1
	.value	0x678
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"fres"
	.byte	0x1
	.value	0x679
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x14
	.string	"temps"
	.byte	0x1
	.value	0x68c
	.long	0x4f8
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.string	"sres"
	.byte	0x1
	.value	0x68d
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.value	0x693
	.long	0x4f8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x14
	.string	"off"
	.byte	0x1
	.value	0x6b8
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x1
	.value	0x6b9
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x423
	.uleb128 0x1e
	.long	0x1c8c
	.byte	0x1
	.string	"print_static_funcs"
	.byte	0x1
	.value	0x6d7
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x6d6
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"funcbuf"
	.byte	0x1
	.value	0x6d8
	.long	0x1c8c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x1
	.value	0x6d9
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x6da
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"die"
	.byte	0x1
	.value	0x6db
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF14
	.byte	0x1
	.value	0x6dc
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF15
	.byte	0x1
	.value	0x6dd
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.value	0x6de
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.long	.LASF16
	.byte	0x1
	.value	0x6df
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x1
	.value	0x6e0
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"gfres"
	.byte	0x1
	.value	0x6e1
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x14
	.string	"fnres"
	.byte	0x1
	.value	0x6eb
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"ores"
	.byte	0x1
	.value	0x6ec
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x6ed
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x1
	.value	0x6ee
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x14
	.string	"off"
	.byte	0x1
	.value	0x70a
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x1
	.value	0x70b
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x2ba
	.uleb128 0x1e
	.long	0x1dda
	.byte	0x1
	.string	"print_static_vars"
	.byte	0x1
	.value	0x723
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x722
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"varbuf"
	.byte	0x1
	.value	0x724
	.long	0x1dda
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x1
	.value	0x725
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x726
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"die"
	.byte	0x1
	.value	0x727
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF14
	.byte	0x1
	.value	0x728
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF15
	.byte	0x1
	.value	0x729
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.value	0x72a
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.long	.LASF16
	.byte	0x1
	.value	0x72b
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x1
	.value	0x72c
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"gvres"
	.byte	0x1
	.value	0x72d
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x14
	.string	"vnres"
	.byte	0x1
	.value	0x737
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"ores"
	.byte	0x1
	.value	0x738
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x739
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x1
	.value	0x73a
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x14
	.string	"off"
	.byte	0x1
	.value	0x756
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x1
	.value	0x757
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x308
	.uleb128 0x1e
	.long	0x1f23
	.byte	0x1
	.string	"print_types"
	.byte	0x1
	.value	0x774
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x773
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"typebuf"
	.byte	0x1
	.value	0x775
	.long	0x1f23
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x1
	.value	0x776
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x777
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"die"
	.byte	0x1
	.value	0x778
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF14
	.byte	0x1
	.value	0x779
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF15
	.byte	0x1
	.value	0x77a
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.value	0x77b
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.long	.LASF16
	.byte	0x1
	.value	0x77c
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x1
	.value	0x77d
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"gtres"
	.byte	0x1
	.value	0x77e
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x14
	.string	"tnres"
	.byte	0x1
	.value	0x788
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"ores"
	.byte	0x1
	.value	0x789
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x78a
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x1
	.value	0x78b
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x14
	.string	"off"
	.byte	0x1
	.value	0x7a6
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x1
	.value	0x7a7
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x2e1
	.uleb128 0x1e
	.long	0x2074
	.byte	0x1
	.string	"print_weaknames"
	.byte	0x1
	.value	0x7c3
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x16
	.string	"dbg"
	.byte	0x1
	.value	0x7c2
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"weaknamebuf"
	.byte	0x1
	.value	0x7c4
	.long	0x2074
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x1
	.value	0x7c5
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.value	0x7c6
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"die"
	.byte	0x1
	.value	0x7c7
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF14
	.byte	0x1
	.value	0x7c8
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF15
	.byte	0x1
	.value	0x7c9
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.value	0x7ca
	.long	0x243
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.long	.LASF16
	.byte	0x1
	.value	0x7cb
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x1
	.value	0x7cc
	.long	0x171
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"wkres"
	.byte	0x1
	.value	0x7cd
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x14
	.string	"tnres"
	.byte	0x1
	.value	0x7d7
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"ores"
	.byte	0x1
	.value	0x7d8
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x7d9
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x1
	.value	0x7da
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x14
	.string	"off"
	.byte	0x1
	.value	0x7f7
	.long	0x197
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x1
	.value	0x7f8
	.long	0x106
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x32d
	.uleb128 0x1d
	.long	0x20a8
	.string	"printreg"
	.byte	0x1
	.value	0x814
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x16
	.string	"reg"
	.byte	0x1
	.value	0x813
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x15
	.long	0x2153
	.string	"local_dwarf_decode_u_leb128"
	.byte	0x1
	.value	0x81f
	.byte	0x1
	.long	0x1a8
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x16
	.string	"leb128"
	.byte	0x1
	.value	0x81d
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"leb128_length"
	.byte	0x1
	.value	0x81e
	.long	0x2153
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"byte"
	.byte	0x1
	.value	0x820
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.string	"number"
	.byte	0x1
	.value	0x821
	.long	0x1a8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"shift"
	.byte	0x1
	.value	0x822
	.long	0xa7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"byte_length"
	.byte	0x1
	.value	0x823
	.long	0xa7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xa7
	.uleb128 0x18
	.long	0x2169
	.long	0x171
	.uleb128 0x1f
	.long	0x168
	.byte	0x41
	.byte	0x0
	.uleb128 0x10
	.string	"regnames"
	.byte	0x1
	.byte	0x33
	.long	0x2159
	.byte	0x5
	.byte	0x3
	.long	regnames
	.uleb128 0x20
	.string	"verbose"
	.byte	0x3
	.byte	0x74
	.long	0x106
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"dense"
	.byte	0x3
	.byte	0x75
	.long	0x506
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"check_pubname_attr"
	.byte	0x3
	.byte	0x79
	.long	0x506
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"pubname_attr_result"
	.byte	0x3
	.byte	0x7f
	.long	0x540
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	0x21e3
	.long	0x177
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x20
	.string	"cu_name"
	.byte	0x3
	.byte	0x88
	.long	0x21d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"cu_name_flag"
	.byte	0x3
	.byte	0x89
	.long	0x506
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"fde_offset_for_cu_low"
	.byte	0x3
	.byte	0x8b
	.long	0x197
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"fde_offset_for_cu_high"
	.byte	0x3
	.byte	0x8c
	.long	0x197
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"check_error"
	.byte	0x3
	.byte	0x8f
	.long	0x106
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"err"
	.byte	0x3
	.byte	0x90
	.long	0x354
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"current_cu_die_for_print_frames"
	.byte	0x1
	.byte	0x53
	.long	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_cu_die_for_print_frames
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x133
	.value	0x2
	.long	.Ldebug_info0
	.long	0x229a
	.long	0x55a
	.string	"print_line_numbers_this_cu"
	.long	0xac1
	.string	"get_fde_proc_name"
	.long	0xe65
	.string	"print_frames"
	.long	0x12c1
	.string	"print_pubnames"
	.long	0x15f4
	.string	"print_macinfo"
	.long	0x16d3
	.string	"print_locs"
	.long	0x178d
	.string	"print_abbrevs"
	.long	0x18fb
	.string	"print_strings"
	.long	0x196c
	.string	"print_aranges"
	.long	0x1b42
	.string	"print_static_funcs"
	.long	0x1c92
	.string	"print_static_vars"
	.long	0x1de0
	.string	"print_types"
	.long	0x1f29
	.string	"print_weaknames"
	.long	0x226b
	.string	"current_cu_die_for_print_frames"
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
.LASF14:
	.string	"die_off"
.LASF1:
	.string	"cu_die"
.LASF19:
	.string	"length"
.LASF18:
	.string	"cures3"
.LASF12:
	.string	"initial_instructions_length"
.LASF13:
	.string	"count"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"cie_length"
.LASF5:
	.string	"data_alignment_factor"
.LASF7:
	.string	"offset"
.LASF4:
	.string	"cures"
.LASF15:
	.string	"die_CU_off"
.LASF3:
	.string	"address_size"
.LASF16:
	.string	"cu_off"
.LASF17:
	.string	"name"
.LASF11:
	.string	"initial_instructions"
.LASF20:
	.string	"dores"
.LASF6:
	.string	"code_alignment_factor"
.LASF2:
	.string	"low_pc"
.LASF9:
	.string	"augmenter"
.LASF10:
	.string	"return_address_register_rule"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
