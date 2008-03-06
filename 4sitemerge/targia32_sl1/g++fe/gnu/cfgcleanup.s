	.file	"cfgcleanup.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	notice_new_block, @function
notice_new_block:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cfgcleanup.c"
	.loc 1 98 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$4, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 99 0
	cmpl	$0, 8(%ebp)
	je	.L5
	.loc 1 102 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	forwarder_block_p@PLT
	testb	%al, %al
	je	.L5
	.loc 1 103 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L5:
	.loc 1 104 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	notice_new_block, .-notice_new_block
	.type	update_forwarder_flag, @function
update_forwarder_flag:
.LFB16:
	.loc 1 111 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$4, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 112 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	forwarder_block_p@PLT
	testb	%al, %al
	je	.L7
	.loc 1 113 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	jmp	.L10
.L7:
	.loc 1 115 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L10:
	.loc 1 116 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	update_forwarder_flag, .-update_forwarder_flag
	.section	.rodata
	.align 4
.LC0:
	.string	"Simplifying condjump %i around jump %i\n"
	.text
	.type	try_simplify_condjump, @function
try_simplify_condjump:
.LFB17:
	.loc 1 124 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%esi
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$80, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 132 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L12
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L12
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L15
.L12:
	.loc 1 135 0
	movl	$0, -68(%ebp)
	jmp	.L16
.L15:
	.loc 1 139 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 140 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L17
	.loc 1 141 0
	movl	$0, -68(%ebp)
	jmp	.L16
