	.file	"genconfig.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 4
	.type	max_insns_per_split, @object
	.size	max_insns_per_split, 4
max_insns_per_split:
	.long	1
	.text
	.type	walk_insn_part, @function
walk_insn_part:
.LFB15:
	.file 1 "../../../kg++fe/gnu/genconfig.c"
	.loc 1 69 0
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
	.loc 1 74 0
	cmpl	$0, 8(%ebp)
	je	.L44
	.loc 1 77 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 78 0
	movl	-12(%ebp), %eax
	subl	$5, %eax
	movl	%eax, -28(%ebp)
	cmpl	$140, -28(%ebp)
	ja	.L4
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L17@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L17:
	.long	.L5@GOTOFF
	.long	.L6@GOTOFF
	.long	.L7@GOTOFF
	.long	.L6@GOTOFF
	.long	.L6@GOTOFF
	.long	.L8@GOTOFF
	.long	.L8@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L9@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L10@GOTOFF
	.long	.L4@GOTOFF
	.long	.L11@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L44@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L44@GOTOFF
	.long	.L4@GOTOFF
	.long	.L44@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L13@GOTOFF
	.long	.L44@GOTOFF
	.long	.L14@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L15@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L4@GOTOFF
	.long	.L16@GOTOFF
	.text
.L11:
	.loc 1 81 0
	movl	clobbers_seen_this_insn@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, clobbers_seen_this_insn@GOTOFF(%ebx)
	.loc 1 82 0
	jmp	.L4
.L5:
	.loc 1 85 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_recog_operands@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L44
	.loc 1 86 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, max_recog_operands@GOTOFF(%ebx)
	.loc 1 87 0
	jmp	.L44
.L8:
	.loc 1 91 0
	movl	dup_operands_seen_this_insn@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, dup_operands_seen_this_insn@GOTOFF(%ebx)
.L6:
	.loc 1 95 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_recog_operands@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L4
	.loc 1 96 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, max_recog_operands@GOTOFF(%ebx)
	.loc 1 99 0
	jmp	.L4
.L13:
	.loc 1 102 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$5, %ax
	je	.L4
	.loc 1 104 0
	jmp	.L44
.L7:
	.loc 1 107 0
	movl	dup_operands_seen_this_insn@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, dup_operands_seen_this_insn@GOTOFF(%ebx)
	.loc 1 108 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_recog_operands@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L44
	.loc 1 109 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, max_recog_operands@GOTOFF(%ebx)
	.loc 1 110 0
	jmp	.L44
.L14:
	.loc 1 113 0
	cmpl	$0, 12(%ebp)
	je	.L44
	.loc 1 114 0
	movl	$1, have_cc0_flag@GOTOFF(%ebx)
	.loc 1 115 0
	jmp	.L44
.L16:
	.loc 1 118 0
	cmpl	$0, 12(%ebp)
	je	.L44
	.loc 1 119 0
	movl	$1, have_lo_sum_flag@GOTOFF(%ebx)
	.loc 1 120 0
	jmp	.L44
.L10:
	.loc 1 123 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	walk_insn_part
	.loc 1 124 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	setne	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	walk_insn_part
	.loc 1 126 0
	jmp	.L44
.L15:
	.loc 1 135 0
	cmpl	$0, 12(%ebp)
	je	.L4
	cmpl	$0, 16(%ebp)
	je	.L4
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$5, %ax
	jne	.L4
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$5, %ax
	jne	.L4
	.loc 1 138 0
	movl	$1, have_cmove_flag@GOTOFF(%ebx)
	.loc 1 139 0
	jmp	.L4
.L9:
	.loc 1 142 0
	cmpl	$0, 12(%ebp)
	je	.L4
	.loc 1 143 0
	movl	$1, have_cond_exec_flag@GOTOFF(%ebx)
.L4:
	.loc 1 154 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 156 0
	movl	$0, -20(%ebp)
	jmp	.L36
.L37:
	.loc 1 157 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	addl	$1, -8(%ebp)
	cmpl	$101, -24(%ebp)
	je	.L40
	cmpl	$117, -24(%ebp)
	je	.L40
	cmpl	$69, -24(%ebp)
	je	.L39
	jmp	.L38
.L40:
	.loc 1 161 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_insn_part
	.loc 1 162 0
	jmp	.L38
.L39:
	.loc 1 164 0
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 165 0
	movl	$0, -16(%ebp)
	jmp	.L42
.L43:
	.loc 1 166 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_insn_part
	.loc 1 165 0
	addl	$1, -16(%ebp)
