	.file	"sched-ebb.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	schedule_more_p, @function
schedule_more_p:
.LFB15:
	.file 1 "../../../kgccfe/gnu/sched-ebb.c"
	.loc 1 66 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 67 0
	movl	sched_n_insns@GOTOFF(%ecx), %edx
	movl	target_n_insns@GOTOFF(%ecx), %eax
	cmpl	%eax, %edx
	setl	%al
	movzbl	%al, %eax
	.loc 1 68 0
	popl	%ebp
	ret
.LFE15:
	.size	schedule_more_p, .-schedule_more_p
	.type	init_ready_list, @function
init_ready_list:
.LFB16:
	.loc 1 76 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$36, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 77 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 78 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 81 0
	movl	$0, target_n_insns@GOTOFF(%ebx)
	.loc 1 82 0
	movl	$0, sched_n_insns@GOTOFF(%ebx)
	.loc 1 92 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L4
.L5:
.LBB2:
	.loc 1 96 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L6
	.loc 1 98 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 100 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L8
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L10
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L8
.L10:
	.loc 1 102 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ready_add@PLT
.L8:
	.loc 1 103 0
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L6
	.loc 1 104 0
	movl	target_n_insns@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, target_n_insns@GOTOFF(%ebx)
.L6:
.LBE2:
	.loc 1 92 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L4:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L5
	.loc 1 106 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	init_ready_list, .-init_ready_list
	.type	can_schedule_ready_p, @function
can_schedule_ready_p:
.LFB17:
	.loc 1 114 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 115 0
	movl	sched_n_insns@GOTOFF(%ecx), %eax
	addl	$1, %eax
	movl	%eax, sched_n_insns@GOTOFF(%ecx)
	.loc 1 116 0
	movl	$1, %eax
	.loc 1 117 0
	popl	%ebp
	ret
.LFE17:
	.size	can_schedule_ready_p, .-can_schedule_ready_p
	.type	new_ready, @function
new_ready:
.LFB18:
	.loc 1 125 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	.loc 1 126 0
	movl	$1, %eax
	.loc 1 127 0
	popl	%ebp
	ret
.LFE18:
	.size	new_ready, .-new_ready
	.local	tmp.10433
	.comm	tmp.10433,80,32
	.section	.rodata
.LC0:
	.string	"%4d"
	.text
	.type	ebb_print_insn, @function
ebb_print_insn:
.LFB19:
	.loc 1 138 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$20, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 141 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	tmp.10433@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 142 0
	leal	tmp.10433@GOTOFF(%ebx), %eax
	.loc 1 143 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	ebb_print_insn, .-ebb_print_insn
	.type	rank, @function
rank:
.LFB20:
	.loc 1 152 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	.loc 1 153 0
	movl	$0, %eax
	.loc 1 154 0
	popl	%ebp
	ret
.LFE20:
	.size	rank, .-rank
	.type	contributes_to_priority, @function
contributes_to_priority:
.LFB21:
	.loc 1 163 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	.loc 1 164 0
	movl	$1, %eax
	.loc 1 165 0
	popl	%ebp
	ret
.LFE21:
	.size	contributes_to_priority, .-contributes_to_priority
	.type	compute_jump_reg_dependencies, @function
compute_jump_reg_dependencies:
.LFB22:
	.loc 1 176 0
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
	.loc 1 177 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 179 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L26
.L27:
	.loc 1 180 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L28
	.loc 1 186 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	32(%eax), %edx
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	jmp	.L30
.L28:
	.loc 1 189 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	32(%eax), %eax
	movl	$2, 12(%esp)
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.L30:
	.loc 1 179 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L26:
	cmpl	$0, -8(%ebp)
	jne	.L27
	.loc 1 191 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	compute_jump_reg_dependencies, .-compute_jump_reg_dependencies
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	ebb_sched_info, @object
	.size	ebb_sched_info, 52
ebb_sched_info:
	.long	init_ready_list
	.long	can_schedule_ready_p
	.long	schedule_more_p
	.long	new_ready
	.long	rank
	.long	ebb_print_insn
	.long	contributes_to_priority
	.long	compute_jump_reg_dependencies
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	2
	.zero	3
	.text
	.type	earliest_block_with_similiar_load, @function
