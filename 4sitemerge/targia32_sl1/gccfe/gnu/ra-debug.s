	.file	"ra-debug.c"
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
	.text
.globl ra_debug_msg
	.type	ra_debug_msg, @function
ra_debug_msg:
.LFB15:
	.file 1 "../../../kgccfe/gnu/ra-debug.c"
	.loc 1 50 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$36, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB2:
	.loc 1 51 0
	leal	16(%ebp), %eax
	movl	%eax, -8(%ebp)
.LBB3:
	.loc 1 54 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L5
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L5
	.loc 1 55 0
	movl	-8(%ebp), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	vfprintf@PLT
.L5:
.LBE3:
.LBE2:
	.loc 1 57 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	ra_debug_msg, .-ra_debug_msg
	.section	.rodata
.LC25:
	.string	"-("
.LC26:
	.string	"~("
.LC27:
	.string	"hi("
.LC28:
	.string	":%s("
	.text
	.type	ra_print_rtx_1op, @function
ra_print_rtx_1op:
.LFB16:
	.loc 1 74 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$52, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 75 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 76 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 77 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	cmpl	$96, -28(%ebp)
	je	.L8
	cmpl	$144, -28(%ebp)
	je	.L9
	cmpl	$87, -28(%ebp)
	je	.L8
	jmp	.L7
.L8:
	.loc 1 81 0
	cmpl	$87, -12(%ebp)
	jne	.L10
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L12
.L10:
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L12:
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 82 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 83 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 84 0
	jmp	.L17
.L9:
	.loc 1 86 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 87 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 88 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 89 0
	jmp	.L17
.L7:
	.loc 1 91 0
	movl	-12(%ebp), %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs@PLT
	.loc 1 92 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L14
	.loc 1 93 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L16
.L14:
	.loc 1 95 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	fputc_unlocked@PLT
.L16:
	.loc 1 96 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 97 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
.L17:
	.loc 1 100 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	ra_print_rtx_1op, .-ra_print_rtx_1op
	.section	.rodata
.LC29:
	.string	"shitop"
.LC30:
	.string	"?"
.LC31:
	.string	"-"
.LC32:
	.string	"/"
.LC33:
	.string	"u/"
.LC34:
	.string	"%"
.LC35:
	.string	"u%"
.LC36:
	.string	"<<"
.LC37:
	.string	"a>>"
.LC38:
	.string	"l>>"
.LC39:
	.string	"+"
.LC40:
	.string	"*"
.LC41:
	.string	"&"
.LC42:
	.string	"|"
.LC43:
	.string	"^"
.LC44:
	.string	"!="
.LC45:
	.string	"=="
.LC46:
	.string	"s>="
.LC47:
	.string	"s>"
.LC48:
	.string	"s<="
.LC49:
	.string	"s<"
.LC50:
	.string	"u>="
.LC51:
	.string	"u>"
.LC52:
	.string	"u<="
.LC53:
	.string	"u<"
.LC54:
	.string	" %s "
.LC55:
	.string	"%s("
.LC56:
	.string	", "
	.text
	.type	ra_print_rtx_2op, @function
ra_print_rtx_2op:
.LFB17:
	.loc 1 110 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$52, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 111 0
	movl	$1, -24(%ebp)
	.loc 1 112 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 113 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 114 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 115 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 116 0
	movl	-16(%ebp), %eax
	subl	$84, %eax
	movl	%eax, -40(%ebp)
	cmpl	$37, -40(%ebp)
	ja	.L19
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L44@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L44:
	.long	.L20@GOTOFF
	.long	.L21@GOTOFF
	.long	.L22@GOTOFF
	.long	.L19@GOTOFF
	.long	.L23@GOTOFF
	.long	.L24@GOTOFF
	.long	.L25@GOTOFF
	.long	.L26@GOTOFF
	.long	.L27@GOTOFF
	.long	.L28@GOTOFF
	.long	.L29@GOTOFF
	.long	.L30@GOTOFF
	.long	.L19@GOTOFF
	.long	.L31@GOTOFF
	.long	.L19@GOTOFF
	.long	.L32@GOTOFF
	.long	.L33@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L34@GOTOFF
	.long	.L35@GOTOFF
	.long	.L36@GOTOFF
	.long	.L37@GOTOFF
	.long	.L38@GOTOFF
	.long	.L39@GOTOFF
	.long	.L40@GOTOFF
	.long	.L41@GOTOFF
	.long	.L42@GOTOFF
	.long	.L43@GOTOFF
	.text
.L20:
	.loc 1 119 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L22:
	.loc 1 120 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L24:
	.loc 1 121 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L26:
	.loc 1 122 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L25:
	.loc 1 123 0
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L27:
	.loc 1 124 0
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L31:
	.loc 1 125 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L32:
	.loc 1 126 0
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L33:
	.loc 1 127 0
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L21:
	.loc 1 129 0
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L23:
	.loc 1 130 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L28:
	.loc 1 131 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L29:
	.loc 1 132 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L30:
	.loc 1 133 0
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L34:
	.loc 1 135 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L35:
	.loc 1 136 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L36:
	.loc 1 137 0
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L37:
	.loc 1 138 0
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L38:
	.loc 1 139 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L39:
	.loc 1 140 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L40:
	.loc 1 141 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L41:
	.loc 1 142 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L42:
	.loc 1 143 0
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L43:
	.loc 1 144 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L45
.L19:
	.loc 1 146 0
	movl	$0, -24(%ebp)
	.loc 1 147 0
	movl	-16(%ebp), %eax
	movl	rtx_name@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
.L45:
	.loc 1 150 0
	cmpl	$0, -24(%ebp)
	je	.L46
	.loc 1 152 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 153 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 154 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 155 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 156 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
	jmp	.L49
.L46:
	.loc 1 160 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 161 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 162 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 163 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 164 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
.L49:
	.loc 1 166 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	ra_print_rtx_2op, .-ra_print_rtx_2op
	.section	.rodata
.LC57:
	.string	" ? "
.LC58:
	.string	" : "
.LC59:
	.string	"%s:%s("
	.text
	.type	ra_print_rtx_3op, @function
ra_print_rtx_3op:
.LFB18:
	.loc 1 175 0
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
	.loc 1 176 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 177 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 178 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 179 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 180 0
	cmpl	$82, -20(%ebp)
	jne	.L51
	.loc 1 182 0
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 183 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 184 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 185 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 186 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	jmp	.L54
.L51:
	.loc 1 191 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %ecx
	movl	-20(%ebp), %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 193 0
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 194 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 195 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 196 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 197 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 198 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
.L54:
	.loc 1 200 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	ra_print_rtx_3op, .-ra_print_rtx_3op
	.section	.rodata
.LC60:
	.string	"%lld"
.LC61:
	.string	"dbl("
.LC62:
	.string	"0x%llx"
.LC63:
	.string	"\"%s\""
.LC64:
	.string	"const("
.LC65:
	.string	"pc"
.LC66:
	.string	"h%d"
.LC67:
	.string	"p%d"
.LC68:
	.string	":[%s+%d]"
.LC69:
	.string	"scratch"
.LC70:
	.string	" + lo("
.LC71:
	.string	"))"
.LC72:
	.string	"]:%s"
.LC73:
	.string	"(deleted uid=%d)"
.LC74:
	.string	"L%d"
.LC75:
	.string	"(nonlabel uid=%d)"
.LC76:
	.string	"sym(\"%s\")"
.LC77:
	.string	"cc0"
	.text
	.type	ra_print_rtx_object, @function