.L42:
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L43
.L38:
	.loc 1 156 0
	addl	$1, -20(%ebp)
.L36:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-20(%ebp), %eax
	jg	.L37
.L44:
	.loc 1 169 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	walk_insn_part, .-walk_insn_part
	.type	gen_insn, @function
gen_insn:
.LFB16:
	.loc 1 174 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$28, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 178 0
	movl	$0, clobbers_seen_this_insn@GOTOFF(%ebx)
	.loc 1 179 0
	movl	$0, dup_operands_seen_this_insn@GOTOFF(%ebx)
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 181 0
	movl	$0, -8(%ebp)
	jmp	.L48
.L49:
	.loc 1 182 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	walk_insn_part
	.loc 1 181 0
	addl	$1, -8(%ebp)
.L48:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L49
.L46:
	.loc 1 184 0
	movl	clobbers_seen_this_insn@GOTOFF(%ebx), %edx
	movl	max_clobbers_per_insn@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L50
	.loc 1 185 0
	movl	clobbers_seen_this_insn@GOTOFF(%ebx), %eax
	movl	%eax, max_clobbers_per_insn@GOTOFF(%ebx)
.L50:
	.loc 1 186 0
	movl	dup_operands_seen_this_insn@GOTOFF(%ebx), %edx
	movl	max_dup_operands@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L54
	.loc 1 187 0
	movl	dup_operands_seen_this_insn@GOTOFF(%ebx), %eax
	movl	%eax, max_dup_operands@GOTOFF(%ebx)
.L54:
	.loc 1 188 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	gen_insn, .-gen_insn
	.type	gen_expand, @function
gen_expand:
.LFB17:
	.loc 1 195 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$28, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 202 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L62
	.loc 1 203 0
	movl	$0, -8(%ebp)
	jmp	.L58
.L59:
	.loc 1 208 0
	movl	$0, clobbers_seen_this_insn@GOTOFF(%ebx)
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	walk_insn_part
	.loc 1 212 0
	movl	clobbers_seen_this_insn@GOTOFF(%ebx), %edx
	movl	max_clobbers_per_insn@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L60
	.loc 1 213 0
	movl	clobbers_seen_this_insn@GOTOFF(%ebx), %eax
	movl	%eax, max_clobbers_per_insn@GOTOFF(%ebx)
.L60:
	.loc 1 203 0
	addl	$1, -8(%ebp)
.L58:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L59
.L62:
	.loc 1 215 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	gen_expand, .-gen_expand
	.type	gen_split, @function
gen_split:
.LFB18:
	.loc 1 222 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$28, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 227 0
	movl	$0, -8(%ebp)
	jmp	.L64
.L65:
	.loc 1 228 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	walk_insn_part
	.loc 1 227 0
	addl	$1, -8(%ebp)
.L64:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L65
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %edx
	movl	max_insns_per_split@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jle	.L69
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, max_insns_per_split@GOTOFF(%ebx)
.L69:
	.loc 1 232 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	gen_split, .-gen_split
	.type	gen_peephole, @function
gen_peephole:
.LFB19:
	.loc 1 237 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	subl	$28, %esp
.LCFI18:
	.loc 1 242 0
	movl	$0, -4(%ebp)
	jmp	.L71
.L72:
	.loc 1 243 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	walk_insn_part
	.loc 1 242 0
	addl	$1, -4(%ebp)
.L71:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-4(%ebp), %eax
	jg	.L72
	.loc 1 244 0
	leave
	ret
.LFE19:
	.size	gen_peephole, .-gen_peephole
	.type	gen_peephole2, @function
gen_peephole2:
.LFB20:
	.loc 1 249 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$28, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L76
.L77:
	.loc 1 255 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	walk_insn_part
	.loc 1 254 0
	subl	$1, -12(%ebp)
.L76:
	cmpl	$0, -12(%ebp)
	jns	.L77
	.loc 1 258 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L79
.L80:
	.loc 1 259 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$7, %ax
	je	.L81
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$6, %ax
	je	.L81
	.loc 1 261 0
	addl	$1, -8(%ebp)
.L81:
	.loc 1 258 0
	subl	$1, -12(%ebp)
.L79:
	cmpl	$0, -12(%ebp)
	jns	.L80
	.loc 1 262 0
	movl	max_insns_per_peep2@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jle	.L87
	.loc 1 263 0
	movl	-8(%ebp), %eax
	movl	%eax, max_insns_per_peep2@GOTOFF(%ebx)
.L87:
	.loc 1 264 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	gen_peephole2, .-gen_peephole2
	.section	.rodata