earliest_block_with_similiar_load:
.LFB23:
	.loc 1 232 0
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
	.loc 1 234 0
	movl	$0, -24(%ebp)
	.loc 1 236 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 237 0
	jmp	.L34
.L35:
.LBB3:
	.loc 1 240 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 242 0
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L36
.LBB4:
	.loc 1 247 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	h_i_d@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 248 0
	jmp	.L38
.L39:
.LBB5:
	.loc 1 251 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 252 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 254 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L40
	.loc 1 256 0
	cmpl	$0, -24(%ebp)
	je	.L42
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jl	.L40
.L42:
	.loc 1 261 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	haifa_classify_insn@PLT
	cmpl	$2, %eax
	jne	.L40
	.loc 1 265 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L45
.L46:
	.loc 1 266 0
	movl	-8(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L47
	.loc 1 265 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -28(%ebp)
.L45:
	cmpl	$0, -28(%ebp)
	jne	.L46
.L47:
	.loc 1 269 0
	cmpl	$0, -28(%ebp)
	jne	.L40
	.loc 1 271 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L40:
.LBE5:
	.loc 1 249 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L38:
	.loc 1 248 0
	cmpl	$0, -16(%ebp)
	jne	.L39
.L36:
.LBE4:
.LBE3:
	.loc 1 238 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L34:
	.loc 1 237 0
	cmpl	$0, -32(%ebp)
	jne	.L35
	.loc 1 277 0
	movl	-24(%ebp), %eax
	.loc 1 278 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	earliest_block_with_similiar_load, .-earliest_block_with_similiar_load
	.type	add_deps_for_risky_insns, @function
add_deps_for_risky_insns:
.LFB24:
	.loc 1 286 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$52, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 289 0
	movl	$0, -20(%ebp)
	.loc 1 290 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 291 0
	movl	$0, -12(%ebp)
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L53
.L54:
	.loc 1 294 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L55
	.loc 1 296 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 297 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 298 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 299 0
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L57
.L55:
	.loc 1 301 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L57
	cmpl	$0, -20(%ebp)
	je	.L57
	.loc 1 303 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	haifa_classify_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 304 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 305 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	cmpl	$2, -40(%ebp)
	je	.L60
	cmpl	$2, -40(%ebp)
	jl	.L57
	cmpl	$5, -40(%ebp)
	jg	.L57
	jmp	.L61
.L60:
	.loc 1 308 0
	movl	flag_schedule_speculative_load@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L61
	.loc 1 310 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	earliest_block_with_similiar_load
	movl	%eax, -8(%ebp)
	.loc 1 311 0
	cmpl	$0, -8(%ebp)
	je	.L61
	.loc 1 313 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 314 0
	cmpl	$0, -8(%ebp)
	je	.L57
	.loc 1 316 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L61:
	.loc 1 328 0
	movl	$14, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	add_dependence@PLT
	testl	%eax, %eax
	je	.L57
	.loc 1 329 0
	movl	$14, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	add_forward_dependence@PLT
.L57:
	.loc 1 293 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L53:
	movl	-32(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L54
	.loc 1 337 0
	jmp	.L67
.L68:
	.loc 1 339 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 340 0
	movl	-12(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 341 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L67:
	.loc 1 337 0
	cmpl	$0, -12(%ebp)
	jne	.L68
	.loc 1 343 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	add_deps_for_risky_insns, .-add_deps_for_risky_insns
	.section	.rodata
	.type	__FUNCTION__.10574, @object
	.size	__FUNCTION__.10574, 13
__FUNCTION__.10574:
	.string	"schedule_ebb"
	.align 4
.LC1:
	.string	"../../../kgccfe/gnu/sched-ebb.c"
	.text
	.type	schedule_ebb, @function
schedule_ebb:
.LFB25:
	.loc 1 351 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$116, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 355 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	no_real_insns_p@PLT
	testl	%eax, %eax
	jne	.L86
	.loc 1 358 0
	call	init_deps_global@PLT
	.loc 1 361 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	init_deps@PLT
	.loc 1 362 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_analyze@PLT
	.loc 1 363 0
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	free_deps@PLT
	.loc 1 366 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_forward_dependences@PLT
	.loc 1 368 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_deps_for_risky_insns
	.loc 1 371 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_priorities@PLT
	movl	%eax, -12(%ebp)
	.loc 1 373 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 32(%edx)
	.loc 1 374 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 36(%edx)
	.loc 1 376 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L74
	.loc 1 378 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	save_line_notes@PLT
	.loc 1 379 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rm_line_notes@PLT
.L74:
	.loc 1 388 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L76
.LBB6:
	.loc 1 392 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L78
.L79:
	.loc 1 393 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$23, %al
	jne	.L80
	.loc 1 395 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 396 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 397 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L80:
	.loc 1 392 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L78:
	cmpl	$0, -8(%ebp)
	jne	.L79
.L76:
.LBE6:
	.loc 1 404 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rm_other_notes@PLT
	.loc 1 406 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	48(%edx), %eax
	orl	$1, %eax
	movb	%al, 48(%edx)
	.loc 1 408 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-1, (%esp)
	call	schedule_block@PLT
	.loc 1 411 0
	movl	sched_n_insns@GOTOFF(%ebx), %eax
	cmpl	-12(%ebp), %eax
	je	.L82
	.loc 1 412 0
	leal	__FUNCTION__.10574@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$412, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L82:
	.loc 1 413 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 414 0
	movl	current_sched_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 416 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L84
	.loc 1 417 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	restore_line_notes@PLT
.L84:
	.loc 1 419 0
	call	finish_deps_global@PLT
.L86:
	.loc 1 420 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	schedule_ebb, .-schedule_ebb
.globl schedule_ebbs
	.type	schedule_ebbs, @function
schedule_ebbs:
.LFB26:
	.loc 1 428 0
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
	.loc 1 433 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L117
	.loc 1 436 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sched_init@PLT
	.loc 1 438 0
	movl	current_sched_info@GOT(%ebx), %edx
	leal	ebb_sched_info@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 440 0
	call	allocate_reg_life_data@PLT
	.loc 1 441 0
	call	compute_bb_for_insn@PLT
	.loc 1 444 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L90
.L91:
.LBB7:
	.loc 1 446 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L92:
.LBB8:
	.loc 1 452 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 453 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L118
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L118
	.loc 1 456 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L96
.L97:
	.loc 1 457 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L98
	.loc 1 456 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L96:
	cmpl	$0, -16(%ebp)
	jne	.L97
.L98:
	.loc 1 459 0
	cmpl	$0, -16(%ebp)
	je	.L118
	.loc 1 461 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L101
.LBB9:
	.loc 1 463 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 464 0
	cmpl	$0, -12(%ebp)
	je	.L101
.LBB10:
	.loc 1 466 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 467 0
	cmpl	$5000, -8(%ebp)
	jg	.L118
.L101:
.LBE10:
.LBE9:
	.loc 1 472 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 473 0
	jmp	.L92
.L105:
.LBE8:
	.loc 1 479 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L106
	.loc 1 480 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L104
.L106:
	.loc 1 481 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L108
	.loc 1 482 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L104
.L108:
	.loc 1 483 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L110
	.loc 1 484 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L104:
.L118:
	.loc 1 477 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L105
.L110:
	.loc 1 489 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	schedule_ebb
.LBE7:
	.loc 1 444 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L90:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L91
	.loc 1 497 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L113
	.loc 1 498 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	reposition_prologue_and_epilogue_notes@PLT
.L113:
	.loc 1 500 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L115
	.loc 1 501 0
	call	rm_redundant_line_notes@PLT
.L115:
	.loc 1 503 0
	call	sched_finish@PLT
.L117:
	.loc 1 504 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	schedule_ebbs, .-schedule_ebbs
	.local	target_n_insns
	.comm	target_n_insns,4,4
	.local	sched_n_insns
	.comm	sched_n_insns,4,4
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI3
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
	.long	.LCFI6-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
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
	.long	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
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
	.long	.LCFI10-.LFB19
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI14-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI16-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
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
	.long	.LCFI18-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI22-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI26-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI30-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI34-.LFB26
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
.LEFDE22:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/basic-block.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "../../../kgccfe/gnu/sched-int.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kgccfe/gnu/flags.h"
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
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI3-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x25bf
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/sched-ebb.c"
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
	.long	0x19f
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x855
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
	.long	0x60c
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x1474
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ac
	.uleb128 0x3
	.byte	0x4
	.long	0x1b2
	.uleb128 0x4
	.long	0x1e7
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1484
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f3
	.uleb128 0x3
	.byte	0x4
	.long	0x1f9
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20b
	.uleb128 0x8
	.long	0x210
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x21f
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0xb
	.byte	0x3b
	.long	0x293
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xb
	.byte	0x90
	.long	0x2dd
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xb
	.byte	0x91
	.long	0x2be
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x210
	.uleb128 0x2
	.string	"FILE"
	.byte	0x9
	.byte	0x2e
	.long	0x30e
	.uleb128 0xc
	.long	0x589
	.long	.LASF1
	.byte	0x94
	.byte	0x9
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xa
	.value	0x10c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xa
	.value	0x111
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xa
	.value	0x112
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xa
	.value	0x113
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xa
	.value	0x114
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xa
	.value	0x115
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xa
	.value	0x116
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xa
	.value	0x117
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xa
	.value	0x118
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xa
	.value	0x11a
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xa
	.value	0x11b
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xa
	.value	0x11c
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xa
	.value	0x11e
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xa
	.value	0x120
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xa
	.value	0x122
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xa
	.value	0x126
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xa
	.value	0x128
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xa
	.value	0x12c
	.long	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xa
	.value	0x12d
	.long	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xa
	.value	0x12e
	.long	0x5e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xa
	.value	0x132
	.long	0x5f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xa
	.value	0x13b
	.long	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xa
	.value	0x144
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xa
	.value	0x145
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xa
	.value	0x146
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xa
	.value	0x147
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xa
	.value	0x148
	.long	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xa
	.value	0x14a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xa
	.value	0x14c
	.long	0x5fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0xa
	.byte	0xb0
	.uleb128 0x4
	.long	0x5da
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xa
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xa
	.byte	0xb7
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xa
	.byte	0xb8
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xa
	.byte	0xbc
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x597
	.uleb128 0x3
	.byte	0x4
	.long	0x30e
	.uleb128 0xf
	.long	0x5f6
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x589
	.uleb128 0xf
	.long	0x60c
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0x855
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
	.long	0x1024
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
	.long	0x10fe
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x1024
	.uleb128 0xc
	.long	0x1175
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x3
	.byte	0x6e
	.long	0x1119
	.uleb128 0x15
	.long	0x1252
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x293
	.uleb128 0x16
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x218
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x21f
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x205
	.uleb128 0x16
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9e
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19f
	.uleb128 0x16
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x60c
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x10fe
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x1266
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x12ce
	.uleb128 0x16
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e7
	.uleb128 0x16
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x1459
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x145f
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1252
	.uleb128 0x4
	.long	0x12ce
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x152b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x152b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x126c
	.uleb128 0x4
	.long	0x1459
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x16b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x16b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x15e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x15e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x15e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x15e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1459
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1459
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x1930
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x15f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12d4
	.uleb128 0x3
	.byte	0x4
	.long	0x1175
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1180
	.uleb128 0xf
	.long	0x1484
	.long	0x1465
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1494
	.long	0x9e
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x262
	.uleb128 0x4
	.long	0x14ff
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x5
	.byte	0x35
	.long	0x14ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x14ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1505
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14a7
	.uleb128 0xf
	.long	0x1515
	.long	0x1494
	.uleb128 0x10
	.long	0x226
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x14a7
	.uleb128 0x3
	.byte	0x4
	.long	0x1515
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0x5
	.byte	0x42
	.long	0x126c
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x12ce
	.uleb128 0x4
	.long	0x15ac
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x15ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x15bc
	.long	0x2a4
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x15cb
	.uleb128 0x3
	.byte	0x4
	.long	0x1552
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x6
	.byte	0x20
	.long	0x1531
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1544
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x293
	.uleb128 0x4
	.long	0x16ae
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x16ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x16ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x1459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x1459
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x15f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1603
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x16ae
	.uleb128 0x4
	.long	0x1930
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x1936
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x1936
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x1936
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x1949
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x1936
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x1936
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x15bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x1949
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x1949
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x15bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x194f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x1930
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x1930
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x6
	.value	0x1b7
	.long	0x1930
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x16c0
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x1459
	.uleb128 0x3
	.byte	0x4
	.long	0x16b4
	.uleb128 0x3
	.byte	0x4
	.long	0x1930
	.uleb128 0x11
	.long	0x19df
	.string	"debug_info_type"
	.byte	0x4
	.byte	0xd
	.byte	0x23
	.uleb128 0x12
	.string	"NO_DEBUG"
	.sleb128 0
	.uleb128 0x12
	.string	"DBX_DEBUG"
	.sleb128 1
	.uleb128 0x12
	.string	"SDB_DEBUG"
	.sleb128 2
	.uleb128 0x12
	.string	"DWARF_DEBUG"
	.sleb128 3
	.uleb128 0x12
	.string	"DWARF2_DEBUG"
	.sleb128 4
	.uleb128 0x12
	.string	"XCOFF_DEBUG"
	.sleb128 5
	.uleb128 0x12
	.string	"VMS_DEBUG"
	.sleb128 6
	.uleb128 0x12
	.string	"VMS_AND_DWARF2_DEBUG"
	.sleb128 7
	.byte	0x0
	.uleb128 0x18
	.long	0x19ef
	.byte	0x1
	.long	0x218
	.uleb128 0x19
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x19df
	.uleb128 0x18
	.long	0x1a0a
	.byte	0x1
	.long	0x218
	.uleb128 0x19
	.long	0x9e
	.uleb128 0x19
	.long	0x9e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x19f5
	.uleb128 0x4
	.long	0x1a83
	.string	"deps_reg"
	.byte	0x14
	.byte	0x8
	.byte	0x68
	.uleb128 0x6
	.string	"uses"
	.byte	0x8
	.byte	0x69
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sets"
	.byte	0x8
	.byte	0x6a
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"clobbers"
	.byte	0x8
	.byte	0x6b
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"uses_length"
	.byte	0x8
	.byte	0x6c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"clobbers_length"
	.byte	0x8
	.byte	0x6d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	0x1c44
	.string	"deps"
	.byte	0x54
	.byte	0x8
	.byte	0x1f
	.uleb128 0x6
	.string	"pending_read_insns"
	.byte	0x8
	.byte	0x2a
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"pending_read_mems"
	.byte	0x8
	.byte	0x2d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"pending_write_insns"
	.byte	0x8
	.byte	0x30
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"pending_write_mems"
	.byte	0x8
	.byte	0x33
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pending_lists_length"
	.byte	0x8
	.byte	0x39
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pending_flush_length"
	.byte	0x8
	.byte	0x3d
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"last_pending_memory_flush"
	.byte	0x8
	.byte	0x48
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"last_function_call"
	.byte	0x8
	.byte	0x4d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"sched_before_next_call"
	.byte	0x8
	.byte	0x53
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"in_post_call_group_p"
	.byte	0x8
	.byte	0x57
	.long	0x1c44
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"libcall_block_tail_insn"
	.byte	0x8
	.byte	0x5d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"max_reg"
	.byte	0x8
	.byte	0x61
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"reg_last"
	.byte	0x8
	.byte	0x6e
	.long	0x1c4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"reg_last_in_use"
	.byte	0x8
	.byte	0x72
	.long	0x15d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"reg_conditional_sets"
	.byte	0x8
	.byte	0x75
	.long	0x15d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1a10
	.uleb128 0x4
	.long	0x1d56
	.string	"sched_info"
	.byte	0x34
	.byte	0x8
	.byte	0x7e
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x8
	.byte	0x81
	.long	0x1d75
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x8
	.byte	0x84
	.long	0x19ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x8
	.byte	0x86
	.long	0x1d81
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x8
	.byte	0x8a
	.long	0x19ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"rank"
	.byte	0x8
	.byte	0x8e
	.long	0x1a0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"print_insn"
	.byte	0x8
	.byte	0x93
	.long	0x1d9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x8
	.byte	0x96
	.long	0x1a0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x8
	.byte	0x9a
	.long	0x1dbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x8
	.byte	0x9d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x8
	.byte	0x9d
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"head"
	.byte	0x8
	.byte	0xa1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"tail"
	.byte	0x8
	.byte	0xa1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"queue_must_finish_empty"
	.byte	0x8
	.byte	0xa4
	.long	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"use_cselib"
	.byte	0x8
	.byte	0xa9
	.long	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x1b
	.long	0x1d62
	.byte	0x1
	.uleb128 0x19
	.long	0x1d62
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d68
	.uleb128 0x17
	.string	"ready_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1d56
	.uleb128 0x1c
	.byte	0x1
	.long	0x218
	.uleb128 0x3
	.byte	0x4
	.long	0x1d7b
	.uleb128 0x18
	.long	0x1d9c
	.byte	0x1
	.long	0x205
	.uleb128 0x19
	.long	0x9e
	.uleb128 0x19
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d87
	.uleb128 0x1b
	.long	0x1dbd
	.byte	0x1
	.uleb128 0x19
	.long	0x9e
	.uleb128 0x19
	.long	0x15e4
	.uleb128 0x19
	.long	0x15e4
	.uleb128 0x19
	.long	0x15e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1da2
	.uleb128 0x4
	.long	0x1f0c
	.string	"haifa_insn_data"
	.byte	0x28
	.byte	0x8
	.byte	0xb2
	.uleb128 0x6
	.string	"depend"
	.byte	0x8
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line_note"
	.byte	0x8
	.byte	0xb9
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0x8
	.byte	0xbc
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"priority"
	.byte	0x8
	.byte	0xbf
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"dep_count"
	.byte	0x8
	.byte	0xc4
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"blockage"
	.byte	0x8
	.byte	0xc8
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ref_count"
	.byte	0x8
	.byte	0xcb
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"tick"
	.byte	0x8
	.byte	0xcf
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"cost"
	.byte	0x8
	.byte	0xd1
	.long	0x286
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"units"
	.byte	0x8
	.byte	0xd5
	.long	0x286
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x6
	.string	"reg_weight"
	.byte	0x8
	.byte	0xd9
	.long	0x286
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"cant_move"
	.byte	0x8
	.byte	0xdc
	.long	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"fed_by_spec_load"
	.byte	0x8
	.byte	0xe0
	.long	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"is_load_insn"
	.byte	0x8
	.byte	0xe1
	.long	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"priority_known"
	.byte	0x8
	.byte	0xe4
	.long	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x1d
	.long	.LASF5
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	0x218
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1e
	.long	0x1f90
	.long	.LASF3
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1f
	.string	"ready"
	.byte	0x1
	.byte	0x4b
	.long	0x1d62
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF9
	.byte	0x1
	.byte	0x4d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LASF10
	.byte	0x1
	.byte	0x4e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x1
	.byte	0x4f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x22
	.string	"next"
	.byte	0x1
	.byte	0x5e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x1fbb
	.long	.LASF4
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	0x218
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x24
	.long	.LASF11
	.byte	0x1
	.byte	0x71
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.long	0x1fe7
	.long	.LASF6
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	0x218
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.string	"next"
	.byte	0x1
	.byte	0x7c
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x25
	.long	0x2040
	.string	"ebb_print_insn"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	0x205
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x24
	.long	.LASF11
	.byte	0x1
	.byte	0x88
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"aligned"
	.byte	0x1
	.byte	0x89
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"tmp"
	.byte	0x1
	.byte	0x8b
	.long	0x2461
	.byte	0x5
	.byte	0x3
	.long	tmp.10433
	.byte	0x0
	.uleb128 0x25
	.long	0x207e
	.string	"rank"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x218
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1f
	.string	"insn1"
	.byte	0x1
	.byte	0x97
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"insn2"
	.byte	0x1
	.byte	0x97
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x23
	.long	0x20b8
	.long	.LASF7
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.long	0x218
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x1f
	.string	"next"
	.byte	0x1
	.byte	0xa2
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF11
	.byte	0x1
	.byte	0xa2
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1e
	.long	0x2127
	.long	.LASF8
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x24
	.long	.LASF11
	.byte	0x1
	.byte	0xae
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"cond_set"
	.byte	0x1
	.byte	0xaf
	.long	0x15e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"used"
	.byte	0x1
	.byte	0xaf
	.long	0x15e4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.string	"set"
	.byte	0x1
	.byte	0xaf
	.long	0x15e4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.byte	0xb1
	.long	0x1936
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.byte	0xb2
	.long	0x16b4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0x2226
	.string	"earliest_block_with_similiar_load"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.long	0x1936
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x24
	.long	.LASF12
	.byte	0x1
	.byte	0xe6
	.long	0x1936
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"load_insn"
	.byte	0x1
	.byte	0xe7
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"back_link"
	.byte	0x1
	.byte	0xe9
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.byte	0xea
	.long	0x1936
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.string	"earliest_block"
	.byte	0x1
	.byte	0xea
	.long	0x1936
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x22
	.string	"insn1"
	.byte	0x1
	.byte	0xf0
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x22
	.string	"fore_link"
	.byte	0x1
	.byte	0xf5
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x22
	.string	"insn2"
	.byte	0x1
	.byte	0xfb
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.string	"insn2_block"
	.byte	0x1
	.byte	0xfc
	.long	0x1936
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x22e6
	.string	"add_deps_for_risky_insns"
	.byte	0x1
	.value	0x11e
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x27
	.string	"head"
	.byte	0x1
	.value	0x11d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"tail"
	.byte	0x1
	.value	0x11d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF11
	.byte	0x1
	.value	0x11f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"prev"
	.byte	0x1
	.value	0x11f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"class"
	.byte	0x1
	.value	0x120
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"last_jump"
	.byte	0x1
	.value	0x121
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF10
	.byte	0x1
	.value	0x122
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF12
	.byte	0x1
	.value	0x123
	.long	0x1936
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x123
	.long	0x1936
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x2388
	.string	"schedule_ebb"
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x27
	.string	"head"
	.byte	0x1
	.value	0x15e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"tail"
	.byte	0x1
	.value	0x15e
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"n_insns"
	.byte	0x1
	.value	0x160
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"tmp_deps"
	.byte	0x1
	.value	0x161
	.long	0x1a83
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	0x236e
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x29
	.string	"note"
	.byte	0x1
	.value	0x186
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.string	"__FUNCTION__"
	.long	0x245c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10574
	.byte	0x0
	.uleb128 0x2c
	.long	0x2446
	.byte	0x1
	.string	"schedule_ebbs"
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x27
	.string	"dump_file"
	.byte	0x1
	.value	0x1ab
	.long	0x2446
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x1ad
	.long	0x1936
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x29
	.string	"head"
	.byte	0x1
	.value	0x1be
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"tail"
	.byte	0x1
	.value	0x1bf
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x1c3
	.long	0x16b4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x1cf
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x29
	.string	"pred_val"
	.byte	0x1
	.value	0x1d2
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x302
	.uleb128 0xf
	.long	0x245c
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x244c
	.uleb128 0xf
	.long	0x2471
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x4f
	.byte	0x0
	.uleb128 0x22
	.string	"target_n_insns"
	.byte	0x1
	.byte	0x2b
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	target_n_insns
	.uleb128 0x22
	.string	"sched_n_insns"
	.byte	0x1
	.byte	0x2d
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	sched_n_insns
	.uleb128 0x22
	.string	"ebb_sched_info"
	.byte	0x1
	.byte	0xc4
	.long	0x1c53
	.byte	0x5
	.byte	0x3
	.long	ebb_sched_info
	.uleb128 0xf
	.long	0x24d4
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2d
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x24e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x24c4
	.uleb128 0x2e
	.string	"reload_completed"
	.byte	0x3
	.value	0x763
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"n_basic_blocks"
	.byte	0x6
	.byte	0xf2
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x252f
	.long	0x12d4
	.uleb128 0x10
	.long	0x226
	.byte	0x1
	.byte	0x0
	.uleb128 0x2e
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x251f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"write_symbols"
	.byte	0xd
	.byte	0x30
	.long	0x1955
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"flag_schedule_speculative_load"
	.byte	0xd
	.value	0x1c1
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"current_sched_info"
	.byte	0x8
	.byte	0xac
	.long	0x25a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1c53
	.uleb128 0x2d
	.string	"h_i_d"
	.byte	0x8
	.byte	0xe7
	.long	0x25bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1dc3
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xe
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.long	0x20
	.value	0x2
	.long	.Ldebug_info0
	.long	0x25c3
	.long	0x2388
	.string	"schedule_ebbs"
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
.LASF4:
	.string	"can_schedule_ready_p"
.LASF8:
	.string	"compute_jump_reg_dependencies"
.LASF9:
	.string	"prev_head"
.LASF12:
	.string	"last_block"
.LASF2:
	.string	"mem_attrs"
.LASF6:
	.string	"new_ready"
.LASF11:
	.string	"insn"
.LASF7:
	.string	"contributes_to_priority"
.LASF1:
	.string	"_IO_FILE"
.LASF5:
	.string	"schedule_more_p"
.LASF10:
	.string	"next_tail"
.LASF3:
	.string	"init_ready_list"
.LASF0:
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
