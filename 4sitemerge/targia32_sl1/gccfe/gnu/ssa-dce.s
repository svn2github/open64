	.file	"ssa-dce.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	control_dependent_block_to_edge_map_create, @function
control_dependent_block_to_edge_map_create:
.LFB15:
	.file 1 "../../../kgccfe/gnu/ssa-dce.c"
	.loc 1 162 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$32, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 165 0
	movl	$8, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 166 0
	movl	8(%ebp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 167 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 168 0
	movl	$0, -16(%ebp)
	jmp	.L2
.L3:
	.loc 1 169 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, (%esi)
	.loc 1 168 0
	addl	$1, -16(%ebp)
.L2:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L3
	.loc 1 171 0
	movl	-12(%ebp), %eax
	.loc 1 172 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	control_dependent_block_to_edge_map_create, .-control_dependent_block_to_edge_map_create
	.section	.rodata
	.align 32
	.type	__FUNCTION__.9428, @object
	.size	__FUNCTION__.9428, 44
__FUNCTION__.9428:
	.string	"set_control_dependent_block_to_edge_map_bit"
.LC0:
	.string	"../../../kgccfe/gnu/ssa-dce.c"
	.text
	.type	set_control_dependent_block_to_edge_map_bit, @function
set_control_dependent_block_to_edge_map_bit:
.LFB16:
	.loc 1 183 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$20, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 184 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jl	.L7
	.loc 1 185 0
	leal	__FUNCTION__.9428@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$185, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L7:
	.loc 1 187 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 189 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	set_control_dependent_block_to_edge_map_bit, .-set_control_dependent_block_to_edge_map_bit
	.type	control_dependent_block_to_edge_map_free, @function
control_dependent_block_to_edge_map_free:
.LFB17:
	.loc 1 206 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$20, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 208 0
	movl	$0, -8(%ebp)
	jmp	.L11
.L12:
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L13
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L13:
	.loc 1 208 0
	addl	$1, -8(%ebp)
.L11:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L12
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 211 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	control_dependent_block_to_edge_map_free, .-control_dependent_block_to_edge_map_free
	.type	find_all_control_dependences, @function
find_all_control_dependences:
.LFB18:
	.loc 1 223 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	subl	$40, %esp
.LCFI15:
	.loc 1 226 0
	movl	$0, -4(%ebp)
	jmp	.L18
.L19:
	.loc 1 227 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_control_dependence
	.loc 1 226 0
	addl	$1, -4(%ebp)
.L18:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	jg	.L19
	.loc 1 228 0
	leave
	ret
.LFE18:
	.size	find_all_control_dependences, .-find_all_control_dependences
	.section	.rodata
	.type	__FUNCTION__.9493, @object
	.size	__FUNCTION__.9493, 24
__FUNCTION__.9493:
	.string	"find_control_dependence"
	.text
	.type	find_control_dependence, @function
find_control_dependence:
.LFB19:
	.loc 1 242 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$36, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 246 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L23
	.loc 1 247 0
	leal	__FUNCTION__.9493@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$247, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L23:
	.loc 1 248 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L25
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L27
.L25:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_pdom
	movl	%eax, -24(%ebp)
.L27:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 253 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 254 0
	jmp	.L28
.L29:
	.loc 1 257 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	set_control_dependent_block_to_edge_map_bit
	.loc 1 255 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_pdom
	movl	%eax, -12(%ebp)
.L28:
	.loc 1 254 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L32
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L29
.L32:
	.loc 1 261 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	find_control_dependence, .-find_control_dependence
	.section	.rodata
	.type	__FUNCTION__.9539, @object
	.size	__FUNCTION__.9539, 10
__FUNCTION__.9539:
	.string	"find_pdom"
	.text
	.type	find_pdom, @function
find_pdom:
.LFB20:
	.loc 1 271 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$36, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 272 0
	cmpl	$0, 12(%ebp)
	jne	.L34
	.loc 1 273 0
	leal	__FUNCTION__.9539@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$273, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L34:
	.loc 1 274 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-3, %eax
	jne	.L36
	.loc 1 275 0
	leal	__FUNCTION__.9539@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$275, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L36:
	.loc 1 277 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L38
	.loc 1 278 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L40
.L38:
	.loc 1 279 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L41
	.loc 1 280 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L40
.L41:
.LBB2:
	.loc 1 283 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	%eax, -8(%ebp)
	.loc 1 284 0
	cmpl	$0, -8(%ebp)
	jne	.L43
	.loc 1 285 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L40
.L43:
	.loc 1 286 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L40:
	movl	-24(%ebp), %eax
.LBE2:
	.loc 1 288 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	find_pdom, .-find_pdom
	.type	inherently_necessary_register_1, @function
inherently_necessary_register_1:
.LFB21:
	.loc 1 302 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	subl	$24, %esp
.LCFI26:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 303 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 305 0
	cmpl	$0, -4(%ebp)
	jne	.L47
	.loc 1 306 0
	movl	$0, -24(%ebp)
	jmp	.L49
.L47:
	.loc 1 307 0
	movl	-4(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	cmpl	$69, -20(%ebp)
	je	.L52
	cmpl	$71, -20(%ebp)
	je	.L53
	cmpl	$59, -20(%ebp)
	je	.L51
	jmp	.L50
.L51:
	.loc 1 311 0
	movl	$-1, -24(%ebp)
	jmp	.L49
.L52:
	.loc 1 314 0
	movl	$0, -24(%ebp)
	jmp	.L49
.L53:
	.loc 1 317 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L54
	movl	global_rtl@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L56
.L54:
	.loc 1 318 0
	movl	$0, -24(%ebp)
	jmp	.L49
.L56:
	.loc 1 320 0
	movl	$1, -24(%ebp)
	jmp	.L49
.L50:
	.loc 1 323 0
	movl	$0, -24(%ebp)
.L49:
	movl	-24(%ebp), %eax
	.loc 1 326 0
	leave
	ret
.LFE21:
	.size	inherently_necessary_register_1, .-inherently_necessary_register_1
	.type	inherently_necessary_register, @function
inherently_necessary_register:
.LFB22:
	.loc 1 333 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$20, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 334 0
	movl	$0, 8(%esp)
	leal	inherently_necessary_register_1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 336 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	inherently_necessary_register, .-inherently_necessary_register
	.type	note_inherently_necessary_set, @function
note_inherently_necessary_set:
.LFB23:
	.loc 1 348 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	subl	$16, %esp
.LCFI33:
	.loc 1 349 0
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 351 0
	jmp	.L61
.L62:
	.loc 1 355 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L61:
	.loc 1 351 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L62
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L62
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L62
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L62
	.loc 1 357 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L67
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$52, %ax
	je	.L67
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$53, %ax
	jne	.L71
.L67:
	.loc 1 360 0
	movl	-4(%ebp), %eax
	movl	$1, (%eax)
.L71:
	.loc 1 361 0
	leave
	ret
.LFE23:
	.size	note_inherently_necessary_set, .-note_inherently_necessary_set
	.section	.rodata
	.type	__FUNCTION__.9617, @object
	.size	__FUNCTION__.9617, 26
__FUNCTION__.9617:
	.string	"find_inherently_necessary"
	.text
	.type	find_inherently_necessary, @function
find_inherently_necessary:
.LFB24:
	.loc 1 371 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$52, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 372 0
	cmpl	$0, 8(%ebp)
	jne	.L73
	.loc 1 373 0
	movl	$0, -32(%ebp)
	jmp	.L75
.L73:
	.loc 1 374 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	inherently_necessary_register
	testl	%eax, %eax
	je	.L76
	.loc 1 375 0
	movl	$1, -32(%ebp)
	jmp	.L75
.L76:
	.loc 1 377 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -36(%ebp)
	cmpl	$14, -36(%ebp)
	ja	.L78
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L83@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L83:
	.long	.L79@GOTOFF
	.long	.L80@GOTOFF
	.long	.L81@GOTOFF
	.long	.L81@GOTOFF
	.long	.L82@GOTOFF
	.long	.L82@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L78@GOTOFF
	.long	.L81@GOTOFF
	.text
.L81:
	.loc 1 382 0
	movl	$1, -32(%ebp)
	jmp	.L75
.L82:
	.loc 1 385 0
	movl	$0, -32(%ebp)
	jmp	.L75
.L80:
	.loc 1 387 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L84
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L86
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L86
.L84:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	computed_jump_p@PLT
	testl	%eax, %eax
	je	.L88
.L86:
	movl	$1, -28(%ebp)
	jmp	.L89
.L88:
	movl	$0, -28(%ebp)
.L89:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L75
.L79:
.LBB3:
	.loc 1 390 0
	movl	$0, -8(%ebp)
	.loc 1 391 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	note_inherently_necessary_set@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 398 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	jne	.L90
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	je	.L90
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L93
.L90:
	movl	$1, -24(%ebp)
	jmp	.L94
.L93:
	movl	$0, -24(%ebp)
.L94:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L75
.L78:
.LBE3:
	.loc 1 404 0
	leal	__FUNCTION__.9617@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$404, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L75:
	movl	-32(%ebp), %eax
	.loc 1 407 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	find_inherently_necessary, .-find_inherently_necessary
	.type	propagate_necessity_through_operand, @function
propagate_necessity_through_operand:
.LFB25:
	.loc 1 418 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$32, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 419 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 420 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 422 0
	cmpl	$0, -20(%ebp)
	jne	.L97
	.loc 1 423 0
	movl	$0, -28(%ebp)
	jmp	.L99
.L97:
	.loc 1 424 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	cmpl	$71, %eax
	je	.L101
	jmp	.L100
.L101:
	.loc 1 427 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L102
.LBB4:
	.loc 1 429 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 430 0
	cmpl	$0, -12(%ebp)
	je	.L102
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L102
	.loc 1 432 0
	movl	-12(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 433 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L106
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
.L106:
	movl	-16(%ebp), %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%ecx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L102:
.LBE4:
	.loc 1 436 0
	movl	$0, -28(%ebp)
	jmp	.L99
.L100:
	.loc 1 439 0
	movl	$0, -28(%ebp)
.L99:
	movl	-28(%ebp), %eax
	.loc 1 441 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	propagate_necessity_through_operand, .-propagate_necessity_through_operand
	.type	mark_all_insn_unnecessary, @function
mark_all_insn_unnecessary:
.LFB26:
	.loc 1 447 0
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
	.loc 1 449 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	jmp	.L110
.L111:
	.loc 1 450 0
	movl	-8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
	.loc 1 449 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L110:
	cmpl	$0, -8(%ebp)
	jne	.L111
	.loc 1 451 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	mark_all_insn_unnecessary, .-mark_all_insn_unnecessary
	.type	find_block_label, @function
find_block_label:
.LFB27:
	.loc 1 458 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$36, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 459 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 460 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L115
	.loc 1 461 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L117
.L115:
.LBB5:
	.loc 1 464 0
	call	gen_label_rtx@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_label_before@PLT
	movl	%eax, -8(%ebp)
	.loc 1 465 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L118
	.loc 1 466 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L118:
	.loc 1 467 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L117:
	movl	-24(%ebp), %eax
.LBE5:
	.loc 1 469 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	find_block_label, .-find_block_label
	.section	.rodata
	.type	__FUNCTION__.9718, @object
	.size	__FUNCTION__.9718, 15
__FUNCTION__.9718:
	.string	"delete_insn_bb"
	.text
	.type	delete_insn_bb, @function
delete_insn_bb:
.LFB28:
	.loc 1 476 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$20, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 477 0
	cmpl	$0, 8(%ebp)
	jne	.L122
	.loc 1 478 0
	leal	__FUNCTION__.9718@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$478, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L122:
	.loc 1 485 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L126
	.loc 1 488 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L126:
	.loc 1 489 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	delete_insn_bb, .-delete_insn_bb
	.section	.rodata
	.type	__FUNCTION__.9819, @object
	.size	__FUNCTION__.9819, 24
__FUNCTION__.9819:
	.string	"ssa_eliminate_dead_code"
.LC1:
	.string	"unprocessed instructions"
	.text
.globl ssa_eliminate_dead_code
	.type	ssa_eliminate_dead_code, @function
ssa_eliminate_dead_code:
.LFB29:
	.loc 1 495 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%esi
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$160, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 508 0
	call	mark_all_insn_unnecessary
	.loc 1 509 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$12, 4(%esp)
	movl	$64, (%esp)
	call	varray_init@PLT
	movl	%eax, -148(%ebp)
	.loc 1 511 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	control_dependent_block_to_edge_map_create
	movl	%eax, -136(%ebp)
	.loc 1 514 0
	call	connect_infinite_loops_to_exit@PLT
	.loc 1 517 0
	movl	$1, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, -132(%ebp)
	.loc 1 518 0
	call	create_edge_list@PLT
	movl	%eax, -128(%ebp)
	.loc 1 519 0
	movl	-136(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	find_all_control_dependences
	.loc 1 522 0
	call	get_insns@PLT
	movl	%eax, -144(%ebp)
	jmp	.L128
.L129:
	.loc 1 523 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	find_inherently_necessary
	testl	%eax, %eax
	je	.L130
	.loc 1 525 0
	movl	-144(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 526 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L132
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -148(%ebp)
.L132:
	movl	-148(%ebp), %esi
	movl	-148(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	-144(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L130:
	.loc 1 522 0
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -144(%ebp)
.L128:
	cmpl	$0, -144(%ebp)
	jne	.L129
	.loc 1 530 0
	jmp	.L241
.L136:
.LBB6:
	.loc 1 535 0
	movl	-148(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -152(%ebp)
	.loc 1 536 0
	movl	-148(%ebp), %edx
	movl	4(%edx), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 543 0
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L135
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L138
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L135
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L135
.L138:
.LBB7:
	.loc 1 547 0
	movl	-136(%ebp), %eax
	movl	(%eax), %edx
	movl	-152(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	jmp	.L141
.L142:
	movl	-120(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
.L141:
	cmpl	$0, -120(%ebp)
	je	.L143
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-116(%ebp), %eax
	jb	.L142
.L143:
	cmpl	$0, -120(%ebp)
	je	.L148
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-116(%ebp), %eax
	je	.L148
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	jmp	.L148
.L151:
.LBB8:
	movl	-108(%ebp), %eax
	movl	-120(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -104(%ebp)
	cmpl	$0, -104(%ebp)
	je	.L152
	jmp	.L154
.L155:
.LBB9:
	movl	-112(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -100(%ebp)
	movl	-100(%ebp), %eax
	andl	-104(%ebp), %eax
	testl	%eax, %eax
	je	.L156
	movl	-100(%ebp), %eax
	notl	%eax
	andl	%eax, -104(%ebp)
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-108(%ebp), %eax
	sall	$5, %eax
	addl	-112(%ebp), %eax
	movl	%eax, -124(%ebp)
.LBB10:
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L158
	movl	-96(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L158
	movl	-96(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L161
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -148(%ebp)
.L161:
	movl	-148(%ebp), %esi
	movl	-148(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L158:
.LBE10:
	cmpl	$0, -104(%ebp)
	je	.L152
.L156:
.LBE9:
	addl	$1, -112(%ebp)
.L154:
	cmpl	$31, -112(%ebp)
	jbe	.L155
.L152:
	movl	$0, -112(%ebp)
.LBE8:
	addl	$1, -108(%ebp)
.L150:
	cmpl	$3, -108(%ebp)
	jbe	.L151
	movl	$0, -108(%ebp)
	movl	-120(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
.L148:
	cmpl	$0, -120(%ebp)
	jne	.L150
.LBE7:
	.loc 1 560 0
	leal	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	propagate_necessity_through_operand@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 572 0
	movl	-152(%ebp), %eax
	testl	%eax, %eax
	je	.L135
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L135
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L135
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	jne	.L135
.LBB11:
	.loc 1 574 0
	movl	-152(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 575 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 578 0
	movl	-88(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -84(%ebp)
	jmp	.L169
.L170:
.LBB12:
	.loc 1 582 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-84(%ebp), %edx
	addl	$1, %edx
	movl	-92(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ecx,%eax,4), %eax
	movl	%eax, -80(%ebp)
.LBB13:
	.loc 1 583 0
	movl	-136(%ebp), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	jmp	.L171
.L172:
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L171:
	cmpl	$0, -76(%ebp)
	je	.L173
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-72(%ebp), %eax
	jb	.L172
.L173:
	cmpl	$0, -76(%ebp)
	je	.L178
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-72(%ebp), %eax
	je	.L178
	movl	$0, -68(%ebp)
	movl	$0, -64(%ebp)
	jmp	.L178
.L181:
.LBB14:
	movl	-64(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L182
	jmp	.L184
.L185:
.LBB15:
	movl	-68(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	andl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L186
	movl	-56(%ebp), %eax
	notl	%eax
	andl	%eax, -60(%ebp)
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-64(%ebp), %eax
	sall	$5, %eax
	addl	-68(%ebp), %eax
	movl	%eax, -124(%ebp)
.LBB16:
	movl	-128(%ebp), %eax
	movl	8(%eax), %edx
	movl	-124(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L188
	movl	-52(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L188
	movl	-52(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	movl	-148(%ebp), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L191
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	-148(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, -148(%ebp)
.L191:
	movl	-148(%ebp), %esi
	movl	-148(%ebp), %ecx
	movl	4(%ecx), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L188:
.LBE16:
	cmpl	$0, -60(%ebp)
	je	.L182
.L186:
.LBE15:
	addl	$1, -68(%ebp)
.L184:
	cmpl	$31, -68(%ebp)
	jbe	.L185
.L182:
	movl	$0, -68(%ebp)
.LBE14:
	addl	$1, -64(%ebp)
.L180:
	cmpl	$3, -64(%ebp)
	jbe	.L181
	movl	$0, -64(%ebp)
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L178:
	cmpl	$0, -76(%ebp)
	jne	.L180
.LBE13:
.LBE12:
	.loc 1 578 0
	subl	$2, -84(%ebp)
.L169:
	cmpl	$0, -84(%ebp)
	jns	.L170
.L135:
.L241:
.LBE11:
.LBE6:
	.loc 1 530 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L136
.LBB17:
	.loc 1 603 0
	call	get_insns@PLT
	movl	%eax, -48(%ebp)
	jmp	.L196
.L197:
	movl	-48(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L198
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L200
.LBB18:
	movl	-48(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	find_pdom
	movl	%eax, -40(%ebp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L202
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L242
.L205:
.LBB19:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L204
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L207
.LBB20:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -24(%ebp)
	jmp	.L209
.L210:
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_phi_alternative@PLT
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L209:
	cmpl	$0, -24(%ebp)
	je	.L207
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L207
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L207
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L210
.L207:
.LBE20:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L204:
.L242:
.LBE19:
	cmpl	$0, -32(%ebp)
	jne	.L205
	movl	-48(%ebp), %eax
	movw	$47, (%eax)
	movl	-48(%ebp), %eax
	movl	$-99, 44(%eax)
	jmp	.L198
.L202:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L243
.L216:
.LBB21:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L215
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L218
.LBB22:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -16(%ebp)
	jmp	.L220
.L221:
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_phi_alternative@PLT
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L220:
	cmpl	$0, -16(%ebp)
	je	.L218
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L218
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L218
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L221
.L218:
.LBE22:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L215:
.L243:
.LBE21:
	cmpl	$0, -32(%ebp)
	jne	.L216
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_block_label
	movl	%eax, -36(%ebp)
	movl	-48(%ebp), %eax
	movl	44(%eax), %esi
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, 12(%esi)
	movl	-48(%ebp), %eax
	movl	$-1, 52(%eax)
	movl	-48(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 76(%edx)
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	jmp	.L198
.L200:
.LBE18:
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L198
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_bb
.L198:
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L196:
	cmpl	$0, -48(%ebp)
	jne	.L197
.LBE17:
	.loc 1 710 0
	call	remove_fake_edges@PLT
	.loc 1 715 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L228
.L229:
	.loc 1 717 0
	movl	-140(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L230
.LBB23:
	.loc 1 719 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 721 0
	cmpl	$0, -12(%ebp)
	je	.L232
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L230
.L232:
	.loc 1 722 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
.L230:
.LBE23:
	.loc 1 715 0
	movl	-140(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -140(%ebp)
.L228:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -140(%ebp)
	jne	.L229
	.loc 1 726 0
	call	get_insns@PLT
	movl	%eax, -144(%ebp)
	jmp	.L235
.L236:
	.loc 1 727 0
	movl	-144(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-17, %eax
	movb	%al, 3(%edx)
	.loc 1 726 0
	movl	-144(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -144(%ebp)
.L235:
	cmpl	$0, -144(%ebp)
	jne	.L236
	.loc 1 728 0
	movl	-148(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L238
	.loc 1 729 0
	leal	__FUNCTION__.9819@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L238:
	.loc 1 730 0
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	control_dependent_block_to_edge_map_free
	.loc 1 731 0
	movl	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 732 0
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	free_edge_list@PLT
	.loc 1 733 0
	addl	$160, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE29:
	.size	ssa_eliminate_dead_code, .-ssa_eliminate_dead_code
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
	.long	.LCFI4-.LCFI1
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI5-.LFB16
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI9-.LFB17
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
	.long	.LCFI19-.LCFI17
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
	.long	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI21
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
	.long	.LCFI24-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI27-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI28
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
	.long	.LCFI31-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
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
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI43-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI47-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI48
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
	.long	.LCFI51-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI52
	.byte	0x83
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
	.long	.LCFI55-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI56
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE28:
	.file 2 "../../../kgccfe/gnu/bitmap.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 5 "../../../kgccfe/gnu/basic-block.h"
	.file 6 "../../../kgccfe/gnu/MIPS/config.h"
	.file 7 "../../../kgccfe/gnu/machmode.h"
	.file 8 "../../../kgccfe/gnu/sbitmap.h"
	.file 9 "../../../kgccfe/gnu/varray.h"
	.file 10 "../../../kgccfe/gnu/ssa.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI20-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI21-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x262c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/ssa-dce.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x6
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x6
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x53a
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
	.long	0x2f1
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x1159
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x6
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e0
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x6
	.byte	0xd
	.uleb128 0x7
	.long	.LASF0
	.byte	0x3
	.byte	0xf8
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1169
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x6
	.byte	0x10
	.long	0x1ec
	.uleb128 0x3
	.byte	0x4
	.long	0x1f2
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x204
	.uleb128 0x9
	.long	0x209
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0x4
	.byte	0xd6
	.long	0x218
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
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0xd
	.long	0x2db
	.long	0x209
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2eb
	.long	0x209
	.uleb128 0xe
	.long	0x21f
	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x211
	.uleb128 0xf
	.long	0x53a
	.string	"machine_mode"
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.uleb128 0x10
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x10
	.string	"BImode"
	.sleb128 1
	.uleb128 0x10
	.string	"QImode"
	.sleb128 2
	.uleb128 0x10
	.string	"HImode"
	.sleb128 3
	.uleb128 0x10
	.string	"SImode"
	.sleb128 4
	.uleb128 0x10
	.string	"DImode"
	.sleb128 5
	.uleb128 0x10
	.string	"TImode"
	.sleb128 6
	.uleb128 0x10
	.string	"OImode"
	.sleb128 7
	.uleb128 0x10
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x10
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x10
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x10
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x10
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x10
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x10
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x10
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x10
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x10
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x10
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x10
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x10
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x10
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x10
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x10
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x10
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x10
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x10
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x10
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x10
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x10
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x10
	.string	"COImode"
	.sleb128 30
	.uleb128 0x10
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x10
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x10
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x10
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x10
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x10
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x10
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x10
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x10
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x10
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x10
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x10
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x10
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x10
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x10
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x10
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x10
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x10
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x10
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x10
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x10
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x10
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x10
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x10
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0xf
	.long	0xd09
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
	.uleb128 0x10
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x10
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x10
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x10
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x10
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x10
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x10
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x10
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x10
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x10
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x10
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x10
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x10
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x10
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x10
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x10
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x10
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x10
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x10
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x10
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x10
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x10
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x10
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x10
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x10
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x10
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x10
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x10
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x10
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x10
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x10
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x10
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x10
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x10
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x10
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x10
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x10
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x10
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x10
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x10
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x10
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x10
	.string	"INSN"
	.sleb128 42
	.uleb128 0x10
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x10
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x10
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x10
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x10
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x10
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x10
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x10
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x10
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x10
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x10
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x10
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x10
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x10
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x10
	.string	"SET"
	.sleb128 57
	.uleb128 0x10
	.string	"USE"
	.sleb128 58
	.uleb128 0x10
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x10
	.string	"CALL"
	.sleb128 60
	.uleb128 0x10
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x10
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x10
	.string	"RESX"
	.sleb128 63
	.uleb128 0x10
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x10
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x10
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x10
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x10
	.string	"CONST"
	.sleb128 68
	.uleb128 0x10
	.string	"PC"
	.sleb128 69
	.uleb128 0x10
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x10
	.string	"REG"
	.sleb128 71
	.uleb128 0x10
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x10
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x10
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x10
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x10
	.string	"MEM"
	.sleb128 76
	.uleb128 0x10
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x10
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x10
	.string	"CC0"
	.sleb128 79
	.uleb128 0x10
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x10
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x10
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x10
	.string	"COND"
	.sleb128 83
	.uleb128 0x10
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x10
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x10
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x10
	.string	"NEG"
	.sleb128 87
	.uleb128 0x10
	.string	"MULT"
	.sleb128 88
	.uleb128 0x10
	.string	"DIV"
	.sleb128 89
	.uleb128 0x10
	.string	"MOD"
	.sleb128 90
	.uleb128 0x10
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x10
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x10
	.string	"AND"
	.sleb128 93
	.uleb128 0x10
	.string	"IOR"
	.sleb128 94
	.uleb128 0x10
	.string	"XOR"
	.sleb128 95
	.uleb128 0x10
	.string	"NOT"
	.sleb128 96
	.uleb128 0x10
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x10
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x10
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x10
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x10
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x10
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x10
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x10
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x10
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x10
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x10
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x10
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x10
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x10
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x10
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x10
	.string	"NE"
	.sleb128 112
	.uleb128 0x10
	.string	"EQ"
	.sleb128 113
	.uleb128 0x10
	.string	"GE"
	.sleb128 114
	.uleb128 0x10
	.string	"GT"
	.sleb128 115
	.uleb128 0x10
	.string	"LE"
	.sleb128 116
	.uleb128 0x10
	.string	"LT"
	.sleb128 117
	.uleb128 0x10
	.string	"GEU"
	.sleb128 118
	.uleb128 0x10
	.string	"GTU"
	.sleb128 119
	.uleb128 0x10
	.string	"LEU"
	.sleb128 120
	.uleb128 0x10
	.string	"LTU"
	.sleb128 121
	.uleb128 0x10
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x10
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x10
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x10
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x10
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x10
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x10
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x10
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x10
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x10
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x10
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x10
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x10
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x10
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x10
	.string	"FIX"
	.sleb128 136
	.uleb128 0x10
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x10
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x10
	.string	"ABS"
	.sleb128 139
	.uleb128 0x10
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x10
	.string	"FFS"
	.sleb128 141
	.uleb128 0x10
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x10
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x10
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x10
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x10
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x10
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x10
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x10
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x10
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x10
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x10
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x10
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x10
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x10
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x10
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x10
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x10
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x10
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x10
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x10
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x10
	.string	"PHI"
	.sleb128 162
	.uleb128 0x10
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x11
	.long	0xde3
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0x218
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
	.long	0xd09
	.uleb128 0x12
	.long	0xe5a
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	.LASF2
	.byte	0x3
	.byte	0x6e
	.long	0xdfe
	.uleb128 0x14
	.long	0xf37
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x15
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x28c
	.uleb128 0x15
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x211
	.uleb128 0x15
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x218
	.uleb128 0x15
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x1fe
	.uleb128 0x15
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9c
	.uleb128 0x15
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19d
	.uleb128 0x15
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x2f1
	.uleb128 0x15
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0xde3
	.uleb128 0x15
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0xf4b
	.uleb128 0x15
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0xfb3
	.uleb128 0x15
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e0
	.uleb128 0x15
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x113e
	.uleb128 0x15
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1144
	.byte	0x0
	.uleb128 0x16
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0xf37
	.uleb128 0x4
	.long	0xfb3
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x2
	.byte	0x3d
	.long	0x1216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x2
	.byte	0x3e
	.long	0x1216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x2
	.byte	0x3f
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x2
	.byte	0x40
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xf51
	.uleb128 0x4
	.long	0x113e
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x5
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x5
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x5
	.byte	0xb8
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x5
	.byte	0xb9
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x5
	.byte	0xbc
	.long	0x182d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x5
	.byte	0xbc
	.long	0x182d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x5
	.byte	0xc1
	.long	0x175d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x5
	.byte	0xc5
	.long	0x175d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x5
	.byte	0xcb
	.long	0x175d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x5
	.byte	0xcd
	.long	0x175d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x5
	.byte	0xd0
	.long	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x5
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x5
	.byte	0xd6
	.long	0x113e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x5
	.byte	0xd6
	.long	0x113e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x5
	.byte	0xd9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x5
	.byte	0xdc
	.long	0x1aa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x5
	.byte	0xdf
	.long	0x176b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x5
	.byte	0xe2
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x5
	.byte	0xe5
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xfb9
	.uleb128 0x3
	.byte	0x4
	.long	0xe5a
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0xe65
	.uleb128 0xd
	.long	0x1169
	.long	0x114a
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1179
	.long	0x9c
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x2
	.byte	0x1d
	.long	0x25b
	.uleb128 0x4
	.long	0x11ea
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x2
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x2
	.byte	0x35
	.long	0x11ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x2
	.byte	0x36
	.long	0x11ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x2
	.byte	0x37
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x2
	.byte	0x38
	.long	0x11f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1192
	.uleb128 0xd
	.long	0x1200
	.long	0x117f
	.uleb128 0xe
	.long	0x21f
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x2
	.byte	0x39
	.long	0x1192
	.uleb128 0x3
	.byte	0x4
	.long	0x1200
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x2
	.byte	0x43
	.long	0xfb3
	.uleb128 0x4
	.long	0x1284
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x8
	.byte	0x21
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x8
	.byte	0x22
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x8
	.byte	0x23
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x8
	.byte	0x24
	.long	0x1284
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x1294
	.long	0x29d
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x12a3
	.uleb128 0x3
	.byte	0x4
	.long	0x122a
	.uleb128 0x4
	.long	0x12df
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x9
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x9
	.byte	0x36
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.long	0x147a
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x9
	.byte	0x3c
	.uleb128 0x10
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x10
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x10
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x10
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x10
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x10
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x10
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x10
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x10
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x10
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x10
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x10
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x10
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x10
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x10
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x10
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x10
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x10
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x10
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x10
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x10
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x14
	.long	0x1576
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x9
	.byte	0x55
	.uleb128 0x15
	.string	"c"
	.byte	0x9
	.byte	0x56
	.long	0x2cb
	.uleb128 0x15
	.string	"uc"
	.byte	0x9
	.byte	0x58
	.long	0x1576
	.uleb128 0x15
	.string	"s"
	.byte	0x9
	.byte	0x5a
	.long	0x1586
	.uleb128 0x15
	.string	"us"
	.byte	0x9
	.byte	0x5c
	.long	0x1596
	.uleb128 0x15
	.string	"i"
	.byte	0x9
	.byte	0x5e
	.long	0x15a6
	.uleb128 0x15
	.string	"u"
	.byte	0x9
	.byte	0x60
	.long	0x15b6
	.uleb128 0x15
	.string	"l"
	.byte	0x9
	.byte	0x62
	.long	0x15c6
	.uleb128 0x15
	.string	"ul"
	.byte	0x9
	.byte	0x64
	.long	0x15d6
	.uleb128 0x15
	.string	"hint"
	.byte	0x9
	.byte	0x66
	.long	0x15e6
	.uleb128 0x15
	.string	"uhint"
	.byte	0x9
	.byte	0x68
	.long	0x1284
	.uleb128 0x15
	.string	"generic"
	.byte	0x9
	.byte	0x6a
	.long	0x15f6
	.uleb128 0x15
	.string	"cptr"
	.byte	0x9
	.byte	0x6c
	.long	0x1606
	.uleb128 0x15
	.string	"rtx"
	.byte	0x9
	.byte	0x6e
	.long	0x1616
	.uleb128 0x15
	.string	"rtvec"
	.byte	0x9
	.byte	0x70
	.long	0x1626
	.uleb128 0x15
	.string	"tree"
	.byte	0x9
	.byte	0x72
	.long	0x1636
	.uleb128 0x15
	.string	"bitmap"
	.byte	0x9
	.byte	0x74
	.long	0x1646
	.uleb128 0x15
	.string	"reg"
	.byte	0x9
	.byte	0x76
	.long	0x1656
	.uleb128 0x15
	.string	"const_equiv"
	.byte	0x9
	.byte	0x78
	.long	0x167b
	.uleb128 0x15
	.string	"bb"
	.byte	0x9
	.byte	0x7a
	.long	0x168b
	.uleb128 0x15
	.string	"te"
	.byte	0x9
	.byte	0x7c
	.long	0x169b
	.byte	0x0
	.uleb128 0xd
	.long	0x1586
	.long	0x234
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1596
	.long	0x27f
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x15a6
	.long	0x245
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x15b6
	.long	0x211
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x15c6
	.long	0x218
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x15d6
	.long	0x2b7
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x15e6
	.long	0x25b
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x15f6
	.long	0x28c
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1606
	.long	0x2c3
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1616
	.long	0x2c5
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1626
	.long	0xa7
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1636
	.long	0x1aa
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1646
	.long	0x1ec
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1656
	.long	0xfb3
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1666
	.long	0x1675
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1666
	.uleb128 0xd
	.long	0x168b
	.long	0x12a9
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x169b
	.long	0x113e
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x16ab
	.long	0x16b6
	.uleb128 0xe
	.long	0x21f
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x16ab
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x9
	.byte	0x7e
	.long	0x147a
	.uleb128 0x4
	.long	0x1744
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x9
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x9
	.byte	0x82
	.long	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x9
	.byte	0x83
	.long	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x9
	.byte	0x85
	.long	0x12df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x9
	.byte	0x86
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x9
	.byte	0x87
	.long	0x16bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x9
	.byte	0x8a
	.long	0x1757
	.uleb128 0x3
	.byte	0x4
	.long	0x16cf
	.uleb128 0x2
	.string	"regset"
	.byte	0x5
	.byte	0x22
	.long	0x121c
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x5
	.byte	0x75
	.long	0x28c
	.uleb128 0x4
	.long	0x1827
	.string	"edge_def"
	.byte	0x28
	.byte	0x5
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x5
	.byte	0x7a
	.long	0x1827
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x5
	.byte	0x7a
	.long	0x1827
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x5
	.byte	0x7d
	.long	0x113e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x5
	.byte	0x7d
	.long	0x113e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x5
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x5
	.byte	0x83
	.long	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x5
	.byte	0x85
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x5
	.byte	0x86
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x5
	.byte	0x87
	.long	0x176b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x177c
	.uleb128 0x2
	.string	"edge"
	.byte	0x5
	.byte	0x89
	.long	0x1827
	.uleb128 0x4
	.long	0x1aa9
	.string	"loop"
	.byte	0x80
	.byte	0x5
	.byte	0xdc
	.uleb128 0x17
	.string	"num"
	.byte	0x5
	.value	0x176
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"header"
	.byte	0x5
	.value	0x179
	.long	0x1aaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"latch"
	.byte	0x5
	.value	0x17c
	.long	0x1aaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"pre_header"
	.byte	0x5
	.value	0x17f
	.long	0x1aaf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"pre_header_edges"
	.byte	0x5
	.value	0x184
	.long	0x1ada
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.string	"num_pre_header_edges"
	.byte	0x5
	.value	0x187
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.string	"first"
	.byte	0x5
	.value	0x18b
	.long	0x1aaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.string	"last"
	.byte	0x5
	.value	0x18f
	.long	0x1aaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.string	"nodes"
	.byte	0x5
	.value	0x192
	.long	0x1294
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.string	"num_nodes"
	.byte	0x5
	.value	0x195
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.string	"entry_edges"
	.byte	0x5
	.value	0x198
	.long	0x1ada
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.string	"num_entries"
	.byte	0x5
	.value	0x19b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.string	"exit_edges"
	.byte	0x5
	.value	0x19e
	.long	0x1ada
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.string	"num_exits"
	.byte	0x5
	.value	0x1a1
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x17
	.string	"exits_doms"
	.byte	0x5
	.value	0x1a4
	.long	0x1294
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.string	"depth"
	.byte	0x5
	.value	0x1a7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.string	"pred"
	.byte	0x5
	.value	0x1aa
	.long	0x1ae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.string	"level"
	.byte	0x5
	.value	0x1ae
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x17
	.string	"outer"
	.byte	0x5
	.value	0x1b1
	.long	0x1aa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.string	"inner"
	.byte	0x5
	.value	0x1b4
	.long	0x1aa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x17
	.string	"next"
	.byte	0x5
	.value	0x1b7
	.long	0x1aa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x17
	.string	"invalid"
	.byte	0x5
	.value	0x1ba
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.string	"aux"
	.byte	0x5
	.value	0x1bd
	.long	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.string	"vtop"
	.byte	0x5
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x17
	.string	"cont"
	.byte	0x5
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x17
	.string	"start"
	.byte	0x5
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.string	"end"
	.byte	0x5
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.string	"top"
	.byte	0x5
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x17
	.string	"scan_start"
	.byte	0x5
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x17
	.string	"sink"
	.byte	0x5
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x17
	.string	"exit_labels"
	.byte	0x5
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x17
	.string	"exit_count"
	.byte	0x5
	.value	0x1e6
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1839
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x5
	.byte	0xe6
	.long	0x113e
	.uleb128 0x18
	.long	.LASF3
	.byte	0x5
	.value	0x170
	.long	0x1ace
	.uleb128 0x3
	.byte	0x4
	.long	0x1ad4
	.uleb128 0x19
	.long	.LASF3
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x182d
	.uleb128 0x3
	.byte	0x4
	.long	0x1aa9
	.uleb128 0x1a
	.long	0x1b3e
	.string	"edge_list"
	.byte	0xc
	.byte	0x5
	.value	0x23b
	.uleb128 0x17
	.string	"num_blocks"
	.byte	0x5
	.value	0x23c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.string	"num_edges"
	.byte	0x5
	.value	0x23d
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"index_to_edge"
	.byte	0x5
	.value	0x23e
	.long	0x1ada
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x11
	.long	0x1b67
	.byte	0x8
	.byte	0x1
	.byte	0x53
	.uleb128 0x6
	.string	"data"
	.byte	0x1
	.byte	0x57
	.long	0x1b67
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"length"
	.byte	0x1
	.byte	0x59
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x121c
	.uleb128 0x2
	.string	"control_dependent_block_to_edge_map"
	.byte	0x1
	.byte	0x5a
	.long	0x1b98
	.uleb128 0x3
	.byte	0x4
	.long	0x1b3e
	.uleb128 0x1b
	.long	0x1c15
	.string	"control_dependent_block_to_edge_map_create"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	0x1b6d
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1c
	.string	"num_basic_blocks"
	.byte	0x1
	.byte	0xa1
	.long	0x226
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0xa4
	.long	0x1b6d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1e
	.long	0x1c8d
	.string	"set_control_dependent_block_to_edge_map_bit"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0xb4
	.long	0x1b6d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"bb"
	.byte	0x1
	.byte	0xb5
	.long	0x1aaf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xb6
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF5
	.long	0x2565
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9428
	.byte	0x0
	.uleb128 0x1e
	.long	0x1ce3
	.string	"control_dependent_block_to_edge_map_free"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0xcd
	.long	0x1b6d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x1d4d
	.string	"find_all_control_dependences"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1c
	.string	"el"
	.byte	0x1
	.byte	0xdc
	.long	0x1d4d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"pdom"
	.byte	0x1
	.byte	0xdd
	.long	0x1ac2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"cdbte"
	.byte	0x1
	.byte	0xde
	.long	0x1b6d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae6
	.uleb128 0x1e
	.long	0x1df9
	.string	"find_control_dependence"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1c
	.string	"el"
	.byte	0x1
	.byte	0xee
	.long	0x1d4d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xef
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"pdom"
	.byte	0x1
	.byte	0xf0
	.long	0x1ac2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.string	"cdbte"
	.byte	0x1
	.byte	0xf1
	.long	0x1b6d
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.string	"current_block"
	.byte	0x1
	.byte	0xf3
	.long	0x1aaf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"ending_block"
	.byte	0x1
	.byte	0xf4
	.long	0x1aaf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.long	.LASF5
	.long	0x2550
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9493
	.byte	0x0
	.uleb128 0x21
	.long	0x1e6a
	.string	"find_pdom"
	.byte	0x1
	.value	0x10f
	.byte	0x1
	.long	0x1aaf
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x22
	.string	"pdom"
	.byte	0x1
	.value	0x10d
	.long	0x1ac2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"block"
	.byte	0x1
	.value	0x10e
	.long	0x1aaf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	0x1e59
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x11b
	.long	0x1aaf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x20
	.long	.LASF5
	.long	0x254b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9539
	.byte	0x0
	.uleb128 0x21
	.long	0x1ed0
	.string	"inherently_necessary_register_1"
	.byte	0x1
	.value	0x12e
	.byte	0x1
	.long	0x211
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.value	0x12c
	.long	0x1179
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"data"
	.byte	0x1
	.value	0x12d
	.long	0x2c3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x12f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x21
	.long	0x1f17
	.string	"inherently_necessary_register"
	.byte	0x1
	.value	0x14d
	.byte	0x1
	.long	0x211
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.value	0x14c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x26
	.long	0x1fa0
	.string	"note_inherently_necessary_set"
	.byte	0x1
	.value	0x15c
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x22
	.string	"dest"
	.byte	0x1
	.value	0x15a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"set"
	.byte	0x1
	.value	0x159
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"data"
	.byte	0x1
	.value	0x15b
	.long	0x2c3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"inherently_necessary_set_p"
	.byte	0x1
	.value	0x15d
	.long	0x2eb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x21
	.long	0x2023
	.string	"find_inherently_necessary"
	.byte	0x1
	.value	0x173
	.byte	0x1
	.long	0x211
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.value	0x172
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	0x2012
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x24
	.string	"inherently_necessary_set"
	.byte	0x1
	.value	0x186
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x20
	.long	.LASF5
	.long	0x2536
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9617
	.byte	0x0
	.uleb128 0x21
	.long	0x20b5
	.string	"propagate_necessity_through_operand"
	.byte	0x1
	.value	0x1a2
	.byte	0x1
	.long	0x211
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.value	0x1a0
	.long	0x1179
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"data"
	.byte	0x1
	.value	0x1a1
	.long	0x2c3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x1a3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x1a4
	.long	0x20b5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x1ad
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1744
	.uleb128 0x26
	.long	0x20fa
	.string	"mark_all_insn_unnecessary"
	.byte	0x1
	.value	0x1bf
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x1c0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.long	0x2161
	.string	"find_block_label"
	.byte	0x1
	.value	0x1ca
	.byte	0x1
	.long	0x9c
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.value	0x1c9
	.long	0x1aaf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x1cb
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x24
	.string	"new_label"
	.byte	0x1
	.value	0x1d0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x21a5
	.string	"delete_insn_bb"
	.byte	0x1
	.value	0x1dc
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x25
	.long	.LASF8
	.byte	0x1
	.value	0x1db
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF5
	.long	0x2521
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9718
	.byte	0x0
	.uleb128 0x29
	.long	0x250c
	.byte	0x1
	.string	"ssa_eliminate_dead_code"
	.byte	0x1
	.value	0x1ef
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x1f0
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x1f1
	.long	0x1aaf
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x1f3
	.long	0x1744
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x24
	.string	"cdbte"
	.byte	0x1
	.value	0x1f6
	.long	0x1b6d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.string	"pdom"
	.byte	0x1
	.value	0x1f8
	.long	0x1ac2
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x24
	.string	"el"
	.byte	0x1
	.value	0x1f9
	.long	0x1d4d
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	0x240f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x24
	.string	"current_instruction"
	.byte	0x1
	.value	0x214
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.string	"edge_number"
	.byte	0x1
	.value	0x215
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x23
	.long	0x231c
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x24
	.string	"ptr_"
	.byte	0x1
	.value	0x223
	.long	0x1216
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.string	"indx_"
	.byte	0x1
	.value	0x223
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x223
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x223
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x24
	.string	"word_"
	.byte	0x1
	.value	0x223
	.long	0x117f
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x24
	.string	"mask_"
	.byte	0x1
	.value	0x223
	.long	0x117f
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x223
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x24
	.string	"phi_vec"
	.byte	0x1
	.value	0x23e
	.long	0x19d
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.long	.LASF0
	.byte	0x1
	.value	0x23f
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x240
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x244
	.long	0x1aaf
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x24
	.string	"ptr_"
	.byte	0x1
	.value	0x247
	.long	0x1216
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.string	"indx_"
	.byte	0x1
	.value	0x247
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x247
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	.LASF10
	.byte	0x1
	.value	0x247
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x24
	.string	"word_"
	.byte	0x1
	.value	0x247
	.long	0x117f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x24
	.string	"mask_"
	.byte	0x1
	.value	0x247
	.long	0x117f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x247
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x24dd
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x25b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x25b
	.long	0x1aaf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"pdom_bb"
	.byte	0x1
	.value	0x25b
	.long	0x1aaf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"lbl"
	.byte	0x1
	.value	0x25b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x25b
	.long	0x182d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	0x24a8
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x24
	.string	"temp"
	.byte	0x1
	.value	0x25b
	.long	0x182d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x25b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x24
	.string	"temp"
	.byte	0x1
	.value	0x25b
	.long	0x182d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x25b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x24fb
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x24
	.string	"next"
	.byte	0x1
	.value	0x2cf
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x20
	.long	.LASF5
	.long	0x250c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9819
	.byte	0x0
	.uleb128 0x9
	.long	0x2db
	.uleb128 0xd
	.long	0x2521
	.long	0x209
	.uleb128 0xe
	.long	0x21f
	.byte	0xe
	.byte	0x0
	.uleb128 0x9
	.long	0x2511
	.uleb128 0xd
	.long	0x2536
	.long	0x209
	.uleb128 0xe
	.long	0x21f
	.byte	0x19
	.byte	0x0
	.uleb128 0x9
	.long	0x2526
	.uleb128 0xd
	.long	0x254b
	.long	0x209
	.uleb128 0xe
	.long	0x21f
	.byte	0x9
	.byte	0x0
	.uleb128 0x9
	.long	0x253b
	.uleb128 0x9
	.long	0x2db
	.uleb128 0xd
	.long	0x2565
	.long	0x209
	.uleb128 0xe
	.long	0x21f
	.byte	0x2b
	.byte	0x0
	.uleb128 0x9
	.long	0x2555
	.uleb128 0xd
	.long	0x257a
	.long	0x209
	.uleb128 0xe
	.long	0x21f
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2a
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x258d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x256a
	.uleb128 0xd
	.long	0x25a2
	.long	0x9c
	.uleb128 0xe
	.long	0x21f
	.byte	0xa
	.byte	0x0
	.uleb128 0x2b
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x2592
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"last_basic_block"
	.byte	0x5
	.byte	0xf6
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"basic_block_info"
	.byte	0x5
	.byte	0xfe
	.long	0x1744
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x25fb
	.long	0xfb9
	.uleb128 0xe
	.long	0x21f
	.byte	0x1
	.byte	0x0
	.uleb128 0x2b
	.string	"entry_exit_blocks"
	.byte	0x5
	.value	0x139
	.long	0x25eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"ssa_definition"
	.byte	0xa
	.byte	0x30
	.long	0x1744
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x16
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x2a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2630
	.long	0x21a5
	.string	"ssa_eliminate_dead_code"
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
	.string	"jump_insn"
.LASF8:
	.string	"insn"
.LASF6:
	.string	"current_rtx"
.LASF7:
	.string	"unprocessed_instructions"
.LASF9:
	.string	"bit_num_"
.LASF3:
	.string	"dominance_info"
.LASF10:
	.string	"word_num_"
.LASF2:
	.string	"mem_attrs"
.LASF5:
	.string	"__FUNCTION__"
.LASF4:
	.string	"edge_index"
.LASF0:
	.string	"num_elem"
.LASF1:
	.string	"unsigned int"
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