.LC0:
	.string	"genconfig"
.LC1:
	.string	"no input file name"
	.align 4
.LC2:
	.string	"/* Generated automatically by the program `genconfig'"
	.align 4
.LC3:
	.string	"   from the machine description file `md'.  */\n"
.LC4:
	.string	"#ifndef GCC_INSN_CONFIG_H"
.LC5:
	.string	"#define GCC_INSN_CONFIG_H\n"
	.align 4
.LC6:
	.string	"#define MAX_RECOG_OPERANDS %d\n"
.LC7:
	.string	"#define MAX_DUP_OPERANDS %d\n"
.LC8:
	.string	"#ifndef MAX_INSNS_PER_SPLIT"
	.align 4
.LC9:
	.string	"#define MAX_INSNS_PER_SPLIT %d\n"
.LC10:
	.string	"#endif"
.LC11:
	.string	"#define HAVE_cc0 1"
	.align 4
.LC12:
	.string	"#define HAVE_conditional_move 1"
	.align 4
.LC13:
	.string	"#define HAVE_conditional_execution 1"
.LC14:
	.string	"#define HAVE_lo_sum 1"
.LC15:
	.string	"#define HAVE_peephole 1"
.LC16:
	.string	"#define HAVE_peephole2 1"
	.align 4
.LC17:
	.string	"#define MAX_INSNS_PER_PEEP2 %d\n"
	.align 4
.LC18:
	.string	"\n#endif /* GCC_INSN_CONFIG_H */"
	.text
.globl main
	.type	main, @function
main:
.LFB21:
	.loc 1 272 0
	leal	4(%esp), %ecx
.LCFI23:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI24:
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	pushl	%ecx
.LCFI28:
	subl	$48, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, -32(%ebp)
	.loc 1 275 0
	movl	progname@GOT(%ebx), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 277 0
	movl	-32(%ebp), %eax
	cmpl	$1, (%eax)
	jg	.L89
	.loc 1 278 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L89:
	.loc 1 280 0
	movl	-32(%ebp), %edx
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	init_md_reader_args@PLT
	testl	%eax, %eax
	je	.L91
	.loc 1 281 0
	movl	$1, -28(%ebp)
	jmp	.L93
.L91:
	.loc 1 283 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 284 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 285 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 286 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 291 0
	movl	$29, max_recog_operands@GOTOFF(%ebx)
	.loc 1 292 0
	movl	$1, max_dup_operands@GOTOFF(%ebx)
	jmp	.L121
.L94:
.L121:
.LBB2:
	.loc 1 298 0
	movl	$0, -20(%ebp)
	.loc 1 300 0
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	read_md_rtx@PLT
	movl	%eax, -12(%ebp)
	.loc 1 301 0
	cmpl	$0, -12(%ebp)
	je	.L95
	.loc 1 304 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$13, %eax
	movl	%eax, -36(%ebp)
	cmpl	$6, -36(%ebp)
	ja	.L94
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L103@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L103:
	.long	.L98@GOTOFF
	.long	.L99@GOTOFF
	.long	.L100@GOTOFF
	.long	.L94@GOTOFF
	.long	.L101@GOTOFF
	.long	.L94@GOTOFF
	.long	.L102@GOTOFF
	.text
.L98:
	.loc 1 307 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_insn
	.loc 1 308 0
	jmp	.L94
.L102:
	.loc 1 311 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_expand
	.loc 1 312 0
	jmp	.L94
.L100:
	.loc 1 315 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_split
	.loc 1 316 0
	jmp	.L94
.L101:
	.loc 1 319 0
	movl	$1, have_peephole2_flag@GOTOFF(%ebx)
	.loc 1 320 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_peephole2
	.loc 1 321 0
	jmp	.L94
.L99:
	.loc 1 324 0
	movl	$1, have_peephole_flag@GOTOFF(%ebx)
	.loc 1 325 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_peephole
	.loc 1 331 0
	jmp	.L94
.L95:
.LBE2:
	.loc 1 333 0
	movl	max_recog_operands@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 334 0
	movl	max_dup_operands@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 338 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 339 0
	movl	max_insns_per_split@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 340 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 342 0
	movl	have_cc0_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L104
	.loc 1 343 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L104:
	.loc 1 345 0
	movl	have_cmove_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L106
	.loc 1 346 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L106:
	.loc 1 348 0
	movl	have_cond_exec_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L108
	.loc 1 349 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L108:
	.loc 1 351 0
	movl	have_lo_sum_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L110
	.loc 1 352 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L110:
	.loc 1 354 0
	movl	have_peephole_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L112
	.loc 1 355 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L112:
	.loc 1 357 0
	movl	have_peephole2_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L114
	.loc 1 359 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 360 0
	movl	max_insns_per_peep2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L114:
	.loc 1 363 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 365 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ferror@PLT
	testl	%eax, %eax
	jne	.L116
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	testl	%eax, %eax
	jne	.L116
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	testl	%eax, %eax
	je	.L119
