	.file	"resource.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	target_hash_table
	.comm	target_hash_table,4,4
	.type	update_live_status, @function
update_live_status:
.LFB15:
	.file 1 "../../../kgccfe/gnu/resource.c"
	.loc 1 94 0
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
	subl	$76, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 98 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L17
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L2
	.loc 1 100 0
	jmp	.L17
.L2:
	.loc 1 102 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L7
	.loc 1 103 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, -28(%ebp)
	jmp	.L9
.L7:
	.loc 1 105 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L9:
	.loc 1 107 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 109 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L10
	.loc 1 110 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L12
.L13:
	.loc 1 111 0
	movl	-20(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	current_live_regs@GOTOFF(%ebx,%eax,8), %edx
	movl	4+current_live_regs@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-20(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L20
	movl	%eax, %edx
	xorl	%eax, %eax
.L20:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	-76(%ebp), %ecx
	movl	%eax, current_live_regs@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+current_live_regs@GOTOFF(%ebx,%ecx,8)
	.loc 1 110 0
	addl	$1, -20(%ebp)
.L12:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L13
	jmp	.L17
.L10:
	.loc 1 113 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L15
.L16:
	.loc 1 115 0
	movl	-20(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	current_live_regs@GOTOFF(%ebx,%eax,8), %edx
	movl	4+current_live_regs@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-20(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L18
	movl	%esi, %edi
	xorl	%esi, %esi
.L18:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, current_live_regs@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+current_live_regs@GOTOFF(%ebx,%ecx,8)
	.loc 1 116 0
	movl	-20(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	pending_dead_regs@GOTOFF(%ebx,%eax,8), %edx
	movl	4+pending_dead_regs@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-20(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L19
	movl	%eax, %edx
	xorl	%eax, %eax
.L19:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, pending_dead_regs@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+pending_dead_regs@GOTOFF(%ebx,%ecx,8)
	.loc 1 113 0
	addl	$1, -20(%ebp)
.L15:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L16
.L17:
	.loc 1 118 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	update_live_status, .-update_live_status
	.type	find_basic_block, @function
find_basic_block:
.LFB16:
	.loc 1 135 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$36, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 140 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, 8(%ebp)
	.loc 1 141 0
	jmp	.L22
.L23:
	.loc 1 142 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, 8(%ebp)
	subl	$1, 12(%ebp)
.L22:
	.loc 1 141 0
	cmpl	$0, 8(%ebp)
	je	.L24
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L24
	cmpl	$0, 12(%ebp)
	jne	.L23
.L24:
	.loc 1 146 0
	cmpl	$0, 12(%ebp)
	jne	.L27
	.loc 1 147 0
	movl	$-1, -24(%ebp)
	jmp	.L29
.L27:
	.loc 1 150 0
	cmpl	$0, 8(%ebp)
	jne	.L30
	.loc 1 151 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L29
.L30:
	.loc 1 155 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, 8(%ebp)
	.loc 1 156 0
	jmp	.L32
.L33:
	.loc 1 159 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L34
.L35:
	.loc 1 160 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L36
	.loc 1 161 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L29
.L36:
	.loc 1 159 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L34:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L35
	.loc 1 157 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, 8(%ebp)
.L32:
	.loc 1 156 0
	cmpl	$0, 8(%ebp)
	je	.L39
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L33
.L39:
	.loc 1 164 0
	movl	$-1, -24(%ebp)
.L29:
	movl	-24(%ebp), %eax
	.loc 1 165 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	find_basic_block, .-find_basic_block
	.type	next_insn_no_annul, @function
next_insn_no_annul:
.LFB17:
	.loc 1 173 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	subl	$16, %esp
.LCFI12:
	.loc 1 174 0
	cmpl	$0, 8(%ebp)
	je	.L43
	.loc 1 178 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L45
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L45
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L48
.L45:
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L48
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L48
.LBB2:
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 185 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -4(%ebp)
	.loc 1 187 0
	jmp	.L51
.L52:
	.loc 1 190 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 191 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 192 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -4(%ebp)
.L51:
	.loc 1 187 0
	cmpl	$42, -4(%ebp)
	je	.L53
	cmpl	$43, -4(%ebp)
	je	.L53
	cmpl	$44, -4(%ebp)
	jne	.L48
.L53:
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L52
.L48:
.LBE2:
	.loc 1 196 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 197 0
	cmpl	$0, 8(%ebp)
	je	.L43
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L43
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L43
	.loc 1 199 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L43:
	.loc 1 202 0
	movl	8(%ebp), %eax
	.loc 1 203 0
	leave
	ret
.LFE17:
	.size	next_insn_no_annul, .-next_insn_no_annul
	.section	.rodata
	.type	__FUNCTION__.10487, @object
	.size	__FUNCTION__.10487, 26
__FUNCTION__.10487:
	.string	"mark_referenced_resources"
	.align 4
.LC0:
	.string	"../../../kgccfe/gnu/resource.c"
	.text
.globl mark_referenced_resources
	.type	mark_referenced_resources, @function
mark_referenced_resources:
.LFB18:
	.loc 1 215 0
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
	subl	$156, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 216 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -80(%ebp)
	.loc 1 223 0
	movl	-80(%ebp), %eax
	subl	$42, %eax
	movl	%eax, -152(%ebp)
	cmpl	$37, -152(%ebp)
	ja	.L61
	movl	-152(%ebp), %eax
	sall	$2, %eax
	movl	.L75@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L75:
	.long	.L62@GOTOFF
	.long	.L62@GOTOFF
	.long	.L63@GOTOFF
	.long	.L61@GOTOFF
	.long	.L61@GOTOFF
	.long	.L61@GOTOFF
	.long	.L61@GOTOFF
	.long	.L61@GOTOFF
	.long	.L64@GOTOFF
	.long	.L65@GOTOFF
	.long	.L61@GOTOFF
	.long	.L64@GOTOFF
	.long	.L61@GOTOFF
	.long	.L61@GOTOFF
	.long	.L61@GOTOFF
	.long	.L66@GOTOFF
	.long	.L61@GOTOFF
	.long	.L136@GOTOFF
	.long	.L68@GOTOFF
	.long	.L61@GOTOFF
	.long	.L69@GOTOFF
	.long	.L61@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L61@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L61@GOTOFF
	.long	.L71@GOTOFF
	.long	.L61@GOTOFF
	.long	.L72@GOTOFF
	.long	.L61@GOTOFF
	.long	.L61@GOTOFF
	.long	.L73@GOTOFF
	.long	.L136@GOTOFF
	.long	.L136@GOTOFF
	.long	.L74@GOTOFF
	.text
.L72:
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L77
	.loc 1 236 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	jmp	.L136
.L77:
.LBB3:
	.loc 1 239 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, -60(%ebp)
	.loc 1 241 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 243 0
	cmpl	$176, -56(%ebp)
	jbe	.L80
	.loc 1 244 0
	leal	__FUNCTION__.10487@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$244, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L80:
	.loc 1 245 0
	movl	-60(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L82
.L83:
	.loc 1 246 0
	movl	-68(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -148(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	%esi, -144(%ebp)
	movl	%edi, -140(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L139
	movl	%esi, %edi
	xorl	%esi, %esi
.L139:
	movl	-144(%ebp), %eax
	orl	%esi, %eax
	movl	-140(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-148(%ebp), %edi
	movl	%eax, 4(%ecx,%edi,8)
	movl	%edx, 8(%ecx,%edi,8)
	.loc 1 245 0
	addl	$1, -68(%ebp)
.L82:
	movl	-68(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jb	.L83
	.loc 1 248 0
	jmp	.L136
.L71:
.LBE3:
.LBB4:
	.loc 1 252 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 254 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 256 0
	cmpl	$176, -48(%ebp)
	jbe	.L84
	.loc 1 257 0
	leal	__FUNCTION__.10487@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$257, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L84:
	.loc 1 258 0
	movl	-52(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L86
.L87:
	.loc 1 259 0
	movl	-68(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -132(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L138
	movl	%esi, %edi
	xorl	%esi, %esi
.L138:
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-132(%ebp), %edi
	movl	%eax, 4(%ecx,%edi,8)
	movl	%edx, 8(%ecx,%edi,8)
	.loc 1 258 0
	addl	$1, -68(%ebp)
.L86:
	movl	-68(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jb	.L87
	.loc 1 261 0
	jmp	.L136
.L73:
.LBE4:
	.loc 1 266 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L89
	.loc 1 267 0
	movl	12(%ebp), %eax
	movb	$1, 1(%eax)
	jmp	.L91
.L89:
	.loc 1 269 0
	movl	12(%ebp), %eax
	movb	$1, (%eax)
.L91:
	.loc 1 270 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 273 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 274 0
	jmp	.L136
.L74:
	.loc 1 277 0
	movl	12(%ebp), %eax
	movb	$1, 3(%eax)
	.loc 1 278 0
	jmp	.L136
.L64:
	.loc 1 283 0
	movl	12(%ebp), %eax
	movb	$1, 2(%eax)
	.loc 1 284 0
	jmp	.L136
.L69:
	.loc 1 287 0
	movl	12(%ebp), %eax
	movb	$1, 2(%eax)
	.loc 1 288 0
	jmp	.L61
.L65:
	.loc 1 291 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 298 0
	movl	$0, -76(%ebp)
	jmp	.L92
.L93:
	.loc 1 299 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 298 0
	addl	$1, -76(%ebp)
.L92:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	-76(%ebp), %eax
	jg	.L93
	.loc 1 300 0
	jmp	.L136
.L68:
	.loc 1 305 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 306 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 307 0
	jmp	.L136
.L66:
	.loc 1 314 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 316 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 317 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L95
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L95
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L98
.L95:
	.loc 1 320 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 317 0
	jmp	.L99
.L98:
	.loc 1 321 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L99
	.loc 1 322 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L99:
	.loc 1 323 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L136
	.loc 1 324 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 325 0
	jmp	.L136
.L63:
	.loc 1 331 0
	cmpl	$0, 16(%ebp)
	je	.L62
.LBB5:
	.loc 1 340 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 341 0
	movl	$0, -40(%ebp)
	.loc 1 342 0
	movl	$0, -36(%ebp)
	.loc 1 346 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L104
	.loc 1 348 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 349 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 350 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	je	.L104
	.loc 1 351 0
	leal	__FUNCTION__.10487@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$351, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L104:
	.loc 1 354 0
	movl	12(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 355 0
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	orl	$536870912, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	12(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 356 0
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L107
	.loc 1 358 0
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	%esi, %eax
	orl	$2, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	12(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 360 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L109
	movl	$131072, -112(%ebp)
	movl	$0, -108(%ebp)
	jmp	.L111
.L109:
	movl	$1073741824, -112(%ebp)
	movl	$0, -108(%ebp)
.L111:
	movl	-120(%ebp), %eax
	orl	-112(%ebp), %eax
	movl	-116(%ebp), %edx
	orl	-108(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
.L107:
	.loc 1 364 0
	movl	$0, -32(%ebp)
	jmp	.L112
.L113:
	.loc 1 365 0
	movl	-32(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L114
	.loc 1 366 0
	movl	-32(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -100(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-32(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L137
	movl	%esi, %edi
	xorl	%esi, %esi
.L137:
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-100(%ebp), %edi
	movl	%eax, 4(%ecx,%edi,8)
	movl	%edx, 8(%ecx,%edi,8)
.L114:
	.loc 1 364 0
	addl	$1, -32(%ebp)
.L112:
	cmpl	$175, -32(%ebp)
	jle	.L113
	.loc 1 376 0
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L117
.LBB6:
	.loc 1 377 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
.L117:
.LBE6:
.LBB7:
	.loc 1 382 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 383 0
	jmp	.L119
.L120:
	.loc 1 385 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L121
	.loc 1 387 0
	movl	$1, -32(%ebp)
	jmp	.L123
.L124:
.LBB8:
	.loc 1 389 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 390 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L125
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L127
.L125:
.LBE8:
	.loc 1 387 0
	addl	$1, -32(%ebp)
.L123:
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L124
.L127:
	.loc 1 395 0
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L121
	.loc 1 396 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
.L121:
	.loc 1 384 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L119:
	.loc 1 383 0
	cmpl	$0, -24(%ebp)
	jne	.L120
.L62:
.LBE7:
.LBE5:
	.loc 1 414 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 415 0
	jmp	.L136
.L61:
	.loc 1 422 0
	movl	-80(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -64(%ebp)
	.loc 1 423 0
	movl	$0, -76(%ebp)
	jmp	.L129
.L130:
	.loc 1 424 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%ebp)
	addl	$1, -64(%ebp)
	cmpl	$69, -84(%ebp)
	je	.L132
	cmpl	$101, -84(%ebp)
	je	.L133
	jmp	.L131
.L133:
	.loc 1 427 0
	movl	-76(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 428 0
	jmp	.L131
.L132:
	.loc 1 431 0
	movl	$0, -72(%ebp)
	jmp	.L134
.L135:
	.loc 1 432 0
	movl	-76(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-72(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 431 0
	addl	$1, -72(%ebp)
.L134:
	movl	-76(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-72(%ebp), %eax
	jg	.L135
.L131:
	.loc 1 423 0
	addl	$1, -76(%ebp)
.L129:
	movl	-80(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-76(%ebp), %eax
	jg	.L130
.L136:
	.loc 1 436 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	mark_referenced_resources, .-mark_referenced_resources
	.type	find_dead_or_set_registers, @function
find_dead_or_set_registers:
.LFB19:
	.loc 1 450 0
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
	subl	$572, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 453 0
	movl	$0, -136(%ebp)
	.loc 1 456 0
	movl	8(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L141
.L142:
.LBB9:
	.loc 1 458 0
	movl	-144(%ebp), %eax
	movl	%eax, -128(%ebp)
	.loc 1 460 0
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 466 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	jne	.L143
	.loc 1 469 0
	movl	-144(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -500(%ebp)
	cmpl	$45, -500(%ebp)
	je	.L150
	cmpl	$45, -500(%ebp)
	ja	.L149
	cmpl	$42, -500(%ebp)
	je	.L146
	jmp	.L145
.L149:
	cmpl	$46, -500(%ebp)
	je	.L148
	cmpl	$47, -500(%ebp)
	je	.L150
	jmp	.L145
.L148:
.LBB10:
	.loc 1 474 0
	leal	pending_dead_regs@GOTOFF(%ebx), %eax
	movl	%eax, -124(%ebp)
	leal	52(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -120(%ebp)
	movl	-124(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -496(%ebp)
	movl	%ecx, -492(%ebp)
	movl	-120(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-496(%ebp), %eax
	andl	%esi, %eax
	movl	-492(%ebp), %edx
	andl	%edi, %edx
	movl	-124(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-124(%ebp), %ecx
	addl	$8, %ecx
	movl	-124(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -488(%ebp)
	movl	%edi, -484(%ebp)
	movl	-120(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-488(%ebp), %eax
	andl	%esi, %eax
	movl	-484(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-124(%ebp), %ecx
	addl	$16, %ecx
	movl	-124(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -480(%ebp)
	movl	%edi, -476(%ebp)
	movl	-120(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-480(%ebp), %eax
	andl	%esi, %eax
	movl	-476(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE10:
.LBB11:
	.loc 1 475 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -116(%ebp)
	leal	pending_dead_regs@GOTOFF(%ebx), %eax
	movl	%eax, -112(%ebp)
	movl	-116(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -472(%ebp)
	movl	%ecx, -468(%ebp)
	movl	-112(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-472(%ebp), %eax
	andl	%esi, %eax
	movl	-468(%ebp), %edx
	andl	%edi, %edx
	movl	-116(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-116(%ebp), %ecx
	addl	$8, %ecx
	movl	-116(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -464(%ebp)
	movl	%edi, -460(%ebp)
	movl	-112(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-464(%ebp), %eax
	andl	%esi, %eax
	movl	-460(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-116(%ebp), %ecx
	addl	$16, %ecx
	movl	-116(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -456(%ebp)
	movl	%edi, -452(%ebp)
	movl	-112(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-456(%ebp), %eax
	andl	%esi, %eax
	movl	-452(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE11:
.LBB12:
	.loc 1 476 0
	leal	pending_dead_regs@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-108(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-108(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 478 0
	jmp	.L150
.L146:
.LBE12:
	.loc 1 485 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L151
	.loc 1 490 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L150
	.loc 1 491 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 495 0
	jmp	.L150
.L151:
	.loc 1 497 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L150
	.loc 1 499 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L145
	.loc 1 503 0
	movl	$0, -132(%ebp)
	jmp	.L157
.L158:
	.loc 1 505 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -128(%ebp)
	.loc 1 506 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L145
	.loc 1 503 0
	addl	$1, -132(%ebp)
.L157:
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-132(%ebp), %eax
	jg	.L158
.L145:
	.loc 1 515 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L160
	.loc 1 517 0
	cmpl	$9, 20(%ebp)
	setle	%al
	addl	$1, 20(%ebp)
	testb	%al, %al
	je	.L162
	.loc 1 519 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	jne	.L164
	movl	-128(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$61, %ax
	jne	.L166
.L164:
	.loc 1 522 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 523 0
	cmpl	$0, -136(%ebp)
	jne	.L160
	.loc 1 525 0
	movl	-144(%ebp), %eax
	movl	%eax, -136(%ebp)
	.loc 1 526 0
	cmpl	$0, 16(%ebp)
	je	.L160
	.loc 1 527 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L160
.L166:
	.loc 1 530 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L143
.LBB13:
	.loc 1 543 0
	addl	$4, 20(%ebp)
	.loc 1 544 0
	cmpl	$9, 20(%ebp)
	jg	.L143
	.loc 1 547 0
	movl	$1, 8(%esp)
	leal	52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 557 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L172
	movl	-128(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L172
	.loc 1 560 0
	movl	$1, -132(%ebp)
	jmp	.L175
.L176:
	.loc 1 561 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	sete	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 560 0
	addl	$1, -132(%ebp)
.L175:
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-132(%ebp), %eax
	jg	.L176
	.loc 1 564 0
	movl	24(%ebp), %eax
	movl	%eax, -196(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -192(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -188(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -180(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -172(%ebp)
	.loc 1 565 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-196(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 568 0
	movl	$1, -132(%ebp)
	jmp	.L178
.L179:
	.loc 1 569 0
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %edx
	movl	-132(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	sete	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	3(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 568 0
	addl	$1, -132(%ebp)
.L178:
	movl	-144(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-132(%ebp), %eax
	jg	.L179
	.loc 1 572 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 557 0
	jmp	.L181
.L172:
	.loc 1 576 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 577 0
	movl	24(%ebp), %eax
	movl	%eax, -196(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -192(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -188(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -180(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -176(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -172(%ebp)
.L181:
	.loc 1 580 0
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -224(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -220(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -216(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -212(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -208(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -204(%ebp)
	movl	24(%edx), %eax
	movl	%eax, -200(%ebp)
.LBB14:
	.loc 1 581 0
	leal	-168(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	-196(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-104(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-104(%ebp), %ecx
	addl	$8, %ecx
	movl	-100(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-104(%ebp), %ecx
	addl	$16, %ecx
	movl	-100(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE14:
.LBB15:
	.loc 1 582 0
	leal	-168(%ebp), %eax
	movl	%eax, -96(%ebp)
	leal	52(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -448(%ebp)
	movl	%ecx, -444(%ebp)
	movl	-92(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-448(%ebp), %eax
	andl	%esi, %eax
	movl	-444(%ebp), %edx
	andl	%edi, %edx
	movl	-96(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-96(%ebp), %ecx
	addl	$8, %ecx
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -440(%ebp)
	movl	%edi, -436(%ebp)
	movl	-92(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-440(%ebp), %eax
	andl	%esi, %eax
	movl	-436(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-96(%ebp), %ecx
	addl	$16, %ecx
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -432(%ebp)
	movl	%edi, -428(%ebp)
	movl	-92(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-432(%ebp), %eax
	andl	%esi, %eax
	movl	-428(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE15:
.LBB16:
	.loc 1 583 0
	leal	-224(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -88(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-88(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -424(%ebp)
	movl	%ecx, -420(%ebp)
	movl	-84(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-424(%ebp), %eax
	andl	%esi, %eax
	movl	-420(%ebp), %edx
	andl	%edi, %edx
	movl	-88(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-88(%ebp), %ecx
	addl	$8, %ecx
	movl	-88(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -416(%ebp)
	movl	%edi, -412(%ebp)
	movl	-84(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-416(%ebp), %eax
	andl	%esi, %eax
	movl	-412(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-88(%ebp), %ecx
	addl	$16, %ecx
	movl	-88(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -408(%ebp)
	movl	%edi, -404(%ebp)
	movl	-84(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-408(%ebp), %eax
	andl	%esi, %eax
	movl	-404(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE16:
	.loc 1 585 0
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -252(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -248(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -244(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -240(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -236(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -232(%ebp)
	movl	24(%edx), %eax
	movl	%eax, -228(%ebp)
.LBB17:
	.loc 1 586 0
	leal	-168(%ebp), %eax
	movl	%eax, -80(%ebp)
	leal	24(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-80(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-80(%ebp), %ecx
	addl	$8, %ecx
	movl	-76(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-80(%ebp), %ecx
	addl	$16, %ecx
	movl	-76(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE17:
.LBB18:
	.loc 1 587 0
	leal	-168(%ebp), %eax
	movl	%eax, -72(%ebp)
	leal	52(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -400(%ebp)
	movl	%ecx, -396(%ebp)
	movl	-68(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-400(%ebp), %eax
	andl	%esi, %eax
	movl	-396(%ebp), %edx
	andl	%edi, %edx
	movl	-72(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-72(%ebp), %ecx
	addl	$8, %ecx
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -392(%ebp)
	movl	%edi, -388(%ebp)
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-392(%ebp), %eax
	andl	%esi, %eax
	movl	-388(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-72(%ebp), %ecx
	addl	$16, %ecx
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -384(%ebp)
	movl	%edi, -380(%ebp)
	movl	-68(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-384(%ebp), %eax
	andl	%esi, %eax
	movl	-380(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE18:
.LBB19:
	.loc 1 588 0
	leal	-252(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -64(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -376(%ebp)
	movl	%ecx, -372(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-376(%ebp), %eax
	andl	%esi, %eax
	movl	-372(%ebp), %edx
	andl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-64(%ebp), %ecx
	addl	$8, %ecx
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -368(%ebp)
	movl	%edi, -364(%ebp)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-368(%ebp), %eax
	andl	%esi, %eax
	movl	-364(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-64(%ebp), %ecx
	addl	$16, %ecx
	movl	-64(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -360(%ebp)
	movl	%edi, -356(%ebp)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-360(%ebp), %eax
	andl	%esi, %eax
	movl	-356(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE19:
	.loc 1 590 0
	movl	-128(%ebp), %eax
	movl	76(%eax), %edx
	movl	52(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	56(%ebp), %eax
	movl	%eax, 48(%esp)
	movl	60(%ebp), %eax
	movl	%eax, 52(%esp)
	movl	64(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	68(%ebp), %eax
	movl	%eax, 60(%esp)
	movl	72(%ebp), %eax
	movl	%eax, 64(%esp)
	movl	76(%ebp), %eax
	movl	%eax, 68(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-188(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_dead_or_set_registers
	.loc 1 593 0
	movl	52(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	56(%ebp), %eax
	movl	%eax, 48(%esp)
	movl	60(%ebp), %eax
	movl	%eax, 52(%esp)
	movl	64(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	68(%ebp), %eax
	movl	%eax, 60(%esp)
	movl	72(%ebp), %eax
	movl	%eax, 64(%esp)
	movl	76(%ebp), %eax
	movl	%eax, 68(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	-252(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	find_dead_or_set_registers
.LBB20:
	.loc 1 596 0
	leal	-252(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -56(%ebp)
	leal	-224(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -352(%ebp)
	movl	%ecx, -348(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-352(%ebp), %eax
	orl	%esi, %eax
	movl	-348(%ebp), %edx
	orl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$8, %ecx
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -344(%ebp)
	movl	%edi, -340(%ebp)
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-344(%ebp), %eax
	orl	%esi, %eax
	movl	-340(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$16, %ecx
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -336(%ebp)
	movl	%edi, -332(%ebp)
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-336(%ebp), %eax
	orl	%esi, %eax
	movl	-332(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE20:
.LBB21:
	.loc 1 597 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -48(%ebp)
	leal	-252(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -328(%ebp)
	movl	%ecx, -324(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-328(%ebp), %eax
	andl	%esi, %eax
	movl	-324(%ebp), %edx
	andl	%edi, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$8, %ecx
	movl	-48(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -320(%ebp)
	movl	%edi, -316(%ebp)
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-320(%ebp), %eax
	andl	%esi, %eax
	movl	-316(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$16, %ecx
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -312(%ebp)
	movl	%edi, -308(%ebp)
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-312(%ebp), %eax
	andl	%esi, %eax
	movl	-308(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 598 0
	jmp	.L143
.L162:
.LBE21:
.LBE13:
	.loc 1 608 0
	movl	$0, -136(%ebp)
	.loc 1 609 0
	jmp	.L143
.L160:
	.loc 1 613 0
	movl	$1, 8(%esp)
	leal	52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 614 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
.LBB22:
	.loc 1 616 0
	leal	-168(%ebp), %eax
	movl	%eax, -40(%ebp)
	leal	24(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$8, %ecx
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE22:
.LBB23:
	.loc 1 617 0
	leal	-168(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	52(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -304(%ebp)
	movl	%ecx, -300(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-304(%ebp), %eax
	andl	%esi, %eax
	movl	-300(%ebp), %edx
	andl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -296(%ebp)
	movl	%edi, -292(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-296(%ebp), %eax
	andl	%esi, %eax
	movl	-292(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -288(%ebp)
	movl	%edi, -284(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-288(%ebp), %eax
	andl	%esi, %eax
	movl	-284(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE23:
.LBB24:
	.loc 1 618 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -24(%ebp)
	leal	-168(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -280(%ebp)
	movl	%ecx, -276(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-280(%ebp), %eax
	andl	%esi, %eax
	movl	-276(%ebp), %edx
	andl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -272(%ebp)
	movl	%edi, -268(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-272(%ebp), %eax
	andl	%esi, %eax
	movl	-268(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -264(%ebp)
	movl	%edi, -260(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-264(%ebp), %eax
	andl	%esi, %eax
	movl	-260(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L150:
.LBE24:
.LBE9:
	.loc 1 456 0
	movl	-140(%ebp), %eax
	movl	%eax, -144(%ebp)
.L141:
	cmpl	$0, -144(%ebp)
	jne	.L142
.L143:
	.loc 1 621 0
	movl	-136(%ebp), %eax
	.loc 1 622 0
	addl	$572, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	find_dead_or_set_registers, .-find_dead_or_set_registers
	.section	.rodata
	.type	__FUNCTION__.11100, @object
	.size	__FUNCTION__.11100, 19
__FUNCTION__.11100:
	.string	"mark_set_resources"
	.text
.globl mark_set_resources
	.type	mark_set_resources, @function
mark_set_resources:
.LFB20:
	.loc 1 644 0
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
	subl	$124, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L184:
	.loc 1 652 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -60(%ebp)
	.loc 1 654 0
	movl	-60(%ebp), %eax
	subl	$24, %eax
	movl	%eax, -120(%ebp)
	cmpl	$119, -120(%ebp)
	ja	.L185
	movl	-120(%ebp), %eax
	sall	$2, %eax
	movl	.L203@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L203:
	.long	.L186@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L187@GOTOFF
	.long	.L187@GOTOFF
	.long	.L188@GOTOFF
	.long	.L265@GOTOFF
	.long	.L265@GOTOFF
	.long	.L265@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L190@GOTOFF
	.long	.L191@GOTOFF
	.long	.L185@GOTOFF
	.long	.L190@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L192@GOTOFF
	.long	.L265@GOTOFF
	.long	.L193@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L194@GOTOFF
	.long	.L185@GOTOFF
	.long	.L265@GOTOFF
	.long	.L265@GOTOFF
	.long	.L265@GOTOFF
	.long	.L185@GOTOFF
	.long	.L265@GOTOFF
	.long	.L265@GOTOFF
	.long	.L185@GOTOFF
	.long	.L195@GOTOFF
	.long	.L185@GOTOFF
	.long	.L196@GOTOFF
	.long	.L197@GOTOFF
	.long	.L185@GOTOFF
	.long	.L198@GOTOFF
	.long	.L265@GOTOFF
	.long	.L265@GOTOFF
	.long	.L199@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L200@GOTOFF
	.long	.L200@GOTOFF
	.long	.L200@GOTOFF
	.long	.L200@GOTOFF
	.long	.L201@GOTOFF
	.long	.L201@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L185@GOTOFF
	.long	.L202@GOTOFF
	.long	.L202@GOTOFF
	.text
.L199:
	.loc 1 671 0
	cmpl	$0, 16(%ebp)
	je	.L265
	.loc 1 672 0
	movl	12(%ebp), %eax
	movb	$1, 3(%eax)
	.loc 1 673 0
	jmp	.L265
.L188:
	.loc 1 680 0
	cmpl	$1, 20(%ebp)
	jne	.L187
.LBB25:
	.loc 1 684 0
	movl	12(%ebp), %eax
	movb	$1, (%eax)
	movl	12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	12(%ebp), %eax
	movb	%dl, 3(%eax)
	.loc 1 685 0
	movl	$0, -48(%ebp)
	jmp	.L208
.L209:
	.loc 1 686 0
	movl	-48(%ebp), %eax
	movl	call_used_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L210
	movl	-48(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L212
.L210:
	.loc 1 687 0
	movl	-48(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -116(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L268
	movl	%esi, %edi
	xorl	%esi, %esi
.L268:
	movl	-112(%ebp), %eax
	orl	%esi, %eax
	movl	-108(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-116(%ebp), %edi
	movl	%eax, 4(%ecx,%edi,8)
	movl	%edx, 8(%ecx,%edi,8)
.L212:
	.loc 1 685 0
	addl	$1, -48(%ebp)
.L208:
	cmpl	$175, -48(%ebp)
	jbe	.L209
	.loc 1 689 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 690 0
	jmp	.L214
.L215:
	.loc 1 691 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L216
	.loc 1 692 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
.L216:
	.loc 1 690 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L214:
	cmpl	$0, -40(%ebp)
	jne	.L215
	.loc 1 697 0
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L187
.LBB26:
	.loc 1 698 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
.L187:
.LBE26:
.LBE25:
	.loc 1 715 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 716 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L265
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L184
	.loc 1 718 0
	jmp	.L265
.L192:
	.loc 1 725 0
	cmpl	$1, 20(%ebp)
	je	.L222
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$60, %ax
	je	.L224
.L222:
	movl	$1, -104(%ebp)
	jmp	.L225
.L224:
	movl	$0, -104(%ebp)
.L225:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 730 0
	cmpl	$2, 20(%ebp)
	je	.L265
	.loc 1 731 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 732 0
	jmp	.L265
.L193:
	.loc 1 735 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 736 0
	jmp	.L265
.L186:
	.loc 1 739 0
	movl	$0, -56(%ebp)
	jmp	.L228
.L229:
	.loc 1 740 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L230
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L232
.L230:
	.loc 1 742 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
.L232:
	.loc 1 739 0
	addl	$1, -56(%ebp)
.L228:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-56(%ebp), %eax
	jg	.L229
	.loc 1 743 0
	jmp	.L265
.L200:
	.loc 1 749 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 750 0
	jmp	.L265
.L201:
	.loc 1 754 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 755 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 756 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 757 0
	jmp	.L265
.L202:
	.loc 1 761 0
	cmpl	$2, 20(%ebp)
	jne	.L234
	cmpl	$0, 16(%ebp)
	jne	.L265
.L234:
	.loc 1 763 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 764 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 765 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 767 0
	jmp	.L265
.L198:
	.loc 1 770 0
	cmpl	$0, 16(%ebp)
	je	.L237
	.loc 1 772 0
	movl	12(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 773 0
	movl	12(%ebp), %eax
	movzbl	1(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, 1(%eax)
	.loc 1 774 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, 2(%eax)
.L237:
	.loc 1 777 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 778 0
	jmp	.L265
.L196:
	.loc 1 781 0
	cmpl	$0, 16(%ebp)
	je	.L265
	.loc 1 783 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L241
	.loc 1 784 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	jmp	.L265
.L241:
.LBB27:
	.loc 1 787 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_regno@PLT
	movl	%eax, -32(%ebp)
	.loc 1 789 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-32(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 791 0
	cmpl	$176, -28(%ebp)
	jbe	.L243
	.loc 1 792 0
	leal	__FUNCTION__.11100@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$792, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L243:
	.loc 1 793 0
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L245
.L246:
	.loc 1 794 0
	movl	-48(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -100(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L267
	movl	%esi, %edi
	xorl	%esi, %esi
.L267:
	movl	-96(%ebp), %eax
	orl	%esi, %eax
	movl	-92(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-100(%ebp), %edi
	movl	%eax, 4(%ecx,%edi,8)
	movl	%edx, 8(%ecx,%edi,8)
	.loc 1 793 0
	addl	$1, -48(%ebp)
.L245:
	movl	-48(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L246
	.loc 1 797 0
	jmp	.L265
.L195:
.LBE27:
	.loc 1 800 0
	cmpl	$0, 16(%ebp)
	je	.L265
.LBB28:
	.loc 1 802 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 804 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 806 0
	cmpl	$176, -20(%ebp)
	jbe	.L249
	.loc 1 807 0
	leal	__FUNCTION__.11100@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$807, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L249:
	.loc 1 808 0
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L251
.L252:
	.loc 1 809 0
	movl	-48(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -84(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L266
	movl	%esi, %edi
	xorl	%esi, %esi
.L266:
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-84(%ebp), %edi
	movl	%eax, 4(%ecx,%edi,8)
	movl	%edx, 8(%ecx,%edi,8)
	.loc 1 808 0
	addl	$1, -48(%ebp)
.L251:
	movl	-48(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L252
	.loc 1 811 0
	jmp	.L265
.L197:
.LBE28:
	.loc 1 814 0
	cmpl	$2, 20(%ebp)
	jne	.L253
	cmpl	$0, 16(%ebp)
	jne	.L190
.L253:
	.loc 1 816 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 817 0
	jmp	.L265
.L190:
	.loc 1 823 0
	movl	12(%ebp), %eax
	movb	$1, 2(%eax)
	.loc 1 824 0
	jmp	.L265
.L194:
	.loc 1 827 0
	movl	12(%ebp), %eax
	movb	$1, 2(%eax)
	.loc 1 828 0
	jmp	.L185
.L191:
	.loc 1 831 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 838 0
	movl	$0, -56(%ebp)
	jmp	.L255
.L256:
	.loc 1 839 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 838 0
	addl	$1, -56(%ebp)
.L255:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	-56(%ebp), %eax
	jg	.L256
	.loc 1 841 0
	jmp	.L265
.L185:
	.loc 1 848 0
	movl	-60(%ebp), %eax
	movl	rtx_format@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 849 0
	movl	$0, -56(%ebp)
	jmp	.L258
.L259:
	.loc 1 850 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	addl	$1, -44(%ebp)
	cmpl	$69, -68(%ebp)
	je	.L261
	cmpl	$101, -68(%ebp)
	je	.L262
	jmp	.L260
.L262:
	.loc 1 853 0
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 854 0
	jmp	.L260
.L261:
	.loc 1 857 0
	movl	$0, -52(%ebp)
	jmp	.L263
.L264:
	.loc 1 858 0
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_set_resources@PLT
	.loc 1 857 0
	addl	$1, -52(%ebp)
.L263:
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-52(%ebp), %eax
	jg	.L264
.L260:
	.loc 1 849 0
	addl	$1, -56(%ebp)
.L258:
	movl	-60(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-56(%ebp), %eax
	jg	.L259
.L265:
	.loc 1 861 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	mark_set_resources, .-mark_set_resources
.globl mark_target_live_regs
	.type	mark_target_live_regs, @function
mark_target_live_regs:
.LFB21:
	.loc 1 907 0
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
	subl	$652, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 908 0
	movl	$-1, -224(%ebp)
	.loc 1 910 0
	movl	$0, -216(%ebp)
	.loc 1 912 0
	movl	$0, -208(%ebp)
	.loc 1 918 0
	cmpl	$0, 12(%ebp)
	jne	.L270
	.loc 1 920 0
	movl	16(%ebp), %edx
	movl	end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	movl	20+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 20(%edx)
	movl	24+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 24(%edx)
	.loc 1 921 0
	jmp	.L381
.L270:
	.loc 1 925 0
	movl	16(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 926 0
	movl	16(%ebp), %eax
	movb	$0, 1(%eax)
	movl	16(%ebp), %eax
	movzbl	1(%eax), %edx
	movl	16(%ebp), %eax
	movb	%dl, 2(%eax)
	.loc 1 927 0
	movl	16(%ebp), %eax
	movb	$0, 3(%eax)
	.loc 1 930 0
	movl	target_hash_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L273
	.loc 1 932 0
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$2139127681, -580(%ebp)
	movl	-580(%ebp), %eax
	imull	%ecx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -576(%ebp)
	movl	-576(%ebp), %eax
	sall	$8, %eax
	addl	-576(%ebp), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, -576(%ebp)
	movl	-576(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	target_hash_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
	.loc 1 933 0
	jmp	.L275
.L276:
	.loc 1 934 0
	movl	-216(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L277
	.loc 1 933 0
	movl	-216(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -216(%ebp)
.L275:
	cmpl	$0, -216(%ebp)
	jne	.L276
.L277:
	.loc 1 940 0
	cmpl	$0, -216(%ebp)
	je	.L273
	movl	-216(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$-1, %eax
	je	.L273
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-216(%ebp), %eax
	movl	32(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L273
	.loc 1 942 0
	movl	-216(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -224(%ebp)
.L273:
	.loc 1 945 0
	cmpl	$-1, -224(%ebp)
	jne	.L282
	.loc 1 946 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$84, %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_block
	movl	%eax, -224(%ebp)
.L282:
	.loc 1 948 0
	movl	target_hash_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L284
	.loc 1 950 0
	cmpl	$0, -216(%ebp)
	je	.L286
	.loc 1 954 0
	movl	-216(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-224(%ebp), %eax
	jne	.L284
	cmpl	$-1, -224(%ebp)
	je	.L284
	movl	-216(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-224(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bb_ticks@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	.L284
.LBB29:
	.loc 1 956 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -204(%ebp)
	movl	-216(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -200(%ebp)
	movl	-200(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-204(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-204(%ebp), %ecx
	addl	$8, %ecx
	movl	-200(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-204(%ebp), %ecx
	addl	$16, %ecx
	movl	-200(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 957 0
	jmp	.L381
.L286:
.LBE29:
	.loc 1 964 0
	movl	$40, (%esp)
	call	xmalloc@PLT
	movl	%eax, -216(%ebp)
	.loc 1 965 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-216(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 966 0
	movl	-216(%ebp), %edx
	movl	-224(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 967 0
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$2139127681, -580(%ebp)
	movl	-580(%ebp), %eax
	imull	%ecx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -572(%ebp)
	movl	-572(%ebp), %eax
	sall	$8, %eax
	addl	-572(%ebp), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, -572(%ebp)
	movl	-572(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	target_hash_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-216(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 969 0
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$2139127681, -580(%ebp)
	movl	-580(%ebp), %eax
	imull	%ecx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -568(%ebp)
	movl	-568(%ebp), %eax
	sall	$8, %eax
	addl	-568(%ebp), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, -568(%ebp)
	movl	-568(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	target_hash_table@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-216(%ebp), %eax
	movl	%eax, (%edx)
.L284:
.LBB30:
	.loc 1 973 0
	leal	pending_dead_regs@GOTOFF(%ebx), %eax
	movl	%eax, -196(%ebp)
	movl	-196(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-196(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-196(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE30:
	.loc 1 978 0
	cmpl	$-1, -224(%ebp)
	je	.L292
.LBB31:
	.loc 1 980 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-224(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	movl	%eax, -192(%ebp)
.LBB32:
	.loc 1 989 0
	leal	current_live_regs@GOTOFF(%ebx), %eax
	movl	%eax, -172(%ebp)
	movl	-172(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-172(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-172(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE32:
	movl	-192(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	current_live_regs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	reg_set_to_hard_reg_set@PLT
.LBB33:
	.loc 1 991 0
	movl	-192(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -168(%ebp)
	movl	$1, -164(%ebp)
	movl	$16, -160(%ebp)
	movl	$1, -156(%ebp)
	jmp	.L294
.L295:
	movl	-168(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -168(%ebp)
.L294:
	cmpl	$0, -168(%ebp)
	je	.L296
	movl	-168(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-164(%ebp), %eax
	jb	.L295
.L296:
	cmpl	$0, -168(%ebp)
	je	.L301
	movl	-168(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-164(%ebp), %eax
	je	.L301
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	jmp	.L301
.L304:
.LBB34:
	movl	-156(%ebp), %eax
	movl	-168(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -152(%ebp)
	cmpl	$0, -152(%ebp)
	je	.L305
	jmp	.L307
.L308:
.LBB35:
	movl	-160(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %eax
	andl	-152(%ebp), %eax
	testl	%eax, %eax
	je	.L309
	movl	-148(%ebp), %eax
	notl	%eax
	andl	%eax, -152(%ebp)
	movl	-168(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-156(%ebp), %eax
	sall	$5, %eax
	addl	-160(%ebp), %eax
	movl	%eax, -220(%ebp)
	movl	-220(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L311
	movl	-220(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -184(%ebp)
	movl	-184(%ebp), %eax
	movl	%eax, -188(%ebp)
	jmp	.L313
.L314:
	movl	-188(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -564(%ebp)
	movl	current_live_regs@GOTOFF(%ebx,%eax,8), %edx
	movl	4+current_live_regs@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -560(%ebp)
	movl	%ecx, -556(%ebp)
	movl	-188(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L385
	movl	%esi, %edi
	xorl	%esi, %esi
.L385:
	movl	-560(%ebp), %eax
	orl	%esi, %eax
	movl	-556(%ebp), %edx
	orl	%edi, %edx
	movl	-564(%ebp), %ecx
	movl	%eax, current_live_regs@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+current_live_regs@GOTOFF(%ebx,%ecx,8)
	addl	$1, -188(%ebp)
.L313:
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-220(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-184(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-184(%ebp), %eax
	cmpl	-188(%ebp), %eax
	ja	.L314
.L311:
	cmpl	$0, -152(%ebp)
	je	.L305
.L309:
.LBE35:
	addl	$1, -160(%ebp)
.L307:
	cmpl	$31, -160(%ebp)
	jbe	.L308
.L305:
	movl	$0, -160(%ebp)
.LBE34:
	addl	$1, -156(%ebp)
.L303:
	cmpl	$3, -156(%ebp)
	jbe	.L304
	movl	$0, -156(%ebp)
	movl	-168(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -168(%ebp)
.L301:
	cmpl	$0, -168(%ebp)
	jne	.L303
.LBE33:
	.loc 1 1007 0
	cmpl	$0, -224(%ebp)
	je	.L317
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-224(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	(%eax), %eax
	movl	%eax, -548(%ebp)
	jmp	.L319
.L317:
	movl	8(%ebp), %esi
	movl	%esi, -548(%ebp)
.L319:
	movl	-548(%ebp), %edi
	movl	%edi, -180(%ebp)
	.loc 1 1008 0
	movl	12(%ebp), %eax
	movl	%eax, -176(%ebp)
	.loc 1 1010 0
	movl	-180(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L320
	movl	-180(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L320
	.loc 1 1012 0
	movl	-180(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -180(%ebp)
.L320:
	.loc 1 1014 0
	movl	-176(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L323
	movl	-176(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L323
	.loc 1 1016 0
	movl	-176(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	next_insn@PLT
	movl	%eax, -176(%ebp)
.L323:
	.loc 1 1018 0
	movl	-180(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	.L326
.L327:
.LBB36:
	.loc 1 1022 0
	movl	-212(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1023 0
	movl	-212(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -136(%ebp)
	.loc 1 1028 0
	cmpl	$42, -136(%ebp)
	je	.L328
	cmpl	$43, -136(%ebp)
	je	.L328
	cmpl	$44, -136(%ebp)
	jne	.L331
.L328:
	movl	-212(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L332
.L331:
	.loc 1 1034 0
	cmpl	$42, -136(%ebp)
	jne	.L333
	movl	-212(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	jne	.L333
	movl	-212(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L333
	.loc 1 1036 0
	movl	-212(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -140(%ebp)
.L333:
	.loc 1 1038 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L337
.LBB37:
	.loc 1 1043 0
	leal	current_live_regs@GOTOFF(%ebx), %eax
	movl	%eax, -132(%ebp)
	movl	regs_invalidated_by_call@GOT(%ebx), %eax
	movl	%eax, -128(%ebp)
	movl	-132(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -544(%ebp)
	movl	%ecx, -540(%ebp)
	movl	-128(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-544(%ebp), %eax
	andl	%esi, %eax
	movl	-540(%ebp), %edx
	andl	%edi, %edx
	movl	-132(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-132(%ebp), %ecx
	addl	$8, %ecx
	movl	-132(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -536(%ebp)
	movl	%edi, -532(%ebp)
	movl	-128(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-536(%ebp), %eax
	andl	%esi, %eax
	movl	-532(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-132(%ebp), %ecx
	addl	$16, %ecx
	movl	-132(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -528(%ebp)
	movl	%edi, -524(%ebp)
	movl	-128(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-528(%ebp), %eax
	andl	%esi, %eax
	movl	-524(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE37:
	.loc 1 1048 0
	movl	$0, -220(%ebp)
	jmp	.L339
.L340:
	.loc 1 1049 0
	movl	-220(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L341
	.loc 1 1050 0
	movl	-220(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -516(%ebp)
	movl	current_live_regs@GOTOFF(%ebx,%eax,8), %edx
	movl	4+current_live_regs@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -512(%ebp)
	movl	%ecx, -508(%ebp)
	movl	-220(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L384
	movl	%esi, %edi
	xorl	%esi, %esi
.L384:
	movl	-512(%ebp), %eax
	orl	%esi, %eax
	movl	-508(%ebp), %edx
	orl	%edi, %edx
	movl	-516(%ebp), %ecx
	movl	%eax, current_live_regs@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+current_live_regs@GOTOFF(%ebx,%ecx,8)
.L341:
	.loc 1 1048 0
	addl	$1, -220(%ebp)
.L339:
	cmpl	$175, -220(%ebp)
	jbe	.L340
.L337:
	.loc 1 1058 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L343
	movl	-140(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L343
	movl	-140(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L346
.L343:
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L346
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L348
.L346:
	.loc 1 1064 0
	movl	-140(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L349
.L350:
	.loc 1 1065 0
	movl	-144(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L351
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L351
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L351
.LBB38:
	.loc 1 1069 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 1072 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-124(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-124(%ebp), %eax
	movl	%eax, -120(%ebp)
	.loc 1 1075 0
	movl	-124(%ebp), %eax
	movl	%eax, -220(%ebp)
	jmp	.L355
.L356:
	.loc 1 1076 0
	movl	-220(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -500(%ebp)
	movl	pending_dead_regs@GOTOFF(%ebx,%eax,8), %esi
	movl	4+pending_dead_regs@GOTOFF(%ebx,%eax,8), %edi
	movl	%esi, -496(%ebp)
	movl	%edi, -492(%ebp)
	movl	-220(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L383
	movl	%esi, %edi
	xorl	%esi, %esi
.L383:
	movl	-496(%ebp), %eax
	orl	%esi, %eax
	movl	-492(%ebp), %edx
	orl	%edi, %edx
	movl	-500(%ebp), %edi
	movl	%eax, pending_dead_regs@GOTOFF(%ebx,%edi,8)
	movl	%edx, 4+pending_dead_regs@GOTOFF(%ebx,%edi,8)
	.loc 1 1075 0
	addl	$1, -220(%ebp)
.L355:
	movl	-220(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jb	.L356
.L351:
.LBE38:
	.loc 1 1064 0
	movl	-144(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -144(%ebp)
.L349:
	cmpl	$0, -144(%ebp)
	jne	.L350
	.loc 1 1079 0
	movl	-140(%ebp), %eax
	movl	44(%eax), %edx
	movl	$0, 8(%esp)
	leal	update_live_status@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 1083 0
	movl	-140(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L358
.L359:
	.loc 1 1084 0
	movl	-144(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$10, %al
	jne	.L360
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L360
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L360
.LBB39:
	.loc 1 1088 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1091 0
	movl	-144(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-116(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-116(%ebp), %eax
	movl	%eax, -112(%ebp)
	.loc 1 1094 0
	movl	-116(%ebp), %eax
	movl	%eax, -220(%ebp)
	jmp	.L364
.L365:
	.loc 1 1095 0
	movl	-220(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -484(%ebp)
	movl	current_live_regs@GOTOFF(%ebx,%eax,8), %edx
	movl	4+current_live_regs@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -480(%ebp)
	movl	%ecx, -476(%ebp)
	movl	-220(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L382
	movl	%eax, %edx
	xorl	%eax, %eax
.L382:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-480(%ebp), %eax
	andl	%esi, %eax
	movl	-476(%ebp), %edx
	andl	%edi, %edx
	movl	-484(%ebp), %ecx
	movl	%eax, current_live_regs@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 4+current_live_regs@GOTOFF(%ebx,%ecx,8)
	.loc 1 1094 0
	addl	$1, -220(%ebp)
.L364:
	movl	-220(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jb	.L365
.L360:
.LBE39:
	.loc 1 1083 0
	movl	-144(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -144(%ebp)
.L358:
	cmpl	$0, -144(%ebp)
	jne	.L359
	.loc 1 1058 0
	jmp	.L332
.L348:
	.loc 1 1099 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L367
.LBB40:
	.loc 1 1103 0
	leal	current_live_regs@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
	leal	pending_dead_regs@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
	movl	-108(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -472(%ebp)
	movl	%edi, -468(%ebp)
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-472(%ebp), %eax
	andl	%esi, %eax
	movl	-468(%ebp), %edx
	andl	%edi, %edx
	movl	-108(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-108(%ebp), %ecx
	addl	$8, %ecx
	movl	-108(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -464(%ebp)
	movl	%edi, -460(%ebp)
	movl	-104(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-464(%ebp), %eax
	andl	%esi, %eax
	movl	-460(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-108(%ebp), %ecx
	addl	$16, %ecx
	movl	-108(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -456(%ebp)
	movl	%edi, -452(%ebp)
	movl	-104(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-456(%ebp), %eax
	andl	%esi, %eax
	movl	-452(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE40:
.LBB41:
	.loc 1 1104 0
	leal	pending_dead_regs@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-100(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-100(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	.L332
.L367:
.LBE41:
	.loc 1 1110 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L332
	movl	-140(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-89, %eax
	jne	.L332
.LBB42:
	.loc 1 1112 0
	leal	current_live_regs@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	leal	4+start_of_epilogue_needs@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -448(%ebp)
	movl	%ecx, -444(%ebp)
	movl	-92(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-448(%ebp), %eax
	orl	%esi, %eax
	movl	-444(%ebp), %edx
	orl	%edi, %edx
	movl	-96(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-96(%ebp), %ecx
	addl	$8, %ecx
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -440(%ebp)
	movl	%edi, -436(%ebp)
	movl	-92(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-440(%ebp), %eax
	orl	%esi, %eax
	movl	-436(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-96(%ebp), %ecx
	addl	$16, %ecx
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -432(%ebp)
	movl	%edi, -428(%ebp)
	movl	-92(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-432(%ebp), %eax
	orl	%esi, %eax
	movl	-428(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L332:
.LBE42:
.LBE36:
	.loc 1 1019 0
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	next_insn_no_annul
	movl	%eax, -212(%ebp)
.L326:
	.loc 1 1018 0
	movl	-212(%ebp), %eax
	cmpl	-176(%ebp), %eax
	jne	.L327
.LBB43:
	.loc 1 1115 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -88(%ebp)
	leal	current_live_regs@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-88(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-88(%ebp), %ecx
	addl	$8, %ecx
	movl	-84(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-88(%ebp), %ecx
	addl	$16, %ecx
	movl	-84(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE43:
	.loc 1 1116 0
	cmpl	$0, -216(%ebp)
	je	.L374
	.loc 1 1118 0
	movl	-216(%ebp), %edx
	movl	-224(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 1119 0
	movl	-224(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bb_ticks@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-216(%ebp), %eax
	movl	%edx, 36(%eax)
	jmp	.L374
.L292:
.LBE31:
.LBB44:
	.loc 1 1125 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -80(%ebp)
	movl	-80(%ebp), %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	-80(%ebp), %eax
	addl	$8, %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	-80(%ebp), %eax
	addl	$16, %eax
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
.L374:
.LBE44:
	.loc 1 1127 0
	movb	$0, -281(%ebp)
	movzbl	-281(%ebp), %eax
	movb	%al, -282(%ebp)
	movzbl	-282(%ebp), %eax
	movb	%al, -283(%ebp)
	movzbl	-283(%ebp), %eax
	movb	%al, -284(%ebp)
.LBB45:
	leal	-284(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-76(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-76(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE45:
	.loc 1 1128 0
	movb	$0, -309(%ebp)
	movzbl	-309(%ebp), %eax
	movb	%al, -310(%ebp)
	movzbl	-310(%ebp), %eax
	movb	%al, -311(%ebp)
	movzbl	-311(%ebp), %eax
	movb	%al, -312(%ebp)
.LBB46:
	leal	-312(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE46:
	.loc 1 1130 0
	movl	-312(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	-308(%ebp), %eax
	movl	%eax, 48(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, 52(%esp)
	movl	-300(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 60(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, 64(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 68(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-272(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-268(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-264(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	$0, 12(%esp)
	leal	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_dead_or_set_registers
	movl	%eax, -208(%ebp)
	.loc 1 1138 0
	cmpl	$0, -208(%ebp)
	je	.L375
.LBB47:
	.loc 1 1141 0
	movl	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -68(%ebp)
	.loc 1 1143 0
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, %edx
	leal	-340(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_target_live_regs@PLT
	.loc 1 1145 0
	movb	$0, -281(%ebp)
	movzbl	-281(%ebp), %eax
	movb	%al, -282(%ebp)
	movzbl	-282(%ebp), %eax
	movb	%al, -283(%ebp)
	movzbl	-283(%ebp), %eax
	movb	%al, -284(%ebp)
.LBB48:
	leal	-284(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-64(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE48:
	.loc 1 1146 0
	movb	$0, -309(%ebp)
	movzbl	-309(%ebp), %eax
	movb	%al, -310(%ebp)
	movzbl	-310(%ebp), %eax
	movb	%al, -311(%ebp)
	movzbl	-311(%ebp), %eax
	movb	%al, -312(%ebp)
.LBB49:
	leal	-312(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE49:
	.loc 1 1149 0
	movl	12(%ebp), %eax
	movl	%eax, -212(%ebp)
	jmp	.L377
.L378:
	.loc 1 1151 0
	movl	$1, 8(%esp)
	leal	-312(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
.LBB50:
	.loc 1 1153 0
	leal	-256(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	-312(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$8, %ecx
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$16, %ecx
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE50:
.LBB51:
	.loc 1 1154 0
	leal	-256(%ebp), %eax
	movl	%eax, -48(%ebp)
	leal	-284(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -424(%ebp)
	movl	%ecx, -420(%ebp)
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-424(%ebp), %eax
	andl	%esi, %eax
	movl	-420(%ebp), %edx
	andl	%edi, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$8, %ecx
	movl	-48(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -416(%ebp)
	movl	%edi, -412(%ebp)
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-416(%ebp), %eax
	andl	%esi, %eax
	movl	-412(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$16, %ecx
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -408(%ebp)
	movl	%edi, -404(%ebp)
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-408(%ebp), %eax
	andl	%esi, %eax
	movl	-404(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE51:
.LBB52:
	.loc 1 1155 0
	leal	-340(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -40(%ebp)
	leal	-256(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -400(%ebp)
	movl	%ecx, -396(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-400(%ebp), %eax
	orl	%esi, %eax
	movl	-396(%ebp), %edx
	orl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$8, %ecx
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -392(%ebp)
	movl	%edi, -388(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-392(%ebp), %eax
	orl	%esi, %eax
	movl	-388(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -384(%ebp)
	movl	%edi, -380(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-384(%ebp), %eax
	orl	%esi, %eax
	movl	-380(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE52:
	.loc 1 1157 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
	.loc 1 1149 0
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -212(%ebp)
.L377:
	movl	-212(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jne	.L378
.LBB53:
	.loc 1 1160 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	leal	-340(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -376(%ebp)
	movl	%ecx, -372(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-376(%ebp), %eax
	orl	%esi, %eax
	movl	-372(%ebp), %edx
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
	movl	%esi, -368(%ebp)
	movl	%edi, -364(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-368(%ebp), %eax
	orl	%esi, %eax
	movl	-364(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -360(%ebp)
	movl	%edi, -356(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-360(%ebp), %eax
	orl	%esi, %eax
	movl	-356(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L375:
.LBE53:
.LBE47:
	.loc 1 1163 0
	cmpl	$0, -216(%ebp)
	je	.L381
.LBB54:
	.loc 1 1165 0
	movl	-216(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L381:
.LBE54:
	.loc 1 1167 0
	addl	$652, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	mark_target_live_regs, .-mark_target_live_regs
.globl init_resource_info
	.type	init_resource_info, @function
init_resource_info:
.LFB22:
	.loc 1 1175 0
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
	subl	$76, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1185 0
	movb	$0, 3+end_of_function_needs@GOTOFF(%ebx)
	.loc 1 1186 0
	movb	$1, end_of_function_needs@GOTOFF(%ebx)
	.loc 1 1187 0
	movb	$0, 1+end_of_function_needs@GOTOFF(%ebx)
.LBB55:
	.loc 1 1188 0
	leal	4+end_of_function_needs@GOTOFF(%ebx), %eax
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
	.loc 1 1190 0
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L387
	.loc 1 1192 0
	movl	4+end_of_function_needs@GOTOFF(%ebx), %esi
	movl	8+end_of_function_needs@GOTOFF(%ebx), %edi
	movl	%esi, %eax
	orl	$2, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 4+end_of_function_needs@GOTOFF(%ebx)
	movl	%edx, 8+end_of_function_needs@GOTOFF(%ebx)
	.loc 1 1194 0
	movl	4+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	8+end_of_function_needs@GOTOFF(%ebx), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L389
	movl	$131072, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L391
.L389:
	movl	$1073741824, -56(%ebp)
	movl	$0, -52(%ebp)
.L391:
	movl	-64(%ebp), %eax
	orl	-56(%ebp), %eax
	movl	-60(%ebp), %edx
	orl	-52(%ebp), %edx
	movl	%eax, 4+end_of_function_needs@GOTOFF(%ebx)
	movl	%edx, 8+end_of_function_needs@GOTOFF(%ebx)
	.loc 1 1197 0
	movl	current_function_sp_is_unchanging@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L394
	.loc 1 1200 0
	movl	4+end_of_function_needs@GOTOFF(%ebx), %esi
	movl	8+end_of_function_needs@GOTOFF(%ebx), %edi
	movl	%esi, %eax
	orl	$536870912, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 4+end_of_function_needs@GOTOFF(%ebx)
	movl	%edx, 8+end_of_function_needs@GOTOFF(%ebx)
	jmp	.L394
.L387:
	.loc 1 1203 0
	movl	4+end_of_function_needs@GOTOFF(%ebx), %esi
	movl	8+end_of_function_needs@GOTOFF(%ebx), %edi
	movl	%esi, %eax
	orl	$536870912, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 4+end_of_function_needs@GOTOFF(%ebx)
	movl	%edx, 8+end_of_function_needs@GOTOFF(%ebx)
.L394:
	.loc 1 1205 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	.L395
	.loc 1 1206 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	116(%eax), %edx
	movl	$1, 8(%esp)
	leal	end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_referenced_resources@PLT
.L395:
	.loc 1 1209 0
	movl	$0, -24(%ebp)
	jmp	.L397
.L398:
	.loc 1 1210 0
	movl	-24(%ebp), %eax
	movl	global_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L399
	.loc 1 1215 0
	movl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	4+end_of_function_needs@GOTOFF(%ebx,%eax,8), %edx
	movl	8+end_of_function_needs@GOTOFF(%ebx,%eax,8), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-24(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L406
	movl	%esi, %edi
	xorl	%esi, %esi
.L406:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, 4+end_of_function_needs@GOTOFF(%ebx,%ecx,8)
	movl	%edx, 8+end_of_function_needs@GOTOFF(%ebx,%ecx,8)
.L399:
	.loc 1 1209 0
	addl	$1, -24(%ebp)
.L397:
	cmpl	$175, -24(%ebp)
	jle	.L398
	.loc 1 1234 0
	movl	end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, start_of_epilogue_needs@GOTOFF(%ebx)
	movl	4+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 4+start_of_epilogue_needs@GOTOFF(%ebx)
	movl	8+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 8+start_of_epilogue_needs@GOTOFF(%ebx)
	movl	12+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 12+start_of_epilogue_needs@GOTOFF(%ebx)
	movl	16+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 16+start_of_epilogue_needs@GOTOFF(%ebx)
	movl	20+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 20+start_of_epilogue_needs@GOTOFF(%ebx)
	movl	24+end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 24+start_of_epilogue_needs@GOTOFF(%ebx)
	.loc 1 1236 0
	jmp	.L402
.L403:
	.loc 1 1237 0
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	leal	end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_set_resources@PLT
.L402:
	.loc 1 1236 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, 8(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L403
	.loc 1 1241 0
	movl	$4, 4(%esp)
	movl	$257, (%esp)
	call	xcalloc@PLT
	movl	%eax, target_hash_table@GOTOFF(%ebx)
	.loc 1 1243 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, bb_ticks@GOTOFF(%ebx)
	.loc 1 1244 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	init_resource_info, .-init_resource_info
.globl free_resource_info
	.type	free_resource_info, @function
free_resource_info:
.LFB23:
	.loc 1 1251 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$20, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1252 0
	movl	target_hash_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L408
.LBB56:
	.loc 1 1256 0
	movl	$0, -16(%ebp)
	jmp	.L410
.L411:
.LBB57:
	.loc 1 1258 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	target_hash_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1260 0
	jmp	.L412
.L413:
.LBB58:
	.loc 1 1262 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1263 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1264 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L412:
.LBE58:
	.loc 1 1260 0
	cmpl	$0, -12(%ebp)
	jne	.L413
.LBE57:
	.loc 1 1256 0
	addl	$1, -16(%ebp)
.L410:
	cmpl	$256, -16(%ebp)
	jle	.L411
	.loc 1 1268 0
	movl	target_hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1269 0
	movl	$0, target_hash_table@GOTOFF(%ebx)
.L408:
.LBE56:
	.loc 1 1272 0
	movl	bb_ticks@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L418
	.loc 1 1274 0
	movl	bb_ticks@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1275 0
	movl	$0, bb_ticks@GOTOFF(%ebx)
.L418:
	.loc 1 1277 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	free_resource_info, .-free_resource_info
.globl clear_hashed_info_for_insn
	.type	clear_hashed_info_for_insn, @function
clear_hashed_info_for_insn:
.LFB24:
	.loc 1 1284 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%esi
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$24, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1287 0
	movl	target_hash_table@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L427
	.loc 1 1289 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$2139127681, -32(%ebp)
	movl	-32(%ebp), %eax
	imull	%ecx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -28(%ebp)
	movl	-28(%ebp), %eax
	sall	$8, %eax
	addl	-28(%ebp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -28(%ebp)
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	target_hash_table@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1290 0
	jmp	.L422
.L423:
	.loc 1 1291 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L424
	.loc 1 1290 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L422:
	cmpl	$0, -12(%ebp)
	jne	.L423
.L424:
	.loc 1 1294 0
	cmpl	$0, -12(%ebp)
	je	.L427
	.loc 1 1295 0
	movl	-12(%ebp), %eax
	movl	$-1, 32(%eax)
.L427:
	.loc 1 1297 0
	addl	$24, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	clear_hashed_info_for_insn, .-clear_hashed_info_for_insn
.globl incr_ticks_for_insn
	.type	incr_ticks_for_insn, @function
incr_ticks_for_insn:
.LFB25:
	.loc 1 1304 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$36, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1305 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$84, %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_block
	movl	%eax, -8(%ebp)
	.loc 1 1307 0
	cmpl	$-1, -8(%ebp)
	je	.L431
	.loc 1 1308 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	bb_ticks@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	(%edx), %eax
	addl	$1, %eax
	movl	%eax, (%edx)
.L431:
	.loc 1 1309 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	incr_ticks_for_insn, .-incr_ticks_for_insn
.globl mark_end_of_function_resources
	.type	mark_end_of_function_resources, @function
mark_end_of_function_resources:
.LFB26:
	.loc 1 1317 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$20, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1318 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	end_of_function_needs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_resources@PLT
	.loc 1 1320 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	mark_end_of_function_resources, .-mark_end_of_function_resources
	.local	start_of_epilogue_needs
	.comm	start_of_epilogue_needs,28,4
	.local	end_of_function_needs
	.comm	end_of_function_needs,28,4
	.local	bb_ticks
	.comm	bb_ticks,4,4
	.local	current_live_regs
	.comm	current_live_regs,24,8
	.local	pending_dead_regs
	.comm	pending_dead_regs,24,8
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
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI13-.LFB18
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI31-.LFB21
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI37-.LFB22
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
	.long	.LCFI46-.LCFI44
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
	.long	.LCFI47-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI48
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
	.long	.LCFI52-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI53
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
	.long	.LCFI56-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI57
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/resource.h"
	.file 9 "../../../kgccfe/gnu/hard-reg-set.h"
	.file 10 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 11 "../../../kgccfe/gnu/varray.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kgccfe/gnu/regs.h"
	.file 14 "../../../kgccfe/gnu/function.h"
	.file 15 "../../../kgccfe/gnu/flags.h"
	.file 16 "../../../kgccfe/gnu/output.h"
	.file 17 "../../../kgccfe/gnu/params.h"
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI47-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI48-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI52-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI53-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI56-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI57-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3e28
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/resource.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
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
	.long	0x630
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x8d
	.long	0x3e7
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xd4
	.long	0x124f
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
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x125f
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
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20a
	.uleb128 0x8
	.long	0x20f
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2f0
	.string	"mips_args"
	.byte	0x40
	.byte	0xa
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x307
	.long	0x9d
	.uleb128 0xe
	.long	0x307
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0xa
	.value	0xad5
	.long	0x21e
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x2f0
	.uleb128 0x9
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x9
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x9
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x9
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x9
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x9
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20f
	.uleb128 0x3
	.byte	0x4
	.long	0x334
	.uleb128 0xd
	.long	0x3e1
	.long	0x20f
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x217
	.uleb128 0x11
	.long	0x630
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x12
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x12
	.string	"BImode"
	.sleb128 1
	.uleb128 0x12
	.string	"QImode"
	.sleb128 2
	.uleb128 0x12
	.string	"HImode"
	.sleb128 3
	.uleb128 0x12
	.string	"SImode"
	.sleb128 4
	.uleb128 0x12
	.string	"DImode"
	.sleb128 5
	.uleb128 0x12
	.string	"TImode"
	.sleb128 6
	.uleb128 0x12
	.string	"OImode"
	.sleb128 7
	.uleb128 0x12
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x12
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x12
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x12
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x12
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x12
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x12
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x12
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x12
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x12
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x12
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x12
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x12
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x12
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x12
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x12
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x12
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x12
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x12
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x12
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x12
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x12
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x12
	.string	"COImode"
	.sleb128 30
	.uleb128 0x12
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x12
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x12
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x12
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x12
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x12
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x12
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x12
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x12
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x12
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x12
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x12
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x12
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x12
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x12
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x12
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x12
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x12
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x12
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x12
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x12
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x12
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x12
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x12
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x11
	.long	0xdff
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x12
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x12
	.string	"NIL"
	.sleb128 1
	.uleb128 0x12
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x12
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x12
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x12
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x12
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x12
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x12
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x12
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x12
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x12
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x12
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x12
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x12
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x12
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x12
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x12
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x12
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x12
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x12
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x12
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x12
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x12
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x12
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x12
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x12
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x12
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x12
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x12
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x12
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x12
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x12
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x12
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x12
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x12
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x12
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x12
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x12
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x12
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x12
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x12
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x12
	.string	"INSN"
	.sleb128 42
	.uleb128 0x12
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x12
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x12
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x12
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x12
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x12
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x12
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x12
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x12
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x12
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x12
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x12
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x12
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x12
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x12
	.string	"SET"
	.sleb128 57
	.uleb128 0x12
	.string	"USE"
	.sleb128 58
	.uleb128 0x12
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x12
	.string	"CALL"
	.sleb128 60
	.uleb128 0x12
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x12
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x12
	.string	"RESX"
	.sleb128 63
	.uleb128 0x12
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x12
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x12
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x12
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x12
	.string	"CONST"
	.sleb128 68
	.uleb128 0x12
	.string	"PC"
	.sleb128 69
	.uleb128 0x12
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x12
	.string	"REG"
	.sleb128 71
	.uleb128 0x12
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x12
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x12
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x12
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x12
	.string	"MEM"
	.sleb128 76
	.uleb128 0x12
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x12
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x12
	.string	"CC0"
	.sleb128 79
	.uleb128 0x12
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x12
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x12
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x12
	.string	"COND"
	.sleb128 83
	.uleb128 0x12
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x12
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x12
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x12
	.string	"NEG"
	.sleb128 87
	.uleb128 0x12
	.string	"MULT"
	.sleb128 88
	.uleb128 0x12
	.string	"DIV"
	.sleb128 89
	.uleb128 0x12
	.string	"MOD"
	.sleb128 90
	.uleb128 0x12
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x12
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x12
	.string	"AND"
	.sleb128 93
	.uleb128 0x12
	.string	"IOR"
	.sleb128 94
	.uleb128 0x12
	.string	"XOR"
	.sleb128 95
	.uleb128 0x12
	.string	"NOT"
	.sleb128 96
	.uleb128 0x12
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x12
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x12
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x12
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x12
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x12
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x12
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x12
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x12
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x12
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x12
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x12
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x12
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x12
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x12
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x12
	.string	"NE"
	.sleb128 112
	.uleb128 0x12
	.string	"EQ"
	.sleb128 113
	.uleb128 0x12
	.string	"GE"
	.sleb128 114
	.uleb128 0x12
	.string	"GT"
	.sleb128 115
	.uleb128 0x12
	.string	"LE"
	.sleb128 116
	.uleb128 0x12
	.string	"LT"
	.sleb128 117
	.uleb128 0x12
	.string	"GEU"
	.sleb128 118
	.uleb128 0x12
	.string	"GTU"
	.sleb128 119
	.uleb128 0x12
	.string	"LEU"
	.sleb128 120
	.uleb128 0x12
	.string	"LTU"
	.sleb128 121
	.uleb128 0x12
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x12
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x12
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x12
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x12
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x12
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x12
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x12
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x12
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x12
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x12
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x12
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x12
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x12
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x12
	.string	"FIX"
	.sleb128 136
	.uleb128 0x12
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x12
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x12
	.string	"ABS"
	.sleb128 139
	.uleb128 0x12
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x12
	.string	"FFS"
	.sleb128 141
	.uleb128 0x12
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x12
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x12
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x12
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x12
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x12
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x12
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x12
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x12
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x12
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x12
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x12
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x12
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x12
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x12
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x12
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x12
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x12
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x12
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x12
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x12
	.string	"PHI"
	.sleb128 162
	.uleb128 0x12
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x13
	.long	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0x2f0
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
	.long	0xdff
	.uleb128 0x14
	.long	0xf50
	.long	.LASF1
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF1
	.byte	0x3
	.byte	0x6e
	.long	0xef4
	.uleb128 0x16
	.long	0x102d
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x17
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x38c
	.uleb128 0x17
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x217
	.uleb128 0x17
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x2f0
	.uleb128 0x17
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x204
	.uleb128 0x17
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9d
	.uleb128 0x17
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19e
	.uleb128 0x17
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x3e7
	.uleb128 0x17
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0xed9
	.uleb128 0x17
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1041
	.uleb128 0x17
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x10a9
	.uleb128 0x17
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e6
	.uleb128 0x17
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1234
	.uleb128 0x17
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x123a
	.byte	0x0
	.uleb128 0x18
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x102d
	.uleb128 0x4
	.long	0x10a9
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x1348
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x1348
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
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
	.long	0x1047
	.uleb128 0x4
	.long	0x1234
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1a36
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1a36
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1966
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1966
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1966
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1966
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1234
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1234
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x1cb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1974
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
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
	.long	0x10af
	.uleb128 0x3
	.byte	0x4
	.long	0xf50
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0xf5b
	.uleb128 0xd
	.long	0x125f
	.long	0x1240
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x126f
	.long	0x9d
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x9
	.byte	0x29
	.long	0x39d
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x9
	.byte	0x34
	.long	0x12a2
	.uleb128 0xd
	.long	0x12b2
	.long	0x1275
	.uleb128 0xe
	.long	0x307
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x35b
	.uleb128 0x4
	.long	0x131c
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x19
	.long	.LASF2
	.byte	0x5
	.byte	0x35
	.long	0x131c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x131c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1322
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12c5
	.uleb128 0xd
	.long	0x1332
	.long	0x12b2
	.uleb128 0xe
	.long	0x307
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x12c5
	.uleb128 0x3
	.byte	0x4
	.long	0x1332
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x10a9
	.uleb128 0x4
	.long	0x13b6
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x13b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x13c6
	.long	0x39d
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x13d5
	.uleb128 0x3
	.byte	0x4
	.long	0x135c
	.uleb128 0x4
	.long	0x1411
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xb
	.byte	0x32
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xb
	.byte	0x36
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.long	0x15ac
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xb
	.byte	0x3c
	.uleb128 0x12
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x12
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x12
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x12
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x12
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x12
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x12
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x12
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x12
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x12
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x12
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x12
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x12
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x12
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x12
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x12
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x12
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x12
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x12
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x12
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x12
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x16
	.long	0x16a8
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xb
	.byte	0x55
	.uleb128 0x17
	.string	"c"
	.byte	0xb
	.byte	0x56
	.long	0x3d1
	.uleb128 0x17
	.string	"uc"
	.byte	0xb
	.byte	0x58
	.long	0x16a8
	.uleb128 0x17
	.string	"s"
	.byte	0xb
	.byte	0x5a
	.long	0x16b8
	.uleb128 0x17
	.string	"us"
	.byte	0xb
	.byte	0x5c
	.long	0x16c8
	.uleb128 0x17
	.string	"i"
	.byte	0xb
	.byte	0x5e
	.long	0x16d8
	.uleb128 0x17
	.string	"u"
	.byte	0xb
	.byte	0x60
	.long	0x16e8
	.uleb128 0x17
	.string	"l"
	.byte	0xb
	.byte	0x62
	.long	0x16f8
	.uleb128 0x17
	.string	"ul"
	.byte	0xb
	.byte	0x64
	.long	0x1708
	.uleb128 0x17
	.string	"hint"
	.byte	0xb
	.byte	0x66
	.long	0x1718
	.uleb128 0x17
	.string	"uhint"
	.byte	0xb
	.byte	0x68
	.long	0x13b6
	.uleb128 0x17
	.string	"generic"
	.byte	0xb
	.byte	0x6a
	.long	0x1728
	.uleb128 0x17
	.string	"cptr"
	.byte	0xb
	.byte	0x6c
	.long	0x1738
	.uleb128 0x17
	.string	"rtx"
	.byte	0xb
	.byte	0x6e
	.long	0x1748
	.uleb128 0x17
	.string	"rtvec"
	.byte	0xb
	.byte	0x70
	.long	0x1758
	.uleb128 0x17
	.string	"tree"
	.byte	0xb
	.byte	0x72
	.long	0x1768
	.uleb128 0x17
	.string	"bitmap"
	.byte	0xb
	.byte	0x74
	.long	0x1778
	.uleb128 0x17
	.string	"reg"
	.byte	0xb
	.byte	0x76
	.long	0x1788
	.uleb128 0x17
	.string	"const_equiv"
	.byte	0xb
	.byte	0x78
	.long	0x1884
	.uleb128 0x17
	.string	"bb"
	.byte	0xb
	.byte	0x7a
	.long	0x1894
	.uleb128 0x17
	.string	"te"
	.byte	0xb
	.byte	0x7c
	.long	0x18a4
	.byte	0x0
	.uleb128 0xd
	.long	0x16b8
	.long	0x334
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x16c8
	.long	0x37f
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x16d8
	.long	0x345
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x16e8
	.long	0x217
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x16f8
	.long	0x2f0
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1708
	.long	0x3b7
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1718
	.long	0x35b
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1728
	.long	0x38c
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1738
	.long	0x3c3
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1748
	.long	0x3c5
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1758
	.long	0xa8
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1768
	.long	0x1ab
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1778
	.long	0x1f2
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1788
	.long	0x10a9
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1798
	.long	0x187e
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x187e
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0xb
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0xd
	.byte	0x31
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0xd
	.byte	0x32
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0xd
	.byte	0x33
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0xd
	.byte	0x36
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0xd
	.byte	0x39
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0xd
	.byte	0x3a
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0xd
	.byte	0x3b
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0xd
	.byte	0x3c
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0xd
	.byte	0x3d
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.long	.LASF3
	.byte	0xd
	.byte	0x3e
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0xd
	.byte	0x3f
	.long	0x20f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1798
	.uleb128 0xd
	.long	0x1894
	.long	0x13db
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x18a4
	.long	0x1234
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x18b4
	.long	0x18bf
	.uleb128 0xe
	.long	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x18b4
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xb
	.byte	0x7e
	.long	0x15ac
	.uleb128 0x4
	.long	0x194d
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xb
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xb
	.byte	0x82
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xb
	.byte	0x83
	.long	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xb
	.byte	0x85
	.long	0x1411
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xb
	.byte	0x86
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xb
	.byte	0x87
	.long	0x18c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xb
	.byte	0x8a
	.long	0x1960
	.uleb128 0x3
	.byte	0x4
	.long	0x18d8
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x134e
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x38c
	.uleb128 0x4
	.long	0x1a30
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1a30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1a30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x1234
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x1234
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1974
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1985
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1a30
	.uleb128 0x4
	.long	0x1cb1
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xb
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x1cb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x1cb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x1cb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x1cc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x1cb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x1cb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x13c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x1cc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x1cc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x13c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x1cc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x1cb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x1cb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1a
	.long	.LASF2
	.byte	0x6
	.value	0x1b7
	.long	0x1cb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
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
	.long	0x1a42
	.uleb128 0x15
	.long	.LASF3
	.byte	0x6
	.byte	0xe6
	.long	0x1234
	.uleb128 0x3
	.byte	0x4
	.long	0x1a36
	.uleb128 0x3
	.byte	0x4
	.long	0x1cb1
	.uleb128 0x4
	.long	0x1d33
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xe
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xe
	.byte	0x18
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xe
	.byte	0x19
	.long	0x3e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xe
	.byte	0x1a
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF2
	.byte	0xe
	.byte	0x1b
	.long	0x1d33
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1cce
	.uleb128 0x14
	.long	0x1d81
	.long	.LASF4
	.byte	0x10
	.byte	0xe
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xe
	.byte	0x26
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xe
	.byte	0x27
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF5
	.byte	0xe
	.byte	0x28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF2
	.byte	0xe
	.byte	0x29
	.long	0x1d81
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d39
	.uleb128 0x4
	.long	0x1ed6
	.string	"emit_status"
	.byte	0x34
	.byte	0xe
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xe
	.byte	0x3a
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xe
	.byte	0x3d
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xe
	.byte	0x44
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xe
	.byte	0x45
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.long	.LASF5
	.byte	0xe
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.long	.LASF4
	.byte	0xe
	.byte	0x50
	.long	0x1d81
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xe
	.byte	0x54
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xe
	.byte	0x58
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xe
	.byte	0x59
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xe
	.byte	0x5f
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xe
	.byte	0x65
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xe
	.byte	0x69
	.long	0x1ed6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xe
	.byte	0x70
	.long	0x126f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x4
	.long	0x1fbc
	.string	"expr_status"
	.byte	0x1c
	.byte	0xe
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xe
	.byte	0x80
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xe
	.byte	0x91
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xe
	.byte	0x97
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xe
	.byte	0x9c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xe
	.byte	0x9f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xe
	.byte	0xa2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xe
	.byte	0xa5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1b
	.long	0x2026
	.long	.LASF6
	.byte	0x4
	.byte	0xe
	.value	0x1f1
	.uleb128 0x12
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x12
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x12
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1c
	.long	0x29e5
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x1f
	.uleb128 0x6
	.string	"eh"
	.byte	0xe
	.byte	0xb5
	.long	0x29f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xe
	.byte	0xb6
	.long	0x2a05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xe
	.byte	0xb7
	.long	0x2a0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xe
	.byte	0xb8
	.long	0x2a11
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xe
	.byte	0xb9
	.long	0x2a27
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0xe
	.byte	0xbe
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xe
	.byte	0xc1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xe
	.byte	0xc4
	.long	0x2a2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xe
	.byte	0xc9
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0xe
	.byte	0xce
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xe
	.byte	0xd3
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xe
	.byte	0xd7
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xe
	.byte	0xdb
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xe
	.byte	0xdf
	.long	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xe
	.byte	0xe5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xe
	.byte	0xe8
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xe
	.byte	0xec
	.long	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xe
	.byte	0xf0
	.long	0x2a4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xe
	.byte	0xf3
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xe
	.byte	0xf8
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xe
	.byte	0xfe
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xe
	.value	0x102
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xe
	.value	0x107
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0xe
	.value	0x10d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0xe
	.value	0x112
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0xe
	.value	0x115
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0xe
	.value	0x116
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0xe
	.value	0x11a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0xe
	.value	0x11e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0xe
	.value	0x121
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0xe
	.value	0x125
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0xe
	.value	0x128
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0xe
	.value	0x12e
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0xe
	.value	0x133
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0xe
	.value	0x138
	.long	0x38c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0xe
	.value	0x13d
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0xe
	.value	0x146
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0xe
	.value	0x149
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0xe
	.value	0x14d
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0xe
	.value	0x151
	.long	0x2f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0xe
	.value	0x157
	.long	0x126f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0xe
	.value	0x15a
	.long	0x2a5c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0xe
	.value	0x15d
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0xe
	.value	0x160
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0xe
	.value	0x166
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0xe
	.value	0x16a
	.long	0x1d33
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0xe
	.value	0x16d
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0xe
	.value	0x16e
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0xe
	.value	0x16f
	.long	0x19e
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0xe
	.value	0x170
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0xe
	.value	0x173
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0xe
	.value	0x175
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0xe
	.value	0x178
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0xe
	.value	0x17d
	.long	0x2a75
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0xe
	.value	0x17f
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0xe
	.value	0x181
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xb
	.string	"language"
	.byte	0xe
	.value	0x184
	.long	0x2a8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0xe
	.value	0x18a
	.long	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1d
	.string	"returns_struct"
	.byte	0xe
	.value	0x190
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"returns_pcc_struct"
	.byte	0xe
	.value	0x194
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"returns_pointer"
	.byte	0xe
	.value	0x197
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"needs_context"
	.byte	0xe
	.value	0x19a
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_setjmp"
	.byte	0xe
	.value	0x19d
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_longjmp"
	.byte	0xe
	.value	0x1a0
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_alloca"
	.byte	0xe
	.value	0x1a4
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"calls_eh_return"
	.byte	0xe
	.value	0x1a7
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_nonlocal_label"
	.byte	0xe
	.value	0x1ab
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_nonlocal_goto"
	.byte	0xe
	.value	0x1af
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"contains_functions"
	.byte	0xe
	.value	0x1b2
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"has_computed_jump"
	.byte	0xe
	.value	0x1b5
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"is_thunk"
	.byte	0xe
	.value	0x1ba
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"all_throwers_are_sibcalls"
	.byte	0xe
	.value	0x1c1
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"instrument_entry_exit"
	.byte	0xe
	.value	0x1c5
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"arc_profile"
	.byte	0xe
	.value	0x1c8
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"profile"
	.byte	0xe
	.value	0x1cb
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"limit_stack"
	.byte	0xe
	.value	0x1cf
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"stdarg"
	.byte	0xe
	.value	0x1d2
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"x_whole_function_mode_p"
	.byte	0xe
	.value	0x1d8
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xe
	.value	0x1e1
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_const_pool"
	.byte	0xe
	.value	0x1e4
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_pic_offset_table"
	.byte	0xe
	.value	0x1e7
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"uses_eh_lsda"
	.byte	0xe
	.value	0x1ea
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1d
	.string	"arg_pointer_save_area_init"
	.byte	0xe
	.value	0x1ed
	.long	0x2f0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1a
	.long	.LASF6
	.byte	0xe
	.value	0x1fa
	.long	0x1fbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0xe
	.value	0x1fe
	.long	0x217
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x18
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x29e5
	.uleb128 0x18
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x29f7
	.uleb128 0x3
	.byte	0x4
	.long	0x1edc
	.uleb128 0x3
	.byte	0x4
	.long	0x1d87
	.uleb128 0x18
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a17
	.uleb128 0x3
	.byte	0x4
	.long	0x2026
	.uleb128 0x18
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a33
	.uleb128 0x18
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a50
	.uleb128 0x18
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a62
	.uleb128 0x18
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2a7b
	.uleb128 0x4
	.long	0x2afd
	.string	"resources"
	.byte	0x1c
	.byte	0x8
	.byte	0x1c
	.uleb128 0x6
	.string	"memory"
	.byte	0x8
	.byte	0x1d
	.long	0x20f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unch_memory"
	.byte	0x8
	.byte	0x1e
	.long	0x20f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"volatil"
	.byte	0x8
	.byte	0x1f
	.long	0x20f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"cc"
	.byte	0x8
	.byte	0x20
	.long	0x20f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.string	"regs"
	.byte	0x8
	.byte	0x21
	.long	0x128e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.long	0x2b4a
	.string	"mark_resource_type"
	.byte	0x4
	.byte	0x8
	.byte	0x26
	.uleb128 0x12
	.string	"MARK_SRC_DEST"
	.sleb128 0
	.uleb128 0x12
	.string	"MARK_SRC_DEST_CALL"
	.sleb128 1
	.uleb128 0x12
	.string	"MARK_DEST"
	.sleb128 2
	.byte	0x0
	.uleb128 0x8
	.long	0x204
	.uleb128 0x14
	.long	0x2b8c
	.long	.LASF7
	.byte	0xc
	.byte	0x11
	.byte	0x2d
	.uleb128 0x6
	.string	"option"
	.byte	0x11
	.byte	0x30
	.long	0x2b4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"value"
	.byte	0x11
	.byte	0x32
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"help"
	.byte	0x11
	.byte	0x34
	.long	0x2b4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF7
	.byte	0x11
	.byte	0x35
	.long	0x2b4f
	.uleb128 0x4
	.long	0x2bfe
	.string	"target_info"
	.byte	0x28
	.byte	0x1
	.byte	0x2b
	.uleb128 0x6
	.string	"uid"
	.byte	0x1
	.byte	0x2c
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF2
	.byte	0x1
	.byte	0x2d
	.long	0x2bfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"live_regs"
	.byte	0x1
	.byte	0x2e
	.long	0x128e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"block"
	.byte	0x1
	.byte	0x2f
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"bb_tick"
	.byte	0x1
	.byte	0x30
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2b97
	.uleb128 0x1e
	.long	0x2c7e
	.string	"update_live_status"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1f
	.string	"dest"
	.byte	0x1
	.byte	0x5b
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0x5c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"data"
	.byte	0x1
	.byte	0x5d
	.long	0x3c3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF8
	.byte	0x1
	.byte	0x5f
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF9
	.byte	0x1
	.byte	0x5f
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x60
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x22
	.long	0x2cda
	.string	"find_basic_block"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0x217
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x23
	.long	.LASF10
	.byte	0x1
	.byte	0x85
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"search_limit"
	.byte	0x1
	.byte	0x86
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0x88
	.long	0x1cb7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x22
	.long	0x2d3b
	.string	"next_insn_no_annul"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	0x9d
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x23
	.long	.LASF10
	.byte	0x1
	.byte	0xac
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x20
	.long	.LASF2
	.byte	0x1
	.byte	0xb8
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.string	"code"
	.byte	0x1
	.byte	0xb9
	.long	0x630
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x2ee5
	.byte	0x1
	.string	"mark_referenced_resources"
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.byte	0xd4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"res"
	.byte	0x1
	.byte	0xd5
	.long	0x2ee5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF11
	.byte	0x1
	.byte	0xd6
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"code"
	.byte	0x1
	.byte	0xd8
	.long	0x630
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xd9
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.byte	0xd9
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.byte	0xda
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x20
	.long	.LASF12
	.byte	0x1
	.byte	0xdb
	.long	0x204
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	0x2e03
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x20
	.long	.LASF13
	.byte	0x1
	.byte	0xef
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.long	.LASF9
	.byte	0x1
	.byte	0xf0
	.long	0x2f0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x26
	.long	0x2e2d
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x20
	.long	.LASF13
	.byte	0x1
	.byte	0xfc
	.long	0x2f0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.long	.LASF9
	.byte	0x1
	.byte	0xfd
	.long	0x2f0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x26
	.long	0x2ed4
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x154
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"sequence"
	.byte	0x1
	.value	0x155
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"seq_size"
	.byte	0x1
	.value	0x156
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x157
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	0x2e9b
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x179
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x24
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x28
	.string	"link"
	.byte	0x1
	.value	0x17c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x28
	.string	"slot_pat"
	.byte	0x1
	.value	0x185
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	.LASF15
	.long	0x3b7e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10487
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2a95
	.uleb128 0x3
	.byte	0x4
	.long	0x1275
	.uleb128 0x2a
	.long	0x32be
	.string	"find_dead_or_set_registers"
	.byte	0x1
	.value	0x1c2
	.byte	0x1
	.long	0x9d
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2b
	.string	"target"
	.byte	0x1
	.value	0x1bd
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"res"
	.byte	0x1
	.value	0x1be
	.long	0x2ee5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x1bf
	.long	0x126f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"jump_count"
	.byte	0x1
	.value	0x1c0
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1c1
	.long	0x2a95
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"needed"
	.byte	0x1
	.value	0x1c1
	.long	0x2a95
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x28
	.string	"scratch"
	.byte	0x1
	.value	0x1c3
	.long	0x128e
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x1c4
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.long	.LASF2
	.byte	0x1
	.value	0x1c4
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x27
	.long	.LASF17
	.byte	0x1
	.value	0x1c5
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1c6
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x24
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x28
	.string	"this_jump_insn"
	.byte	0x1
	.value	0x1ca
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	0x3030
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x1da
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x1da
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x26
	.long	0x305e
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x1db
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x1db
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x26
	.long	0x307c
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x1dc
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x26
	.long	0x323c
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x28
	.string	"target_set"
	.byte	0x1
	.value	0x214
	.long	0x2a95
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x28
	.string	"target_res"
	.byte	0x1
	.value	0x214
	.long	0x2a95
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.string	"fallthrough_res"
	.byte	0x1
	.value	0x215
	.long	0x2a95
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x26
	.long	0x3101
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x245
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x245
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x26
	.long	0x312f
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x246
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x246
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x26
	.long	0x315d
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x247
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x247
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x26
	.long	0x318b
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x24a
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x24a
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x26
	.long	0x31b9
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x24b
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x24b
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x26
	.long	0x31e7
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x24c
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x24c
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x26
	.long	0x3213
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x254
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x254
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x24
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x255
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x255
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3268
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x268
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x268
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x26
	.long	0x3294
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x269
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x269
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x24
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x26a
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x26a
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3422
	.byte	0x1
	.string	"mark_set_resources"
	.byte	0x1
	.value	0x284
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x280
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"res"
	.byte	0x1
	.value	0x281
	.long	0x2ee5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"in_dest"
	.byte	0x1
	.value	0x282
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"mark_type"
	.byte	0x1
	.value	0x283
	.long	0x2afd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"code"
	.byte	0x1
	.value	0x285
	.long	0x630
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x286
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x286
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.value	0x287
	.long	0x2f0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF12
	.byte	0x1
	.value	0x288
	.long	0x204
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"restart"
	.byte	0x1
	.value	0x2cd
	.long	.L184
	.uleb128 0x26
	.long	0x33b9
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x28
	.string	"link"
	.byte	0x1
	.value	0x2aa
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x2ba
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x33e5
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x313
	.long	0x2f0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x314
	.long	0x2f0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x26
	.long	0x3411
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x322
	.long	0x2f0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x323
	.long	0x2f0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x29
	.long	.LASF15
	.long	0x3b69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11100
	.byte	0x0
	.uleb128 0x2d
	.long	0x398f
	.byte	0x1
	.string	"mark_target_live_regs"
	.byte	0x1
	.value	0x38b
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2b
	.string	"insns"
	.byte	0x1
	.value	0x388
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"target"
	.byte	0x1
	.value	0x389
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"res"
	.byte	0x1
	.value	0x38a
	.long	0x2ee5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x38c
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x38d
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x28
	.string	"tinfo"
	.byte	0x1
	.value	0x38e
	.long	0x2bfe
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x38f
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x27
	.long	.LASF17
	.byte	0x1
	.value	0x390
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x27
	.long	.LASF16
	.byte	0x1
	.value	0x391
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x28
	.string	"scratch"
	.byte	0x1
	.value	0x392
	.long	0x128e
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x393
	.long	0x2a95
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x28
	.string	"needed"
	.byte	0x1
	.value	0x393
	.long	0x2a95
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x26
	.long	0x3543
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x3bc
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x3bc
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.byte	0x0
	.uleb128 0x26
	.long	0x3561
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x3cd
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.byte	0x0
	.uleb128 0x26
	.long	0x37ec
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x28
	.string	"regs_live"
	.byte	0x1
	.value	0x3d4
	.long	0x1966
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x3d5
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x27
	.long	.LASF13
	.byte	0x1
	.value	0x3d6
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.string	"start_insn"
	.byte	0x1
	.value	0x3d7
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x3d7
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	0x35e7
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x3dd
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.byte	0x0
	.uleb128 0x26
	.long	0x367b
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x28
	.string	"ptr_"
	.byte	0x1
	.value	0x3df
	.long	0x1348
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.string	"indx_"
	.byte	0x1
	.value	0x3df
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x28
	.string	"bit_num_"
	.byte	0x1
	.value	0x3df
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.string	"word_num_"
	.byte	0x1
	.value	0x3df
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x24
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x28
	.string	"word_"
	.byte	0x1
	.value	0x3df
	.long	0x12b2
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x28
	.string	"mask_"
	.byte	0x1
	.value	0x3df
	.long	0x12b2
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x37c1
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x28
	.string	"link"
	.byte	0x1
	.value	0x3fd
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"real_insn"
	.byte	0x1
	.value	0x3fe
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x28
	.string	"code"
	.byte	0x1
	.value	0x3ff
	.long	0x630
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	0x36ee
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x413
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x413
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0x0
	.uleb128 0x26
	.long	0x371c
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x42d
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x42e
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x26
	.long	0x374a
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x440
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x441
	.long	0x2f0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x26
	.long	0x3778
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x44f
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x44f
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x26
	.long	0x3796
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x450
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x24
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x458
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x458
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x45b
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x45b
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x380a
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x465
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x26
	.long	0x3828
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x467
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x26
	.long	0x3846
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x468
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x26
	.long	0x3966
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x28
	.string	"new_resources"
	.byte	0x1
	.value	0x474
	.long	0x2a95
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x27
	.long	.LASF19
	.byte	0x1
	.value	0x475
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	0x389b
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x479
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x26
	.long	0x38b9
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x47a
	.long	0x2eeb
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x26
	.long	0x38e5
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x481
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x481
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x26
	.long	0x3911
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x482
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x482
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x26
	.long	0x393d
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x483
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x483
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x24
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x488
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x488
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x48d
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF18
	.byte	0x1
	.value	0x48d
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x39f8
	.byte	0x1
	.string	"init_resource_info"
	.byte	0x1
	.value	0x497
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2b
	.string	"epilogue_insn"
	.byte	0x1
	.value	0x496
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x498
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x4a4
	.long	0x2eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3a6a
	.byte	0x1
	.string	"free_resource_info"
	.byte	0x1
	.value	0x4e3
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x24
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x4e6
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x28
	.string	"ti"
	.byte	0x1
	.value	0x4ea
	.long	0x2bfe
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x27
	.long	.LASF2
	.byte	0x1
	.value	0x4ee
	.long	0x2bfe
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3abc
	.byte	0x1
	.string	"clear_hashed_info_for_insn"
	.byte	0x1
	.value	0x504
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x503
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"tinfo"
	.byte	0x1
	.value	0x505
	.long	0x2bfe
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	0x3b03
	.byte	0x1
	.string	"incr_ticks_for_insn"
	.byte	0x1
	.value	0x518
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2c
	.long	.LASF10
	.byte	0x1
	.value	0x517
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x519
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3b59
	.byte	0x1
	.string	"mark_end_of_function_resources"
	.byte	0x1
	.value	0x525
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2b
	.string	"trial"
	.byte	0x1
	.value	0x523
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF11
	.byte	0x1
	.value	0x524
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xd
	.long	0x3b69
	.long	0x20f
	.uleb128 0xe
	.long	0x307
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x3b59
	.uleb128 0xd
	.long	0x3b7e
	.long	0x20f
	.uleb128 0xe
	.long	0x307
	.byte	0x19
	.byte	0x0
	.uleb128 0x8
	.long	0x3b6e
	.uleb128 0x21
	.string	"start_of_epilogue_needs"
	.byte	0x1
	.byte	0x36
	.long	0x2a95
	.byte	0x5
	.byte	0x3
	.long	start_of_epilogue_needs
	.uleb128 0x21
	.string	"end_of_function_needs"
	.byte	0x1
	.byte	0x39
	.long	0x2a95
	.byte	0x5
	.byte	0x3
	.long	end_of_function_needs
	.uleb128 0x21
	.string	"target_hash_table"
	.byte	0x1
	.byte	0x3c
	.long	0x3bea
	.byte	0x5
	.byte	0x3
	.long	target_hash_table
	.uleb128 0x3
	.byte	0x4
	.long	0x2bfe
	.uleb128 0x21
	.string	"bb_ticks"
	.byte	0x1
	.byte	0x43
	.long	0x3e1
	.byte	0x5
	.byte	0x3
	.long	bb_ticks
	.uleb128 0x21
	.string	"current_live_regs"
	.byte	0x1
	.byte	0x48
	.long	0x128e
	.byte	0x5
	.byte	0x3
	.long	current_live_regs
	.uleb128 0x21
	.string	"pending_dead_regs"
	.byte	0x1
	.byte	0x4d
	.long	0x128e
	.byte	0x5
	.byte	0x3
	.long	pending_dead_regs
	.uleb128 0xd
	.long	0x3c54
	.long	0x20f
	.uleb128 0xe
	.long	0x307
	.byte	0xaf
	.byte	0x0
	.uleb128 0x2f
	.string	"call_used_regs"
	.byte	0x9
	.value	0x196
	.long	0x3c44
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"target_flags"
	.byte	0xa
	.byte	0x21
	.long	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x3c93
	.long	0x334
	.uleb128 0xe
	.long	0x307
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_length"
	.byte	0x3
	.byte	0x3c
	.long	0x3ca7
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x3c83
	.uleb128 0xd
	.long	0x3cbc
	.long	0x204
	.uleb128 0xe
	.long	0x307
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_format"
	.byte	0x3
	.byte	0x42
	.long	0x3cd0
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x3cac
	.uleb128 0xd
	.long	0x3ce5
	.long	0x20f
	.uleb128 0xe
	.long	0x307
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x3cf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x3cd5
	.uleb128 0x2f
	.string	"global_regs"
	.byte	0x9
	.value	0x1b4
	.long	0x3c44
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"regs_invalidated_by_call"
	.byte	0x9
	.value	0x1bd
	.long	0x128e
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"last_basic_block"
	.byte	0x6
	.byte	0xf6
	.long	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"basic_block_info"
	.byte	0x6
	.byte	0xfe
	.long	0x194d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x3d7a
	.long	0x10af
	.uleb128 0xe
	.long	0x307
	.byte	0x1
	.byte	0x0
	.uleb128 0x2f
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x3d6a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"cfun"
	.byte	0xe
	.value	0x202
	.long	0x2a2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"reg_renumber"
	.byte	0xd
	.byte	0x9a
	.long	0x3dbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x37f
	.uleb128 0x2f
	.string	"frame_pointer_needed"
	.byte	0xf
	.value	0x266
	.long	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"current_function_sp_is_unchanging"
	.byte	0x10
	.value	0x1ad
	.long	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"compiler_params"
	.byte	0x11
	.byte	0x3a
	.long	0x3e25
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2b8c
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
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.long	0xe5
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3e2c
	.long	0x2d3b
	.string	"mark_referenced_resources"
	.long	0x32be
	.string	"mark_set_resources"
	.long	0x3422
	.string	"mark_target_live_regs"
	.long	0x398f
	.string	"init_resource_info"
	.long	0x39f8
	.string	"free_resource_info"
	.long	0x3a6a
	.string	"clear_hashed_info_for_insn"
	.long	0x3abc
	.string	"incr_ticks_for_insn"
	.long	0x3b03
	.string	"mark_end_of_function_resources"
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
.LASF17:
	.string	"jump_insn"
.LASF2:
	.string	"next"
.LASF10:
	.string	"insn"
.LASF7:
	.string	"param_info"
.LASF3:
	.string	"basic_block"
.LASF16:
	.string	"jump_target"
.LASF14:
	.string	"scan_tp_"
.LASF9:
	.string	"last_regno"
.LASF1:
	.string	"mem_attrs"
.LASF12:
	.string	"format_ptr"
.LASF19:
	.string	"stop_insn"
.LASF11:
	.string	"include_delayed_effects"
.LASF4:
	.string	"sequence_stack"
.LASF15:
	.string	"__FUNCTION__"
.LASF8:
	.string	"first_regno"
.LASF6:
	.string	"function_frequency"
.LASF5:
	.string	"sequence_rtl_expr"
.LASF18:
	.string	"scan_fp_"
.LASF0:
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