.L17:
	.loc 1 143 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L19
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L21
.L19:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
.L21:
	movl	-64(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 144 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L22
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L24
.L22:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
.L24:
	movl	-60(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 149 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 150 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L25
	movl	-44(%ebp), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L25
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L28
.L25:
	.loc 1 153 0
	movl	$0, -68(%ebp)
	jmp	.L16
.L28:
	.loc 1 154 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 158 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 160 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	can_fallthru@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L29
	.loc 1 161 0
	movl	$0, -68(%ebp)
	jmp	.L16
.L29:
	.loc 1 164 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	jne	.L31
	.loc 1 165 0
	movl	$0, -68(%ebp)
	jmp	.L16
.L31:
	.loc 1 167 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 168 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L33:
	.loc 1 174 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
	movl	%eax, -32(%ebp)
	.loc 1 176 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
	movl	%eax, -28(%ebp)
	.loc 1 178 0
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 179 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	update_br_prob_note@PLT
	.loc 1 182 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 186 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L35
.L36:
	.loc 1 189 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 190 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L37
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L37
	.loc 1 192 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L40
	.loc 1 194 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 195 0
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L42
.L40:
	.loc 1 198 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns_nobb@PLT
	.loc 1 199 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
.L37:
	.loc 1 187 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L35:
	.loc 1 186 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L36
.L42:
	.loc 1 203 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 204 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	tidy_fallthru_edge@PLT
	.loc 1 206 0
	movl	$1, -68(%ebp)
.L16:
	movl	-68(%ebp), %eax
	.loc 1 207 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	try_simplify_condjump, .-try_simplify_condjump
	.type	mark_effect, @function
mark_effect:
.LFB18:
	.loc 1 216 0
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
	.loc 1 219 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$57, -28(%ebp)
	je	.L46
	cmpl	$59, -28(%ebp)
	je	.L47
	jmp	.L45
.L47:
	.loc 1 224 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L48
	.loc 1 226 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 227 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 228 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear_bit@PLT
	.loc 1 229 0
	cmpl	$175, -20(%ebp)
	jg	.L48
.LBB2:
	.loc 1 231 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -12(%ebp)
	.loc 1 232 0
	jmp	.L51
.L52:
	.loc 1 233 0
	movl	-12(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear_bit@PLT
.L51:
	.loc 1 232 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jg	.L52
.L48:
.LBE2:
	.loc 1 236 0
	movl	$0, -24(%ebp)
	jmp	.L53
.L46:
	.loc 1 239 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_cselib_p@PLT
	testl	%eax, %eax
	je	.L54
	.loc 1 240 0
	movl	$0, -24(%ebp)
	jmp	.L53
.L54:
	.loc 1 241 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 242 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L56
	.loc 1 243 0
	movl	$0, -24(%ebp)
	jmp	.L53
.L56:
	.loc 1 244 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L58
	.loc 1 245 0
	movl	$1, -24(%ebp)
	jmp	.L53
.L58:
	.loc 1 246 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 247 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 248 0
	cmpl	$175, -20(%ebp)
	jg	.L60
.LBB3:
	.loc 1 250 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 251 0
	jmp	.L62
.L63:
	.loc 1 252 0
	movl	-8(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L62:
	.loc 1 251 0
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jg	.L63
.L60:
.LBE3:
	.loc 1 254 0
	movl	$0, -24(%ebp)
	jmp	.L53
.L45:
	.loc 1 257 0
	movl	$0, -24(%ebp)
.L53:
	movl	-24(%ebp), %eax
	.loc 1 259 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	mark_effect, .-mark_effect
	.type	mentions_nonequal_regs, @function
mentions_nonequal_regs:
.LFB19:
	.loc 1 267 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$36, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 268 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 269 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L66
.LBB4:
	.loc 1 273 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 274 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L68
	.loc 1 275 0
	movl	$1, -24(%ebp)
	jmp	.L70
.L68:
	.loc 1 276 0
	cmpl	$175, -12(%ebp)
	jg	.L66
.LBB5:
	.loc 1 278 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -8(%ebp)
	.loc 1 279 0
	jmp	.L72
.L73:
	.loc 1 280 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L72
	.loc 1 281 0
	movl	$1, -24(%ebp)
	jmp	.L70
.L72:
	.loc 1 279 0
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jg	.L73
.L66:
.LBE5:
.LBE4:
	.loc 1 284 0
	movl	$0, -24(%ebp)
.L70:
	movl	-24(%ebp), %eax
	.loc 1 285 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	mentions_nonequal_regs, .-mentions_nonequal_regs
	.type	thread_jump, @function
thread_jump:
.LFB20:
	.loc 1 295 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$112, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 298 0
	movb	$0, -10(%ebp)
	.loc 1 301 0
	movb	$0, -9(%ebp)
	.loc 1 303 0
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L77
	.loc 1 304 0
	movl	$0, -100(%ebp)
	jmp	.L79
.L77:
	.loc 1 308 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L80
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L82
.L80:
	.loc 1 309 0
	movl	$0, -100(%ebp)
	jmp	.L79
.L82:
	.loc 1 310 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L83
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L83
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L86
.L83:
	.loc 1 312 0
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 313 0
	movl	$0, -100(%ebp)
	jmp	.L79
.L86:
	.loc 1 317 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L87
	.loc 1 318 0
	movl	$0, -100(%ebp)
	jmp	.L79
.L87:
	.loc 1 320 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L89
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L91
.L89:
	.loc 1 322 0
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 323 0
	movl	$0, -100(%ebp)
	jmp	.L79
.L91:
	.loc 1 326 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -76(%ebp)
	.loc 1 327 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -72(%ebp)
	.loc 1 328 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	xorl	%ecx, %eax
	testb	%al, %al
	je	.L92
	.loc 1 330 0
	movb	$1, -10(%ebp)
.L92:
	.loc 1 332 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 333 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 334 0
	cmpb	$0, -10(%ebp)
	je	.L94
	.loc 1 335 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -60(%ebp)
	jmp	.L96
.L94:
	.loc 1 337 0
	movl	-68(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -60(%ebp)
.L96:
	.loc 1 339 0
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -56(%ebp)
	.loc 1 340 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	-80(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -52(%ebp)
	.loc 1 342 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	comparison_dominates_p@PLT
	testl	%eax, %eax
	jne	.L97
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	comparison_dominates_p@PLT
	testl	%eax, %eax
	jne	.L97
	.loc 1 344 0
	movl	$0, -100(%ebp)
	jmp	.L79
.L97:
	.loc 1 350 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L100
	movl	-80(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L102
.L100:
	.loc 1 352 0
	movl	$0, -100(%ebp)
	jmp	.L79
.L102:
	.loc 1 356 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L103
.L104:
	.loc 1 358 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L105
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L105
	.loc 1 360 0
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 361 0
	movl	$0, -100(%ebp)
	jmp	.L79
.L105:
	.loc 1 357 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L103:
	.loc 1 356 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L104
	.loc 1 364 0
	call	cselib_init@PLT
	.loc 1 367 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L109
.L110:
	.loc 1 369 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L111
	.loc 1 370 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_process_insn@PLT
.L111:
	.loc 1 368 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L109:
	.loc 1 367 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L110
	.loc 1 372 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -44(%ebp)
	.loc 1 373 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 379 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L114
.L115:
	.loc 1 382 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L116
.LBB6:
	.loc 1 384 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 386 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L118
	.loc 1 388 0
	movl	$0, -48(%ebp)
	jmp	.L120
.L121:
	.loc 1 389 0
	movzbl	-9(%ebp), %esi
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_effect
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
	.loc 1 388 0
	addl	$1, -48(%ebp)
.L120:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jg	.L121
	jmp	.L116
.L118:
	.loc 1 392 0
	movzbl	-9(%ebp), %esi
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_effect
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
.L116:
.LBE6:
	.loc 1 395 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_process_insn@PLT
	.loc 1 380 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L114:
	.loc 1 379 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L123
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L115
.L123:
	.loc 1 400 0
	cmpb	$0, -9(%ebp)
	je	.L125
	.loc 1 402 0
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 403 0
	jmp	.L127
.L125:
	.loc 1 408 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	mentions_nonequal_regs@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	testl	%eax, %eax
	jne	.L127
	.loc 1 413 0
	movl	8(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L129
	.loc 1 414 0
	movl	16(%ebp), %eax
	movl	36(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.L129:
.LBB7:
	.loc 1 416 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L131
.L132:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L131:
	cmpl	$0, -36(%ebp)
	je	.L133
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-32(%ebp), %eax
	jb	.L132
.L133:
	cmpl	$0, -36(%ebp)
	je	.L138
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L138
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L138
.L141:
.LBB8:
	movl	-24(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L142
	jmp	.L144
.L145:
.LBB9:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	andl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L146
	movl	-16(%ebp), %eax
	notl	%eax
	andl	%eax, -20(%ebp)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	sall	$5, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L127
.L146:
.LBE9:
	addl	$1, -28(%ebp)
.L144:
	cmpl	$31, -28(%ebp)
	jbe	.L145
.L142:
	movl	$0, -28(%ebp)
.LBE8:
	addl	$1, -24(%ebp)
.L140:
	cmpl	$3, -24(%ebp)
	jbe	.L141
	movl	$0, -24(%ebp)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L138:
	cmpl	$0, -36(%ebp)
	jne	.L140
.LBE7:
	.loc 1 418 0
	cmpl	$0, -44(%ebp)
	je	.L150
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -44(%ebp)
.L150:
	.loc 1 419 0
	call	cselib_finish@PLT
	.loc 1 420 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	comparison_dominates_p@PLT
	testl	%eax, %eax
	setne	%cl
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	xorl	%ecx, %eax
	testb	%al, %al
	je	.L152
	.loc 1 422 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L154
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L156
.L154:
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
.L156:
	movl	-96(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L79
.L152:
	.loc 1 424 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L157
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L159
.L157:
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
.L159:
	movl	-92(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L79
.L127:
	.loc 1 427 0
	cmpl	$0, -44(%ebp)
	je	.L160
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -44(%ebp)
.L160:
	.loc 1 428 0
	call	cselib_finish@PLT
	.loc 1 429 0
	movl	$0, -100(%ebp)
.L79:
	movl	-100(%ebp), %eax
	.loc 1 430 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	thread_jump, .-thread_jump
	.section	.rodata
	.type	__FUNCTION__.10880, @object
	.size	__FUNCTION__.10880, 18
__FUNCTION__.10880:
	.string	"try_forward_edges"
	.align 4
.LC1:
	.string	"../../../kg++fe/gnu/cfgcleanup.c"
.LC2:
	.string	"Infinite loop in BB %i.\n"
.LC3:
	.string	"Conditionals threaded.\n"
	.align 4
.LC4:
	.string	"Forwarding edge %i->%i to %i failed.\n"
	.text
	.type	try_forward_edges, @function
try_forward_edges:
.LFB21:
	.loc 1 439 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%edi
.LCFI28:
	pushl	%esi
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$140, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 440 0
	movb	$0, -19(%ebp)
	.loc 1 441 0
	movl	$0, -80(%ebp)
	.loc 1 443 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L164
.L165:
.LBB10:
	.loc 1 447 0
	movb	$0, -18(%ebp)
	.loc 1 448 0
	movl	$0, -64(%ebp)
	.loc 1 450 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 457 0
	movl	-88(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L166
	.loc 1 460 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 461 0
	movl	$0, -68(%ebp)
	.loc 1 463 0
	jmp	.L168
.L169:
.LBB11:
	.loc 1 465 0
	movl	$0, -60(%ebp)
	.loc 1 466 0
	movb	$0, -17(%ebp)
	.loc 1 468 0
	movl	-76(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L170
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L170
	.loc 1 472 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-76(%ebp), %eax
	jne	.L173
	.loc 1 473 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L173:
	.loc 1 474 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 468 0
	jmp	.L175
.L170:
	.loc 1 479 0
	movl	8(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L175
.LBB12:
	.loc 1 481 0
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	thread_jump
	movl	%eax, -56(%ebp)
	.loc 1 482 0
	cmpl	$0, -56(%ebp)
	je	.L175
	.loc 1 484 0
	cmpl	$0, -80(%ebp)
	jne	.L178
	.loc 1 485 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -80(%ebp)
	jmp	.L180
.L178:
.LBB13:
	.loc 1 493 0
	movl	$0, -52(%ebp)
	jmp	.L181
.L182:
	.loc 1 494 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-56(%ebp), %eax
	je	.L183
	.loc 1 493 0
	addl	$1, -52(%ebp)
.L181:
	movl	-52(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jl	.L182
.L183:
	.loc 1 496 0
	movl	-52(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jge	.L180
	.loc 1 498 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 499 0
	jmp	.L186
.L180:
.LBE13:
	.loc 1 504 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L186
	.loc 1 507 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -64(%ebp)
	jl	.L188
	.loc 1 508 0
	leal	__FUNCTION__.10880@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$508, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L188:
	.loc 1 509 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-80(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -64(%ebp)
	.loc 1 511 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 512 0
	movb	$1, -17(%ebp)
.L175:
.LBE12:
	.loc 1 516 0
	cmpl	$0, -60(%ebp)
	je	.L186
	.loc 1 525 0
	movl	8(%ebp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L191
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L191
.LBB14:
	.loc 1 528 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L194
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L196
.L194:
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -108(%ebp)
.L196:
	movl	-108(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 530 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L199
	.loc 1 531 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 533 0
	jmp	.L199
.L200:
	.loc 1 535 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L201
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L203
.L201:
	.loc 1 534 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L199:
	.loc 1 533 0
	cmpl	$0, -48(%ebp)
	je	.L203
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L203
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L200
.L203:
	.loc 1 539 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L186
	.loc 1 546 0
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 547 0
	cmpl	$0, -48(%ebp)
	je	.L191
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L191
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	je	.L186
.L191:
.LBE14:
	.loc 1 552 0
	addl	$1, -68(%ebp)
	.loc 1 553 0
	movl	-60(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 554 0
	movzbl	-18(%ebp), %edx
	movzbl	-17(%ebp), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -18(%ebp)
.L168:
.LBE11:
	.loc 1 463 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -68(%ebp)
	jl	.L169
.L186:
	.loc 1 557 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -68(%ebp)
	jl	.L209
	.loc 1 559 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L166
	.loc 1 560 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L166
.L209:
	.loc 1 563 0
	movl	-76(%ebp), %eax
	cmpl	-72(%ebp), %eax
	je	.L166
.LBB15:
	.loc 1 568 0
	movl	-88(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 569 0
	movl	-88(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 571 0
	movl	$0, -36(%ebp)
	.loc 1 574 0
	movzbl	-18(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L214
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -76(%ebp)
	je	.L214
	.loc 1 576 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch_force@PLT
	movl	%eax, (%esp)
	call	notice_new_block
	.loc 1 577 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L219
	.loc 1 578 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$23, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 574 0
	jmp	.L219
.L214:
	.loc 1 580 0
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L219
	.loc 1 582 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L166
	.loc 1 583 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %esi
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
	.loc 1 586 0
	jmp	.L166
.L219:
	.loc 1 592 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	imull	-44(%ebp), %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -116(%ebp)
	movl	-116(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -40(%ebp)
	.loc 1 596 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L223
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	forwarder_block_p@PLT
	testb	%al, %al
	je	.L223
	.loc 1 597 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 40(%eax)
.L223:
.LBB16:
	.loc 1 603 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	subl	-96(%ebp), %eax
	sbbl	-92(%ebp), %edx
	movl	-72(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 604 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	testl	%edx, %edx
	jns	.L226
	.loc 1 605 0
	movl	-72(%ebp), %eax
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
.L226:
	.loc 1 606 0
	movl	-72(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, %edx
	subl	-40(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 607 0
	movl	-72(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jns	.L228
	.loc 1 608 0
	movl	-72(%ebp), %eax
	movl	$0, 72(%eax)
.L228:
	.loc 1 609 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L230
.LBB17:
	.loc 1 613 0
	movl	-36(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jl	.L232
	.loc 1 614 0
	leal	__FUNCTION__.10880@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$614, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L232:
	.loc 1 615 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	addl	$1, -36(%ebp)
	.loc 1 616 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-72(%ebp), %eax
	je	.L234
	.loc 1 617 0
	leal	__FUNCTION__.10880@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$617, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L234:
	.loc 1 618 0
	movl	-72(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L236
	.loc 1 619 0
	movl	-40(%ebp), %eax
	imull	$10000, %eax, %edx
	movl	-72(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, -24(%ebp)
	jmp	.L238
.L236:
	.loc 1 621 0
	movl	$0, -24(%ebp)
.L238:
	.loc 1 622 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-24(%ebp), %eax
	jge	.L239
	.loc 1 623 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -24(%ebp)
.L239:
	.loc 1 624 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, %edx
	subl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 625 0
	movl	$10000, %eax
	subl	-24(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 626 0
	cmpl	$0, -24(%ebp)
	jg	.L241
	.loc 1 628 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	$10000, 28(%eax)
	.loc 1 629 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 28(%eax)
	jmp	.L243
.L241:
	.loc 1 632 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L244
.L245:
	.loc 1 633 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	imull	$10000, %eax, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fildl	-24(%ebp)
	fdivrp	%st, %st(1)
	fnstcw	-98(%ebp)
	movzwl	-98(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -100(%ebp)
	fldcw	-100(%ebp)
	fistpl	-104(%ebp)
	fldcw	-98(%ebp)
	movl	-104(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 632 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L244:
	cmpl	$0, -28(%ebp)
	jne	.L245
.L243:
	.loc 1 635 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	update_br_prob_note@PLT
	jmp	.L246
.L230:
.LBE17:
	.loc 1 643 0
	movl	-36(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jge	.L247
	movl	-36(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-72(%ebp), %eax
	jne	.L247
	.loc 1 645 0
	addl	$1, -36(%ebp)
.L247:
	.loc 1 646 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L246:
	.loc 1 649 0
	movl	-32(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	subl	-96(%ebp), %eax
	sbbl	-92(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 650 0
	movl	-32(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	testl	%edx, %edx
	jns	.L250
	.loc 1 651 0
	movl	-32(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
.L250:
	.loc 1 652 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
.LBE16:
	.loc 1 654 0
	movl	-72(%ebp), %eax
	cmpl	-76(%ebp), %eax
	jne	.L223
	.loc 1 656 0
	movb	$1, -19(%ebp)
.L166:
.LBE15:
.LBE10:
	.loc 1 443 0
	movl	-84(%ebp), %eax
	movl	%eax, -88(%ebp)
.L164:
	cmpl	$0, -88(%ebp)
	jne	.L165
	.loc 1 660 0
	cmpl	$0, -80(%ebp)
	je	.L254
	.loc 1 661 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L254:
	.loc 1 662 0
	movzbl	-19(%ebp), %eax
	.loc 1 663 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	try_forward_edges, .-try_forward_edges
	.type	label_is_jump_target_p, @function
label_is_jump_target_p:
.LFB22:
	.loc 1 673 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	subl	$24, %esp
.LCFI34:
	.loc 1 674 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 676 0
	movl	8(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L258
	.loc 1 677 0
	movl	$1, -24(%ebp)
	jmp	.L260
.L258:
	.loc 1 679 0
	cmpl	$0, -16(%ebp)
	je	.L261
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L261
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L261
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L265
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L267
.L265:
	movl	$1, -20(%ebp)
	jmp	.L268
.L267:
	movl	$0, -20(%ebp)
.L268:
	cmpl	$0, -20(%ebp)
	je	.L261
.LBB18:
	.loc 1 686 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 687 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 689 0
	movl	$0, -8(%ebp)
	jmp	.L270
.L271:
	.loc 1 690 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L272
	.loc 1 691 0
	movl	$1, -24(%ebp)
	jmp	.L260
.L272:
	.loc 1 689 0
	addl	$1, -8(%ebp)
.L270:
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jl	.L271
.L261:
.LBE18:
	.loc 1 694 0
	movl	$0, -24(%ebp)
.L260:
	movl	-24(%ebp), %eax
	.loc 1 695 0
	leave
	ret
.LFE22:
	.size	label_is_jump_target_p, .-label_is_jump_target_p
	.type	tail_recursion_label_p, @function
tail_recursion_label_p:
.LFB23:
	.loc 1 702 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	subl	$20, %esp
.LCFI37:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 705 0
	movl	tail_recursion_label_list@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L276
.L277:
	.loc 1 706 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L278
	.loc 1 707 0
	movl	$1, -20(%ebp)
	jmp	.L280
.L278:
	.loc 1 705 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -4(%ebp)
.L276:
	cmpl	$0, -4(%ebp)
	jne	.L277
	.loc 1 709 0
	movl	$0, -20(%ebp)
.L280:
	movl	-20(%ebp), %eax
	.loc 1 710 0
	leave
	ret
.LFE23:
	.size	tail_recursion_label_p, .-tail_recursion_label_p
	.section	.rodata
	.align 32
	.type	__FUNCTION__.11171, @object
	.size	__FUNCTION__.11171, 38
__FUNCTION__.11171:
	.string	"merge_blocks_move_predecessor_nojumps"
	.align 4
.LC5:
	.string	"Moved block %d before %d and merged.\n"
	.text
	.type	merge_blocks_move_predecessor_nojumps, @function
merge_blocks_move_predecessor_nojumps:
.LFB24:
	.loc 1 719 0
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
	.loc 1 722 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 723 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L284
	.loc 1 724 0
	leal	__FUNCTION__.11171@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$724, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L284:
	.loc 1 725 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 734 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	squeeze_notes@PLT
	testb	%al, %al
	je	.L286
	.loc 1 735 0
	leal	__FUNCTION__.11171@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$735, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L286:
	.loc 1 738 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L288
	.loc 1 739 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reorder_insns_nobb@PLT
.L288:
	.loc 1 740 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 742 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L290
	.loc 1 743 0
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L290:
	.loc 1 748 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink_block@PLT
	.loc 1 749 0
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	link_block@PLT
	.loc 1 752 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_nomove@PLT
	.loc 1 753 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	merge_blocks_move_predecessor_nojumps, .-merge_blocks_move_predecessor_nojumps
	.section	.rodata
	.align 32
	.type	__FUNCTION__.11206, @object
	.size	__FUNCTION__.11206, 36
__FUNCTION__.11206:
	.string	"merge_blocks_move_successor_nojumps"
	.align 4
.LC6:
	.string	"Moved block %d after %d and merged.\n"
	.text
	.type	merge_blocks_move_successor_nojumps, @function
merge_blocks_move_successor_nojumps:
.LFB25:
	.loc 1 762 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%esi
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$32, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 765 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 766 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 769 0
	cmpl	$0, -16(%ebp)
	je	.L294
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L294
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L294
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L294
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L299
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L294
.L299:
	.loc 1 778 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 779 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L294:
	.loc 1 783 0
	cmpl	$0, -16(%ebp)
	je	.L301
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L301
	.loc 1 784 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L301:
	.loc 1 793 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	squeeze_notes@PLT
	testb	%al, %al
	je	.L304
	.loc 1 794 0
	leal	__FUNCTION__.11206@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$794, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L304:
	.loc 1 797 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	reorder_insns_nobb@PLT
	.loc 1 800 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 802 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L306
	.loc 1 803 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L306:
	.loc 1 807 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_nomove@PLT
	.loc 1 808 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	merge_blocks_move_successor_nojumps, .-merge_blocks_move_successor_nojumps
	.section	.rodata
	.align 4
.LC7:
	.string	"Merged %d and %d without moving.\n"
	.text
	.type	merge_blocks, @function
merge_blocks:
.LFB26:
	.loc 1 818 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$52, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 823 0
	movl	20(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L310
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L310
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	tail_recursion_label_p
	testb	%al, %al
	je	.L310
	.loc 1 826 0
	movl	$0, -40(%ebp)
	jmp	.L314
.L310:
	.loc 1 829 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L315
.LBB19:
	.loc 1 831 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 832 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_nomove@PLT
	.loc 1 833 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	update_forwarder_flag
	.loc 1 835 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L317
	.loc 1 836 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L317:
	.loc 1 839 0
	movl	$1, -40(%ebp)
	jmp	.L314
.L315:
.LBE19:
	.loc 1 844 0
	movl	20(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L319
.LBB20:
	.loc 1 854 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L321
	movl	16(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L323
.L321:
	.loc 1 855 0
	movl	$0, -40(%ebp)
	jmp	.L314
.L323:
	.loc 1 861 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L324
.L325:
	.loc 1 862 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L326
	.loc 1 861 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L324:
	cmpl	$0, -20(%ebp)
	jne	.L325
.L326:
	.loc 1 865 0
	cmpl	$0, -20(%ebp)
	setne	%al
	movb	%al, -6(%ebp)
	.loc 1 867 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L328
.L329:
	.loc 1 868 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L330
	.loc 1 867 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L328:
	cmpl	$0, -20(%ebp)
	jne	.L329
.L330:
	.loc 1 871 0
	cmpl	$0, -20(%ebp)
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 872 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 877 0
	movzbl	-6(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L332
	.loc 1 879 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_move_successor_nojumps
	.loc 1 880 0
	movl	$1, -40(%ebp)
	jmp	.L314
.L332:
	.loc 1 888 0
	cmpb	$0, -5(%ebp)
	je	.L334
.LBB21:
	.loc 1 892 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L336
	.loc 1 893 0
	movl	$0, -40(%ebp)
	jmp	.L314
.L336:
	.loc 1 894 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	force_nonfallthru@PLT
	movl	%eax, -12(%ebp)
	.loc 1 895 0
	cmpl	$0, -12(%ebp)
	je	.L334
	.loc 1 896 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	notice_new_block
.L334:
.LBE21:
	.loc 1 899 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks_move_predecessor_nojumps
	.loc 1 900 0
	movl	$1, -40(%ebp)
	jmp	.L314
.L319:
.LBE20:
	.loc 1 903 0
	movl	$0, -40(%ebp)
.L314:
	movl	-40(%ebp), %eax
	.loc 1 904 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	merge_blocks, .-merge_blocks
	.type	insns_match_p, @function
insns_match_p:
.LFB27:
	.loc 1 913 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$84, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 917 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %edx
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	je	.L341
	.loc 1 918 0
	movl	$0, -60(%ebp)
	jmp	.L343
.L341:
	.loc 1 920 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 921 0
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 923 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %edx
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	je	.L344
	.loc 1 924 0
	movl	$0, -60(%ebp)
	jmp	.L343
.L344:
	.loc 1 936 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L346
	movl	16(%ebp), %eax
	movl	76(%eax), %edx
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L348
	movl	12(%ebp), %eax
	movzbl	3(%eax), %edx
	andl	$1, %edx
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L346
.L348:
	.loc 1 940 0
	movl	$0, -60(%ebp)
	jmp	.L343
.L346:
	.loc 1 976 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L350
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	sete	-53(%ebp)
	jmp	.L352
.L350:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	sete	-53(%ebp)
.L352:
	cmpb	$0, -53(%ebp)
	je	.L353
.LBB22:
	.loc 1 980 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 981 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -16(%ebp)
	.loc 1 983 0
	cmpl	$0, -20(%ebp)
	je	.L355
	cmpl	$0, -16(%ebp)
	je	.L355
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L358
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L360
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L360
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L360
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L360
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	je	.L360
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L360
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L360
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$150, %ax
	jne	.L355
.L360:
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L355
.L358:
.LBB23:
	.loc 1 991 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L368
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L370
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L372
.L370:
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -48(%ebp)
.L372:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L373
.L368:
	movl	$0, -52(%ebp)
.L373:
	movl	-52(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 992 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L374
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L376
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L378
.L376:
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L378:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L379
.L374:
	movl	$0, -44(%ebp)
.L379:
	movl	-44(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 993 0
	cmpl	$0, -12(%ebp)
	je	.L355
	cmpl	$0, -8(%ebp)
	je	.L355
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L355
	.loc 1 996 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	-12(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 997 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	-8(%ebp), %edx
	addl	$12, %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	validate_change@PLT
	.loc 1 998 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	jne	.L383
	.loc 1 999 0
	movl	$0, (%esp)
	call	cancel_changes@PLT
	jmp	.L355
.L383:
	.loc 1 1000 0
	call	apply_change_group@PLT
	testl	%eax, %eax
	je	.L355
	.loc 1 1001 0
	movl	$1, -60(%ebp)
	jmp	.L343
.L355:
.LBE23:
	.loc 1 1005 0
	movl	$0, -60(%ebp)
	jmp	.L343
.L353:
.LBE22:
	.loc 1 1008 0
	movl	$1, -60(%ebp)
.L343:
	movl	-60(%ebp), %eax
	.loc 1 1009 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	insns_match_p, .-insns_match_p
	.type	flow_find_cross_jump, @function
flow_find_cross_jump:
.LFB28:
	.loc 1 1023 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$68, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1025 0
	movl	$0, -16(%ebp)
	.loc 1 1030 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1031 0
	movl	$0, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1032 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L388
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L390
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L390
.L388:
	.loc 1 1035 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1036 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L390:
	.loc 1 1039 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1040 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L392
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L441
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L441
.L392:
	.loc 1 1043 0
	movl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1045 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L396
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	jne	.L396
	cmpl	$0, -32(%ebp)
	je	.L396
	.loc 1 1046 0
	addl	$1, -16(%ebp)
.L396:
	.loc 1 1047 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1053 0
	jmp	.L441
.L401:
	.loc 1 1054 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L400:
.L441:
	.loc 1 1053 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L404
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L401
	.loc 1 1056 0
	jmp	.L404
.L405:
	.loc 1 1057 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L404:
	.loc 1 1056 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L406
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L405
.L406:
	.loc 1 1059 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L408
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L408
	.loc 1 1062 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insns_match_p
	xorl	$1, %eax
	testb	%al, %al
	jne	.L408
	.loc 1 1066 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L412
.LBB24:
	.loc 1 1070 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1071 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1073 0
	cmpl	$0, -12(%ebp)
	je	.L414
	cmpl	$0, -8(%ebp)
	jne	.L414
	.loc 1 1074 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 1073 0
	jmp	.L417
.L414:
	.loc 1 1075 0
	cmpl	$0, -12(%ebp)
	jne	.L418
	cmpl	$0, -8(%ebp)
	je	.L418
	.loc 1 1076 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 1075 0
	jmp	.L417
.L418:
	.loc 1 1077 0
	cmpl	$0, -12(%ebp)
	je	.L417
	cmpl	$0, -8(%ebp)
	je	.L417
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L417
	.loc 1 1080 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 1081 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L417:
	.loc 1 1084 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1085 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1086 0
	addl	$1, -16(%ebp)
.L412:
.LBE24:
	.loc 1 1089 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1090 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1091 0
	jmp	.L400
.L408:
	.loc 1 1103 0
	cmpl	$0, -16(%ebp)
	je	.L424
	.loc 1 1105 0
	jmp	.L426
.L427:
	.loc 1 1106 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L426:
	.loc 1 1105 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L428
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L427
.L428:
	.loc 1 1108 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L433
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L433
	.loc 1 1109 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1111 0
	jmp	.L433
.L434:
	.loc 1 1112 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L433:
	.loc 1 1111 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L435
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L434
.L435:
	.loc 1 1114 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L437
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L437
	.loc 1 1115 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
.L437:
	.loc 1 1117 0
	movl	20(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1118 0
	movl	24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L424:
	.loc 1 1121 0
	movl	-16(%ebp), %eax
	.loc 1 1122 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	flow_find_cross_jump, .-flow_find_cross_jump
	.section	.rodata
	.align 4
.LC8:
	.string	"Outcomes of branch in bb %i and %i differs to much (%i %i)\n"
	.align 4
.LC9:
	.string	"Conditionals in bb %i and %i match.\n"
	.text
	.type	outgoing_edges_match, @function
outgoing_edges_match:
.LFB29:
	.loc 1 1135 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%edi
.LCFI62:
	pushl	%esi
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$156, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1136 0
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	.loc 1 1137 0
	movl	$0, -92(%ebp)
	movl	$0, -88(%ebp)
	.loc 1 1142 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L443
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L443
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$30, %eax
	testl	%eax, %eax
	jne	.L443
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L447
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L443
.L447:
	.loc 1 1145 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L449
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L449
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$30, %eax
	testl	%eax, %eax
	jne	.L449
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L453
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L449
.L453:
	movl	$1, -140(%ebp)
	jmp	.L455
.L449:
	movl	$0, -140(%ebp)
.L455:
	movzbl	-140(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -144(%ebp)
	jmp	.L456
.L443:
	.loc 1 1151 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L457
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L457
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L457
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L457
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L457
.LBB25:
	.loc 1 1162 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L463
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L463
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L463
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L463
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L468
.L463:
	.loc 1 1167 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L468:
	.loc 1 1177 0
	movl	12(%ebp), %eax
	movl	56(%eax), %edx
	movl	16(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	%eax, %edx
	je	.L469
	.loc 1 1178 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L469:
	.loc 1 1180 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L471
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L473
.L471:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -136(%ebp)
.L473:
	movl	-136(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1181 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L474
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -132(%ebp)
	jmp	.L476
.L474:
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -132(%ebp)
.L476:
	movl	-132(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1182 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L477
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L479
.L477:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -128(%ebp)
.L479:
	movl	-128(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1183 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L480
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L482
.L480:
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -124(%ebp)
.L482:
	movl	-124(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1187 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L483
	.loc 1 1188 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
.L483:
	.loc 1 1190 0
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L485
	.loc 1 1191 0
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
.L485:
	.loc 1 1196 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L487
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L487
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L487
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L491
.L487:
	.loc 1 1200 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L491:
	.loc 1 1202 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L492
	movl	-76(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L492
	.loc 1 1203 0
	movb	$0, -14(%ebp)
	.loc 1 1202 0
	jmp	.L495
.L492:
	.loc 1 1204 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L496
	movl	-76(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L496
	.loc 1 1205 0
	movb	$1, -14(%ebp)
	.loc 1 1204 0
	jmp	.L495
.L496:
	.loc 1 1207 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L495:
	.loc 1 1209 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1210 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1211 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%cl
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	xorl	%ecx, %eax
	testb	%al, %al
	je	.L499
	.loc 1 1213 0
	movzbl	-14(%ebp), %eax
	xorl	$1, %eax
	movb	%al, -14(%ebp)
.L499:
	.loc 1 1215 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1216 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1217 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -44(%ebp)
	.loc 1 1218 0
	cmpb	$0, -14(%ebp)
	je	.L501
	.loc 1 1219 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	reversed_comparison_code@PLT
	movl	%eax, -40(%ebp)
	jmp	.L503
.L501:
	.loc 1 1221 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
.L503:
	.loc 1 1223 0
	cmpl	$0, -40(%ebp)
	jne	.L504
	.loc 1 1224 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L504:
	.loc 1 1227 0
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L506
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L506
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	jne	.L509
.L506:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_condition@PLT
	cmpl	-44(%ebp), %eax
	jne	.L510
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L510
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_renumbered_equal_p@PLT
	testl	%eax, %eax
	je	.L510
.L509:
	movl	$1, -120(%ebp)
	jmp	.L513
.L510:
	movl	$0, -120(%ebp)
.L513:
	movzbl	-120(%ebp), %eax
	movb	%al, -13(%ebp)
	.loc 1 1240 0
	cmpb	$0, -13(%ebp)
	je	.L514
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L514
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_hot_bb_p@PLT
	testb	%al, %al
	je	.L514
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_hot_bb_p@PLT
	testb	%al, %al
	je	.L514
.LBB26:
	.loc 1 1247 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L519
	.loc 1 1248 0
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L521
.L519:
	.loc 1 1251 0
	movl	-68(%ebp), %eax
	movl	28(%eax), %edx
	movl	$10000, %eax
	subl	%edx, %eax
	movl	%eax, -36(%ebp)
.L521:
	.loc 1 1256 0
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	subl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$5000, %eax
	jle	.L514
	.loc 1 1258 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L523
	.loc 1 1259 0
	movl	-76(%ebp), %eax
	movl	28(%eax), %edx
	movl	16(%ebp), %eax
	movl	44(%eax), %ecx
	movl	12(%ebp), %eax
	movl	44(%eax), %esi
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
.L523:
	.loc 1 1263 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L514:
.LBE26:
	.loc 1 1267 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L525
	cmpb	$0, -13(%ebp)
	je	.L525
	.loc 1 1268 0
	movl	16(%ebp), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L525:
	.loc 1 1271 0
	movzbl	-13(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	.L456
.L457:
.LBE25:
	.loc 1 1281 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insns_match_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L528
	.loc 1 1282 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L528:
	.loc 1 1287 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L530
.L531:
	.loc 1 1290 0
	movl	-84(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L532
	.loc 1 1291 0
	addl	$1, -100(%ebp)
.L532:
	.loc 1 1293 0
	movl	-80(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L534
	.loc 1 1294 0
	addl	$1, -96(%ebp)
.L534:
	.loc 1 1296 0
	movl	-84(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L536
	.loc 1 1297 0
	movl	-84(%ebp), %eax
	movl	%eax, -92(%ebp)
.L536:
	.loc 1 1298 0
	movl	-80(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L538
	.loc 1 1299 0
	movl	-80(%ebp), %eax
	movl	%eax, -88(%ebp)
.L538:
	.loc 1 1288 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -80(%ebp)
.L530:
	.loc 1 1287 0
	cmpl	$0, -84(%ebp)
	je	.L540
	cmpl	$0, -80(%ebp)
	jne	.L531
.L540:
	.loc 1 1303 0
	cmpl	$0, -84(%ebp)
	jne	.L542
	cmpl	$0, -80(%ebp)
	jne	.L542
	movl	-100(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jne	.L542
	cmpl	$0, -92(%ebp)
	setne	%al
	cmpl	$0, -88(%ebp)
	setne	%dl
	xorl	%edx, %eax
	testb	%al, %al
	je	.L546
.L542:
	.loc 1 1306 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L546:
	.loc 1 1309 0
	cmpl	$0, -92(%ebp)
	je	.L547
.LBB27:
	.loc 1 1312 0
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	forwarder_block_p@PLT
	testb	%al, %al
	je	.L549
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L551
.L549:
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -116(%ebp)
.L551:
	movl	-116(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1314 0
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	forwarder_block_p@PLT
	testb	%al, %al
	je	.L552
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L554
.L552:
	movl	-88(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -112(%ebp)
.L554:
	movl	-112(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1316 0
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L547
	.loc 1 1317 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L547:
.LBE27:
.LBB28:
	.loc 1 1322 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1323 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1325 0
	cmpl	$0, -24(%ebp)
	jne	.L556
	cmpl	$0, -20(%ebp)
	je	.L556
	.loc 1 1326 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L556:
	.loc 1 1328 0
	cmpl	$0, -24(%ebp)
	je	.L559
	cmpl	$0, -20(%ebp)
	je	.L561
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L559
.L561:
	.loc 1 1329 0
	movl	$0, -144(%ebp)
	jmp	.L456
.L559:
.LBE28:
	.loc 1 1334 0
	movl	$1, -144(%ebp)
.L456:
	movl	-144(%ebp), %eax
	.loc 1 1335 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	outgoing_edges_match, .-outgoing_edges_match
	.section	.rodata
	.align 4
.LC10:
	.string	"Splitting bb %i before %i insns\n"
	.align 4
.LC11:
	.string	"Cross jumping from bb %i to bb %i; %i common insns\n"
	.text
	.type	try_crossjump_to_edge, @function
try_crossjump_to_edge:
.LFB30:
	.loc 1 1345 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%edi
.LCFI68:
	pushl	%esi
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$108, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1347 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1356 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L565
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L565
	movl	-52(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L565
	.loc 1 1359 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
.L565:
	.loc 1 1361 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L569
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L569
	movl	-48(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L569
	.loc 1 1364 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 16(%ebp)
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
.L569:
	.loc 1 1367 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -52(%ebp)
	je	.L573
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -48(%ebp)
	jne	.L575
.L573:
	.loc 1 1368 0
	movl	$0, -68(%ebp)
	jmp	.L576
.L575:
	.loc 1 1369 0
	movl	-52(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jne	.L577
	.loc 1 1370 0
	movl	$0, -68(%ebp)
	jmp	.L576
.L577:
	.loc 1 1373 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L579
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L579
	.loc 1 1375 0
	movl	$0, -68(%ebp)
	jmp	.L576
.L579:
	.loc 1 1377 0
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L582
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L582
	.loc 1 1379 0
	movl	$0, -68(%ebp)
	jmp	.L576
.L582:
	.loc 1 1383 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L585
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L587
.L585:
	.loc 1 1384 0
	movl	$0, -68(%ebp)
	jmp	.L576
.L587:
	.loc 1 1387 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	outgoing_edges_match
	xorl	$1, %eax
	testb	%al, %al
	je	.L588
	.loc 1 1388 0
	movl	$0, -68(%ebp)
	jmp	.L576
.L588:
	.loc 1 1391 0
	leal	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_find_cross_jump
	movl	%eax, -56(%ebp)
	.loc 1 1392 0
	cmpl	$0, -56(%ebp)
	jne	.L590
	.loc 1 1393 0
	movl	$0, -68(%ebp)
	jmp	.L576
.L590:
	.loc 1 1396 0
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L592
	.loc 1 1397 0
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L594
.L592:
	.loc 1 1400 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L595
	.loc 1 1401 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L595:
	.loc 1 1403 0
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	split_block@PLT
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
.L594:
	.loc 1 1406 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L597
	.loc 1 1407 0
	movl	-48(%ebp), %eax
	movl	44(%eax), %edx
	movl	-52(%ebp), %eax
	movl	44(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L597:
	.loc 1 1411 0
	movl	-44(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-52(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-44(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 1412 0
	movl	-44(%ebp), %eax
	movl	72(%eax), %edx
	movl	-52(%ebp), %eax
	movl	72(%eax), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 1414 0
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 1417 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L599
.L600:
.LBB29:
	.loc 1 1420 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1422 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L601
	.loc 1 1423 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L601:
	.loc 1 1425 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L603:
.LBB30:
	.loc 1 1427 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1428 0
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L604
	.loc 1 1429 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
.L604:
	.loc 1 1430 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L606
.LBE30:
	.loc 1 1425 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1432 0
	jmp	.L603
.L606:
	.loc 1 1434 0
	movl	-32(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 1439 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L608
	.loc 1 1441 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 1442 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 1443 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %esi
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	72(%eax), %edi
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -84(%ebp)
	movl	-84(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	(%edi,%eax), %eax
	movl	%eax, 72(%esi)
.L608:
	.loc 1 1446 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L610
	.loc 1 1448 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 1449 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	testl	%edx, %edx
	jns	.L612
	.loc 1 1450 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
.L612:
	.loc 1 1451 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 1452 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %esi
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	72(%eax), %edi
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -84(%ebp)
	movl	-84(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%edi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 72(%esi)
	.loc 1 1453 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jns	.L614
	.loc 1 1454 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 72(%eax)
.L614:
	.loc 1 1455 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	testl	%edx, %edx
	jns	.L610
	.loc 1 1456 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
.L610:
	.loc 1 1459 0
	movl	-44(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L617
	movl	-52(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L617
	.loc 1 1460 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %edx
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	addl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1459 0
	jmp	.L620
.L617:
	.loc 1 1462 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %edx
	movl	-44(%ebp), %eax
	movl	72(%eax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	28(%eax), %edx
	movl	-52(%ebp), %eax
	movl	72(%eax), %eax
	imull	%edx, %eax
	addl	%eax, %ecx
	movl	-44(%ebp), %eax
	movl	72(%eax), %edx
	movl	-52(%ebp), %eax
	movl	72(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%ecx, %edx
	movl	%eax, %esi
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%esi
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 28(%eax)
.L620:
.LBE29:
	.loc 1 1417 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L599:
	cmpl	$0, -32(%ebp)
	jne	.L600
	.loc 1 1468 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	update_br_prob_note@PLT
	.loc 1 1473 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L622
	.loc 1 1474 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
.L622:
	.loc 1 1476 0
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L624
	.loc 1 1477 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
.L624:
	.loc 1 1479 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	split_block@PLT
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1480 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1482 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	redirect_edge_and_branch_force@PLT
	.loc 1 1483 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 1485 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	update_forwarder_flag
	.loc 1 1487 0
	movl	$1, -68(%ebp)
.L576:
	movl	-68(%ebp), %eax
	.loc 1 1488 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	try_crossjump_to_edge, .-try_crossjump_to_edge
	.type	try_crossjump_bb, @function
try_crossjump_bb:
.LFB31:
	.loc 1 1498 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$52, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1501 0
	movl	$0, -16(%ebp)
	.loc 1 1504 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L628
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L630
.L628:
	.loc 1 1505 0
	movl	$0, -40(%ebp)
	jmp	.L631
.L630:
	.loc 1 1510 0
	movl	$0, -20(%ebp)
	.loc 1 1511 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$240, %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1512 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L632
.L633:
	.loc 1 1514 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L634
	.loc 1 1515 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
.L634:
	.loc 1 1516 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	.L636
	.loc 1 1517 0
	movl	$0, -40(%ebp)
	jmp	.L631
.L636:
	.loc 1 1512 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	addl	$1, -16(%ebp)
.L632:
	cmpl	$0, -36(%ebp)
	jne	.L633
	.loc 1 1520 0
	movb	$0, -5(%ebp)
	.loc 1 1521 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L639
.L640:
	.loc 1 1523 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1526 0
	cmpl	$0, -20(%ebp)
	je	.L641
	.loc 1 1530 0
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L643
	.loc 1 1533 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_crossjump_to_edge
	testb	%al, %al
	je	.L641
	.loc 1 1535 0
	movb	$1, -5(%ebp)
	.loc 1 1536 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1537 0
	jmp	.L643
.L641:
	.loc 1 1553 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L643
	.loc 1 1556 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L647
.L648:
	.loc 1 1558 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1560 0
	movl	-32(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L649
	.loc 1 1564 0
	movl	-32(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L649
	.loc 1 1571 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	cmpl	%eax, %edx
	jg	.L649
	.loc 1 1574 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_crossjump_to_edge
	testb	%al, %al
	je	.L649
	.loc 1 1576 0
	movb	$1, -5(%ebp)
	.loc 1 1577 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1578 0
	jmp	.L643
.L649:
	.loc 1 1556 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L647:
	cmpl	$0, -32(%ebp)
	jne	.L648
.L643:
	.loc 1 1521 0
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
.L639:
	cmpl	$0, -36(%ebp)
	jne	.L640
	.loc 1 1583 0
	movzbl	-5(%ebp), %eax
	movl	%eax, -40(%ebp)
.L631:
	movl	-40(%ebp), %eax
	.loc 1 1584 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	try_crossjump_bb, .-try_crossjump_bb
	.section	.rodata
	.align 4
.LC12:
	.string	"\n\ntry_optimize_cfg iteration %i\n\n"
.LC13:
	.string	"Deleting block %i.\n"
.LC14:
	.string	"Deleted label in block %i.\n"
.LC15:
	.string	"Deleting fallthru block %i.\n"
	.text
	.type	try_optimize_cfg, @function
try_optimize_cfg:
.LFB32:
	.loc 1 1592 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$52, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1593 0
	movb	$0, -7(%ebp)
	.loc 1 1595 0
	movl	$0, -32(%ebp)
	.loc 1 1598 0
	movl	8(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L657
	.loc 1 1599 0
	call	add_noreturn_fake_exit_edges@PLT
.L657:
	.loc 1 1601 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L659
.L660:
	.loc 1 1602 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	update_forwarder_flag
	.loc 1 1601 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L659:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L660
	.loc 1 1604 0
	movl	8(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L662
	.loc 1 1605 0
	call	clear_bb_flags@PLT
.L662:
	.loc 1 1607 0
	movl	targetm@GOT(%ebx), %eax
	movl	220(%eax), %eax
	call	*%eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L664
.L665:
	.loc 1 1614 0
	movb	$0, -6(%ebp)
	.loc 1 1615 0
	addl	$1, -32(%ebp)
	.loc 1 1617 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L666
	.loc 1 1618 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L666:
	.loc 1 1622 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L734
.L669:
.LBB31:
	.loc 1 1626 0
	movb	$0, -5(%ebp)
	.loc 1 1629 0
	jmp	.L670
.L671:
	.loc 1 1631 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1632 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L672
	.loc 1 1633 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L672:
	.loc 1 1636 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 1637 0
	movb	$1, -6(%ebp)
	.loc 1 1638 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L670:
	.loc 1 1629 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L671
	.loc 1 1644 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L675
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L675
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L675
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L675
	movl	8(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L680
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	tail_recursion_label_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L675
.L680:
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L682
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L682
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	label_is_jump_target_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L675
.L682:
.LBB32:
	.loc 1 1661 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1663 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1664 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 1665 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L675
	.loc 1 1666 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L675:
.LBE32:
	.loc 1 1671 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L698
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L698
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L698
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L698
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L698
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L698
	.loc 1 1680 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L693
	.loc 1 1681 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L693:
	.loc 1 1685 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L695
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L697
.L695:
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -40(%ebp)
.L697:
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1686 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
	.loc 1 1687 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 1688 0
	movb	$1, -6(%ebp)
	.loc 1 1689 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1694 0
	jmp	.L698
.L699:
	.loc 1 1707 0
	movb	$1, -5(%ebp)
.L698:
	.loc 1 1694 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L700
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L700
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L700
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	.L700
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L700
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L700
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L707
	movl	flow2_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L709
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L707
	jmp	.L700
.L709:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L700
.L707:
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_blocks
	testb	%al, %al
	jne	.L699
.L700:
	.loc 1 1710 0
	movl	8(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L711
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	try_simplify_condjump
	testb	%al, %al
	je	.L711
	.loc 1 1711 0
	movb	$1, -5(%ebp)
.L711:
	.loc 1 1718 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L714
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L714
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L714
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	redirect_edge_and_branch@PLT
	testb	%al, %al
	je	.L714
	.loc 1 1724 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	update_forwarder_flag
	.loc 1 1725 0
	movb	$1, -5(%ebp)
.L714:
	.loc 1 1729 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_forward_edges
	testb	%al, %al
	je	.L720
	.loc 1 1730 0
	movb	$1, -5(%ebp)
.L720:
	.loc 1 1733 0
	movl	8(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L722
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_crossjump_bb
	testb	%al, %al
	je	.L722
	.loc 1 1735 0
	movb	$1, -5(%ebp)
.L722:
	.loc 1 1739 0
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L725
	.loc 1 1740 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L668
.L725:
	.loc 1 1742 0
	movb	$1, -6(%ebp)
.L668:
.L734:
.LBE31:
	.loc 1 1622 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L669
	.loc 1 1745 0
	movl	8(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L728
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_crossjump_bb
	testb	%al, %al
	je	.L728
	.loc 1 1747 0
	movb	$1, -6(%ebp)
.L728:
	.loc 1 1754 0
	movzbl	-7(%ebp), %edx
	movzbl	-6(%ebp), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -7(%ebp)
	.loc 1 1756 0
	cmpb	$0, -6(%ebp)
	jne	.L665
.L664:
	.loc 1 1759 0
	movl	8(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L731
	.loc 1 1760 0
	call	remove_fake_edges@PLT
.L731:
	.loc 1 1762 0
	call	clear_aux_for_blocks@PLT
	.loc 1 1764 0
	movzbl	-7(%ebp), %eax
	.loc 1 1765 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	try_optimize_cfg, .-try_optimize_cfg
.globl delete_unreachable_blocks
	.type	delete_unreachable_blocks, @function
delete_unreachable_blocks:
.LFB33:
	.loc 1 1771 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$20, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1772 0
	movb	$0, -5(%ebp)
	.loc 1 1775 0
	call	find_unreachable_blocks@PLT
	.loc 1 1779 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L736
.L737:
	.loc 1 1781 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1783 0
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L738
	.loc 1 1785 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 1786 0
	movb	$1, -5(%ebp)
.L738:
	.loc 1 1779 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L736:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L737
	.loc 1 1790 0
	cmpb	$0, -5(%ebp)
	je	.L741
	.loc 1 1791 0
	call	tidy_fallthru_edges@PLT
.L741:
	.loc 1 1792 0
	movzbl	-5(%ebp), %eax
	.loc 1 1793 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	delete_unreachable_blocks, .-delete_unreachable_blocks
.globl cleanup_cfg
	.type	cleanup_cfg, @function
cleanup_cfg:
.LFB34:
	.loc 1 1800 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%esi
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$32, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1801 0
	movb	$0, -9(%ebp)
	.loc 1 1803 0
	movl	$4, (%esp)
	call	timevar_push@PLT
	.loc 1 1804 0
	call	delete_unreachable_blocks@PLT
	testb	%al, %al
	je	.L745
	.loc 1 1806 0
	movb	$1, -9(%ebp)
	.loc 1 1809 0
	movl	8(%ebp), %eax
	andl	$168, %eax
	testl	%eax, %eax
	jne	.L745
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L745
	.loc 1 1812 0
	call	max_reg_num@PLT
	movl	%eax, %esi
	call	get_insns@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
.L745:
	.loc 1 1815 0
	call	compact_blocks@PLT
	.loc 1 1817 0
	jmp	.L749
.L750:
	.loc 1 1819 0
	call	delete_unreachable_blocks@PLT
	movb	$1, -9(%ebp)
	.loc 1 1820 0
	movl	8(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L751
	.loc 1 1825 0
	movl	$27, 4(%esp)
	movl	$2, (%esp)
	call	update_life_info_in_dirty_blocks@PLT
	testl	%eax, %eax
	je	.L753
	.loc 1 1830 0
	jmp	.L755
.L751:
	.loc 1 1832 0
	movl	8(%ebp), %eax
	andl	$136, %eax
	testl	%eax, %eax
	jne	.L753
	movl	8(%ebp), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L753
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L753
	.loc 1 1836 0
	call	max_reg_num@PLT
	movl	%eax, %esi
	call	get_insns@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	testl	%eax, %eax
	je	.L753
.L755:
	.loc 1 1841 0
	call	delete_dead_jumptables@PLT
.L749:
	.loc 1 1817 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_optimize_cfg
	testb	%al, %al
	jne	.L750
.L753:
	.loc 1 1845 0
	movl	label_value_list@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	free_EXPR_LIST_list@PLT
	.loc 1 1846 0
	movl	$4, (%esp)
	call	timevar_pop@PLT
	.loc 1 1848 0
	movzbl	-9(%ebp), %eax
	.loc 1 1849 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	cleanup_cfg, .-cleanup_cfg
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
	.long	.LCFI12-.LCFI9
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.byte	0x4
	.long	.LCFI16-.LCFI14
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
	.long	.LCFI17-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI18
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
	.long	.LCFI25-.LCFI22
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI26-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI27
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
	.long	.LCFI32-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI35-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
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
	.long	.LCFI38-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI43-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI44
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
	.long	.LCFI48-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI49
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
	.long	.LCFI52-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI56-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI60-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI61
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
	.long	.LCFI71-.LCFI67
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
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI72-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI73
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
	.long	.LCFI76-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI77
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
	.long	.LCFI80-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI81
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
	.long	.LCFI84-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI85
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE38:
	.file 2 "../../../kg++fe/gnu/basic-block.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/MIPS/config.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/cselib.h"
	.file 7 "../../../kg++fe/gnu/varray.h"
	.file 8 "../../../kg++fe/gnu/bitmap.h"
	.file 9 "../../../kg++fe/gnu/sbitmap.h"
	.file 10 "../../../kg++fe/gnu/output.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
	.file 16 "../../../kg++fe/gnu/params.h"
	.file 17 "../../../kg++fe/gnu/target.h"
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
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI17-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI18-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI60-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI61-.Ltext0
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
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI73-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI76-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI77-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x384a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cfgcleanup.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xaa
	.uleb128 0x3
	.byte	0x4
	.long	0xb0
	.uleb128 0x4
	.long	0x19f
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x84
	.long	0x873
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.byte	0x87
	.long	0x62a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x8e
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
	.byte	0x91
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
	.byte	0x99
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
	.byte	0xa2
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
	.byte	0xb4
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
	.byte	0xbb
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
	.byte	0xc0
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
	.byte	0xc9
	.long	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x3
	.byte	0xce
	.long	0x14d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1ac
	.uleb128 0x3
	.byte	0x4
	.long	0x1b2
	.uleb128 0x4
	.long	0x1e7
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x14e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1f3
	.uleb128 0x3
	.byte	0x4
	.long	0x1f9
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20b
	.uleb128 0x9
	.long	0x210
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
	.byte	0xe
	.byte	0xd6
	.long	0x21f
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
	.byte	0xd
	.byte	0x3b
	.long	0x293
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xd
	.byte	0x90
	.long	0x2dd
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xd
	.byte	0x91
	.long	0x2be
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x210
	.uleb128 0x2
	.string	"FILE"
	.byte	0xb
	.byte	0x2e
	.long	0x30e
	.uleb128 0xd
	.long	0x589
	.long	.LASF2
	.byte	0x94
	.byte	0xb
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0xc
	.value	0x10c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0xc
	.value	0x111
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0xc
	.value	0x112
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0xc
	.value	0x113
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0xc
	.value	0x114
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0xc
	.value	0x115
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0xc
	.value	0x116
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0xc
	.value	0x117
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0xc
	.value	0x118
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0xc
	.value	0x11a
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0xc
	.value	0x11b
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0xc
	.value	0x11c
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0xc
	.value	0x11e
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0xc
	.value	0x120
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0xc
	.value	0x122
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0xc
	.value	0x126
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0xc
	.value	0x128
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0xc
	.value	0x12c
	.long	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0xc
	.value	0x12d
	.long	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0xc
	.value	0x12e
	.long	0x5e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0xc
	.value	0x132
	.long	0x5f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0xc
	.value	0x13b
	.long	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0xc
	.value	0x144
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0xc
	.value	0x145
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0xc
	.value	0x146
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0xc
	.value	0x147
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0xc
	.value	0x148
	.long	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0xc
	.value	0x14a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0xc
	.value	0x14c
	.long	0x5fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.string	"_IO_lock_t"
	.byte	0xc
	.byte	0xb0
	.uleb128 0x4
	.long	0x5da
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xc
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0xc
	.byte	0xb7
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0xc
	.byte	0xb8
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0xc
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
	.uleb128 0x10
	.long	0x5f6
	.long	0x210
	.uleb128 0x11
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x589
	.uleb128 0x10
	.long	0x60c
	.long	0x210
	.uleb128 0x11
	.long	0x226
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x61c
	.long	0x210
	.uleb128 0x11
	.long	0x226
	.byte	0x23
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x218
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x622
	.uleb128 0x13
	.long	0x873
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x14
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x14
	.string	"BImode"
	.sleb128 1
	.uleb128 0x14
	.string	"QImode"
	.sleb128 2
	.uleb128 0x14
	.string	"HImode"
	.sleb128 3
	.uleb128 0x14
	.string	"SImode"
	.sleb128 4
	.uleb128 0x14
	.string	"DImode"
	.sleb128 5
	.uleb128 0x14
	.string	"TImode"
	.sleb128 6
	.uleb128 0x14
	.string	"OImode"
	.sleb128 7
	.uleb128 0x14
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x14
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x14
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x14
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x14
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x14
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x14
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x14
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x14
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x14
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x14
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x14
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x14
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x14
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x14
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x14
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x14
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x14
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x14
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x14
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x14
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x14
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x14
	.string	"COImode"
	.sleb128 30
	.uleb128 0x14
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x14
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x14
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x14
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x14
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x14
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x14
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x14
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x14
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x14
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x14
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x14
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x14
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x14
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x14
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x14
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x14
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x14
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x14
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x14
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x14
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x14
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x14
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x14
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x13
	.long	0x1042
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0x14
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x14
	.string	"NIL"
	.sleb128 1
	.uleb128 0x14
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x14
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x14
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x14
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x14
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x14
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x14
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x14
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x14
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x14
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x14
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x14
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x14
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x14
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x14
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x14
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x14
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x14
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x14
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x14
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x14
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x14
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x14
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x14
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x14
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x14
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x14
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x14
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x14
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x14
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x14
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x14
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x14
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x14
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x14
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x14
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x14
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x14
	.string	"INSN"
	.sleb128 42
	.uleb128 0x14
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x14
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x14
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x14
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x14
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x14
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x14
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x14
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x14
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x14
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x14
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x14
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x14
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x14
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x14
	.string	"SET"
	.sleb128 57
	.uleb128 0x14
	.string	"USE"
	.sleb128 58
	.uleb128 0x14
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x14
	.string	"CALL"
	.sleb128 60
	.uleb128 0x14
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x14
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x14
	.string	"RESX"
	.sleb128 63
	.uleb128 0x14
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x14
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x14
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x14
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x14
	.string	"CONST"
	.sleb128 68
	.uleb128 0x14
	.string	"PC"
	.sleb128 69
	.uleb128 0x14
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x14
	.string	"REG"
	.sleb128 71
	.uleb128 0x14
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x14
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x14
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x14
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x14
	.string	"MEM"
	.sleb128 76
	.uleb128 0x14
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x14
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x14
	.string	"CC0"
	.sleb128 79
	.uleb128 0x14
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x14
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x14
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x14
	.string	"COND"
	.sleb128 83
	.uleb128 0x14
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x14
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x14
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x14
	.string	"NEG"
	.sleb128 87
	.uleb128 0x14
	.string	"MULT"
	.sleb128 88
	.uleb128 0x14
	.string	"DIV"
	.sleb128 89
	.uleb128 0x14
	.string	"MOD"
	.sleb128 90
	.uleb128 0x14
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x14
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x14
	.string	"AND"
	.sleb128 93
	.uleb128 0x14
	.string	"IOR"
	.sleb128 94
	.uleb128 0x14
	.string	"XOR"
	.sleb128 95
	.uleb128 0x14
	.string	"NOT"
	.sleb128 96
	.uleb128 0x14
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x14
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x14
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x14
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x14
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x14
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x14
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x14
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x14
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x14
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x14
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x14
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x14
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x14
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x14
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x14
	.string	"NE"
	.sleb128 112
	.uleb128 0x14
	.string	"EQ"
	.sleb128 113
	.uleb128 0x14
	.string	"GE"
	.sleb128 114
	.uleb128 0x14
	.string	"GT"
	.sleb128 115
	.uleb128 0x14
	.string	"LE"
	.sleb128 116
	.uleb128 0x14
	.string	"LT"
	.sleb128 117
	.uleb128 0x14
	.string	"GEU"
	.sleb128 118
	.uleb128 0x14
	.string	"GTU"
	.sleb128 119
	.uleb128 0x14
	.string	"LEU"
	.sleb128 120
	.uleb128 0x14
	.string	"LTU"
	.sleb128 121
	.uleb128 0x14
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x14
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x14
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x14
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x14
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x14
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x14
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x14
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x14
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x14
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x14
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x14
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x14
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x14
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x14
	.string	"FIX"
	.sleb128 136
	.uleb128 0x14
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x14
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x14
	.string	"ABS"
	.sleb128 139
	.uleb128 0x14
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x14
	.string	"FFS"
	.sleb128 141
	.uleb128 0x14
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x14
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x14
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x14
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x14
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x14
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x14
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x14
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x14
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x14
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x14
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x14
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x14
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x14
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x14
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x14
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x14
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x14
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x14
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x14
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x14
	.string	"PHI"
	.sleb128 162
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x15
	.long	0x111c
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
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
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x4e
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
	.byte	0x50
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
	.byte	0x52
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
	.byte	0x55
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
	.byte	0x57
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
	.byte	0x58
	.long	0x1042
	.uleb128 0xd
	.long	0x1193
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	.LASF3
	.byte	0x3
	.byte	0x68
	.long	0x1137
	.uleb128 0x17
	.long	0x1270
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x18
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x293
	.uleb128 0x18
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x218
	.uleb128 0x18
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x21f
	.uleb128 0x18
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x205
	.uleb128 0x18
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9f
	.uleb128 0x18
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19f
	.uleb128 0x18
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x62a
	.uleb128 0x18
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x111c
	.uleb128 0x18
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x12ca
	.uleb128 0x18
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x1332
	.uleb128 0x18
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e7
	.uleb128 0x18
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x14bd
	.uleb128 0x18
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x14c3
	.byte	0x0
	.uleb128 0x4
	.long	0x12ca
	.string	"cselib_val_struct"
	.byte	0x10
	.byte	0x3
	.byte	0x76
	.uleb128 0x7
	.string	"value"
	.byte	0x6
	.byte	0x1a
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"u"
	.byte	0x6
	.byte	0x21
	.long	0x19d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"locs"
	.byte	0x6
	.byte	0x25
	.long	0x1a6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"addr_list"
	.byte	0x6
	.byte	0x28
	.long	0x1655
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1270
	.uleb128 0x4
	.long	0x1332
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x7
	.string	"first"
	.byte	0x8
	.byte	0x3d
	.long	0x1594
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x8
	.byte	0x3e
	.long	0x1594
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x8
	.byte	0x3f
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x8
	.byte	0x40
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12d0
	.uleb128 0x4
	.long	0x14bd
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0x2
	.byte	0xb5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0xb5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x2
	.byte	0xb8
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x2
	.byte	0xb9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x2
	.byte	0xbc
	.long	0x172b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x2
	.byte	0xbc
	.long	0x172b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x2
	.byte	0xc1
	.long	0x165b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x2
	.byte	0xc5
	.long	0x165b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x2
	.byte	0xcb
	.long	0x165b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x2
	.byte	0xcd
	.long	0x165b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x2
	.byte	0xd0
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x2
	.byte	0xd3
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x14bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x14bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x2
	.byte	0xd9
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x2
	.byte	0xdc
	.long	0x19a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x2
	.byte	0xdf
	.long	0x1669
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x2
	.byte	0xe2
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x2
	.byte	0xe5
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1338
	.uleb128 0x3
	.byte	0x4
	.long	0x1193
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x119e
	.uleb128 0x10
	.long	0x14e8
	.long	0x14c9
	.uleb128 0x11
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x14f8
	.long	0x9f
	.uleb128 0x11
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9f
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x8
	.byte	0x1d
	.long	0x262
	.uleb128 0x4
	.long	0x1568
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.uleb128 0x19
	.long	.LASF4
	.byte	0x8
	.byte	0x35
	.long	0x1568
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x8
	.byte	0x36
	.long	0x1568
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x8
	.byte	0x37
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x8
	.byte	0x38
	.long	0x156e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1511
	.uleb128 0x10
	.long	0x157e
	.long	0x14fe
	.uleb128 0x11
	.long	0x226
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x8
	.byte	0x39
	.long	0x1511
	.uleb128 0x3
	.byte	0x4
	.long	0x157e
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x8
	.byte	0x43
	.long	0x1332
	.uleb128 0x4
	.long	0x1602
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x9
	.byte	0x21
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x9
	.byte	0x22
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x9
	.byte	0x23
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x9
	.byte	0x24
	.long	0x1602
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x1612
	.long	0x2a4
	.uleb128 0x11
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x9
	.byte	0x25
	.long	0x1621
	.uleb128 0x3
	.byte	0x4
	.long	0x15a8
	.uleb128 0x4
	.long	0x1655
	.string	"elt_list"
	.byte	0x8
	.byte	0x7
	.byte	0x7c
	.uleb128 0x19
	.long	.LASF4
	.byte	0x6
	.byte	0x3b
	.long	0x1655
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elt"
	.byte	0x6
	.byte	0x3c
	.long	0x1a8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1627
	.uleb128 0x2
	.string	"regset"
	.byte	0x2
	.byte	0x22
	.long	0x159a
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x2
	.byte	0x75
	.long	0x293
	.uleb128 0x4
	.long	0x1725
	.string	"edge_def"
	.byte	0x28
	.byte	0x2
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1725
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1725
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x2
	.byte	0x7d
	.long	0x14bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x2
	.byte	0x7d
	.long	0x14bd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x2
	.byte	0x80
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x2
	.byte	0x83
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x2
	.byte	0x85
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x2
	.byte	0x86
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x2
	.byte	0x87
	.long	0x1669
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x167a
	.uleb128 0x2
	.string	"edge"
	.byte	0x2
	.byte	0x89
	.long	0x1725
	.uleb128 0x4
	.long	0x19a6
	.string	"loop"
	.byte	0x80
	.byte	0x2
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x2
	.value	0x176
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x2
	.value	0x179
	.long	0x19ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x2
	.value	0x17c
	.long	0x19ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x2
	.value	0x17f
	.long	0x19ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x2
	.value	0x184
	.long	0x19bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x2
	.value	0x187
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0x2
	.value	0x18b
	.long	0x19ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x2
	.value	0x18f
	.long	0x19ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x2
	.value	0x192
	.long	0x1612
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x2
	.value	0x195
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x2
	.value	0x198
	.long	0x19bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x2
	.value	0x19b
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x2
	.value	0x19e
	.long	0x19bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x2
	.value	0x1a1
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x2
	.value	0x1a4
	.long	0x1612
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x2
	.value	0x1a7
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x2
	.value	0x1aa
	.long	0x19c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x2
	.value	0x1ae
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x2
	.value	0x1b1
	.long	0x19a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0x2
	.value	0x1b4
	.long	0x19a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x2
	.value	0x1b7
	.long	0x19a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x2
	.value	0x1ba
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x2
	.value	0x1bd
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0x2
	.value	0x1c3
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0x2
	.value	0x1c7
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0x2
	.value	0x1ca
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0x2
	.value	0x1cd
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0x2
	.value	0x1d1
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0x2
	.value	0x1d4
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0x2
	.value	0x1d7
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0x2
	.value	0x1e2
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0x2
	.value	0x1e6
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1737
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x2
	.byte	0xe6
	.long	0x14bd
	.uleb128 0x3
	.byte	0x4
	.long	0x172b
	.uleb128 0x3
	.byte	0x4
	.long	0x19a6
	.uleb128 0xa
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x9
	.long	0x205
	.uleb128 0x17
	.long	0x1a0f
	.string	"cselib_val_u"
	.byte	0x4
	.byte	0x6
	.byte	0x1c
	.uleb128 0x18
	.string	"val_rtx"
	.byte	0x6
	.byte	0x1e
	.long	0x9f
	.uleb128 0x18
	.string	"next_free"
	.byte	0x6
	.byte	0x20
	.long	0x12ca
	.byte	0x0
	.uleb128 0x4
	.long	0x1a6d
	.string	"elt_loc_list"
	.byte	0x10
	.byte	0x6
	.byte	0x25
	.uleb128 0x19
	.long	.LASF4
	.byte	0x6
	.byte	0x2f
	.long	0x1a6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"loc"
	.byte	0x6
	.byte	0x31
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"setting_insn"
	.byte	0x6
	.byte	0x33
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"in_libcall"
	.byte	0x6
	.byte	0x35
	.long	0x1a85
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a0f
	.uleb128 0x2
	.string	"cselib_val"
	.byte	0x6
	.byte	0x29
	.long	0x1270
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1a73
	.uleb128 0xd
	.long	0x1ad1
	.long	.LASF5
	.byte	0xc
	.byte	0x10
	.byte	0x2d
	.uleb128 0x7
	.string	"option"
	.byte	0x10
	.byte	0x30
	.long	0x19d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"value"
	.byte	0x10
	.byte	0x32
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"help"
	.byte	0x10
	.byte	0x34
	.long	0x19d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x16
	.long	.LASF5
	.byte	0x10
	.byte	0x35
	.long	0x1a94
	.uleb128 0x4
	.long	0x1b24
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x11
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0x11
	.byte	0x3b
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0x11
	.byte	0x3c
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0x11
	.byte	0x3d
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0x11
	.byte	0x3e
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x1d5a
	.string	"asm_out"
	.byte	0x70
	.byte	0x11
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0x11
	.byte	0x35
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0x11
	.byte	0x35
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0x11
	.byte	0x38
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0x11
	.byte	0x3f
	.long	0x1adc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x11
	.byte	0x3f
	.long	0x1adc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x11
	.byte	0x46
	.long	0x1d74
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x11
	.byte	0x49
	.long	0x1d91
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x11
	.byte	0x4d
	.long	0x1da8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x11
	.byte	0x50
	.long	0x1dbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x11
	.byte	0x53
	.long	0x1dd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x11
	.byte	0x56
	.long	0x1dd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x11
	.byte	0x59
	.long	0x1dbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"named_section"
	.byte	0x11
	.byte	0x5d
	.long	0x1de8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0x11
	.byte	0x60
	.long	0x624
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0x11
	.byte	0x63
	.long	0x624
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0x11
	.byte	0x6a
	.long	0x1e04
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x11
	.byte	0x6e
	.long	0x1e20
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x11
	.byte	0x73
	.long	0x1da8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x11
	.byte	0x76
	.long	0x1e37
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x11
	.byte	0x79
	.long	0x1e37
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x11
	.byte	0x80
	.long	0x1e5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x11
	.byte	0x8b
	.long	0x1e82
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1b
	.long	0x1d74
	.byte	0x1
	.long	0x1a85
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x21f
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d5a
	.uleb128 0x1d
	.long	0x1d8b
	.byte	0x1
	.uleb128 0x1c
	.long	0x1d8b
	.uleb128 0x1c
	.long	0x205
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x302
	.uleb128 0x3
	.byte	0x4
	.long	0x1d7a
	.uleb128 0x1d
	.long	0x1da8
	.byte	0x1
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d97
	.uleb128 0x1d
	.long	0x1dbf
	.byte	0x1
	.uleb128 0x1c
	.long	0x1d8b
	.uleb128 0x1c
	.long	0x293
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dae
	.uleb128 0x1d
	.long	0x1dd1
	.byte	0x1
	.uleb128 0x1c
	.long	0x1d8b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dc5
	.uleb128 0x1d
	.long	0x1de8
	.byte	0x1
	.uleb128 0x1c
	.long	0x205
	.uleb128 0x1c
	.long	0x21f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dd7
	.uleb128 0x1d
	.long	0x1e04
	.byte	0x1
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x218
	.uleb128 0x1c
	.long	0x2a4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dee
	.uleb128 0x1d
	.long	0x1e20
	.byte	0x1
	.uleb128 0x1c
	.long	0x62a
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x2a4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e0a
	.uleb128 0x1d
	.long	0x1e37
	.byte	0x1
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e26
	.uleb128 0x1d
	.long	0x1e5d
	.byte	0x1
	.uleb128 0x1c
	.long	0x1d8b
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x293
	.uleb128 0x1c
	.long	0x293
	.uleb128 0x1c
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3d
	.uleb128 0x1b
	.long	0x1e82
	.byte	0x1
	.long	0x1a85
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x293
	.uleb128 0x1c
	.long	0x293
	.uleb128 0x1c
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e63
	.uleb128 0x4
	.long	0x2043
	.string	"sched"
	.byte	0x40
	.byte	0x11
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x11
	.byte	0x97
	.long	0x2062
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x11
	.byte	0x9b
	.long	0x207d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x11
	.byte	0xa0
	.long	0x2089
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x11
	.byte	0xa4
	.long	0x20ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x11
	.byte	0xa7
	.long	0x20ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x11
	.byte	0xaa
	.long	0x20e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x11
	.byte	0xae
	.long	0x210b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x11
	.byte	0xaf
	.long	0x210b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x11
	.byte	0xb4
	.long	0x2089
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x11
	.byte	0xc2
	.long	0x624
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0x11
	.byte	0xc3
	.long	0x2117
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0x11
	.byte	0xc4
	.long	0x624
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0x11
	.byte	0xc5
	.long	0x2117
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x11
	.byte	0xcd
	.long	0x2089
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0x11
	.byte	0xd8
	.long	0x624
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0x11
	.byte	0xd9
	.long	0x212d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x1b
	.long	0x2062
	.byte	0x1
	.long	0x218
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2043
	.uleb128 0x1b
	.long	0x207d
	.byte	0x1
	.long	0x218
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2068
	.uleb128 0x1e
	.byte	0x1
	.long	0x218
	.uleb128 0x3
	.byte	0x4
	.long	0x2083
	.uleb128 0x1b
	.long	0x20ae
	.byte	0x1
	.long	0x218
	.uleb128 0x1c
	.long	0x1d8b
	.uleb128 0x1c
	.long	0x218
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x208f
	.uleb128 0x1d
	.long	0x20ca
	.byte	0x1
	.uleb128 0x1c
	.long	0x1d8b
	.uleb128 0x1c
	.long	0x218
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20b4
	.uleb128 0x1d
	.long	0x20e1
	.byte	0x1
	.uleb128 0x1c
	.long	0x1d8b
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20d0
	.uleb128 0x1b
	.long	0x210b
	.byte	0x1
	.long	0x218
	.uleb128 0x1c
	.long	0x1d8b
	.uleb128 0x1c
	.long	0x218
	.uleb128 0x1c
	.long	0x14f8
	.uleb128 0x1c
	.long	0x61c
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20e7
	.uleb128 0x1e
	.byte	0x1
	.long	0x9f
	.uleb128 0x3
	.byte	0x4
	.long	0x2111
	.uleb128 0x1b
	.long	0x212d
	.byte	0x1
	.long	0x9f
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x211d
	.uleb128 0x4
	.long	0x241c
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x11
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x11
	.byte	0x8f
	.long	0x1b24
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x11
	.byte	0xda
	.long	0x1e88
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x11
	.byte	0xdd
	.long	0x2431
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x11
	.byte	0xe0
	.long	0x2431
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x7
	.string	"attribute_table"
	.byte	0x11
	.byte	0xe4
	.long	0x2448
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x11
	.byte	0xe9
	.long	0x2468
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x11
	.byte	0xec
	.long	0x247a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x11
	.byte	0xef
	.long	0x2497
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0x11
	.byte	0xf3
	.long	0x24ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x11
	.byte	0xf7
	.long	0x24ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0x11
	.byte	0xfa
	.long	0x624
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"expand_builtin"
	.byte	0x11
	.byte	0xfd
	.long	0x24d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x11
	.value	0x103
	.long	0x24f7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x11
	.value	0x107
	.long	0x2503
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x11
	.value	0x10a
	.long	0x2519
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x11
	.value	0x10d
	.long	0x24ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x11
	.value	0x111
	.long	0x24ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x11
	.value	0x115
	.long	0x1da8
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x11
	.value	0x118
	.long	0x252f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x11
	.value	0x11d
	.long	0x1a85
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x11
	.value	0x121
	.long	0x1a85
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x11
	.value	0x124
	.long	0x1a85
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x11
	.value	0x127
	.long	0x1a85
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x11
	.value	0x12a
	.long	0x1a85
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x1b
	.long	0x2431
	.byte	0x1
	.long	0x1e7
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x241c
	.uleb128 0x1f
	.string	"attribute_spec"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x244e
	.uleb128 0x9
	.long	0x2437
	.uleb128 0x1b
	.long	0x2468
	.byte	0x1
	.long	0x218
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2453
	.uleb128 0x1d
	.long	0x247a
	.byte	0x1
	.uleb128 0x1c
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x246e
	.uleb128 0x1d
	.long	0x2491
	.byte	0x1
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x2491
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e7
	.uleb128 0x3
	.byte	0x4
	.long	0x2480
	.uleb128 0x1b
	.long	0x24ad
	.byte	0x1
	.long	0x1a85
	.uleb128 0x1c
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x249d
	.uleb128 0x1b
	.long	0x24d7
	.byte	0x1
	.long	0x9f
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x9f
	.uleb128 0x1c
	.long	0x62a
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x24b3
	.uleb128 0x1b
	.long	0x24f7
	.byte	0x1
	.long	0x21f
	.uleb128 0x1c
	.long	0x1e7
	.uleb128 0x1c
	.long	0x205
	.uleb128 0x1c
	.long	0x218
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x24dd
	.uleb128 0x1e
	.byte	0x1
	.long	0x1a85
	.uleb128 0x3
	.byte	0x4
	.long	0x24fd
	.uleb128 0x1b
	.long	0x2519
	.byte	0x1
	.long	0x1a85
	.uleb128 0x1c
	.long	0x9f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2509
	.uleb128 0x1b
	.long	0x252f
	.byte	0x1
	.long	0x205
	.uleb128 0x1c
	.long	0x205
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x251f
	.uleb128 0x20
	.long	0x2568
	.string	"notice_new_block"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0x61
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x20
	.long	0x25a0
	.string	"update_forwarder_flag"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0x6e
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x26b1
	.string	"try_simplify_condjump"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	0x1a85
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x21
	.string	"cbranch_block"
	.byte	0x1
	.byte	0x7b
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"jump_block"
	.byte	0x1
	.byte	0x7d
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"jump_dest_block"
	.byte	0x1
	.byte	0x7d
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"cbranch_dest_block"
	.byte	0x1
	.byte	0x7d
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"cbranch_jump_edge"
	.byte	0x1
	.byte	0x7e
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"cbranch_fallthru_edge"
	.byte	0x1
	.byte	0x7e
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"cbranch_insn"
	.byte	0x1
	.byte	0x7f
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"insn"
	.byte	0x1
	.byte	0x80
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF4
	.byte	0x1
	.byte	0x80
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"end"
	.byte	0x1
	.byte	0x81
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x22
	.long	0x2741
	.string	"mark_effect"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	0x1a85
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x21
	.string	"exp"
	.byte	0x1
	.byte	0xd6
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.byte	0xd7
	.long	0x165b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"regno"
	.byte	0x1
	.byte	0xd9
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"dest"
	.byte	0x1
	.byte	0xda
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	0x272a
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.byte	0xe7
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x27
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.byte	0xfa
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x27d0
	.string	"mentions_nonequal_regs"
	.byte	0x1
	.value	0x10b
	.byte	0x1
	.long	0x218
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x109
	.long	0x14f8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"data"
	.byte	0x1
	.value	0x10a
	.long	0x2fa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0x10c
	.long	0x165b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2b
	.string	"regno"
	.byte	0x1
	.value	0x10f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x116
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x29b0
	.string	"thread_jump"
	.byte	0x1
	.value	0x127
	.byte	0x1
	.long	0x172b
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x124
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x125
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x126
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"set1"
	.byte	0x1
	.value	0x128
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"set2"
	.byte	0x1
	.value	0x128
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"cond1"
	.byte	0x1
	.value	0x128
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"cond2"
	.byte	0x1
	.value	0x128
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"insn"
	.byte	0x1
	.value	0x128
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"code1"
	.byte	0x1
	.value	0x129
	.long	0x873
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"code2"
	.byte	0x1
	.value	0x129
	.long	0x873
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"reversed_code2"
	.byte	0x1
	.value	0x129
	.long	0x873
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"reverse1"
	.byte	0x1
	.value	0x12a
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x12b
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF6
	.byte	0x1
	.value	0x12c
	.long	0x165b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"failed"
	.byte	0x1
	.value	0x12d
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2d
	.string	"failed_exit"
	.byte	0x1
	.value	0x1aa
	.long	.L127
	.uleb128 0x26
	.long	0x2925
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x180
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x27
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2b
	.string	"ptr_"
	.byte	0x1
	.value	0x1a0
	.long	0x1594
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"indx_"
	.byte	0x1
	.value	0x1a0
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"bit_num_"
	.byte	0x1
	.value	0x1a0
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"word_num_"
	.byte	0x1
	.value	0x1a0
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2b
	.string	"word_"
	.byte	0x1
	.value	0x1a0
	.long	0x14fe
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2b
	.string	"mask_"
	.byte	0x1
	.value	0x1a0
	.long	0x14fe
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2bf9
	.string	"try_forward_edges"
	.byte	0x1
	.value	0x1b7
	.byte	0x1
	.long	0x1a85
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x1b6
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x1b5
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x1b8
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x1b9
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x1b9
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"threaded_edges"
	.byte	0x1
	.value	0x1b9
	.long	0x19bf
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	0x2be8
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2b
	.string	"target"
	.byte	0x1
	.value	0x1bd
	.long	0x19ac
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"first"
	.byte	0x1
	.value	0x1bd
	.long	0x19ac
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"counter"
	.byte	0x1
	.value	0x1be
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"threaded"
	.byte	0x1
	.value	0x1bf
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2b
	.string	"nthreaded_edges"
	.byte	0x1
	.value	0x1c0
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	0x2b45
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2b
	.string	"new_target"
	.byte	0x1
	.value	0x1d1
	.long	0x19ac
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"new_target_threaded"
	.byte	0x1
	.value	0x1d2
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x26
	.long	0x2b2a
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x1e1
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1e9
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2b
	.string	"insn"
	.byte	0x1
	.value	0x20f
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2b
	.string	"edge_count"
	.byte	0x1
	.value	0x238
	.long	0x1669
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"edge_probability"
	.byte	0x1
	.value	0x239
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"edge_frequency"
	.byte	0x1
	.value	0x23a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x23b
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x259
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x263
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"prob"
	.byte	0x1
	.value	0x264
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF8
	.long	0x36d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10880
	.byte	0x0
	.uleb128 0x28
	.long	0x2c97
	.string	"label_is_jump_target_p"
	.byte	0x1
	.value	0x2a1
	.byte	0x1
	.long	0x1a85
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x29
	.string	"label"
	.byte	0x1
	.value	0x2a0
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"jump_insn"
	.byte	0x1
	.value	0x2a0
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x2a2
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2b
	.string	"vec"
	.byte	0x1
	.value	0x2ae
	.long	0x19f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2af
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2b
	.string	"veclen"
	.byte	0x1
	.value	0x2af
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2ce6
	.string	"tail_recursion_label_p"
	.byte	0x1
	.value	0x2be
	.byte	0x1
	.long	0x1a85
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x29
	.string	"label"
	.byte	0x1
	.value	0x2bd
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x2bf
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x2d5f
	.string	"merge_blocks_move_predecessor_nojumps"
	.byte	0x1
	.value	0x2cf
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.value	0x2ce
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x2ce
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"barrier"
	.byte	0x1
	.value	0x2d0
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF8
	.long	0x36bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11171
	.byte	0x0
	.uleb128 0x2f
	.long	0x2dec
	.string	"merge_blocks_move_successor_nojumps"
	.byte	0x1
	.value	0x2fa
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.value	0x2f9
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x2f9
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"barrier"
	.byte	0x1
	.value	0x2fb
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"real_b_end"
	.byte	0x1
	.value	0x2fb
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF8
	.long	0x36a7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11206
	.byte	0x0
	.uleb128 0x28
	.long	0x2f14
	.string	"merge_blocks"
	.byte	0x1
	.value	0x332
	.byte	0x1
	.long	0x1a85
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x29
	.string	"e"
	.byte	0x1
	.value	0x32f
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x330
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.value	0x330
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x331
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.long	0x2e7c
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2b
	.string	"b_index"
	.byte	0x1
	.value	0x33f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"c_index"
	.byte	0x1
	.value	0x33f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x27
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2b
	.string	"tmp_edge"
	.byte	0x1
	.value	0x34e
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"b_fallthru_edge"
	.byte	0x1
	.value	0x34e
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"c_has_outgoing_fallthru"
	.byte	0x1
	.value	0x34f
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2b
	.string	"b_has_incoming_fallthru"
	.byte	0x1
	.value	0x350
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x27
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x37a
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2fd7
	.string	"insns_match_p"
	.byte	0x1
	.value	0x391
	.byte	0x1
	.long	0x1a85
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x38f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"i1"
	.byte	0x1
	.value	0x390
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"i2"
	.byte	0x1
	.value	0x390
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"p1"
	.byte	0x1
	.value	0x392
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"p2"
	.byte	0x1
	.value	0x392
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2b
	.string	"equiv1"
	.byte	0x1
	.value	0x3d4
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"equiv2"
	.byte	0x1
	.value	0x3d5
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2b
	.string	"s1"
	.byte	0x1
	.value	0x3df
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"s2"
	.byte	0x1
	.value	0x3e0
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x30f9
	.string	"flow_find_cross_jump"
	.byte	0x1
	.value	0x3ff
	.byte	0x1
	.long	0x218
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x3fc
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb1"
	.byte	0x1
	.value	0x3fd
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb2"
	.byte	0x1
	.value	0x3fd
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"f1"
	.byte	0x1
	.value	0x3fe
	.long	0x14f8
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.string	"f2"
	.byte	0x1
	.value	0x3fe
	.long	0x14f8
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"i1"
	.byte	0x1
	.value	0x400
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i2"
	.byte	0x1
	.value	0x400
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"last1"
	.byte	0x1
	.value	0x400
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"last2"
	.byte	0x1
	.value	0x400
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"afterlast1"
	.byte	0x1
	.value	0x400
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"afterlast2"
	.byte	0x1
	.value	0x400
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"ninsns"
	.byte	0x1
	.value	0x401
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2b
	.string	"equiv1"
	.byte	0x1
	.value	0x42e
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"equiv2"
	.byte	0x1
	.value	0x42f
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x3309
	.string	"outgoing_edges_match"
	.byte	0x1
	.value	0x46f
	.byte	0x1
	.long	0x1a85
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x46c
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb1"
	.byte	0x1
	.value	0x46d
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"bb2"
	.byte	0x1
	.value	0x46e
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"nehedges1"
	.byte	0x1
	.value	0x470
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"nehedges2"
	.byte	0x1
	.value	0x470
	.long	0x218
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"fallthru1"
	.byte	0x1
	.value	0x471
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"fallthru2"
	.byte	0x1
	.value	0x471
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"e1"
	.byte	0x1
	.value	0x472
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"e2"
	.byte	0x1
	.value	0x472
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	0x32b8
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2b
	.string	"b1"
	.byte	0x1
	.value	0x485
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"f1"
	.byte	0x1
	.value	0x485
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"b2"
	.byte	0x1
	.value	0x485
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.string	"f2"
	.byte	0x1
	.value	0x485
	.long	0x172b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"reverse"
	.byte	0x1
	.value	0x486
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2b
	.string	"match"
	.byte	0x1
	.value	0x486
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2b
	.string	"set1"
	.byte	0x1
	.value	0x487
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"set2"
	.byte	0x1
	.value	0x487
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"cond1"
	.byte	0x1
	.value	0x487
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"cond2"
	.byte	0x1
	.value	0x487
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"code1"
	.byte	0x1
	.value	0x488
	.long	0x873
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"code2"
	.byte	0x1
	.value	0x488
	.long	0x873
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2b
	.string	"prob2"
	.byte	0x1
	.value	0x4dd
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x32e2
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2b
	.string	"d1"
	.byte	0x1
	.value	0x51f
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"d2"
	.byte	0x1
	.value	0x521
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x27
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2b
	.string	"n1"
	.byte	0x1
	.value	0x52a
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"n2"
	.byte	0x1
	.value	0x52b
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x344d
	.string	"try_crossjump_to_edge"
	.byte	0x1
	.value	0x541
	.byte	0x1
	.long	0x1a85
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x53f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"e1"
	.byte	0x1
	.value	0x540
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"e2"
	.byte	0x1
	.value	0x540
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"nmatch"
	.byte	0x1
	.value	0x542
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"src1"
	.byte	0x1
	.value	0x543
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"src2"
	.byte	0x1
	.value	0x543
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"redirect_to"
	.byte	0x1
	.value	0x544
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"redirect_from"
	.byte	0x1
	.value	0x544
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"to_remove"
	.byte	0x1
	.value	0x544
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"newpos1"
	.byte	0x1
	.value	0x545
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"newpos2"
	.byte	0x1
	.value	0x545
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x546
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2b
	.string	"s2"
	.byte	0x1
	.value	0x58b
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"d"
	.byte	0x1
	.value	0x58c
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2b
	.string	"d2"
	.byte	0x1
	.value	0x593
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x3512
	.string	"try_crossjump_bb"
	.byte	0x1
	.value	0x5da
	.byte	0x1
	.long	0x1a85
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x5d8
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x5d9
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x5db
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"e2"
	.byte	0x1
	.value	0x5db
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"nexte2"
	.byte	0x1
	.value	0x5db
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"nexte"
	.byte	0x1
	.value	0x5db
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"fallthru"
	.byte	0x1
	.value	0x5db
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x5dc
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x5dd
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"max"
	.byte	0x1
	.value	0x5dd
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x28
	.long	0x35fe
	.string	"try_optimize_cfg"
	.byte	0x1
	.value	0x638
	.byte	0x1
	.long	0x1a85
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x637
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"changed_overall"
	.byte	0x1
	.value	0x639
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -15
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x63a
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2b
	.string	"iterations"
	.byte	0x1
	.value	0x63b
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x63c
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x63c
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x658
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x659
	.long	0x172b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"changed_here"
	.byte	0x1
	.value	0x65a
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x27
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2b
	.string	"label"
	.byte	0x1
	.value	0x67d
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x3662
	.byte	0x1
	.string	"delete_unreachable_blocks"
	.byte	0x1
	.value	0x6eb
	.byte	0x1
	.long	0x1a85
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x6ec
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x6ed
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"next_bb"
	.byte	0x1
	.value	0x6ed
	.long	0x19ac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	0x36a7
	.byte	0x1
	.string	"cleanup_cfg"
	.byte	0x1
	.value	0x708
	.byte	0x1
	.long	0x1a85
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x707
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF7
	.byte	0x1
	.value	0x709
	.long	0x1a85
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x9
	.long	0x60c
	.uleb128 0x10
	.long	0x36bc
	.long	0x210
	.uleb128 0x11
	.long	0x226
	.byte	0x25
	.byte	0x0
	.uleb128 0x9
	.long	0x36ac
	.uleb128 0x10
	.long	0x36d1
	.long	0x210
	.uleb128 0x11
	.long	0x226
	.byte	0x11
	.byte	0x0
	.uleb128 0x9
	.long	0x36c1
	.uleb128 0x10
	.long	0x36e6
	.long	0x210
	.uleb128 0x11
	.long	0x226
	.byte	0xa2
	.byte	0x0
	.uleb128 0x31
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x36f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x36d6
	.uleb128 0x10
	.long	0x370e
	.long	0x9f
	.uleb128 0x11
	.long	0x226
	.byte	0xa
	.byte	0x0
	.uleb128 0x32
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x36fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flow2_completed"
	.byte	0x3
	.value	0x758
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"reload_completed"
	.byte	0x3
	.value	0x75d
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"n_basic_blocks"
	.byte	0x2
	.byte	0xf2
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"label_value_list"
	.byte	0x2
	.value	0x118
	.long	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"tail_recursion_label_list"
	.byte	0x2
	.value	0x119
	.long	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x37bf
	.long	0x1338
	.uleb128 0x11
	.long	0x226
	.byte	0x1
	.byte	0x0
	.uleb128 0x32
	.string	"entry_exit_blocks"
	.byte	0x2
	.value	0x139
	.long	0x37af
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"rtl_dump_file"
	.byte	0xa
	.value	0x1b8
	.long	0x1d8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"optimize"
	.byte	0xf
	.byte	0x41
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"optimize_size"
	.byte	0xf
	.byte	0x45
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"compiler_params"
	.byte	0x10
	.byte	0x3a
	.long	0x3835
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1ad1
	.uleb128 0x32
	.string	"targetm"
	.byte	0x11
	.value	0x12d
	.long	0x2133
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x384e
	.long	0x35fe
	.string	"delete_unreachable_blocks"
	.long	0x3662
	.string	"cleanup_cfg"
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
.LASF6:
	.string	"nonequal"
.LASF4:
	.string	"next"
.LASF5:
	.string	"param_info"
.LASF7:
	.string	"changed"
.LASF0:
	.string	"mode"
.LASF3:
	.string	"mem_attrs"
.LASF2:
	.string	"_IO_FILE"
.LASF8:
	.string	"__FUNCTION__"
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