.L116:
	.loc 1 366 0
	movl	$1, -28(%ebp)
	jmp	.L93
.L119:
	.loc 1 368 0
	movl	$0, -28(%ebp)
.L93:
	movl	-28(%ebp), %eax
	.loc 1 369 0
	addl	$48, %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE21:
	.size	main, .-main
.globl get_insn_name
	.type	get_insn_name, @function
get_insn_name:
.LFB22:
	.loc 1 375 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	.loc 1 376 0
	movl	$0, %eax
	.loc 1 377 0
	popl	%ebp
	ret
.LFE22:
	.size	get_insn_name, .-get_insn_name
	.local	max_recog_operands
	.comm	max_recog_operands,4,4
	.local	max_dup_operands
	.comm	max_dup_operands,4,4
	.local	max_clobbers_per_insn
	.comm	max_clobbers_per_insn,4,4
	.local	have_cc0_flag
	.comm	have_cc0_flag,4,4
	.local	have_cmove_flag
	.comm	have_cmove_flag,4,4
	.local	have_cond_exec_flag
	.comm	have_cond_exec_flag,4,4
	.local	have_lo_sum_flag
	.comm	have_lo_sum_flag,4,4
	.local	have_peephole_flag
	.comm	have_peephole_flag,4,4
	.local	have_peephole2_flag
	.comm	have_peephole2_flag,4,4
	.local	max_insns_per_peep2
	.comm	max_insns_per_peep2,4,4
	.local	clobbers_seen_this_insn
	.comm	clobbers_seen_this_insn,4,4
	.local	dup_operands_seen_this_insn
	.comm	dup_operands_seen_this_insn,4,4
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
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI19-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
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
	.long	.LCFI23-.LFB21
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI25-.LCFI24
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
	.byte	0x84
	.uleb128 0x4
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
	.long	.LCFI30-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
	.file 2 "../../../kg++fe/gnu/MIPS/hconfig.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "../../../kg++fe/gnu/errors.h"
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI24-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x177b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/genconfig.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
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
	.byte	0x84
	.long	0x849
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x87
	.long	0x600
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
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xce
	.long	0x12a5
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
	.byte	0xf2
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x12b5
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
	.byte	0x8
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
	.byte	0x7
	.byte	0x3b
	.long	0x293
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x2dd
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x2be
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x210
	.uleb128 0xc
	.long	0x57d
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x5ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x5f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0x4
	.long	0x5ce
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58b
	.uleb128 0x3
	.byte	0x4
	.long	0x302
	.uleb128 0xf
	.long	0x5ea
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57d
	.uleb128 0xf
	.long	0x600
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0x849
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
	.long	0x1018
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
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
	.long	0x10f2
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
	.long	0x1018
	.uleb128 0xc
	.long	0x1169
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x3
	.byte	0x68
	.long	0x110d
	.uleb128 0x15
	.long	0x1246
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x293
	.uleb128 0x16
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x218
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x21f
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x205
	.uleb128 0x16
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9e
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19f
	.uleb128 0x16
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x600
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x10f2
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x125a
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x1272
	.uleb128 0x16
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e7
	.uleb128 0x16
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x128a
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x1290
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1246
	.uleb128 0x17
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1260
	.uleb128 0x17
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1278
	.uleb128 0x3
	.byte	0x4
	.long	0x1169
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x1174
	.uleb128 0xf
	.long	0x12b5
	.long	0x1296
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x12c5
	.long	0x9e
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x135f
	.string	"walk_insn_part"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x19
	.string	"part"
	.byte	0x1
	.byte	0x42
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"recog_p"
	.byte	0x1
	.byte	0x43
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"non_pc_set_src"
	.byte	0x1
	.byte	0x44
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0x46
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"code"
	.byte	0x1
	.byte	0x47
	.long	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"format_ptr"
	.byte	0x1
	.byte	0x48
	.long	0x205
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x1398
	.string	"gen_insn"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x19
	.string	"insn"
	.byte	0x1
	.byte	0xad
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xaf
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x13d3
	.string	"gen_expand"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x19
	.string	"insn"
	.byte	0x1
	.byte	0xc2
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x140e
	.string	"gen_split"
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x19
	.string	"split"
	.byte	0x1
	.byte	0xdd
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xdf
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x144b
	.string	"gen_peephole"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x19
	.string	"peep"
	.byte	0x1
	.byte	0xec
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xee
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x18
	.long	0x1495
	.string	"gen_peephole2"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x19
	.string	"peep"
	.byte	0x1
	.byte	0xf8
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xfa
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.byte	0xfa
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0x1522
	.byte	0x1
	.string	"main"
	.byte	0x1
	.value	0x110
	.byte	0x1
	.long	0x218
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x1c
	.string	"argc"
	.byte	0x1
	.value	0x10e
	.long	0x218
	.byte	0x3
	.byte	0x75
	.sleb128 -32
	.byte	0x6
	.uleb128 0x1c
	.string	"argv"
	.byte	0x1
	.value	0x10f
	.long	0x1522
	.byte	0x5
	.byte	0x75
	.sleb128 -32
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"desc"
	.byte	0x1
	.value	0x111
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1d
	.string	"line_no"
	.byte	0x1
	.value	0x12a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"insn_code_number"
	.byte	0x1
	.value	0x12a
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fc
	.uleb128 0x1b
	.long	0x1561
	.byte	0x1
	.string	"get_insn_name"
	.byte	0x1
	.value	0x177
	.byte	0x1
	.long	0x205
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x1c
	.string	"code"
	.byte	0x1
	.value	0x176
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1a
	.string	"max_recog_operands"
	.byte	0x1
	.byte	0x20
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	max_recog_operands
	.uleb128 0x1a
	.string	"max_dup_operands"
	.byte	0x1
	.byte	0x21
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	max_dup_operands
	.uleb128 0x1a
	.string	"max_clobbers_per_insn"
	.byte	0x1
	.byte	0x22
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	max_clobbers_per_insn
	.uleb128 0x1a
	.string	"have_cc0_flag"
	.byte	0x1
	.byte	0x23
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	have_cc0_flag
	.uleb128 0x1a
	.string	"have_cmove_flag"
	.byte	0x1
	.byte	0x24
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	have_cmove_flag
	.uleb128 0x1a
	.string	"have_cond_exec_flag"
	.byte	0x1
	.byte	0x25
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	have_cond_exec_flag
	.uleb128 0x1a
	.string	"have_lo_sum_flag"
	.byte	0x1
	.byte	0x26
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	have_lo_sum_flag
	.uleb128 0x1a
	.string	"have_peephole_flag"
	.byte	0x1
	.byte	0x27
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	have_peephole_flag
	.uleb128 0x1a
	.string	"have_peephole2_flag"
	.byte	0x1
	.byte	0x28
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	have_peephole2_flag
	.uleb128 0x1a
	.string	"max_insns_per_split"
	.byte	0x1
	.byte	0x2b
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	max_insns_per_split
	.uleb128 0x1a
	.string	"max_insns_per_peep2"
	.byte	0x1
	.byte	0x2e
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	max_insns_per_peep2
	.uleb128 0x1a
	.string	"clobbers_seen_this_insn"
	.byte	0x1
	.byte	0x30
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	clobbers_seen_this_insn
	.uleb128 0x1a
	.string	"dup_operands_seen_this_insn"
	.byte	0x1
	.byte	0x31
	.long	0x218
	.byte	0x5
	.byte	0x3
	.long	dup_operands_seen_this_insn
	.uleb128 0x1f
	.string	"stdout"
	.byte	0x5
	.byte	0x8f
	.long	0x5d4
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x172a
	.long	0x23b
	.uleb128 0x10
	.long	0x226
	.byte	0xa2
	.byte	0x0
	.uleb128 0x1f
	.string	"rtx_length"
	.byte	0x3
	.byte	0x36
	.long	0x173e
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x171a
	.uleb128 0xf
	.long	0x1753
	.long	0x205
	.uleb128 0x10
	.long	0x226
	.byte	0xa2
	.byte	0x0
	.uleb128 0x1f
	.string	"rtx_format"
	.byte	0x3
	.byte	0x3c
	.long	0x1767
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x1743
	.uleb128 0x1f
	.string	"progname"
	.byte	0x9
	.byte	0x29
	.long	0x205
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.long	0x29
	.value	0x2
	.long	.Ldebug_info0
	.long	0x177f
	.long	0x1495
	.string	"main"
	.long	0x1528
	.string	"get_insn_name"
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
.LASF2:
	.string	"mem_attrs"
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