ra_print_rtx_object:
.LFB19:
	.loc 1 212 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%esi
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$96, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 213 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -64(%ebp)
	.loc 1 214 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	.loc 1 215 0
	movl	-64(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -76(%ebp)
	cmpl	$81, -76(%ebp)
	ja	.L56
	movl	-76(%ebp), %eax
	sall	$2, %eax
	movl	.L72@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L72:
	.long	.L57@GOTOFF
	.long	.L58@GOTOFF
	.long	.L56@GOTOFF
	.long	.L59@GOTOFF
	.long	.L60@GOTOFF
	.long	.L61@GOTOFF
	.long	.L56@GOTOFF
	.long	.L62@GOTOFF
	.long	.L63@GOTOFF
	.long	.L64@GOTOFF
	.long	.L56@GOTOFF
	.long	.L65@GOTOFF
	.long	.L66@GOTOFF
	.long	.L67@GOTOFF
	.long	.L68@GOTOFF
	.long	.L69@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L56@GOTOFF
	.long	.L70@GOTOFF
	.long	.L71@GOTOFF
	.text
.L57:
	.loc 1 218 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 219 0
	jmp	.L122
.L58:
.LBB4:
	.loc 1 222 0
	movl	$0, -52(%ebp)
	.loc 1 223 0
	movl	-64(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -48(%ebp)
	.loc 1 224 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 225 0
	movl	$0, -56(%ebp)
	jmp	.L74
.L75:
	.loc 1 227 0
	cmpl	$0, -52(%ebp)
	je	.L76
	.loc 1 228 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L76:
	.loc 1 229 0
	movl	-56(%ebp), %eax
	addl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L78
	movl	-56(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L78
	.loc 1 232 0
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 233 0
	addl	$1, -52(%ebp)
	.loc 1 229 0
	jmp	.L81
.L78:
	.loc 1 235 0
	movl	-56(%ebp), %eax
	addl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$119, %al
	jne	.L81
	.loc 1 237 0
	movl	-56(%ebp), %edx
	movl	12(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 238 0
	addl	$1, -52(%ebp)
.L81:
	.loc 1 225 0
	addl	$1, -56(%ebp)
.L74:
	movl	-64(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-56(%ebp), %eax
	jg	.L75
	.loc 1 241 0
	jmp	.L122
.L59:
.LBE4:
	.loc 1 243 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L122
.L60:
	.loc 1 244 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 245 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 246 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 247 0
	jmp	.L122
.L61:
	.loc 1 248 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L122
.L62:
.LBB5:
	.loc 1 251 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 252 0
	cmpl	$175, -44(%ebp)
	jg	.L84
.LBB6:
	.loc 1 254 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -36(%ebp)
	.loc 1 255 0
	cmpl	$1, -36(%ebp)
	jle	.L86
	.loc 1 256 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$91, (%esp)
	call	fputc_unlocked@PLT
.L86:
	.loc 1 257 0
	movl	$0, -40(%ebp)
	jmp	.L88
.L89:
	.loc 1 259 0
	cmpl	$0, -40(%ebp)
	je	.L90
	.loc 1 260 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L90:
	.loc 1 261 0
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	%eax, %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L92
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	%eax, %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L92
	.loc 1 262 0
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	%eax, %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs@PLT
	.loc 1 261 0
	jmp	.L95
.L92:
	.loc 1 264 0
	movl	-40(%ebp), %eax
	addl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L95:
	.loc 1 257 0
	addl	$1, -40(%ebp)
.L88:
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L89
	.loc 1 266 0
	cmpl	$1, -36(%ebp)
	jle	.L122
	.loc 1 267 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	fputc_unlocked@PLT
	jmp	.L122
.L84:
.LBE6:
	.loc 1 270 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 271 0
	jmp	.L122
.L64:
.LBE5:
.LBB7:
	.loc 1 275 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 276 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 277 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L100
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L100
.LBB8:
	.loc 1 280 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 281 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 282 0
	movl	-28(%ebp), %esi
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %ecx
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 284 0
	cmpl	$1, -16(%ebp)
	jle	.L103
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$91, (%esp)
	call	fputc_unlocked@PLT
.L103:
	.loc 1 286 0
	movl	$0, -20(%ebp)
	jmp	.L105
.L106:
	.loc 1 288 0
	cmpl	$0, -20(%ebp)
	je	.L107
	.loc 1 289 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L107:
	.loc 1 290 0
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	%eax, %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L109
	.loc 1 291 0
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	%eax, %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs@PLT
	jmp	.L111
.L109:
	.loc 1 293 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L111:
	.loc 1 286 0
	addl	$1, -20(%ebp)
.L105:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L106
	.loc 1 295 0
	cmpl	$1, -16(%ebp)
	jle	.L122
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 277 0
	jmp	.L122
.L100:
.LBE8:
	.loc 1 300 0
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 301 0
	movl	-60(%ebp), %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 303 0
	jmp	.L122
.L63:
.LBE7:
	.loc 1 305 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L122
.L65:
	.loc 1 306 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_2op
	jmp	.L122
.L70:
	.loc 1 307 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_1op
	jmp	.L122
.L71:
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$40, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 310 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 311 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 312 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 313 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 314 0
	jmp	.L122
.L66:
	.loc 1 315 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$91, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 316 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 317 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 319 0
	jmp	.L122
.L67:
.LBB9:
	.loc 1 322 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 323 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L116
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	jne	.L116
	.loc 1 325 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 323 0
	jmp	.L122
.L116:
	.loc 1 326 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L120
	.loc 1 327 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L122
.L120:
	.loc 1 329 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 331 0
	jmp	.L122
.L68:
.LBE9:
	.loc 1 333 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L122
.L69:
	.loc 1 334 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L122
.L56:
	.loc 1 335 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_inline_rtx@PLT
.L122:
	.loc 1 337 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE19:
	.size	ra_print_rtx_object, .-ra_print_rtx_object
	.section	.rodata
	.type	__FUNCTION__.10685, @object
	.size	__FUNCTION__.10685, 13
__FUNCTION__.10685:
	.string	"ra_print_rtx"
.LC78:
	.string	"  "
.LC79:
	.string	"; "
.LC80:
	.string	"\t\t\t\t\t; "
.LC81:
	.string	"L%d:\t; "
.LC82:
	.string	"(%s) "
.LC83:
	.string	" (entry)"
.LC84:
	.string	" (global entry)"
.LC85:
	.string	" (weak entry)"
	.align 4
.LC86:
	.string	"../../../kgccfe/gnu/ra-debug.c"
.LC87:
	.string	" [%d uses] uid=("
.LC88:
	.string	"%d"
.LC89:
	.string	" %d %d"
.LC90:
	.string	" -------- barrier ---------"
.LC91:
	.string	" %s"
.LC92:
	.string	" line %d"
.LC93:
	.string	":%s"
.LC94:
	.string	"\t;; "
.LC95:
	.string	""
.LC96:
	.string	"_vol"
.LC97:
	.string	"unspec%s(%d"
.LC98:
	.string	"if "
.LC99:
	.string	" jump "
.LC100:
	.string	"jump "
.LC101:
	.string	" <= "
.LC102:
	.string	"use <= "
.LC103:
	.string	" <= clobber"
.LC104:
	.string	"call "
.LC105:
	.string	" numargs="
.LC106:
	.string	"return"
.LC107:
	.string	"if ("
.LC108:
	.string	") trap "
.LC109:
	.string	"resx from region %d"
.LC110:
	.string	"low("
	.text
.globl ra_print_rtx
	.type	ra_print_rtx, @function
ra_print_rtx:
.LFB20:
	.loc 1 349 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$84, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 352 0
	movl	$0, -24(%ebp)
	.loc 1 353 0
	cmpl	$0, 12(%ebp)
	je	.L211
	.loc 1 355 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 356 0
	movl	-28(%ebp), %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, -5(%ebp)
	.loc 1 359 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L126
	cmpl	$47, -28(%ebp)
	je	.L126
	cmpl	$46, -28(%ebp)
	je	.L126
	cmpl	$45, -28(%ebp)
	jne	.L130
.L126:
	.loc 1 361 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L131
	.loc 1 362 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L131:
	.loc 1 364 0
	cmpl	$45, -28(%ebp)
	jne	.L133
	.loc 1 365 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L135
.L133:
	.loc 1 366 0
	cmpl	$47, -28(%ebp)
	jne	.L136
	.loc 1 368 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L135
.L136:
	.loc 1 369 0
	cmpl	$46, -28(%ebp)
	jne	.L135
	.loc 1 372 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 373 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L139
	.loc 1 374 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L139:
	.loc 1 375 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax), %edx
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -56(%ebp)
	cmpl	$1, -56(%ebp)
	je	.L143
	cmpl	$1, -56(%ebp)
	jb	.L146
	cmpl	$2, -56(%ebp)
	je	.L144
	cmpl	$3, -56(%ebp)
	je	.L145
	jmp	.L141
.L143:
	.loc 1 378 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L146
.L144:
	.loc 1 379 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L146
.L145:
	.loc 1 380 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L146
.L141:
	.loc 1 381 0
	leal	__FUNCTION__.10685@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$381, 4(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L146:
	.loc 1 383 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L135:
	.loc 1 385 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 386 0
	cmpl	$0, 16(%ebp)
	je	.L147
	.loc 1 387 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L149
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L151
.L149:
	movl	$0, -52(%ebp)
.L151:
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L152
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L154
.L152:
	movl	$0, -48(%ebp)
.L154:
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L147:
	.loc 1 389 0
	cmpl	$45, -28(%ebp)
	jne	.L155
	.loc 1 390 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L211
.L155:
	.loc 1 391 0
	cmpl	$46, -28(%ebp)
	jne	.L158
	.loc 1 392 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
	jmp	.L211
.L158:
	.loc 1 393 0
	cmpl	$47, -28(%ebp)
	jne	.L160
.LBB10:
	.loc 1 395 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 396 0
	cmpl	$-100, -20(%ebp)
	jl	.L162
	cmpl	$-80, -20(%ebp)
	jge	.L162
	.loc 1 397 0
	movl	-20(%ebp), %edx
	addl	$100, %edx
	movl	note_insn_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 396 0
	jmp	.L211
.L162:
	.loc 1 400 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 401 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L211
	.loc 1 402 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L211
.L160:
.LBE10:
	.loc 1 407 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	fputc@PLT
	.loc 1 408 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 410 0
	jmp	.L211
.L130:
	.loc 1 412 0
	movl	-28(%ebp), %eax
	subl	$49, %eax
	movl	%eax, -60(%ebp)
	cmpl	$25, -60(%ebp)
	ja	.L167
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L179@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L179:
	.long	.L168@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L170@GOTOFF
	.long	.L171@GOTOFF
	.long	.L172@GOTOFF
	.long	.L173@GOTOFF
	.long	.L174@GOTOFF
	.long	.L175@GOTOFF
	.long	.L176@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L177@GOTOFF
	.long	.L178@GOTOFF
	.text
.L168:
.LBB11:
	.loc 1 418 0
	movl	$0, -16(%ebp)
	jmp	.L180
.L181:
	.loc 1 420 0
	cmpl	$0, -16(%ebp)
	je	.L182
	.loc 1 421 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L182:
	.loc 1 422 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 418 0
	addl	$1, -16(%ebp)
.L180:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L181
	.loc 1 424 0
	jmp	.L185
.L169:
.LBE11:
.LBB12:
	.loc 1 429 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	cmpl	$52, -28(%ebp)
	jne	.L186
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L188
.L186:
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
.L188:
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 431 0
	movl	$0, -12(%ebp)
	jmp	.L189
.L190:
	.loc 1 433 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 434 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 431 0
	addl	$1, -12(%ebp)
.L189:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L190
	.loc 1 436 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 437 0
	jmp	.L185
.L170:
.LBE12:
	.loc 1 440 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L192
	.loc 1 442 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L194
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	jne	.L194
	.loc 1 445 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 446 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 447 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 448 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 442 0
	jmp	.L185
.L194:
	.loc 1 452 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 453 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	jmp	.L185
.L192:
	.loc 1 458 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 459 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 460 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 462 0
	jmp	.L185
.L171:
	.loc 1 464 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 465 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 466 0
	jmp	.L185
.L172:
	.loc 1 468 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 469 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 470 0
	jmp	.L185
.L173:
	.loc 1 472 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 473 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 474 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 475 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 476 0
	jmp	.L185
.L174:
	.loc 1 478 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 479 0
	jmp	.L185
.L175:
	.loc 1 481 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 482 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 483 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 484 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 485 0
	jmp	.L185
.L176:
	.loc 1 487 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 488 0
	jmp	.L185
.L177:
	.loc 1 491 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_object
	jmp	.L185
.L178:
	.loc 1 493 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 494 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 495 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 496 0
	jmp	.L185
.L167:
	.loc 1 498 0
	movl	$1, -24(%ebp)
.L185:
	.loc 1 501 0
	cmpl	$0, -24(%ebp)
	je	.L211
	.loc 1 503 0
	cmpb	$49, -5(%ebp)
	jne	.L200
	.loc 1 504 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_1op
	jmp	.L211
.L200:
	.loc 1 505 0
	cmpb	$50, -5(%ebp)
	je	.L202
	cmpb	$99, -5(%ebp)
	je	.L202
	cmpb	$60, -5(%ebp)
	jne	.L205
.L202:
	.loc 1 506 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_2op
	.loc 1 505 0
	jmp	.L211
.L205:
	.loc 1 507 0
	cmpb	$51, -5(%ebp)
	je	.L206
	cmpb	$98, -5(%ebp)
	jne	.L208
.L206:
	.loc 1 508 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_3op
	.loc 1 507 0
	jmp	.L211
.L208:
	.loc 1 509 0
	cmpb	$111, -5(%ebp)
	jne	.L209
	.loc 1 510 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_object
	jmp	.L211
.L209:
	.loc 1 512 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_inline_rtx@PLT
.L211:
	.loc 1 513 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	ra_print_rtx, .-ra_print_rtx
.globl ra_print_rtx_top
	.type	ra_print_rtx_top, @function
ra_print_rtx_top:
.LFB21:
	.loc 1 522 0
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
	.loc 1 523 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx@PLT
	.loc 1 524 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 525 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	ra_print_rtx_top, .-ra_print_rtx_top
.globl ra_debug_rtx
	.type	ra_debug_rtx, @function
ra_debug_rtx:
.LFB22:
	.loc 1 532 0
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
	.loc 1 533 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ra_print_rtx_top@PLT
	.loc 1 534 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	ra_debug_rtx, .-ra_debug_rtx
.globl ra_debug_bbi
	.type	ra_debug_bbi, @function
ra_debug_bbi:
.LFB23:
	.loc 1 542 0
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
	.loc 1 543 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 545 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L217
.L218:
	.loc 1 547 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L219
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L221
.L219:
	movl	$1, -24(%ebp)
	jmp	.L222
.L221:
	movl	$0, -24(%ebp)
.L222:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ra_print_rtx_top@PLT
	.loc 1 548 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 549 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L225
	.loc 1 545 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L217:
	cmpl	$0, -8(%ebp)
	jne	.L218
.L225:
	.loc 1 552 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	ra_debug_bbi, .-ra_debug_bbi
.globl ra_debug_insns
	.type	ra_debug_insns, @function
ra_debug_insns:
.LFB24:
	.loc 1 561 0
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
	.loc 1 562 0
	cmpl	$0, 12(%ebp)
	je	.L227
	movl	12(%ebp), %eax
	sarl	$31, %eax
	movl	12(%ebp), %edx
	xorl	%eax, %edx
	movl	%edx, -28(%ebp)
	subl	%eax, -28(%ebp)
	jmp	.L229
.L227:
	movl	$1, -28(%ebp)
.L229:
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 563 0
	cmpl	$0, 12(%ebp)
	jns	.L230
	.loc 1 564 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%ebp)
	jmp	.L232
.L233:
	.loc 1 565 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 564 0
	subl	$1, -12(%ebp)
.L232:
	cmpl	$0, -12(%ebp)
	jle	.L230
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L233
.L230:
	.loc 1 566 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L235
.L236:
	.loc 1 568 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L237
	.loc 1 569 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L237:
	.loc 1 570 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L239
	cmpl	$1, -12(%ebp)
	jne	.L241
.L239:
	movl	$1, -24(%ebp)
	jmp	.L242
.L241:
	movl	$0, -24(%ebp)
.L242:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ra_print_rtx_top@PLT
	.loc 1 566 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	subl	$1, -12(%ebp)
.L235:
	cmpl	$0, -12(%ebp)
	jle	.L245
	cmpl	$0, 8(%ebp)
	jne	.L236
.L245:
	.loc 1 572 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	ra_debug_insns, .-ra_debug_insns
	.section	.rodata
.LC111:
	.string	"nil"
.LC112:
	.string	";; End of basic block %d\n"
.LC113:
	.string	";; Begin of basic block %d\n"
	.text
.globl ra_print_rtl_with_bb
	.type	ra_print_rtl_with_bb, @function
ra_print_rtl_with_bb:
.LFB25:
	.loc 1 582 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$52, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 584 0
	movl	$0, -8(%ebp)
	.loc 1 585 0
	cmpl	$0, 12(%ebp)
	jne	.L247
	.loc 1 586 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L247:
	.loc 1 587 0
	movl	$0, -16(%ebp)
	.loc 1 588 0
	jmp	.L249
.L250:
	.loc 1 590 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L251
	.loc 1 591 0
	movl	$0, -12(%ebp)
	jmp	.L253
.L251:
	.loc 1 593 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
.L253:
	.loc 1 594 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L254
	.loc 1 596 0
	cmpl	$0, -16(%ebp)
	je	.L256
	.loc 1 597 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L256:
	.loc 1 598 0
	cmpl	$0, -12(%ebp)
	je	.L258
	.loc 1 599 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L258:
	.loc 1 600 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L254:
	.loc 1 602 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L260
	.loc 1 603 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L260:
	.loc 1 604 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L262
	.loc 1 608 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	je	.L273
	movl	flag_ra_dump_notes@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L266
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L266
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	jne	.L273
.L266:
	.loc 1 613 0
	cmpl	$0, -8(%ebp)
	je	.L269
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L271
.L269:
	movl	$1, -28(%ebp)
	jmp	.L272
.L271:
	movl	$0, -28(%ebp)
.L272:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_top@PLT
	.loc 1 614 0
	addl	$1, -8(%ebp)
	jmp	.L273
.L262:
	.loc 1 619 0
	cmpl	$0, -8(%ebp)
	je	.L274
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L276
.L274:
	movl	$1, -24(%ebp)
	jmp	.L277
.L276:
	movl	$0, -24(%ebp)
.L277:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_print_rtx_top@PLT
	.loc 1 620 0
	addl	$1, -8(%ebp)
.L273:
	.loc 1 588 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L249:
	cmpl	$0, 12(%ebp)
	jne	.L250
	.loc 1 623 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	ra_print_rtl_with_bb, .-ra_print_rtl_with_bb
	.section	.rodata
.LC114:
	.string	"%d insns seen %d times\n"
	.align 4
.LC115:
	.string	"%d insns seen %d and more times\n"
.LC116:
	.string	"from overall %d insns\n"
	.text
.globl dump_number_seen
	.type	dump_number_seen, @function
dump_number_seen:
.LFB26:
	.loc 1 630 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$100, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 635 0
	movl	$0, -8(%ebp)
	jmp	.L281
.L282:
	.loc 1 636 0
	movl	-8(%ebp), %eax
	movl	$0, -76(%ebp,%eax,4)
	.loc 1 635 0
	addl	$1, -8(%ebp)
.L281:
	cmpl	$16, -8(%ebp)
	jle	.L282
	.loc 1 637 0
	movl	$0, -8(%ebp)
	jmp	.L284
.L285:
	.loc 1 638 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	number_seen@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$15, %eax
	jg	.L286
	.loc 1 639 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	number_seen@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-76(%ebp,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, -76(%ebp,%edx,4)
	jmp	.L288
.L286:
	.loc 1 641 0
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
.L288:
	.loc 1 637 0
	addl	$1, -8(%ebp)
.L284:
	call	get_max_uid@PLT
	cmpl	-8(%ebp), %eax
	jg	.L285
	.loc 1 642 0
	movl	$0, -8(%ebp)
	jmp	.L290
.L291:
	.loc 1 643 0
	movl	-8(%ebp), %eax
	movl	-76(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L292
	.loc 1 644 0
	movl	-8(%ebp), %eax
	movl	-76(%ebp,%eax,4), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	ra_debug_msg@PLT
.L292:
	.loc 1 642 0
	addl	$1, -8(%ebp)
.L290:
	cmpl	$15, -8(%ebp)
	jle	.L291
	.loc 1 645 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L295
	.loc 1 646 0
	movl	-8(%ebp), %eax
	movl	-76(%ebp,%eax,4), %eax
	movl	$16, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	ra_debug_msg@PLT
.L295:
	.loc 1 648 0
	call	get_max_uid@PLT
	movl	%eax, 8(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 650 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	dump_number_seen, .-dump_number_seen
	.section	.rodata
.LC117:
	.string	"conflicts:\n  "
.LC118:
	.string	"%d (SUBREG %d, %d) with "
.LC119:
	.string	"%d (REG %d) with "
.LC120:
	.string	"\n              "
.LC121:
	.string	"%d(%d,%d) "
.LC122:
	.string	"%d(%d) "
.LC123:
	.string	"\n  "
.LC124:
	.string	"\n"
	.align 4
.LC125:
	.string	"move: insn %d: Web %d <-- Web %d\n"
.LC126:
	.string	"\nWebs:\n"
.LC127:
	.string	"  %4d : regno %3d"
.LC128:
	.string	" sub %d"
.LC129:
	.string	" par %d"
.LC130:
	.string	" +%d (span %d, cost "
.LC131:
	.string	") (%s)"
.LC132:
	.string	" (spilltemp)"
.LC133:
	.string	" (spilltem2)"
.LC134:
	.string	" (short)"
.LC135:
	.string	" (precolored, color=%d)"
.LC136:
	.string	" dead"
.LC137:
	.string	" xcall"
.LC138:
	.string	" stack"
	.text
.globl dump_igraph
	.type	dump_igraph, @function
dump_igraph:
.LFB27:
	.loc 1 657 0
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
	subl	$108, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 660 0
	movl	$0, -36(%ebp)
	.loc 1 663 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L357
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$6, %eax
	testl	%eax, %eax
	jne	.L301
	.loc 1 664 0
	jmp	.L357
.L301:
	.loc 1 665 0
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 666 0
	movl	$0, -44(%ebp)
	jmp	.L303
.L304:
.LBB13:
	.loc 1 668 0
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 669 0
	movl	$0, -32(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L305
.L306:
	.loc 1 670 0
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	je	.L307
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jae	.L309
	movl	-40(%ebp), %eax
	subl	$1, %eax
	imull	-40(%ebp), %eax
	shrl	%eax
	addl	-44(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -76(%ebp)
	jmp	.L311
.L309:
	movl	-44(%ebp), %eax
	subl	$1, %eax
	imull	-44(%ebp), %eax
	shrl	%eax
	addl	-40(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
.L311:
	movl	-76(%ebp), %eax
	movl	-80(%ebp), %ecx
	movl	12(%ecx,%eax,8), %edx
	movl	16(%ecx,%eax,8), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jae	.L312
	movl	-40(%ebp), %eax
	subl	$1, %eax
	imull	-40(%ebp), %eax
	shrl	%eax
	addl	-44(%ebp), %eax
	movl	%eax, %esi
	andl	$63, %esi
	movl	%esi, -64(%ebp)
	jmp	.L314
.L312:
	movl	-44(%ebp), %eax
	subl	$1, %eax
	imull	-44(%ebp), %eax
	shrl	%eax
	addl	-40(%ebp), %eax
	movl	%eax, %edx
	andl	$63, %edx
	movl	%edx, -64(%ebp)
.L314:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movzbl	-64(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L358
	movl	%edx, %eax
	xorl	%edx, %edx
.L358:
	movl	%eax, %esi
	andl	$1, %esi
	movl	%edx, %edi
	andl	$0, %edi
	movl	%esi, %eax
	testl	%eax, %eax
	je	.L307
	.loc 1 672 0
	movl	-24(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L316
	.loc 1 674 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L318
	.loc 1 675 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %ecx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
	jmp	.L316
.L318:
	.loc 1 679 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
.L316:
	.loc 1 682 0
	movl	-32(%ebp), %ecx
	movl	$954437177, -84(%ebp)
	movl	-84(%ebp), %eax
	imull	%ecx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -60(%ebp)
	movl	-60(%ebp), %eax
	sall	$3, %eax
	addl	-60(%ebp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -60(%ebp)
	cmpl	$8, -60(%ebp)
	jne	.L320
	.loc 1 683 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
.L320:
	.loc 1 684 0
	addl	$1, -36(%ebp)
	.loc 1 685 0
	addl	$1, -32(%ebp)
	.loc 1 686 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L322
	.loc 1 687 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %ecx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
	jmp	.L307
.L322:
	.loc 1 690 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
.L307:
	.loc 1 669 0
	addl	$1, -40(%ebp)
.L305:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jb	.L306
	.loc 1 692 0
	movl	-24(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L325
	.loc 1 693 0
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
.L325:
.LBE13:
	.loc 1 666 0
	addl	$1, -44(%ebp)
.L303:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -44(%ebp)
	jb	.L304
	.loc 1 695 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 696 0
	movl	wl_moves@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L328
.L329:
	.loc 1 697 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L330
	.loc 1 699 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	ra_debug_msg@PLT
.L330:
	.loc 1 696 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L328:
	cmpl	$0, -48(%ebp)
	jne	.L329
	.loc 1 703 0
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 704 0
	movl	$0, -28(%ebp)
	jmp	.L333
.L334:
.LBB14:
	.loc 1 706 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 708 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 709 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L335
	.loc 1 711 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 712 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L337
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -56(%ebp)
	jmp	.L339
.L337:
	movl	-20(%ebp), %ecx
	movl	%ecx, -56(%ebp)
.L339:
	movl	-56(%ebp), %esi
	movl	(%esi), %eax
	movl	%eax, 8(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
.L335:
	.loc 1 714 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 716 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 717 0
	movl	-20(%ebp), %eax
	movzwl	50(%eax), %eax
	shrw	$3, %ax
	andw	$1023, %ax
	movzwl	%ax, %eax
	movl	reg_class_names@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 718 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L340
	.loc 1 719 0
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	jmp	.L342
.L340:
	.loc 1 720 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	.L343
	.loc 1 721 0
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	jmp	.L342
.L343:
	.loc 1 722 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$3, %eax
	jne	.L342
	.loc 1 723 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
.L342:
	.loc 1 724 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L346
	.loc 1 725 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
	jmp	.L348
.L346:
	.loc 1 726 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L349
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -52(%ebp)
	jmp	.L351
.L349:
	movl	-20(%ebp), %eax
	movl	%eax, -52(%ebp)
.L351:
	movl	-52(%ebp), %edx
	movl	60(%edx), %eax
	testl	%eax, %eax
	jne	.L348
	.loc 1 727 0
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
.L348:
	.loc 1 728 0
	movl	-20(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L353
	.loc 1 729 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
.L353:
	.loc 1 730 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L355
	.loc 1 731 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
.L355:
	.loc 1 732 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	ra_debug_msg@PLT
.LBE14:
	.loc 1 704 0
	addl	$1, -28(%ebp)
.L333:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jb	.L334
.L357:
	.loc 1 734 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	dump_igraph, .-dump_igraph
	.section	.rodata
.LC139:
	.string	"g %d %d\n"
.LC140:
	.string	"n %d %d %d %d %d %d %d\n"
.LC141:
	.string	"s %d"
.LC142:
	.string	" %u"
.LC143:
	.string	"c %d"
.LC144:
	.string	" %d"
.LC145:
	.string	"e\n"
	.text
.globl dump_igraph_machine
	.type	dump_igraph_machine, @function
dump_igraph_machine:
.LFB28:
	.loc 1 742 0
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
	subl	$76, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 745 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L393
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L362
	.loc 1 746 0
	jmp	.L393
.L362:
	.loc 1 747 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	num_subwebs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	$176, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 749 0
	movl	$0, -44(%ebp)
	jmp	.L364
.L365:
.LBB15:
	.loc 1 751 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 753 0
	movl	$0, -32(%ebp)
	.loc 1 754 0
	movl	$0, -28(%ebp)
	.loc 1 755 0
	movl	$0, -24(%ebp)
	.loc 1 756 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	andl	$15, %eax
	movl	%eax, -32(%ebp)
	.loc 1 757 0
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L366
	movl	$16, -52(%ebp)
	jmp	.L368
.L366:
	movl	$0, -52(%ebp)
.L368:
	movl	-52(%ebp), %eax
	orl	%eax, -32(%ebp)
	.loc 1 758 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	andl	$15, %eax
	sall	$5, %eax
	orl	%eax, -32(%ebp)
	.loc 1 759 0
	movl	-40(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L369
.L370:
	.loc 1 760 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L371
	.loc 1 761 0
	addl	$1, -28(%ebp)
.L371:
	.loc 1 759 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L369:
	cmpl	$0, -36(%ebp)
	jne	.L370
	.loc 1 762 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %edi
	movl	-40(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	40(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	(%eax), %esi
	movl	-28(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%edi, 28(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 766 0
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L374
	.loc 1 768 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
.L376:
.LBB16:
	.loc 1 771 0
	movl	$0, -20(%ebp)
	.loc 1 773 0
	movl	$0, -16(%ebp)
	jmp	.L377
.L378:
	.loc 1 774 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-40(%ebp), %eax
	leal	92(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L394
	movl	%edx, %eax
	xorl	%edx, %edx
.L394:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L379
	.loc 1 775 0
	movl	-16(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	orl	%eax, -20(%ebp)
.L379:
	.loc 1 773 0
	addl	$1, -16(%ebp)
	addl	$1, -24(%ebp)
.L377:
	cmpl	$31, -16(%ebp)
	jg	.L381
	cmpl	$175, -24(%ebp)
	jle	.L378
.L381:
	.loc 1 776 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 777 0
	cmpl	$175, -24(%ebp)
	jg	.L383
	.loc 1 779 0
	jmp	.L376
.L383:
.LBE16:
	.loc 1 780 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
.L374:
	.loc 1 782 0
	cmpl	$0, -28(%ebp)
	je	.L385
	.loc 1 784 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 785 0
	movl	-40(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L387
.L388:
	.loc 1 787 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L389
	.loc 1 788 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
.L389:
	.loc 1 785 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L387:
	cmpl	$0, -36(%ebp)
	jne	.L388
	.loc 1 790 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
.L385:
.LBE15:
	.loc 1 749 0
	addl	$1, -44(%ebp)
.L364:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	num_subwebs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-44(%ebp), %eax
	ja	.L365
	.loc 1 793 0
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$65536, (%esp)
	call	ra_debug_msg@PLT
.L393:
	.loc 1 794 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	dump_igraph_machine, .-dump_igraph_machine
	.section	.rodata
	.align 4
.LC146:
	.string	"%d: asm insn or not recognizable.\n"
	.align 4
.LC147:
	.string	"%d: code %d {%s}, %d operands, constraints: "
.LC148:
	.string	"%d:%s "
	.align 4
.LC149:
	.string	"matches strictly alternative %d"
.LC150:
	.string	"doesn't match strictly"
	.text
.globl dump_constraints
	.type	dump_constraints, @function
dump_constraints:
.LFB29:
	.loc 1 802 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%esi
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$80, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 805 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L430
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L398
	.loc 1 806 0
	jmp	.L430
.L398:
	.loc 1 807 0
	movl	$176, -24(%ebp)
	jmp	.L400
.L401:
	.loc 1 808 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L402
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L402
	.loc 1 809 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L405
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -48(%ebp)
	jmp	.L407
.L405:
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
.L407:
	movl	-48(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%edx)
.L402:
	.loc 1 807 0
	addl	$1, -24(%ebp)
.L400:
	movl	ra_max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jl	.L401
	.loc 1 811 0
	call	get_insns@PLT
	movl	%eax, -28(%ebp)
	jmp	.L409
.L410:
	.loc 1 812 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L411
.LBB17:
	.loc 1 815 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 821 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L413
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L415
.L413:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	movl	%eax, -44(%ebp)
.L415:
	movl	-44(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 822 0
	cmpl	$0, -20(%ebp)
	jns	.L416
	.loc 1 824 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 826 0
	jmp	.L411
.L416:
	.loc 1 828 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %esi
	movl	-20(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%esi, 20(%esp)
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 831 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn@PLT
	.loc 1 833 0
	movl	$0, -12(%ebp)
	jmp	.L418
.L419:
	.loc 1 835 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	240(%eax,%edx,4), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 833 0
	addl	$1, -12(%ebp)
.L418:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	jg	.L419
	.loc 1 838 0
	movl	$1, (%esp)
	call	constrain_operands@PLT
	testl	%eax, %eax
	je	.L421
	.loc 1 839 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	ra_debug_msg@PLT
	jmp	.L423
.L421:
	.loc 1 842 0
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	ra_debug_msg@PLT
.L423:
	.loc 1 843 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	ra_debug_msg@PLT
.L411:
.LBE17:
	.loc 1 811 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L409:
	cmpl	$0, -28(%ebp)
	jne	.L410
	.loc 1 845 0
	movl	$176, -24(%ebp)
	jmp	.L425
.L426:
	.loc 1 846 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L427
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L427
	.loc 1 847 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
.L427:
	.loc 1 845 0
	addl	$1, -24(%ebp)
.L425:
	movl	ra_max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jl	.L426
.L430:
	.loc 1 848 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE29:
	.size	dump_constraints, .-dump_constraints
	.section	.rodata
.LC151:
	.string	" spill cost of graph (%s) = "
.LC152:
	.string	"%llu"
	.text
.globl dump_graph_cost
	.type	dump_graph_cost, @function
dump_graph_cost:
.LFB30:
	.loc 1 857 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$52, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 860 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L444
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	8(%ebp), %eax
	testl	%eax, %eax
	jne	.L434
	.loc 1 861 0
	jmp	.L444
.L434:
	.loc 1 863 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 864 0
	movl	$0, -16(%ebp)
	jmp	.L436
.L437:
.LBB18:
	.loc 1 866 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 867 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L438
	.loc 1 868 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	addl	%eax, -24(%ebp)
	adcl	%edx, -20(%ebp)
.L438:
.LBE18:
	.loc 1 864 0
	addl	$1, -16(%ebp)
.L436:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jb	.L437
	.loc 1 870 0
	cmpl	$0, 12(%ebp)
	je	.L441
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L443
.L441:
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L443:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 871 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 872 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
.L444:
	.loc 1 873 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	dump_graph_cost, .-dump_graph_cost
	.section	.rodata
.LC153:
	.string	"\nColored:\n"
.LC154:
	.string	"  %4d : color %d\n"
.LC155:
	.string	"\nCoalesced:\n"
.LC156:
	.string	"  %4d : to web %d, color %d\n"
.LC157:
	.string	"\nSpilled:\n"
.LC158:
	.string	"  %4d\n"
	.text
.globl dump_ra
	.type	dump_ra, @function
dump_ra:
.LFB31:
	.loc 1 880 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%esi
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$48, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 883 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L459
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L448
	.loc 1 884 0
	jmp	.L459
.L448:
	.loc 1 886 0
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 887 0
	movl	web_lists@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L450
.L451:
	.loc 1 889 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 890 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 887 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L450:
	cmpl	$0, -12(%ebp)
	jne	.L451
	.loc 1 892 0
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 893 0
	movl	web_lists@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L453
.L454:
	.loc 1 895 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 896 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%esi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 893 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L453:
	cmpl	$0, -12(%ebp)
	jne	.L454
	.loc 1 899 0
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 900 0
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L456
.L457:
	.loc 1 902 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 903 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 900 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L456:
	cmpl	$0, -12(%ebp)
	jne	.L457
	.loc 1 905 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 906 0
	movl	$128, (%esp)
	call	dump_cost@PLT
.L459:
	.loc 1 907 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	dump_ra, .-dump_ra
	.section	.rodata
.LC159:
	.string	"static insn cost %s\n"
.LC160:
	.string	"  %soverall:\tnum=%6d\tcost="
.LC161:
	.string	"% *lld"
.LC162:
	.string	"  %sloads:\tnum=%6d\tcost="
.LC163:
	.string	"  %sstores:\tnum=%6d\tcost="
.LC164:
	.string	"  %sregcopy:\tnum=%6d\tcost="
.LC165:
	.string	"  %sselfcpy:\tnum=%6d\tcost="
	.text
.globl dump_static_insn_cost
	.type	dump_static_insn_cost, @function
dump_static_insn_cost:
.LFB32:
	.loc 1 917 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$148, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 925 0
	leal	-52(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	.loc 1 926 0
	leal	-64(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	.loc 1 927 0
	leal	-76(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	.loc 1 928 0
	leal	-88(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	.loc 1 929 0
	leal	-100(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	.loc 1 931 0
	cmpl	$0, 8(%ebp)
	je	.L505
	.loc 1 934 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L463
.L464:
.LBB19:
	.loc 1 936 0
	movl	-32(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 938 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L465
.L466:
	.loc 1 943 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L467
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L469
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L471
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L473
.L471:
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -112(%ebp)
.L473:
	movl	-112(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L474
.L469:
	movl	$0, -116(%ebp)
.L474:
	movl	-116(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L467
.LBB20:
	.loc 1 945 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 946 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 947 0
	movl	$0, -12(%ebp)
	.loc 1 948 0
	movl	-100(%ebp), %eax
	movl	-96(%ebp), %edx
	addl	-40(%ebp), %eax
	adcl	-36(%ebp), %edx
	movl	%eax, -100(%ebp)
	movl	%edx, -96(%ebp)
	.loc 1 949 0
	movl	-92(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -92(%ebp)
	.loc 1 950 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L476
	.loc 1 951 0
	leal	-88(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L478
.L476:
	.loc 1 952 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %edx
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jne	.L479
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L481
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L479
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L479
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L479
.L481:
	.loc 1 957 0
	leal	-76(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 952 0
	jmp	.L478
.L479:
	.loc 1 960 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L485
	.loc 1 961 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L485:
	.loc 1 962 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L487
	.loc 1 963 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L487:
	.loc 1 964 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L489
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L489
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_is_stack_slot@PLT
	testl	%eax, %eax
	je	.L489
	.loc 1 966 0
	leal	-52(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 964 0
	jmp	.L478
.L489:
	.loc 1 967 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L478
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L478
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	memref_is_stack_slot@PLT
	testl	%eax, %eax
	je	.L478
	.loc 1 969 0
	leal	-64(%ebp), %eax
	movl	%eax, -12(%ebp)
.L478:
	.loc 1 971 0
	cmpl	$0, -12(%ebp)
	je	.L467
	.loc 1 973 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	-40(%ebp), %eax
	adcl	-36(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 974 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
.L467:
.LBE20:
	.loc 1 977 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L497
	.loc 1 938 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L465:
	cmpl	$0, -28(%ebp)
	jne	.L466
.L497:
.LBE19:
	.loc 1 934 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
.L463:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L464
	.loc 1 982 0
	cmpl	$0, 16(%ebp)
	jne	.L500
	.loc 1 983 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 16(%ebp)
.L500:
	.loc 1 984 0
	cmpl	$0, 12(%ebp)
	je	.L502
	movl	12(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L504
.L502:
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
.L504:
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 985 0
	movl	-92(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 986 0
	movl	-100(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$8, 8(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 987 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 988 0
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 989 0
	movl	-52(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$8, 8(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 990 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 991 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 992 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$8, 8(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 993 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 994 0
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 995 0
	movl	-76(%ebp), %eax
	movl	-72(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$8, 8(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 996 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 997 0
	movl	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 998 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$8, 8(%esp)
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 999 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L505:
	.loc 1 1000 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	dump_static_insn_cost, .-dump_static_insn_cost
.globl web_conflicts_p
	.type	web_conflicts_p, @function
web_conflicts_p:
.LFB33:
	.loc 1 1009 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%edi
.LCFI81:
	pushl	%esi
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$12, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1010 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L507
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L507
	.loc 1 1011 0
	movl	$0, -16(%ebp)
	jmp	.L510
.L507:
	.loc 1 1013 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L511
	.loc 1 1014 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	movl	92(%eax,%edx,8), %esi
	movl	96(%eax,%edx,8), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L517
	movl	%edx, %eax
	xorl	%edx, %edx
.L517:
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	jmp	.L510
.L511:
	.loc 1 1016 0
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L513
	.loc 1 1017 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	92(%eax,%edx,8), %esi
	movl	96(%eax,%edx,8), %edi
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L516
	movl	%edx, %eax
	xorl	%edx, %edx
.L516:
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	jmp	.L510
.L513:
	.loc 1 1019 0
	movl	12(%ebp), %eax
	addl	$92, %eax
	movl	8(%ebp), %edx
	addl	$92, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hard_regs_intersect_p@PLT
	movl	%eax, -16(%ebp)
.L510:
	movl	-16(%ebp), %eax
	.loc 1 1020 0
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	web_conflicts_p, .-web_conflicts_p
	.section	.rodata
	.align 4
.LC166:
	.string	"Web: %i(%i)+%i class: %s freedom: %i degree %i\n"
.LC167:
	.string	"   def insns:"
.LC168:
	.string	" %d "
.LC169:
	.string	"\n   use insns:"
	.text
.globl dump_web_insns
	.type	dump_web_insns, @function
dump_web_insns:
.LFB34:
	.loc 1 1027 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%edi
.LCFI87:
	pushl	%esi
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$60, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1030 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edi
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movzwl	50(%eax), %eax
	shrw	$3, %ax
	andw	$1023, %ax
	movzwl	%ax, %eax
	movl	reg_class_names@GOTOFF(%ebx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edi, 28(%esp)
	movl	-32(%ebp), %edi
	movl	%edi, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1034 0
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1036 0
	movl	$0, -16(%ebp)
	jmp	.L519
.L520:
	.loc 1 1038 0
	movl	8(%ebp), %eax
	movl	208(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1036 0
	addl	$1, -16(%ebp)
.L519:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L520
	.loc 1 1041 0
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1042 0
	movl	$0, -16(%ebp)
	jmp	.L522
.L523:
	.loc 1 1044 0
	movl	8(%ebp), %eax
	movl	212(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1042 0
	addl	$1, -16(%ebp)
.L522:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L523
	.loc 1 1046 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1047 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	dump_web_insns, .-dump_web_insns
	.section	.rodata
.LC170:
	.string	"\n             "
.LC171:
	.string	" %d(%d)"
.LC172:
	.string	"+%d"
.LC173:
	.string	"/x"
.LC174:
	.string	"/s"
.LC175:
	.string	"/c/%d"
.LC176:
	.string	"By conflicts:     "
.LC177:
	.string	"%d(%d)%s "
	.text
.globl dump_web_conflicts
	.type	dump_web_conflicts, @function
dump_web_conflicts:
.LFB35:
	.loc 1 1054 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%edi
.LCFI93:
	pushl	%esi
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$108, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1055 0
	movl	$0, -32(%ebp)
	.loc 1 1058 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edi
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	8(%ebp), %eax
	movzwl	50(%eax), %eax
	shrw	$3, %ax
	andw	$1023, %ax
	movzwl	%ax, %eax
	movl	reg_class_names@GOTOFF(%ebx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edi, 28(%esp)
	movl	-68(%ebp), %edi
	movl	%edi, 24(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1063 0
	movl	$0, -28(%ebp)
	jmp	.L527
.L528:
	.loc 1 1064 0
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jae	.L529
	movl	-28(%ebp), %eax
	subl	$1, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %edx
	shrl	%edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -60(%ebp)
	jmp	.L531
.L529:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	shrl	%eax
	addl	-28(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
.L531:
	movl	-60(%ebp), %eax
	movl	-64(%ebp), %edi
	movl	12(%edi,%eax,8), %esi
	movl	16(%edi,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jae	.L532
	movl	-28(%ebp), %eax
	subl	$1, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %edx
	shrl	%edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	andl	$63, %edx
	movl	%edx, -48(%ebp)
	jmp	.L534
.L532:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	shrl	%eax
	addl	-28(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%ecx, -48(%ebp)
.L534:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movzbl	-48(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L557
	movl	%edx, %eax
	xorl	%edx, %edx
.L557:
	movl	%eax, %esi
	andl	$1, %esi
	movl	%edx, %edi
	andl	$0, %edi
	movl	%esi, %eax
	testl	%eax, %eax
	je	.L535
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L535
	.loc 1 1066 0
	movl	-32(%ebp), %ecx
	movl	$954437177, -76(%ebp)
	movl	-76(%ebp), %eax
	imull	%ecx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -44(%ebp)
	movl	-44(%ebp), %eax
	sall	$3, %eax
	addl	-44(%ebp), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, -44(%ebp)
	cmpl	$5, -44(%ebp)
	jne	.L538
	.loc 1 1067 0
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.L538:
	.loc 1 1068 0
	addl	$1, -32(%ebp)
	.loc 1 1070 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1071 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L540
	.loc 1 1072 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.L540:
	.loc 1 1074 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	web_conflicts_p@PLT
	testl	%eax, %eax
	je	.L542
	.loc 1 1075 0
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.L542:
	.loc 1 1077 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$131072, %eax
	jne	.L544
	.loc 1 1078 0
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.L544:
	.loc 1 1080 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L535
	.loc 1 1081 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.L535:
	.loc 1 1063 0
	addl	$1, -28(%ebp)
.L527:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jb	.L528
	.loc 1 1083 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.LBB21:
	.loc 1 1086 0
	movl	$0, -32(%ebp)
	.loc 1 1087 0
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1088 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L548
.L549:
.LBB22:
	.loc 1 1090 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1091 0
	movl	-32(%ebp), %ecx
	movl	$954437177, -76(%ebp)
	movl	-76(%ebp), %eax
	imull	%ecx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -40(%ebp)
	movl	-40(%ebp), %eax
	sall	$3, %eax
	addl	-40(%ebp), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, -40(%ebp)
	cmpl	$8, -40(%ebp)
	jne	.L550
	.loc 1 1092 0
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.L550:
	.loc 1 1093 0
	addl	$1, -32(%ebp)
	.loc 1 1094 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	web_conflicts_p@PLT
	testl	%eax, %eax
	je	.L552
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L554
.L552:
	leal	.LC95@GOTOFF(%ebx), %edx
	movl	%edx, -36(%ebp)
.L554:
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	-36(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.LBE22:
	.loc 1 1088 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L548:
	cmpl	$0, -24(%ebp)
	jne	.L549
	.loc 1 1097 0
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	ra_debug_msg@PLT
.LBE21:
	.loc 1 1099 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	dump_web_conflicts, .-dump_web_conflicts
	.section	.rodata
.LC178:
	.string	"%s "
	.text
.globl debug_hard_reg_set
	.type	debug_hard_reg_set, @function
debug_hard_reg_set:
.LFB36:
	.loc 1 1106 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$36, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1108 0
	movl	$0, -8(%ebp)
	jmp	.L559
.L560:
	.loc 1 1110 0
	movl	-8(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-8(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L565
	movl	%edx, %eax
	xorl	%edx, %edx
.L565:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L561
	.loc 1 1112 0
	movl	-8(%ebp), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L561:
	.loc 1 1108 0
	addl	$1, -8(%ebp)
.L559:
	cmpl	$175, -8(%ebp)
	jle	.L560
	.loc 1 1115 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1116 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	debug_hard_reg_set, .-debug_hard_reg_set
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI8-.LFB17
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI12-.LFB18
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI16-.LFB19
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
	.long	.LCFI21-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI25-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI29-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI33-.LFB23
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI37-.LFB24
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
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI41-.LFB25
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
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI45-.LFB26
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
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI49-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI55-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI61-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI62
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI66-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI67
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
	.long	.LCFI70-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI71
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI75-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI79-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI84-.LCFI80
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
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI85-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI86
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI91-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI92
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
	.long	.LCFI97-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI100-.LCFI98
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 7 "../../../kgccfe/gnu/MIPS/config.h"
	.file 8 "../../../kgccfe/gnu/rtl.h"
	.file 9 "../../../kgccfe/gnu/machmode.h"
	.file 10 "../../../kgccfe/gnu/bitmap.h"
	.file 11 "../../../kgccfe/gnu/basic-block.h"
	.file 12 "../../../kgccfe/gnu/sbitmap.h"
	.file 13 "../../../kgccfe/gnu/df.h"
	.file 14 "../../../kgccfe/gnu/ra.h"
	.file 15 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 16 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 17 "../../../kgccfe/gnu/recog.h"
	.file 18 "../../../kgccfe/gnu/function.h"
	.file 19 "../../../kgccfe/gnu/varray.h"
	.file 20 "../../../kgccfe/gnu/output.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI66-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI67-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI85-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI86-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI92-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI97-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI98-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x4d27
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/ra-debug.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x7
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x7
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x8
	.byte	0x8a
	.long	0xb11
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x8
	.byte	0x8d
	.long	0x8c8
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x8
	.byte	0x94
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x8
	.byte	0x97
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x8
	.byte	0x9f
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x8
	.byte	0xa8
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x8
	.byte	0xba
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x8
	.byte	0xc1
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x8
	.byte	0xc6
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x8
	.byte	0xcf
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x8
	.byte	0xd4
	.long	0x172c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x7
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x7
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x8
	.byte	0xf8
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x8
	.byte	0xf9
	.long	0x173c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x7
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x9
	.long	0x20e
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x393
	.string	"reg_class"
	.byte	0x4
	.byte	0xf
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
	.long	0x465
	.string	"mips_args"
	.byte	0x40
	.byte	0xf
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xf
	.value	0xaad
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xf
	.value	0xab0
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xf
	.value	0xab5
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xf
	.value	0xab8
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xf
	.value	0xabb
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xf
	.value	0xac8
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xf
	.value	0xacb
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xf
	.value	0xad3
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xf
	.value	0xad4
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x47c
	.long	0x9d
	.uleb128 0x11
	.long	0x47c
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xf
	.value	0xad5
	.long	0x393
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x2
	.byte	0x2b
	.long	0x4b1
	.uleb128 0x3
	.byte	0x4
	.long	0x20e
	.uleb128 0x2
	.string	"va_list"
	.byte	0x2
	.byte	0x69
	.long	0x49b
	.uleb128 0x2
	.string	"size_t"
	.byte	0x6
	.byte	0xd6
	.long	0x465
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
	.byte	0x5
	.byte	0x3b
	.long	0x52c
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x5
	.byte	0x90
	.long	0x576
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x5
	.byte	0x91
	.long	0x557
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20e
	.uleb128 0x2
	.string	"FILE"
	.byte	0x3
	.byte	0x2e
	.long	0x5a7
	.uleb128 0x14
	.long	0x822
	.long	.LASF2
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x4
	.value	0x10c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x4
	.value	0x111
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x4
	.value	0x112
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x4
	.value	0x113
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x4
	.value	0x114
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x4
	.value	0x115
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x4
	.value	0x116
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x4
	.value	0x117
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x4
	.value	0x118
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x4
	.value	0x11a
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x4
	.value	0x11b
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x4
	.value	0x11c
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x4
	.value	0x11e
	.long	0x889
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x4
	.value	0x120
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x4
	.value	0x122
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x4
	.value	0x126
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x4
	.value	0x128
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x4
	.value	0x12c
	.long	0x4e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x4
	.value	0x12d
	.long	0x510
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x4
	.value	0x12e
	.long	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x4
	.value	0x132
	.long	0x8a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x4
	.value	0x13b
	.long	0x582
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x4
	.value	0x144
	.long	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x4
	.value	0x145
	.long	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x4
	.value	0x146
	.long	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x4
	.value	0x147
	.long	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x4
	.value	0x148
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x4
	.value	0x14a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x4
	.value	0x14c
	.long	0x8ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.long	0x832
	.long	0x20e
	.uleb128 0x11
	.long	0x47c
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4d4
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0x4
	.byte	0xb0
	.uleb128 0x4
	.long	0x889
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x4
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x4
	.byte	0xb7
	.long	0x889
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x4
	.byte	0xb8
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x4
	.byte	0xbc
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x846
	.uleb128 0x3
	.byte	0x4
	.long	0x5a7
	.uleb128 0x10
	.long	0x8a5
	.long	0x20e
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x838
	.uleb128 0x10
	.long	0x8bb
	.long	0x20e
	.uleb128 0x11
	.long	0x47c
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x216
	.uleb128 0x3
	.byte	0x4
	.long	0x8c7
	.uleb128 0x16
	.uleb128 0x17
	.long	0xb11
	.string	"machine_mode"
	.byte	0x4
	.byte	0x9
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
	.uleb128 0x17
	.long	0x12e0
	.string	"rtx_code"
	.byte	0x4
	.byte	0x8
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
	.uleb128 0x18
	.long	0x13ba
	.byte	0x4
	.byte	0x8
	.byte	0x4d
	.uleb128 0x6
	.string	"min_align"
	.byte	0x8
	.byte	0x4f
	.long	0x465
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x8
	.byte	0x51
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x8
	.byte	0x52
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x8
	.byte	0x54
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x8
	.byte	0x56
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x8
	.byte	0x58
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x8
	.byte	0x5b
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x8
	.byte	0x5d
	.long	0x465
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x8
	.byte	0x5e
	.long	0x12e0
	.uleb128 0x14
	.long	0x1431
	.long	.LASF3
	.byte	0x18
	.byte	0x8
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x8
	.byte	0x69
	.long	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x8
	.byte	0x6a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x8
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x8
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x8
	.byte	0x6d
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.long	.LASF3
	.byte	0x8
	.byte	0x6e
	.long	0x13d5
	.uleb128 0x1a
	.long	0x150e
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x8
	.byte	0x73
	.uleb128 0x1b
	.string	"rtwint"
	.byte	0x8
	.byte	0x74
	.long	0x52c
	.uleb128 0x1b
	.string	"rtint"
	.byte	0x8
	.byte	0x75
	.long	0x216
	.uleb128 0x1b
	.string	"rtuint"
	.byte	0x8
	.byte	0x76
	.long	0x465
	.uleb128 0x1b
	.string	"rtstr"
	.byte	0x8
	.byte	0x77
	.long	0x203
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x8
	.byte	0x78
	.long	0x9d
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0x8
	.byte	0x79
	.long	0x19d
	.uleb128 0x1b
	.string	"rttype"
	.byte	0x8
	.byte	0x7a
	.long	0x8c8
	.uleb128 0x1b
	.string	"rt_addr_diff_vec_flags"
	.byte	0x8
	.byte	0x7b
	.long	0x13ba
	.uleb128 0x1b
	.string	"rt_cselib"
	.byte	0x8
	.byte	0x7c
	.long	0x1522
	.uleb128 0x1b
	.string	"rtbit"
	.byte	0x8
	.byte	0x7d
	.long	0x158a
	.uleb128 0x1b
	.string	"rttree"
	.byte	0x8
	.byte	0x7e
	.long	0x1e5
	.uleb128 0x1b
	.string	"bb"
	.byte	0x8
	.byte	0x7f
	.long	0x1711
	.uleb128 0x1b
	.string	"rtmem"
	.byte	0x8
	.byte	0x80
	.long	0x1717
	.byte	0x0
	.uleb128 0x1c
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x150e
	.uleb128 0x4
	.long	0x158a
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x8
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0xa
	.byte	0x3d
	.long	0x28fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0xa
	.byte	0x3e
	.long	0x28fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0xa
	.byte	0x3f
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0xa
	.byte	0x40
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1528
	.uleb128 0x4
	.long	0x1711
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x8
	.byte	0x7f
	.uleb128 0x7
	.string	"head"
	.byte	0xb
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0xb
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0xb
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0xb
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0xb
	.byte	0xbc
	.long	0x2f0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0xb
	.byte	0xbc
	.long	0x2f0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0xb
	.byte	0xc1
	.long	0x2e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0xb
	.byte	0xc5
	.long	0x2e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0xb
	.byte	0xcb
	.long	0x2e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0xb
	.byte	0xcd
	.long	0x2e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0xb
	.byte	0xd0
	.long	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0xb
	.byte	0xd3
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0xb
	.byte	0xd6
	.long	0x1711
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0xb
	.byte	0xd6
	.long	0x1711
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0xb
	.byte	0xd9
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0xb
	.byte	0xdc
	.long	0x3188
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1d
	.long	.LASF4
	.byte	0xb
	.byte	0xdf
	.long	0x2e4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0xb
	.byte	0xe2
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1d
	.long	.LASF5
	.byte	0xb
	.byte	0xe5
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1590
	.uleb128 0x3
	.byte	0x4
	.long	0x1431
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x8
	.byte	0x82
	.long	0x143c
	.uleb128 0x10
	.long	0x173c
	.long	0x171d
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x174c
	.long	0x9d
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x17
	.long	0x177f
	.string	"op_type"
	.byte	0x4
	.byte	0x11
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
	.uleb128 0x1e
	.long	0x1861
	.long	.LASF6
	.value	0x274
	.byte	0x11
	.byte	0x9b
	.uleb128 0x7
	.string	"operand"
	.byte	0x11
	.byte	0xa3
	.long	0x1861
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"operand_loc"
	.byte	0x11
	.byte	0xa6
	.long	0x1871
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"constraints"
	.byte	0x11
	.byte	0xa9
	.long	0x1881
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x7
	.string	"operand_mode"
	.byte	0x11
	.byte	0xac
	.long	0x1891
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x7
	.string	"operand_type"
	.byte	0x11
	.byte	0xaf
	.long	0x18a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x7
	.string	"dup_loc"
	.byte	0x11
	.byte	0xb3
	.long	0x18b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x7
	.string	"dup_num"
	.byte	0x11
	.byte	0xb7
	.long	0x822
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x11
	.byte	0xc4
	.long	0x20e
	.byte	0x3
	.byte	0x23
	.uleb128 0x26c
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x11
	.byte	0xc7
	.long	0x20e
	.byte	0x3
	.byte	0x23
	.uleb128 0x26d
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x11
	.byte	0xca
	.long	0x20e
	.byte	0x3
	.byte	0x23
	.uleb128 0x26e
	.uleb128 0x1d
	.long	.LASF9
	.byte	0x11
	.byte	0xcd
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.byte	0x0
	.uleb128 0x10
	.long	0x1871
	.long	0x9d
	.uleb128 0x11
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x1881
	.long	0x174c
	.uleb128 0x11
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x1891
	.long	0x203
	.uleb128 0x11
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x18a1
	.long	0x8c8
	.uleb128 0x11
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x18b1
	.long	0x1752
	.uleb128 0x11
	.long	0x47c
	.byte	0x1d
	.byte	0x0
	.uleb128 0x10
	.long	0x18c1
	.long	0x174c
	.uleb128 0x11
	.long	0x47c
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x11
	.byte	0xd9
	.long	0x18e2
	.uleb128 0x3
	.byte	0x4
	.long	0x18e8
	.uleb128 0x1f
	.long	0x18fd
	.byte	0x1
	.long	0x216
	.uleb128 0x20
	.long	0x9d
	.uleb128 0x20
	.long	0x8c8
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x11
	.byte	0xdb
	.long	0x1910
	.uleb128 0x3
	.byte	0x4
	.long	0x1916
	.uleb128 0x1f
	.long	0x1927
	.byte	0x1
	.long	0x9d
	.uleb128 0x20
	.long	0x9d
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x4
	.long	0x19a7
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x11
	.byte	0xde
	.uleb128 0x7
	.string	"predicate"
	.byte	0x11
	.byte	0xdf
	.long	0x19a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"constraint"
	.byte	0x11
	.byte	0xe1
	.long	0x19ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"mode"
	.byte	0x11
	.byte	0xe3
	.long	0x19b1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"strict_low"
	.byte	0x11
	.byte	0xe5
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"eliminable"
	.byte	0x11
	.byte	0xe7
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x9
	.long	0x18c1
	.uleb128 0x9
	.long	0x203
	.uleb128 0x9
	.long	0x8c8
	.uleb128 0x14
	.long	0x1a4b
	.long	.LASF10
	.byte	0x14
	.byte	0x11
	.byte	0xf2
	.uleb128 0x7
	.string	"name"
	.byte	0x11
	.byte	0xf3
	.long	0x19ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"output"
	.byte	0x11
	.byte	0xf4
	.long	0x8c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"genfun"
	.byte	0x11
	.byte	0xf5
	.long	0x1a4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"operand"
	.byte	0x11
	.byte	0xf6
	.long	0x1a50
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x11
	.byte	0xf8
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_dups"
	.byte	0x11
	.byte	0xf9
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x11
	.byte	0xfa
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x7
	.string	"output_format"
	.byte	0x11
	.byte	0xfb
	.long	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x18fd
	.uleb128 0x9
	.long	0x1a55
	.uleb128 0x3
	.byte	0x4
	.long	0x1a5b
	.uleb128 0x9
	.long	0x1927
	.uleb128 0x4
	.long	0x1ac5
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x12
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0x12
	.byte	0x18
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0x12
	.byte	0x19
	.long	0x8c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0x12
	.byte	0x1a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x12
	.byte	0x1b
	.long	0x1ac5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a60
	.uleb128 0x14
	.long	0x1b13
	.long	.LASF12
	.byte	0x10
	.byte	0x12
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0x12
	.byte	0x26
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0x12
	.byte	0x27
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.long	.LASF13
	.byte	0x12
	.byte	0x28
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x12
	.byte	0x29
	.long	0x1b13
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1acb
	.uleb128 0x4
	.long	0x1c68
	.string	"emit_status"
	.byte	0x34
	.byte	0x12
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0x12
	.byte	0x3a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0x12
	.byte	0x3d
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0x12
	.byte	0x44
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0x12
	.byte	0x45
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF13
	.byte	0x12
	.byte	0x4a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF12
	.byte	0x12
	.byte	0x50
	.long	0x1b13
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0x12
	.byte	0x54
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0x12
	.byte	0x58
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0x12
	.byte	0x59
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0x12
	.byte	0x5f
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0x12
	.byte	0x65
	.long	0x832
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0x12
	.byte	0x69
	.long	0x1c68
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0x12
	.byte	0x70
	.long	0x174c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5
	.uleb128 0x4
	.long	0x1d4e
	.string	"expr_status"
	.byte	0x1c
	.byte	0x12
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0x12
	.byte	0x80
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0x12
	.byte	0x91
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0x12
	.byte	0x97
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0x12
	.byte	0x9c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0x12
	.byte	0x9f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0x12
	.byte	0xa2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0x12
	.byte	0xa5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x22
	.long	0x1db8
	.long	.LASF14
	.byte	0x4
	.byte	0x12
	.value	0x1f1
	.uleb128 0xc
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xc
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xc
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x23
	.long	0x2777
	.string	"function"
	.value	0x134
	.byte	0x8
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0x12
	.byte	0xb5
	.long	0x2783
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0x12
	.byte	0xb6
	.long	0x2797
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0x12
	.byte	0xb7
	.long	0x279d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0x12
	.byte	0xb8
	.long	0x27a3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0x12
	.byte	0xb9
	.long	0x27b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"name"
	.byte	0x12
	.byte	0xbe
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"decl"
	.byte	0x12
	.byte	0xc1
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0x12
	.byte	0xc4
	.long	0x27bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0x12
	.byte	0xc9
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"args_size"
	.byte	0x12
	.byte	0xce
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0x12
	.byte	0xd3
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0x12
	.byte	0xd7
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0x12
	.byte	0xdb
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0x12
	.byte	0xdf
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0x12
	.byte	0xe5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0x12
	.byte	0xe8
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0x12
	.byte	0xec
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0x12
	.byte	0xf0
	.long	0x27dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0x12
	.byte	0xf3
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0x12
	.byte	0xf8
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x12
	.byte	0xfe
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x12
	.value	0x102
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x12
	.value	0x107
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0x12
	.value	0x10d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0x12
	.value	0x112
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0x12
	.value	0x115
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0x12
	.value	0x116
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0x12
	.value	0x11a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0x12
	.value	0x11e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0x12
	.value	0x121
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0x12
	.value	0x125
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0x12
	.value	0x128
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0x12
	.value	0x12e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0x12
	.value	0x133
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0x12
	.value	0x138
	.long	0x52c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0x12
	.value	0x13d
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0x12
	.value	0x146
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0x12
	.value	0x149
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0x12
	.value	0x14d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0x12
	.value	0x151
	.long	0x465
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0x12
	.value	0x157
	.long	0x174c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0x12
	.value	0x15a
	.long	0x27ee
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0x12
	.value	0x15d
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0x12
	.value	0x160
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0x12
	.value	0x166
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0x12
	.value	0x16a
	.long	0x1ac5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0x12
	.value	0x16d
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0x12
	.value	0x16e
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0x12
	.value	0x16f
	.long	0x19d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0x12
	.value	0x170
	.long	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0x12
	.value	0x173
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0x12
	.value	0x175
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0x12
	.value	0x178
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0x12
	.value	0x17d
	.long	0x2807
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0x12
	.value	0x17f
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0x12
	.value	0x181
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0x12
	.value	0x184
	.long	0x2821
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0x12
	.value	0x18a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x24
	.string	"returns_struct"
	.byte	0x12
	.value	0x190
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pcc_struct"
	.byte	0x12
	.value	0x194
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pointer"
	.byte	0x12
	.value	0x197
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"needs_context"
	.byte	0x12
	.value	0x19a
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_setjmp"
	.byte	0x12
	.value	0x19d
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_longjmp"
	.byte	0x12
	.value	0x1a0
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_alloca"
	.byte	0x12
	.value	0x1a4
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_eh_return"
	.byte	0x12
	.value	0x1a7
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_label"
	.byte	0x12
	.value	0x1ab
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_goto"
	.byte	0x12
	.value	0x1af
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"contains_functions"
	.byte	0x12
	.value	0x1b2
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_computed_jump"
	.byte	0x12
	.value	0x1b5
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"is_thunk"
	.byte	0x12
	.value	0x1ba
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"all_throwers_are_sibcalls"
	.byte	0x12
	.value	0x1c1
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"instrument_entry_exit"
	.byte	0x12
	.value	0x1c5
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arc_profile"
	.byte	0x12
	.value	0x1c8
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"profile"
	.byte	0x12
	.value	0x1cb
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"limit_stack"
	.byte	0x12
	.value	0x1cf
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"stdarg"
	.byte	0x12
	.value	0x1d2
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_whole_function_mode_p"
	.byte	0x12
	.value	0x1d8
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x12
	.value	0x1e1
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_const_pool"
	.byte	0x12
	.value	0x1e4
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_pic_offset_table"
	.byte	0x12
	.value	0x1e7
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_eh_lsda"
	.byte	0x12
	.value	0x1ea
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arg_pointer_save_area_init"
	.byte	0x12
	.value	0x1ed
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x25
	.long	.LASF14
	.byte	0x12
	.value	0x1fa
	.long	0x1d4e
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0x12
	.value	0x1fe
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1c
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2777
	.uleb128 0x1c
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2789
	.uleb128 0x3
	.byte	0x4
	.long	0x1c6e
	.uleb128 0x3
	.byte	0x4
	.long	0x1b19
	.uleb128 0x1c
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x27a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1db8
	.uleb128 0x1c
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x27c5
	.uleb128 0x1c
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x27e2
	.uleb128 0x1c
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x27f4
	.uleb128 0x1c
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x280d
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x10
	.byte	0x29
	.long	0x53d
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x10
	.byte	0x34
	.long	0x2854
	.uleb128 0x10
	.long	0x2864
	.long	0x2827
	.uleb128 0x11
	.long	0x47c
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0xa
	.byte	0x1d
	.long	0x4fb
	.uleb128 0x4
	.long	0x28ce
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0xa
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF11
	.byte	0xa
	.byte	0x35
	.long	0x28ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0xa
	.byte	0x36
	.long	0x28ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0xa
	.byte	0x37
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0xa
	.byte	0x38
	.long	0x28d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2877
	.uleb128 0x10
	.long	0x28e4
	.long	0x2864
	.uleb128 0x11
	.long	0x47c
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0xa
	.byte	0x39
	.long	0x2877
	.uleb128 0x3
	.byte	0x4
	.long	0x28e4
	.uleb128 0x2
	.string	"bitmap"
	.byte	0xa
	.byte	0x43
	.long	0x158a
	.uleb128 0x4
	.long	0x2968
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xc
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0xc
	.byte	0x21
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0xc
	.byte	0x22
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0xc
	.byte	0x23
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0xc
	.byte	0x24
	.long	0x2968
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x2978
	.long	0x53d
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xc
	.byte	0x25
	.long	0x2987
	.uleb128 0x3
	.byte	0x4
	.long	0x290e
	.uleb128 0x4
	.long	0x29c3
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x13
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0x13
	.byte	0x32
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0x13
	.byte	0x36
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x2b5e
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x13
	.byte	0x3c
	.uleb128 0xc
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xc
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xc
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xc
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xc
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xc
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xc
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xc
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xc
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xc
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xc
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xc
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xc
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xc
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xc
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xc
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xc
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xc
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xc
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xc
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xc
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x1a
	.long	0x2c5a
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x13
	.byte	0x55
	.uleb128 0x1b
	.string	"c"
	.byte	0x13
	.byte	0x56
	.long	0x895
	.uleb128 0x1b
	.string	"uc"
	.byte	0x13
	.byte	0x58
	.long	0x2c5a
	.uleb128 0x1b
	.string	"s"
	.byte	0x13
	.byte	0x5a
	.long	0x2c6a
	.uleb128 0x1b
	.string	"us"
	.byte	0x13
	.byte	0x5c
	.long	0x2c7a
	.uleb128 0x1b
	.string	"i"
	.byte	0x13
	.byte	0x5e
	.long	0x2c8a
	.uleb128 0x1b
	.string	"u"
	.byte	0x13
	.byte	0x60
	.long	0x2c9a
	.uleb128 0x1b
	.string	"l"
	.byte	0x13
	.byte	0x62
	.long	0x2caa
	.uleb128 0x1b
	.string	"ul"
	.byte	0x13
	.byte	0x64
	.long	0x2cba
	.uleb128 0x1b
	.string	"hint"
	.byte	0x13
	.byte	0x66
	.long	0x2cca
	.uleb128 0x1b
	.string	"uhint"
	.byte	0x13
	.byte	0x68
	.long	0x2968
	.uleb128 0x1b
	.string	"generic"
	.byte	0x13
	.byte	0x6a
	.long	0x2cda
	.uleb128 0x1b
	.string	"cptr"
	.byte	0x13
	.byte	0x6c
	.long	0x2cea
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x13
	.byte	0x6e
	.long	0x2cfa
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0x13
	.byte	0x70
	.long	0x2d0a
	.uleb128 0x1b
	.string	"tree"
	.byte	0x13
	.byte	0x72
	.long	0x2d1a
	.uleb128 0x1b
	.string	"bitmap"
	.byte	0x13
	.byte	0x74
	.long	0x2d2a
	.uleb128 0x1b
	.string	"reg"
	.byte	0x13
	.byte	0x76
	.long	0x2d3a
	.uleb128 0x1b
	.string	"const_equiv"
	.byte	0x13
	.byte	0x78
	.long	0x2d5f
	.uleb128 0x1b
	.string	"bb"
	.byte	0x13
	.byte	0x7a
	.long	0x2d6f
	.uleb128 0x1b
	.string	"te"
	.byte	0x13
	.byte	0x7c
	.long	0x2d7f
	.byte	0x0
	.uleb128 0x10
	.long	0x2c6a
	.long	0x4d4
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2c7a
	.long	0x51f
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2c8a
	.long	0x4e5
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2c9a
	.long	0x216
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2caa
	.long	0x465
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2cba
	.long	0x576
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2cca
	.long	0x4fb
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2cda
	.long	0x52c
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2cea
	.long	0x593
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2cfa
	.long	0x595
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2d0a
	.long	0xa8
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2d1a
	.long	0x1aa
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2d2a
	.long	0x1f1
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2d3a
	.long	0x158a
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2d4a
	.long	0x2d59
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2d4a
	.uleb128 0x10
	.long	0x2d6f
	.long	0x298d
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2d7f
	.long	0x1711
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x2d8f
	.long	0x2d9a
	.uleb128 0x11
	.long	0x47c
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8f
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x13
	.byte	0x7e
	.long	0x2b5e
	.uleb128 0x4
	.long	0x2e28
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x13
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0x13
	.byte	0x82
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0x13
	.byte	0x83
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0x13
	.byte	0x85
	.long	0x29c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0x13
	.byte	0x86
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0x13
	.byte	0x87
	.long	0x2da0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x13
	.byte	0x8a
	.long	0x2e3b
	.uleb128 0x3
	.byte	0x4
	.long	0x2db3
	.uleb128 0x2
	.string	"regset"
	.byte	0xb
	.byte	0x22
	.long	0x2900
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xb
	.byte	0x75
	.long	0x52c
	.uleb128 0x4
	.long	0x2f07
	.string	"edge_def"
	.byte	0x28
	.byte	0xb
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0xb
	.byte	0x7a
	.long	0x2f07
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0xb
	.byte	0x7a
	.long	0x2f07
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0xb
	.byte	0x7d
	.long	0x1711
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0xb
	.byte	0x7d
	.long	0x1711
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0xb
	.byte	0x80
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0xb
	.byte	0x83
	.long	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF5
	.byte	0xb
	.byte	0x85
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0xb
	.byte	0x86
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.long	.LASF4
	.byte	0xb
	.byte	0x87
	.long	0x2e4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2e60
	.uleb128 0x2
	.string	"edge"
	.byte	0xb
	.byte	0x89
	.long	0x2f07
	.uleb128 0x4
	.long	0x3188
	.string	"loop"
	.byte	0x80
	.byte	0xb
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0xb
	.value	0x176
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0xb
	.value	0x179
	.long	0x318e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0xb
	.value	0x17c
	.long	0x318e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0xb
	.value	0x17f
	.long	0x318e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0xb
	.value	0x184
	.long	0x31a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0xb
	.value	0x187
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0xb
	.value	0x18b
	.long	0x318e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0xb
	.value	0x18f
	.long	0x318e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0xb
	.value	0x192
	.long	0x2978
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0xb
	.value	0x195
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0xb
	.value	0x198
	.long	0x31a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0xb
	.value	0x19b
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0xb
	.value	0x19e
	.long	0x31a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0xb
	.value	0x1a1
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0xb
	.value	0x1a4
	.long	0x2978
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0xb
	.value	0x1a7
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0xb
	.value	0x1aa
	.long	0x31a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0xb
	.value	0x1ae
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0xb
	.value	0x1b1
	.long	0x3188
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0xb
	.value	0x1b4
	.long	0x3188
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x25
	.long	.LASF11
	.byte	0xb
	.value	0x1b7
	.long	0x3188
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0xb
	.value	0x1ba
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0xb
	.value	0x1bd
	.long	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0xb
	.value	0x1c3
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0xb
	.value	0x1c7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0xb
	.value	0x1ca
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0xb
	.value	0x1cd
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0xb
	.value	0x1d1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0xb
	.value	0x1d4
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0xb
	.value	0x1d7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0xb
	.value	0x1e2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0xb
	.value	0x1e6
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f19
	.uleb128 0x2
	.string	"basic_block"
	.byte	0xb
	.byte	0xe6
	.long	0x1711
	.uleb128 0x3
	.byte	0x4
	.long	0x2f0d
	.uleb128 0x3
	.byte	0x4
	.long	0x3188
	.uleb128 0x17
	.long	0x3211
	.string	"df_ref_type"
	.byte	0x4
	.byte	0xd
	.byte	0x23
	.uleb128 0xc
	.string	"DF_REF_REG_DEF"
	.sleb128 0
	.uleb128 0xc
	.string	"DF_REF_REG_USE"
	.sleb128 1
	.uleb128 0xc
	.string	"DF_REF_REG_MEM_LOAD"
	.sleb128 2
	.uleb128 0xc
	.string	"DF_REF_REG_MEM_STORE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	0x323e
	.string	"df_link"
	.byte	0x8
	.byte	0xd
	.byte	0x2e
	.uleb128 0x1d
	.long	.LASF11
	.byte	0xd
	.byte	0x2f
	.long	0x323e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"ref"
	.byte	0xd
	.byte	0x30
	.long	0x32b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3211
	.uleb128 0x4
	.long	0x32b5
	.string	"ref"
	.byte	0x1c
	.byte	0xd
	.byte	0x30
	.uleb128 0x7
	.string	"reg"
	.byte	0xd
	.byte	0x44
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF9
	.byte	0xd
	.byte	0x45
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"loc"
	.byte	0xd
	.byte	0x46
	.long	0x174c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"chain"
	.byte	0xd
	.byte	0x47
	.long	0x323e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"type"
	.byte	0xd
	.byte	0x48
	.long	0x31ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"id"
	.byte	0xd
	.byte	0x49
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF5
	.byte	0xd
	.byte	0x4a
	.long	0x32bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3244
	.uleb128 0x17
	.long	0x32fa
	.string	"df_ref_flags"
	.byte	0x4
	.byte	0xd
	.byte	0x34
	.uleb128 0xc
	.string	"DF_REF_READ_WRITE"
	.sleb128 1
	.uleb128 0xc
	.string	"DF_REF_MODE_CHANGE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x333a
	.string	"insn_info"
	.byte	0xc
	.byte	0xd
	.byte	0x50
	.uleb128 0x7
	.string	"defs"
	.byte	0xd
	.byte	0x51
	.long	0x323e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"uses"
	.byte	0xd
	.byte	0x52
	.long	0x323e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"luid"
	.byte	0xd
	.byte	0x55
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x339f
	.string	"reg_info"
	.byte	0x14
	.byte	0xd
	.byte	0x5e
	.uleb128 0x7
	.string	"defs"
	.byte	0xd
	.byte	0x5f
	.long	0x323e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"uses"
	.byte	0xd
	.byte	0x60
	.long	0x323e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"lifetime"
	.byte	0xd
	.byte	0x61
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"n_defs"
	.byte	0xd
	.byte	0x62
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"n_uses"
	.byte	0xd
	.byte	0x63
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	0x34b4
	.string	"bb_info"
	.byte	0x3c
	.byte	0xd
	.byte	0x69
	.uleb128 0x7
	.string	"rd_kill"
	.byte	0xd
	.byte	0x6b
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"rd_gen"
	.byte	0xd
	.byte	0x6c
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"rd_in"
	.byte	0xd
	.byte	0x6d
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"rd_out"
	.byte	0xd
	.byte	0x6e
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"ru_kill"
	.byte	0xd
	.byte	0x70
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"ru_gen"
	.byte	0xd
	.byte	0x71
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"ru_in"
	.byte	0xd
	.byte	0x72
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"ru_out"
	.byte	0xd
	.byte	0x73
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"lr_def"
	.byte	0xd
	.byte	0x75
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"lr_use"
	.byte	0xd
	.byte	0x76
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"lr_in"
	.byte	0xd
	.byte	0x77
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"lr_out"
	.byte	0xd
	.byte	0x78
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"rd_valid"
	.byte	0xd
	.byte	0x79
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"ru_valid"
	.byte	0xd
	.byte	0x7a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"lr_valid"
	.byte	0xd
	.byte	0x7b
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x4
	.long	0x36e9
	.string	"df"
	.byte	0x74
	.byte	0xd
	.byte	0x80
	.uleb128 0x1d
	.long	.LASF5
	.byte	0xd
	.byte	0x81
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"bbs"
	.byte	0xd
	.byte	0x82
	.long	0x36e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"defs"
	.byte	0xd
	.byte	0x83
	.long	0x36ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"uses"
	.byte	0xd
	.byte	0x84
	.long	0x36ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"reg_def_last"
	.byte	0xd
	.byte	0x85
	.long	0x36ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"regs"
	.byte	0xd
	.byte	0x86
	.long	0x36f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reg_size"
	.byte	0xd
	.byte	0x87
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"insns"
	.byte	0xd
	.byte	0x88
	.long	0x36fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"insn_size"
	.byte	0xd
	.byte	0x89
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"def_id"
	.byte	0xd
	.byte	0x8a
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"def_size"
	.byte	0xd
	.byte	0x8b
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"n_defs"
	.byte	0xd
	.byte	0x8c
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"use_id"
	.byte	0xd
	.byte	0x8d
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"use_size"
	.byte	0xd
	.byte	0x8e
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"n_uses"
	.byte	0xd
	.byte	0x8f
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"n_bbs"
	.byte	0xd
	.byte	0x90
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"n_regs"
	.byte	0xd
	.byte	0x91
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"def_id_save"
	.byte	0xd
	.byte	0x92
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"use_id_save"
	.byte	0xd
	.byte	0x93
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"insns_modified"
	.byte	0xd
	.byte	0x94
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"bbs_modified"
	.byte	0xd
	.byte	0x95
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"all_blocks"
	.byte	0xd
	.byte	0x96
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"dom"
	.byte	0xd
	.byte	0x99
	.long	0x3701
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"dfs_order"
	.byte	0xd
	.byte	0x9a
	.long	0x8bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"rc_order"
	.byte	0xd
	.byte	0x9b
	.long	0x8bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"rts_order"
	.byte	0xd
	.byte	0x9c
	.long	0x8bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"inverse_rc_map"
	.byte	0xd
	.byte	0x9d
	.long	0x8bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"inverse_dfs_map"
	.byte	0xd
	.byte	0x9e
	.long	0x8bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x7
	.string	"inverse_rts_map"
	.byte	0xd
	.byte	0x9f
	.long	0x8bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x339f
	.uleb128 0x3
	.byte	0x4
	.long	0x32b5
	.uleb128 0x3
	.byte	0x4
	.long	0x333a
	.uleb128 0x3
	.byte	0x4
	.long	0x32fa
	.uleb128 0x3
	.byte	0x4
	.long	0x2978
	.uleb128 0x26
	.long	0x3727
	.byte	0x4
	.byte	0xe
	.byte	0x1c
	.uleb128 0x1b
	.string	"web"
	.byte	0xe
	.byte	0x1d
	.long	0x3bb6
	.uleb128 0x1b
	.string	"move"
	.byte	0xe
	.byte	0x1e
	.long	0x3c26
	.byte	0x0
	.uleb128 0x4
	.long	0x3bb6
	.string	"web"
	.byte	0xe8
	.byte	0xe
	.byte	0x1d
	.uleb128 0x7
	.string	"id"
	.byte	0xe
	.byte	0x5d
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"regno"
	.byte	0xe
	.byte	0x60
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"span_deaths"
	.byte	0xe
	.byte	0x63
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"spill_temp"
	.byte	0xe
	.byte	0x6b
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"orig_spill_temp"
	.byte	0xe
	.byte	0x6f
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"spill_cost"
	.byte	0xe
	.byte	0x72
	.long	0x53d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"orig_spill_cost"
	.byte	0xe
	.byte	0x73
	.long	0x53d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"num_aliased"
	.byte	0xe
	.byte	0x76
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"color"
	.byte	0xe
	.byte	0x79
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"old_color"
	.byte	0xe
	.byte	0x7c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"use_my_regs"
	.byte	0xe
	.byte	0x82
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"was_spilled"
	.byte	0xe
	.byte	0x86
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"is_coalesced"
	.byte	0xe
	.byte	0x8c
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"artificial"
	.byte	0xe
	.byte	0x9c
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"crosses_call"
	.byte	0xe
	.byte	0x9f
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"move_related"
	.byte	0xe
	.byte	0xa2
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"live_over_abnormal"
	.byte	0xe
	.byte	0xa5
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"mode_changed"
	.byte	0xe
	.byte	0xa9
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"old_web"
	.byte	0xe
	.byte	0xad
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"in_load"
	.byte	0xe
	.byte	0xb1
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"one_load"
	.byte	0xe
	.byte	0xb7
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"changed"
	.byte	0xe
	.byte	0xbd
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"target_of_spilled_move"
	.byte	0xe
	.byte	0xc3
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"have_orig_conflicts"
	.byte	0xe
	.byte	0xc9
	.long	0x465
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"type"
	.byte	0xe
	.byte	0xcc
	.long	0x3c6e
	.byte	0x4
	.byte	0x5
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"regclass"
	.byte	0xe
	.byte	0xd1
	.long	0x21d
	.byte	0x4
	.byte	0xa
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"add_hardregs"
	.byte	0xe
	.byte	0xd4
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"num_conflicts"
	.byte	0xe
	.byte	0xd7
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"num_uses"
	.byte	0xe
	.byte	0xda
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"num_defs"
	.byte	0xe
	.byte	0xdb
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"orig_x"
	.byte	0xe
	.byte	0xe0
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"parent_web"
	.byte	0xe
	.byte	0xe4
	.long	0x3bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"subreg_next"
	.byte	0xe
	.byte	0xe8
	.long	0x3bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"conflict_list"
	.byte	0xe
	.byte	0xeb
	.long	0x3d57
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"orig_conflict_list"
	.byte	0xe
	.byte	0xf1
	.long	0x3d57
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"useless_conflicts"
	.byte	0xe
	.byte	0xf6
	.long	0x2900
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"usable_regs"
	.byte	0xe
	.byte	0xf9
	.long	0x2840
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"orig_usable_regs"
	.byte	0xe
	.byte	0xfb
	.long	0x2840
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"bias_colors"
	.byte	0xe
	.byte	0xfe
	.long	0x2840
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"prefer_colors"
	.byte	0xe
	.value	0x100
	.long	0x2840
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"num_freedom"
	.byte	0xe
	.value	0x103
	.long	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"reg_rtx"
	.byte	0xe
	.value	0x107
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"stack_slot"
	.byte	0xe
	.value	0x10b
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"last_use_insn"
	.byte	0xe
	.value	0x10f
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xe
	.string	"pattern"
	.byte	0xe
	.value	0x113
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"defs"
	.byte	0xe
	.value	0x117
	.long	0x36ef
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"uses"
	.byte	0xe
	.value	0x118
	.long	0x36ef
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"alias"
	.byte	0xe
	.value	0x11d
	.long	0x3bb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"moves"
	.byte	0xe
	.value	0x121
	.long	0x3d90
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"dlink"
	.byte	0xe
	.value	0x124
	.long	0x3c68
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"temp_refs"
	.byte	0xe
	.value	0x128
	.long	0x323e
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3727
	.uleb128 0x4
	.long	0x3c26
	.string	"move"
	.byte	0x14
	.byte	0xe
	.byte	0x1e
	.uleb128 0x25
	.long	.LASF9
	.byte	0xe
	.value	0x154
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"source_web"
	.byte	0xe
	.value	0x155
	.long	0x3bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"target_web"
	.byte	0xe
	.value	0x156
	.long	0x3bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"type"
	.byte	0xe
	.value	0x157
	.long	0x3ddc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dlink"
	.byte	0xe
	.value	0x158
	.long	0x3c68
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3bbc
	.uleb128 0x4
	.long	0x3c68
	.string	"dlist"
	.byte	0xc
	.byte	0xe
	.byte	0x18
	.uleb128 0x7
	.string	"prev"
	.byte	0xe
	.byte	0x19
	.long	0x3c68
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF11
	.byte	0xe
	.byte	0x1a
	.long	0x3c68
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"value"
	.byte	0xe
	.byte	0x1f
	.long	0x3707
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c2c
	.uleb128 0x17
	.long	0x3d15
	.string	"node_type"
	.byte	0x4
	.byte	0xe
	.byte	0x27
	.uleb128 0xc
	.string	"INITIAL"
	.sleb128 0
	.uleb128 0xc
	.string	"FREE"
	.sleb128 1
	.uleb128 0xc
	.string	"PRECOLORED"
	.sleb128 2
	.uleb128 0xc
	.string	"SIMPLIFY"
	.sleb128 3
	.uleb128 0xc
	.string	"SIMPLIFY_SPILL"
	.sleb128 4
	.uleb128 0xc
	.string	"SIMPLIFY_FAT"
	.sleb128 5
	.uleb128 0xc
	.string	"FREEZE"
	.sleb128 6
	.uleb128 0xc
	.string	"SPILL"
	.sleb128 7
	.uleb128 0xc
	.string	"SELECT"
	.sleb128 8
	.uleb128 0xc
	.string	"SPILLED"
	.sleb128 9
	.uleb128 0xc
	.string	"COALESCED"
	.sleb128 10
	.uleb128 0xc
	.string	"COLORED"
	.sleb128 11
	.uleb128 0xc
	.string	"LAST_NODE_TYPE"
	.sleb128 12
	.byte	0x0
	.uleb128 0x4
	.long	0x3d57
	.string	"conflict_link"
	.byte	0xc
	.byte	0xe
	.byte	0xeb
	.uleb128 0x25
	.long	.LASF11
	.byte	0xe
	.value	0x140
	.long	0x3d57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"t"
	.byte	0xe
	.value	0x143
	.long	0x3bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"sub"
	.byte	0xe
	.value	0x147
	.long	0x3dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d15
	.uleb128 0xd
	.long	0x3d90
	.string	"move_list"
	.byte	0x8
	.byte	0xe
	.value	0x121
	.uleb128 0x25
	.long	.LASF11
	.byte	0xe
	.value	0x15e
	.long	0x3d90
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"move"
	.byte	0xe
	.value	0x15f
	.long	0x3c26
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d5d
	.uleb128 0xd
	.long	0x3dd6
	.string	"sub_conflict"
	.byte	0xc
	.byte	0xe
	.value	0x135
	.uleb128 0x25
	.long	.LASF11
	.byte	0xe
	.value	0x138
	.long	0x3dd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"s"
	.byte	0xe
	.value	0x139
	.long	0x3bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"t"
	.byte	0xe
	.value	0x13a
	.long	0x3bb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d96
	.uleb128 0xb
	.long	0x3e3b
	.string	"move_type"
	.byte	0x4
	.byte	0xe
	.value	0x14c
	.uleb128 0xc
	.string	"WORKLIST"
	.sleb128 0
	.uleb128 0xc
	.string	"MV_COALESCED"
	.sleb128 1
	.uleb128 0xc
	.string	"CONSTRAINED"
	.sleb128 2
	.uleb128 0xc
	.string	"FROZEN"
	.sleb128 3
	.uleb128 0xc
	.string	"ACTIVE"
	.sleb128 4
	.uleb128 0xc
	.string	"LAST_MOVE_TYPE"
	.sleb128 5
	.byte	0x0
	.uleb128 0x27
	.long	0x3ea0
	.byte	0x1
	.string	"ra_debug_msg"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x28
	.string	"level"
	.byte	0x1
	.byte	0x31
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"format"
	.byte	0x1
	.byte	0x31
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.uleb128 0x29
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.byte	0x33
	.long	0x4b7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.long	.LBB3
	.long	.LBE3
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x3efc
	.string	"ra_print_rtx_1op"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2d
	.long	.LASF15
	.byte	0x1
	.byte	0x48
	.long	0x3efc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.byte	0x49
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.byte	0x4b
	.long	0xb11
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"op0"
	.byte	0x1
	.byte	0x4c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59b
	.uleb128 0x2c
	.long	0x3f8d
	.string	"ra_print_rtx_2op"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2d
	.long	.LASF15
	.byte	0x1
	.byte	0x6c
	.long	0x3efc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.byte	0x6d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"infix"
	.byte	0x1
	.byte	0x6f
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"opname"
	.byte	0x1
	.byte	0x70
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.byte	0x71
	.long	0xb11
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"op0"
	.byte	0x1
	.byte	0x72
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"op1"
	.byte	0x1
	.byte	0x73
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x4005
	.string	"ra_print_rtx_3op"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2d
	.long	.LASF15
	.byte	0x1
	.byte	0xad
	.long	0x3efc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.byte	0xae
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.byte	0xb0
	.long	0xb11
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"op0"
	.byte	0x1
	.byte	0xb1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"op1"
	.byte	0x1
	.byte	0xb2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"op2"
	.byte	0x1
	.byte	0xb3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2c
	.long	0x415f
	.string	"ra_print_rtx_object"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2d
	.long	.LASF15
	.byte	0x1
	.byte	0xd2
	.long	0x3efc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.byte	0xd3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.byte	0xd5
	.long	0xb11
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"mode"
	.byte	0x1
	.byte	0xd6
	.long	0x8c8
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	0x409c
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0xde
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"num"
	.byte	0x1
	.byte	0xde
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.string	"fmt"
	.byte	0x1
	.byte	0xdf
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2f
	.long	0x40e0
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2a
	.string	"regno"
	.byte	0x1
	.byte	0xfb
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0xfe
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"nregs"
	.byte	0x1
	.byte	0xfe
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x4145
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x30
	.string	"sub"
	.byte	0x1
	.value	0x113
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"ofs"
	.byte	0x1
	.value	0x114
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x30
	.string	"regno"
	.byte	0x1
	.value	0x118
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x119
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"nregs"
	.byte	0x1
	.value	0x119
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x30
	.string	"sub"
	.byte	0x1
	.value	0x142
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x4252
	.byte	0x1
	.string	"ra_print_rtx"
	.byte	0x1
	.value	0x15d
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x32
	.long	.LASF15
	.byte	0x1
	.value	0x15a
	.long	0x3efc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x15b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"with_pn"
	.byte	0x1
	.value	0x15c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x15e
	.long	0xb11
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"class"
	.byte	0x1
	.value	0x15f
	.long	0x20e
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x30
	.string	"unhandled"
	.byte	0x1
	.value	0x160
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	0x4202
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x30
	.string	"ln"
	.byte	0x1
	.value	0x18b
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	0x421d
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x1a1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	0x4238
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x1ac
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.string	"__FUNCTION__"
	.long	0x49fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10685
	.byte	0x0
	.uleb128 0x31
	.long	0x42a9
	.byte	0x1
	.string	"ra_print_rtx_top"
	.byte	0x1
	.value	0x20a
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x32
	.long	.LASF15
	.byte	0x1
	.value	0x207
	.long	0x3efc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x208
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"with_pn"
	.byte	0x1
	.value	0x209
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0x42da
	.byte	0x1
	.string	"ra_debug_rtx"
	.byte	0x1
	.value	0x214
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x213
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x432a
	.byte	0x1
	.string	"ra_debug_bbi"
	.byte	0x1
	.value	0x21e
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x33
	.string	"bbi"
	.byte	0x1
	.value	0x21d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x21f
	.long	0x318e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF9
	.byte	0x1
	.value	0x220
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x438a
	.byte	0x1
	.string	"ra_debug_insns"
	.byte	0x1
	.value	0x231
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x32
	.long	.LASF9
	.byte	0x1
	.value	0x22f
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"num"
	.byte	0x1
	.value	0x230
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x232
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF4
	.byte	0x1
	.value	0x232
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x4404
	.byte	0x1
	.string	"ra_print_rtl_with_bb"
	.byte	0x1
	.value	0x246
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x32
	.long	.LASF15
	.byte	0x1
	.value	0x244
	.long	0x3efc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF9
	.byte	0x1
	.value	0x245
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"last_bb"
	.byte	0x1
	.value	0x247
	.long	0x318e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x247
	.long	0x318e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.value	0x248
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x4449
	.byte	0x1
	.string	"dump_number_seen"
	.byte	0x1
	.value	0x276
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.value	0x278
	.long	0x4449
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x279
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x10
	.long	0x4459
	.long	0x216
	.uleb128 0x11
	.long	0x47c
	.byte	0x10
	.byte	0x0
	.uleb128 0x31
	.long	0x451b
	.byte	0x1
	.string	"dump_igraph"
	.byte	0x1
	.value	0x291
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x33
	.string	"df"
	.byte	0x1
	.value	0x290
	.long	0x451b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"ml"
	.byte	0x1
	.value	0x292
	.long	0x3d90
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"def1"
	.byte	0x1
	.value	0x293
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"def2"
	.byte	0x1
	.value	0x293
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.value	0x294
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"num2"
	.byte	0x1
	.value	0x295
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x296
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	0x4501
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x30
	.string	"num1"
	.byte	0x1
	.value	0x29c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x29
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x30
	.string	"web"
	.byte	0x1
	.value	0x2c2
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x34b4
	.uleb128 0x31
	.long	0x45d2
	.byte	0x1
	.string	"dump_igraph_machine"
	.byte	0x1
	.value	0x2e6
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x2e7
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x30
	.string	"web"
	.byte	0x1
	.value	0x2ef
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"cl"
	.byte	0x1
	.value	0x2f0
	.long	0x3d57
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x2f1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"numc"
	.byte	0x1
	.value	0x2f2
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"col"
	.byte	0x1
	.value	0x2f3
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x30
	.string	"u"
	.byte	0x1
	.value	0x303
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.value	0x304
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x464b
	.byte	0x1
	.string	"dump_constraints"
	.byte	0x1
	.value	0x322
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x34
	.long	.LASF9
	.byte	0x1
	.value	0x323
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x324
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x32e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"uid"
	.byte	0x1
	.value	0x32f
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"o"
	.byte	0x1
	.value	0x330
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x46c8
	.byte	0x1
	.string	"dump_graph_cost"
	.byte	0x1
	.value	0x359
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x33
	.string	"level"
	.byte	0x1
	.value	0x357
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"msg"
	.byte	0x1
	.value	0x358
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x35a
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"cost"
	.byte	0x1
	.value	0x35b
	.long	0x53d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x30
	.string	"web"
	.byte	0x1
	.value	0x362
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x4711
	.byte	0x1
	.string	"dump_ra"
	.byte	0x1
	.value	0x370
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x33
	.string	"df"
	.byte	0x1
	.value	0x36f
	.long	0x451b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"web"
	.byte	0x1
	.value	0x371
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x372
	.long	0x3c68
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0x4885
	.byte	0x1
	.string	"dump_static_insn_cost"
	.byte	0x1
	.value	0x395
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x32
	.long	.LASF15
	.byte	0x1
	.value	0x392
	.long	0x3efc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"message"
	.byte	0x1
	.value	0x393
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"prefix"
	.byte	0x1
	.value	0x394
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.long	0x479f
	.string	"cost"
	.byte	0xc
	.byte	0x1
	.value	0x397
	.uleb128 0xe
	.string	"cost"
	.byte	0x1
	.value	0x398
	.long	0x53d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x399
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x39b
	.long	0x318e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"load"
	.byte	0x1
	.value	0x39c
	.long	0x4771
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"store"
	.byte	0x1
	.value	0x39c
	.long	0x4771
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"regcopy"
	.byte	0x1
	.value	0x39c
	.long	0x4771
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.string	"selfcopy"
	.byte	0x1
	.value	0x39c
	.long	0x4771
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"overall"
	.byte	0x1
	.value	0x39c
	.long	0x4771
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x30
	.string	"block_cost"
	.byte	0x1
	.value	0x3a8
	.long	0x53d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF9
	.byte	0x1
	.value	0x3a9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"set"
	.byte	0x1
	.value	0x3a9
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x30
	.string	"src"
	.byte	0x1
	.value	0x3b1
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"dest"
	.byte	0x1
	.value	0x3b2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"pcost"
	.byte	0x1
	.value	0x3b3
	.long	0x4885
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4771
	.uleb128 0x36
	.long	0x48d6
	.byte	0x1
	.string	"web_conflicts_p"
	.byte	0x1
	.value	0x3f1
	.byte	0x1
	.long	0x216
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x33
	.string	"web1"
	.byte	0x1
	.value	0x3ef
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"web2"
	.byte	0x1
	.value	0x3f0
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.long	0x4918
	.byte	0x1
	.string	"dump_web_insns"
	.byte	0x1
	.value	0x403
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x33
	.string	"web"
	.byte	0x1
	.value	0x402
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x404
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0x499f
	.byte	0x1
	.string	"dump_web_conflicts"
	.byte	0x1
	.value	0x41e
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x33
	.string	"web"
	.byte	0x1
	.value	0x41d
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.value	0x41f
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"def2"
	.byte	0x1
	.value	0x420
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x30
	.string	"wl"
	.byte	0x1
	.value	0x43d
	.long	0x3d57
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x30
	.string	"w"
	.byte	0x1
	.value	0x442
	.long	0x3bb6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x49e5
	.byte	0x1
	.string	"debug_hard_reg_set"
	.byte	0x1
	.value	0x452
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x33
	.string	"set"
	.byte	0x1
	.value	0x451
	.long	0x49e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x453
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2827
	.uleb128 0x10
	.long	0x49fb
	.long	0x20e
	.uleb128 0x11
	.long	0x47c
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0x49eb
	.uleb128 0x10
	.long	0x4a10
	.long	0x203
	.uleb128 0x11
	.long	0x47c
	.byte	0x18
	.byte	0x0
	.uleb128 0x2a
	.string	"reg_class_names"
	.byte	0x1
	.byte	0x2b
	.long	0x4a2d
	.byte	0x5
	.byte	0x3
	.long	reg_class_names
	.uleb128 0x9
	.long	0x4a00
	.uleb128 0x37
	.string	"stderr"
	.byte	0x3
	.byte	0x90
	.long	0x88f
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4a52
	.long	0x203
	.uleb128 0x11
	.long	0x47c
	.byte	0x35
	.byte	0x0
	.uleb128 0x37
	.string	"mode_name"
	.byte	0x9
	.byte	0x29
	.long	0x4a65
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4a42
	.uleb128 0x10
	.long	0x4a7a
	.long	0x4d4
	.uleb128 0x11
	.long	0x47c
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_length"
	.byte	0x8
	.byte	0x3c
	.long	0x4a8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4a6a
	.uleb128 0x10
	.long	0x4aa3
	.long	0x203
	.uleb128 0x11
	.long	0x47c
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_name"
	.byte	0x8
	.byte	0x3f
	.long	0x4ab5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4a93
	.uleb128 0x37
	.string	"rtx_format"
	.byte	0x8
	.byte	0x42
	.long	0x4ace
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4a93
	.uleb128 0x10
	.long	0x4ae3
	.long	0x20e
	.uleb128 0x11
	.long	0x47c
	.byte	0xa2
	.byte	0x0
	.uleb128 0x37
	.string	"rtx_class"
	.byte	0x8
	.byte	0x45
	.long	0x4af6
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4ad3
	.uleb128 0x10
	.long	0x4b0b
	.long	0x203
	.uleb128 0x11
	.long	0x47c
	.byte	0x13
	.byte	0x0
	.uleb128 0x38
	.string	"note_insn_name"
	.byte	0x8
	.value	0x380
	.long	0x4b24
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4afb
	.uleb128 0x37
	.string	"which_alternative"
	.byte	0x11
	.byte	0x96
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF6
	.byte	0x11
	.byte	0xd0
	.long	0x177f
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4b5c
	.long	0x19b6
	.uleb128 0x3a
	.byte	0x0
	.uleb128 0x39
	.long	.LASF10
	.byte	0x11
	.byte	0xfe
	.long	0x4b69
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x4b51
	.uleb128 0x38
	.string	"cfun"
	.byte	0x12
	.value	0x202
	.long	0x27bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4b8d
	.long	0x203
	.uleb128 0x11
	.long	0x47c
	.byte	0xaf
	.byte	0x0
	.uleb128 0x38
	.string	"reg_names"
	.byte	0x10
	.value	0x1e9
	.long	0x4b7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"basic_block_info"
	.byte	0xb
	.byte	0xfe
	.long	0x2e28
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4bcb
	.long	0x1590
	.uleb128 0x11
	.long	0x47c
	.byte	0x1
	.byte	0x0
	.uleb128 0x38
	.string	"entry_exit_blocks"
	.byte	0xb
	.value	0x139
	.long	0x4bbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"rtl_dump_file"
	.byte	0x14
	.value	0x1b8
	.long	0x3efc
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"igraph"
	.byte	0xe
	.value	0x174
	.long	0x2978
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"num_webs"
	.byte	0xe
	.value	0x18c
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"num_subwebs"
	.byte	0xe
	.value	0x18e
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"id2web"
	.byte	0xe
	.value	0x193
	.long	0x4c4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3bb6
	.uleb128 0x38
	.string	"wl_moves"
	.byte	0xe
	.value	0x19e
	.long	0x3d90
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"ra_reg_renumber"
	.byte	0xe
	.value	0x1a4
	.long	0x4c7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x51f
	.uleb128 0x38
	.string	"ra_max_regno"
	.byte	0xe
	.value	0x1a7
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"max_normal_pseudo"
	.byte	0xe
	.value	0x1b9
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"number_seen"
	.byte	0xe
	.value	0x1c8
	.long	0x8bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4cdc
	.long	0x3c68
	.uleb128 0x11
	.long	0x47c
	.byte	0xb
	.byte	0x0
	.uleb128 0x38
	.string	"web_lists"
	.byte	0xe
	.value	0x1cb
	.long	0x4ccc
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"debug_new_regalloc"
	.byte	0xe
	.value	0x215
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"flag_ra_dump_notes"
	.byte	0xe
	.value	0x233
	.long	0x216
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
	.uleb128 0x6
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x4
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x174
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4d2b
	.long	0x3e3b
	.string	"ra_debug_msg"
	.long	0x415f
	.string	"ra_print_rtx"
	.long	0x4252
	.string	"ra_print_rtx_top"
	.long	0x42a9
	.string	"ra_debug_rtx"
	.long	0x42da
	.string	"ra_debug_bbi"
	.long	0x432a
	.string	"ra_debug_insns"
	.long	0x438a
	.string	"ra_print_rtl_with_bb"
	.long	0x4404
	.string	"dump_number_seen"
	.long	0x4459
	.string	"dump_igraph"
	.long	0x4521
	.string	"dump_igraph_machine"
	.long	0x45d2
	.string	"dump_constraints"
	.long	0x464b
	.string	"dump_graph_cost"
	.long	0x46c8
	.string	"dump_ra"
	.long	0x4711
	.string	"dump_static_insn_cost"
	.long	0x488b
	.string	"web_conflicts_p"
	.long	0x48d6
	.string	"dump_web_insns"
	.long	0x4918
	.string	"dump_web_conflicts"
	.long	0x499f
	.string	"debug_hard_reg_set"
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
	.string	"next"
.LASF10:
	.string	"insn_data"
.LASF3:
	.string	"mem_attrs"
.LASF0:
	.string	"code"
.LASF15:
	.string	"file"
.LASF8:
	.string	"n_alternatives"
.LASF9:
	.string	"insn"
.LASF6:
	.string	"recog_data"
.LASF12:
	.string	"sequence_stack"
.LASF7:
	.string	"n_operands"
.LASF4:
	.string	"count"
.LASF2:
	.string	"_IO_FILE"
.LASF13:
	.string	"sequence_rtl_expr"
.LASF14:
	.string	"function_frequency"
.LASF1:
	.string	"unsigned int"
.LASF5:
	.string	"flags"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
