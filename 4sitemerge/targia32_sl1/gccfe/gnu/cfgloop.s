	.file	"cfgloop.c"
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
	.string	";; %d succs { "
.LC1:
	.string	"%d "
.LC2:
	.string	"}\n"
.LC3:
	.string	";; DFS order: "
.LC4:
	.string	";; RC order: "
	.text
	.type	flow_loops_cfg_dump, @function
flow_loops_cfg_dump:
.LFB15:
	.file 1 "../../../kgccfe/gnu/cfgloop.c"
	.loc 1 55 0
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
	.loc 1 59 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L22
	cmpl	$0, 12(%ebp)
	je	.L22
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L5
	.loc 1 60 0
	jmp	.L22
.L5:
	.loc 1 62 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L7
.L8:
.LBB2:
	.loc 1 66 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 67 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L9
.L10:
	.loc 1 68 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 67 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L9:
	cmpl	$0, -8(%ebp)
	jne	.L10
	.loc 1 69 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.LBE2:
	.loc 1 62 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L7:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L8
	.loc 1 73 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L13
	.loc 1 75 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 76 0
	movl	$0, -16(%ebp)
	jmp	.L15
.L16:
	.loc 1 77 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 76 0
	addl	$1, -16(%ebp)
.L15:
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L16
	.loc 1 79 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L13:
	.loc 1 83 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L22
	.loc 1 85 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 86 0
	movl	$0, -16(%ebp)
	jmp	.L19
.L20:
	.loc 1 87 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 86 0
	addl	$1, -16(%ebp)
.L19:
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jl	.L20
	.loc 1 89 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L22:
	.loc 1 91 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	flow_loops_cfg_dump, .-flow_loops_cfg_dump
.globl flow_loop_nested_p
	.type	flow_loop_nested_p, @function
flow_loop_nested_p:
.LFB16:
	.loc 1 99 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$4, %esp
.LCFI6:
	.loc 1 100 0
	movl	12(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	%eax, %edx
	jle	.L24
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L24
	movl	$1, -4(%ebp)
	jmp	.L27
.L24:
	movl	$0, -4(%ebp)
.L27:
	movzbl	-4(%ebp), %eax
	movzbl	%al, %eax
	.loc 1 102 0
	leave
	ret
.LFE16:
	.size	flow_loop_nested_p, .-flow_loop_nested_p
	.section	.rodata
.LC5:
	.string	" invalid"
.LC6:
	.string	""
.LC7:
	.string	";;\n;; Loop %d:%s\n"
	.align 4
.LC8:
	.string	";;  header %d, latch %d, pre-header %d\n"
	.align 4
.LC9:
	.string	";;  depth %d, level %d, outer %ld\n"
.LC10:
	.string	";;  pre-header edges"
.LC11:
	.string	";;  entry edges"
.LC12:
	.string	";;  nodes:"
.LC13:
	.string	" %d"
.LC14:
	.string	";;  exit edges"
	.text
.globl flow_loop_dump
	.type	flow_loop_dump, @function
flow_loop_dump:
.LFB17:
	.loc 1 113 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$52, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 117 0
	cmpl	$0, 8(%ebp)
	je	.L49
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L32
	.loc 1 118 0
	jmp	.L49
.L32:
	.loc 1 120 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	testl	%eax, %eax
	je	.L34
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L36
.L34:
	leal	.LC6@GOTOFF(%ebx), %edx
	movl	%edx, -32(%ebp)
.L36:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 123 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L37
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L39
.L37:
	movl	$-1, -28(%ebp)
.L39:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 126 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L40
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L42
.L40:
	movl	$-1, -24(%ebp)
.L42:
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 130 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L43
	.loc 1 131 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	flow_edge_list_print@PLT
.L43:
	.loc 1 134 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	flow_edge_list_print@PLT
	.loc 1 136 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 137 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_loop_body@PLT
	movl	%eax, -12(%ebp)
	.loc 1 138 0
	movl	$0, -8(%ebp)
	jmp	.L45
.L46:
	.loc 1 139 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 138 0
	addl	$1, -8(%ebp)
.L45:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L46
	.loc 1 140 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 141 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 142 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	flow_edge_list_print@PLT
	.loc 1 145 0
	cmpl	$0, 16(%ebp)
	je	.L49
	.loc 1 146 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	16(%ebp), %eax
	call	*%eax
.L49:
	.loc 1 147 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	flow_loop_dump, .-flow_loop_dump
	.section	.rodata
.LC15:
	.string	";; %d loops found, %d levels\n"
	.text
.globl flow_loops_dump
	.type	flow_loops_dump, @function
flow_loops_dump:
.LFB18:
	.loc 1 158 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$36, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 162 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 163 0
	cmpl	$0, -12(%ebp)
	je	.L61
	cmpl	$0, 12(%ebp)
	jne	.L53
	.loc 1 164 0
	jmp	.L61
.L53:
	.loc 1 166 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 169 0
	movl	$0, -16(%ebp)
	jmp	.L55
.L56:
.LBB3:
	.loc 1 171 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 173 0
	cmpl	$0, -8(%ebp)
	je	.L57
	.loc 1 176 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_dump@PLT
.L57:
.LBE3:
	.loc 1 169 0
	addl	$1, -16(%ebp)
.L55:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L56
	.loc 1 179 0
	cmpl	$0, 20(%ebp)
	je	.L61
	.loc 1 180 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loops_cfg_dump
.L61:
	.loc 1 181 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	flow_loops_dump, .-flow_loops_dump
	.type	flow_loop_free, @function
flow_loop_free:
.LFB19:
	.loc 1 187 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$4, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 188 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L63
	.loc 1 189 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L63:
	.loc 1 190 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 191 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L65:
	.loc 1 192 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L67
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L67:
	.loc 1 194 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L69
	.loc 1 195 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L69:
	.loc 1 196 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 197 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	flow_loop_free, .-flow_loop_free
	.section	.rodata
	.type	__FUNCTION__.9110, @object
	.size	__FUNCTION__.9110, 16
__FUNCTION__.9110:
	.string	"flow_loops_free"
.LC16:
	.string	"../../../kgccfe/gnu/cfgloop.c"
	.text
.globl flow_loops_free
	.type	flow_loops_free, @function
flow_loops_free:
.LFB20:
	.loc 1 204 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$36, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 205 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L87
.LBB4:
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L75
	.loc 1 210 0
	leal	__FUNCTION__.9110@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$210, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L75:
	.loc 1 213 0
	movl	$0, -12(%ebp)
	jmp	.L77
.L78:
.LBB5:
	.loc 1 215 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 217 0
	cmpl	$0, -8(%ebp)
	je	.L79
	.loc 1 220 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_free
.L79:
.LBE5:
	.loc 1 213 0
	addl	$1, -12(%ebp)
.L77:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L78
	.loc 1 223 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 224 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 226 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L82
	.loc 1 227 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
.L82:
	.loc 1 229 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L84
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L84:
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L87
	.loc 1 232 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L87:
.LBE4:
	.loc 1 235 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	flow_loops_free, .-flow_loops_free
	.section	.rodata
	.type	__FUNCTION__.9150, @object
	.size	__FUNCTION__.9150, 27
__FUNCTION__.9150:
	.string	"flow_loop_entry_edges_find"
	.text
	.type	flow_loop_entry_edges_find, @function
flow_loop_entry_edges_find:
.LFB21:
	.loc 1 242 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 246 0
	movl	$0, -8(%ebp)
	.loc 1 247 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L89
.L90:
	.loc 1 249 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_outside_edge_p@PLT
	testb	%al, %al
	je	.L91
	.loc 1 250 0
	addl	$1, -8(%ebp)
.L91:
	.loc 1 247 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L89:
	cmpl	$0, -12(%ebp)
	jne	.L90
	.loc 1 253 0
	cmpl	$0, -8(%ebp)
	jne	.L94
	.loc 1 254 0
	leal	__FUNCTION__.9150@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$254, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L94:
	.loc 1 256 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 258 0
	movl	$0, -8(%ebp)
	.loc 1 259 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L96
.L97:
	.loc 1 261 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_outside_edge_p@PLT
	testb	%al, %al
	je	.L98
	.loc 1 262 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -8(%ebp)
.L98:
	.loc 1 259 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L96:
	cmpl	$0, -12(%ebp)
	jne	.L97
	.loc 1 265 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 266 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	flow_loop_entry_edges_find, .-flow_loop_entry_edges_find
	.type	flow_loop_exit_edges_find, @function
flow_loop_exit_edges_find:
.LFB22:
	.loc 1 273 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$52, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 278 0
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	$0, 52(%eax)
	.loc 1 284 0
	movl	$0, -20(%ebp)
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_loop_body@PLT
	movl	%eax, -24(%ebp)
	.loc 1 286 0
	movl	$0, -16(%ebp)
	jmp	.L103
.L104:
	.loc 1 288 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 289 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L105
.L106:
.LBB6:
	.loc 1 291 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 293 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_bb_inside_loop_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L107
	.loc 1 294 0
	addl	$1, -20(%ebp)
.L107:
.LBE6:
	.loc 1 289 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L105:
	cmpl	$0, -32(%ebp)
	jne	.L106
	.loc 1 286 0
	addl	$1, -16(%ebp)
.L103:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L104
	.loc 1 298 0
	cmpl	$0, -20(%ebp)
	jne	.L111
	.loc 1 300 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 301 0
	jmp	.L122
.L111:
	.loc 1 304 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 307 0
	movl	$0, -20(%ebp)
	.loc 1 308 0
	movl	$0, -16(%ebp)
	jmp	.L114
.L115:
	.loc 1 310 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 311 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L116
.L117:
.LBB7:
	.loc 1 313 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 315 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_bb_inside_loop_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L118
	.loc 1 316 0
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -20(%ebp)
.L118:
.LBE7:
	.loc 1 311 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L116:
	cmpl	$0, -32(%ebp)
	jne	.L117
	.loc 1 308 0
	addl	$1, -16(%ebp)
.L114:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L115
	.loc 1 319 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 320 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 52(%edx)
.L122:
	.loc 1 321 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	flow_loop_exit_edges_find, .-flow_loop_exit_edges_find
	.type	flow_loop_nodes_find, @function
flow_loop_nodes_find:
.LFB23:
	.loc 1 330 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$36, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 333 0
	movl	$1, -28(%ebp)
	.loc 1 336 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 337 0
	movl	12(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 338 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 340 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	60(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L124
	.loc 1 342 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 343 0
	movl	$0, -32(%ebp)
	.loc 1 344 0
	addl	$1, -28(%ebp)
	.loc 1 345 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-36(%ebp), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -32(%ebp)
	.loc 1 346 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 347 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 56(%edx)
	.loc 1 349 0
	jmp	.L126
.L127:
.LBB8:
	.loc 1 354 0
	subl	$1, -32(%ebp)
	movl	-32(%ebp), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 356 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L128
.L129:
.LBB9:
	.loc 1 358 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 360 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	je	.L130
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L130
	.loc 1 363 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 364 0
	movl	12(%ebp), %eax
	movl	60(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 365 0
	addl	$1, -28(%ebp)
	.loc 1 366 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-36(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -32(%ebp)
.L130:
.LBE9:
	.loc 1 356 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L128:
	cmpl	$0, -12(%ebp)
	jne	.L129
.L126:
.LBE8:
	.loc 1 349 0
	cmpl	$0, -32(%ebp)
	jne	.L127
	.loc 1 370 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L124:
	.loc 1 372 0
	movl	-28(%ebp), %eax
	.loc 1 373 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	flow_loop_nodes_find, .-flow_loop_nodes_find
	.type	flow_loop_pre_header_scan, @function
flow_loop_pre_header_scan:
.LFB24:
	.loc 1 381 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$20, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 386 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 387 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$1, %eax
	jne	.L145
	.loc 1 390 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 391 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	je	.L145
	.loc 1 397 0
	movl	$1, -16(%ebp)
	jmp	.L139
.L140:
	.loc 1 399 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 398 0
	addl	$1, -16(%ebp)
.L139:
	.loc 1 397 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L141
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L140
.L141:
	.loc 1 401 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 402 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 407 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L143
.L144:
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	subl	$1, -16(%ebp)
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 407 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
.L143:
	cmpl	$0, -16(%ebp)
	jne	.L144
.L145:
	.loc 1 409 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	flow_loop_pre_header_scan, .-flow_loop_pre_header_scan
	.type	flow_loop_pre_header_find, @function
flow_loop_pre_header_find:
.LFB25:
	.loc 1 419 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$36, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 425 0
	movl	$0, -16(%ebp)
	.loc 1 426 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L147
.L148:
.LBB10:
	.loc 1 428 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 430 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	je	.L149
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L149
	.loc 1 433 0
	cmpl	$0, -16(%ebp)
	jne	.L152
	.loc 1 434 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L149
.L152:
	.loc 1 439 0
	movl	$0, -16(%ebp)
	.loc 1 440 0
	jmp	.L154
.L149:
.LBE10:
	.loc 1 426 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L147:
	cmpl	$0, -12(%ebp)
	jne	.L148
.L154:
	.loc 1 445 0
	movl	-16(%ebp), %eax
	.loc 1 446 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	flow_loop_pre_header_find, .-flow_loop_pre_header_find
.globl flow_loop_tree_node_add
	.type	flow_loop_tree_node_add, @function
flow_loop_tree_node_add:
.LFB26:
	.loc 1 455 0
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
	subl	$12, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 456 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 80(%eax)
	.loc 1 457 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 458 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 72(%edx)
	.loc 1 460 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 461 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 462 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 463 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 464 0
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	flow_loop_tree_node_add, .-flow_loop_tree_node_add
.globl flow_loop_tree_node_remove
	.type	flow_loop_tree_node_remove, @function
flow_loop_tree_node_remove:
.LFB27:
	.loc 1 471 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$20, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 474 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 475 0
	movl	8(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 478 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L159
	.loc 1 479 0
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 76(%eax)
	jmp	.L161
.L159:
	.loc 1 482 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L162
.L163:
	movl	-12(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -12(%ebp)
.L162:
	movl	-12(%ebp), %eax
	movl	80(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L163
	.loc 1 483 0
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 80(%eax)
.L161:
	.loc 1 486 0
	movl	8(%ebp), %eax
	movl	$-1, 60(%eax)
	.loc 1 487 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 488 0
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
	.loc 1 489 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	flow_loop_tree_node_remove, .-flow_loop_tree_node_remove
	.type	flow_loop_level_compute, @function
flow_loop_level_compute:
.LFB28:
	.loc 1 497 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	subl	$24, %esp
.LCFI55:
	.loc 1 499 0
	movl	$1, -8(%ebp)
	.loc 1 501 0
	cmpl	$0, 8(%ebp)
	jne	.L167
	.loc 1 502 0
	movl	$0, -20(%ebp)
	jmp	.L169
.L167:
	.loc 1 509 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L170
.L171:
.LBB11:
	.loc 1 511 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_level_compute
	addl	$1, %eax
	movl	%eax, -4(%ebp)
	.loc 1 513 0
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jle	.L172
	.loc 1 514 0
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
.L172:
.LBE11:
	.loc 1 509 0
	movl	-12(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -12(%ebp)
.L170:
	cmpl	$0, -12(%ebp)
	jne	.L171
	.loc 1 517 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 518 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L169:
	movl	-20(%ebp), %eax
	.loc 1 519 0
	leave
	ret
.LFE28:
	.size	flow_loop_level_compute, .-flow_loop_level_compute
	.type	flow_loops_level_compute, @function
flow_loops_level_compute:
.LFB29:
	.loc 1 528 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	subl	$4, %esp
.LCFI58:
	.loc 1 529 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	flow_loop_level_compute
	.loc 1 530 0
	leave
	ret
.LFE29:
	.size	flow_loops_level_compute, .-flow_loops_level_compute
.globl flow_loop_scan
	.type	flow_loop_scan, @function
flow_loop_scan:
.LFB30:
	.loc 1 540 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	subl	$8, %esp
.LCFI61:
	.loc 1 541 0
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L179
	.loc 1 546 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_entry_edges_find
.L179:
	.loc 1 549 0
	movl	16(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L181
	.loc 1 552 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_exit_edges_find
.L181:
	.loc 1 555 0
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L183
	.loc 1 558 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	flow_loop_pre_header_find
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 563 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_pre_header_scan
.L183:
	.loc 1 566 0
	movl	$1, %eax
	.loc 1 567 0
	leave
	ret
.LFE30:
	.size	flow_loop_scan, .-flow_loop_scan
	.type	redirect_edge_with_latch_update, @function
redirect_edge_with_latch_update:
.LFB31:
	.loc 1 577 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$36, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 580 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch_force@PLT
	movl	%eax, -8(%ebp)
	.loc 1 581 0
	cmpl	$0, -8(%ebp)
	je	.L189
	.loc 1 583 0
	movl	$4, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_aux_for_block@PLT
	.loc 1 584 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, (%eax)
	.loc 1 585 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	alloc_aux_for_edge@PLT
	.loc 1 586 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 587 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, (%eax)
.L189:
	.loc 1 589 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	redirect_edge_with_latch_update, .-redirect_edge_with_latch_update
	.type	make_forwarder_block, @function
make_forwarder_block:
.LFB32:
	.loc 1 605 0
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
	subl	$60, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 610 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 612 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_block@PLT
	movl	%eax, -28(%ebp)
	.loc 1 613 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 614 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 616 0
	movl	$4, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 617 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, (%eax)
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	$1, (%eax)
	.loc 1 621 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L191
.L192:
	.loc 1 623 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 624 0
	movl	-36(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L193
	cmpl	$0, 12(%ebp)
	je	.L195
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L197
.L195:
	cmpl	$0, 16(%ebp)
	je	.L193
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L197
.L193:
	.loc 1 628 0
	movl	-24(%ebp), %eax
	movl	72(%eax), %esi
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-36(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -60(%ebp)
	movl	-60(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 629 0
	movl	-24(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-36(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 630 0
	movl	-24(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jns	.L199
	.loc 1 631 0
	movl	-24(%ebp), %eax
	movl	$0, 72(%eax)
.L199:
	.loc 1 632 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	testl	%edx, %edx
	jns	.L201
	.loc 1 633 0
	movl	-24(%ebp), %eax
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
.L201:
	.loc 1 634 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_with_latch_update
.L197:
	.loc 1 621 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L191:
	cmpl	$0, -36(%ebp)
	jne	.L192
	.loc 1 638 0
	movl	$4, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_aux_for_edge@PLT
	.loc 1 639 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 641 0
	movl	-24(%ebp), %eax
	.loc 1 642 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	make_forwarder_block, .-make_forwarder_block
	.type	canonicalize_loop_headers, @function
canonicalize_loop_headers:
.LFB33:
	.loc 1 647 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$100, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 653 0
	movl	$0, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, -56(%ebp)
	.loc 1 655 0
	movl	$4, (%esp)
	call	alloc_aux_for_blocks@PLT
	.loc 1 656 0
	movl	$4, (%esp)
	call	alloc_aux_for_edges@PLT
	.loc 1 659 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L206
.L207:
.LBB12:
	.loc 1 661 0
	movl	$0, -44(%ebp)
	.loc 1 662 0
	movl	$0, -40(%ebp)
	.loc 1 664 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L208
.L209:
.LBB13:
	.loc 1 666 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 668 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L210
	.loc 1 669 0
	movl	$1, -40(%ebp)
.L210:
	.loc 1 671 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	je	.L212
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	testb	%al, %al
	je	.L212
	.loc 1 674 0
	addl	$1, -44(%ebp)
	.loc 1 675 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	$1, (%eax)
.L212:
.LBE13:
	.loc 1 664 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L208:
	cmpl	$0, -48(%ebp)
	jne	.L209
	.loc 1 678 0
	cmpl	$0, -40(%ebp)
	je	.L216
	.loc 1 679 0
	movl	-52(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, (%eax)
	jmp	.L218
.L216:
	.loc 1 681 0
	movl	-52(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
.L218:
.LBE12:
	.loc 1 659 0
	movl	-52(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -52(%ebp)
.L206:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -52(%ebp)
	jne	.L207
	.loc 1 684 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L220
.LBB14:
	.loc 1 690 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	split_edge@PLT
	movl	%eax, -32(%ebp)
	.loc 1 692 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	alloc_aux_for_edge@PLT
	.loc 1 693 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, (%eax)
	.loc 1 694 0
	movl	$4, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_aux_for_block@PLT
	.loc 1 695 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, (%eax)
.L220:
.LBE14:
	.loc 1 698 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L222
.L223:
.LBB15:
	.loc 1 705 0
	movl	-52(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L224
	.loc 1 708 0
	movl	-52(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 710 0
	cmpl	$1, -28(%ebp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 712 0
	cmpl	$0, -24(%ebp)
	je	.L224
	.loc 1 716 0
	movl	$1, -16(%ebp)
	.loc 1 717 0
	movl	$0, -12(%ebp)
	.loc 1 718 0
	movl	$0, -20(%ebp)
	.loc 1 719 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L227
.L228:
	.loc 1 720 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L229
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-48(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -72(%ebp)
	movl	-72(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jle	.L229
	.loc 1 722 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-48(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -72(%ebp)
	movl	-72(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
.L229:
	.loc 1 719 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L227:
	cmpl	$0, -48(%ebp)
	jne	.L228
	.loc 1 723 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L233
.L234:
	.loc 1 724 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L235
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-48(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -72(%ebp)
	movl	-72(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, %ecx
	jl	.L235
	.loc 1 727 0
	cmpl	$0, -12(%ebp)
	je	.L238
	.loc 1 729 0
	movl	$0, -16(%ebp)
	.loc 1 730 0
	jmp	.L240
.L238:
	.loc 1 733 0
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
.L235:
	.loc 1 723 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L233:
	cmpl	$0, -48(%ebp)
	jne	.L234
.L240:
	.loc 1 736 0
	cmpl	$0, -16(%ebp)
	je	.L241
.LBB16:
	.loc 1 739 0
	movl	$0, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	make_forwarder_block
	movl	%eax, -8(%ebp)
	.loc 1 740 0
	cmpl	$2, -28(%ebp)
	jle	.L224
	.loc 1 741 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_forwarder_block
	jmp	.L224
.L241:
.LBE16:
	.loc 1 744 0
	movl	$1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	make_forwarder_block
.L224:
.LBE15:
	.loc 1 698 0
	movl	-52(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -52(%ebp)
.L222:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -52(%ebp)
	jne	.L223
	.loc 1 747 0
	call	free_aux_for_blocks@PLT
	.loc 1 748 0
	call	free_aux_for_edges@PLT
	.loc 1 749 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
	.loc 1 750 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	canonicalize_loop_headers, .-canonicalize_loop_headers
	.section	.rodata
	.type	__FUNCTION__.9617, @object
	.size	__FUNCTION__.9617, 16
__FUNCTION__.9617:
	.string	"flow_loops_find"
	.text
.globl flow_loops_find
	.type	flow_loops_find, @function
flow_loops_find:
.LFB34:
	.loc 1 761 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%edi
.LCFI78:
	pushl	%esi
.LCFI79:
	pushl	%ebx
.LCFI80:
	subl	$124, %esp
.LCFI81:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 776 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L248
	.loc 1 777 0
	leal	__FUNCTION__.9617@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$777, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L248:
	.loc 1 779 0
	movl	8(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$9, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 783 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L250
	.loc 1 784 0
	movl	$0, -112(%ebp)
	jmp	.L252
.L250:
	.loc 1 786 0
	movl	$0, -48(%ebp)
	.loc 1 787 0
	movl	$0, -44(%ebp)
	.loc 1 790 0
	call	canonicalize_loop_headers
	.loc 1 793 0
	movl	$0, (%esp)
	call	calculate_dominance_info@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 797 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 798 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 800 0
	movl	$0, -64(%ebp)
	.loc 1 801 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L253
.L254:
.LBB17:
	.loc 1 803 0
	movl	$0, -32(%ebp)
	.loc 1 805 0
	movl	-40(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 807 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L255
.L256:
.LBB18:
	.loc 1 809 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 811 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L257
	.loc 1 813 0
	cmpl	$0, -32(%ebp)
	je	.L261
	.loc 1 815 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -108(%ebp)
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L291
	movl	%eax, %edx
	xorl	%eax, %eax
.L291:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-104(%ebp), %eax
	andl	%esi, %eax
	movl	-100(%ebp), %edx
	andl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	-108(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 816 0
	subl	$1, -64(%ebp)
	.loc 1 818 0
	jmp	.L261
.L257:
	.loc 1 826 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	je	.L262
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	testb	%al, %al
	je	.L262
	.loc 1 829 0
	cmpl	$0, -32(%ebp)
	je	.L265
	.loc 1 830 0
	leal	__FUNCTION__.9617@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$830, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L265:
	.loc 1 831 0
	movl	$1, -32(%ebp)
	.loc 1 832 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -92(%ebp)
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L290
	movl	%esi, %edi
	xorl	%esi, %esi
.L290:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	-92(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 833 0
	addl	$1, -64(%ebp)
.L262:
.LBE18:
	.loc 1 807 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L255:
	cmpl	$0, -60(%ebp)
	jne	.L256
.L261:
.LBE17:
	.loc 1 801 0
	movl	-40(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
.L253:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	.L254
	.loc 1 839 0
	movl	-64(%ebp), %eax
	addl	$1, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 842 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	movl	$128, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, (%esi)
	.loc 1 843 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 80(%eax)
	.loc 1 844 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 76(%eax)
	.loc 1 845 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 72(%eax)
	.loc 1 846 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 60(%eax)
	.loc 1 847 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 64(%eax)
	.loc 1 848 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, 36(%edx)
	.loc 1 849 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 850 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 4(%edx)
	.loc 1 851 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%edx, 60(%eax)
	.loc 1 852 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 60(%edx)
	.loc 1 854 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 858 0
	movl	8(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 859 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L268
.L269:
	.loc 1 860 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 859 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L268:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L269
	.loc 1 862 0
	cmpl	$0, -64(%ebp)
	je	.L271
	.loc 1 866 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 867 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -44(%ebp)
	.loc 1 868 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_depth_first_order_compute@PLT
	.loc 1 871 0
	movl	8(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 872 0
	movl	8(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 873 0
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 875 0
	movl	$1, -64(%ebp)
	.loc 1 877 0
	movl	$0, -68(%ebp)
	jmp	.L273
.L274:
.LBB19:
	.loc 1 883 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L289
	movl	%edi, %esi
	xorl	%edi, %edi
.L289:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L275
	.loc 1 886 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 888 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	$128, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, (%esi)
	movl	(%esi), %eax
	movl	%eax, -24(%ebp)
	.loc 1 890 0
	movl	-24(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 891 0
	movl	-24(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 892 0
	addl	$1, -64(%ebp)
	.loc 1 895 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L277
.L278:
.LBB20:
	.loc 1 897 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 899 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	je	.L279
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	testb	%al, %al
	je	.L279
	.loc 1 902 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 903 0
	jmp	.L282
.L279:
.LBE20:
	.loc 1 895 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L277:
	cmpl	$0, -60(%ebp)
	jne	.L278
.L282:
	.loc 1 907 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	flow_loop_tree_node_add@PLT
	.loc 1 908 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	flow_loop_nodes_find
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 36(%eax)
.L275:
.LBE19:
	.loc 1 877 0
	addl	$1, -68(%ebp)
.L273:
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -68(%ebp)
	jl	.L274
	.loc 1 911 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 915 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loops_level_compute
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 918 0
	movl	$1, -72(%ebp)
	jmp	.L284
.L285:
	.loc 1 919 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-72(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_scan@PLT
	.loc 1 918 0
	addl	$1, -72(%ebp)
.L284:
	movl	-72(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jl	.L285
	.loc 1 921 0
	movl	8(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L287
.L271:
	.loc 1 925 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 926 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dominance_info@PLT
.L287:
	.loc 1 933 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
.L252:
	movl	-112(%ebp), %eax
	.loc 1 934 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	flow_loops_find, .-flow_loops_find
.globl flow_loops_update
	.type	flow_loops_update, @function
flow_loops_update:
.LFB35:
	.loc 1 943 0
	pushl	%ebp
.LCFI82:
	movl	%esp, %ebp
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$20, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 946 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L293
	.loc 1 947 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loops_free@PLT
.L293:
	.loc 1 949 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loops_find@PLT
	.loc 1 950 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	flow_loops_update, .-flow_loops_update
.globl flow_bb_inside_loop_p
	.type	flow_bb_inside_loop_p, @function
flow_bb_inside_loop_p:
.LFB36:
	.loc 1 957 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%ebx
.LCFI88:
	subl	$36, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 960 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, 12(%ebp)
	je	.L297
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L299
.L297:
	.loc 1 961 0
	movl	$0, -28(%ebp)
	jmp	.L300
.L299:
	.loc 1 963 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 964 0
	movl	8(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L301
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loop_nested_p@PLT
	testb	%al, %al
	je	.L303
.L301:
	movl	$1, -24(%ebp)
	jmp	.L304
.L303:
	movl	$0, -24(%ebp)
.L304:
	movzbl	-24(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L300:
	movl	-28(%ebp), %eax
	.loc 1 965 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	flow_bb_inside_loop_p, .-flow_bb_inside_loop_p
	.section	.rodata
	.type	__FUNCTION__.9812, @object
	.size	__FUNCTION__.9812, 25
__FUNCTION__.9812:
	.string	"flow_loop_outside_edge_p"
	.text
.globl flow_loop_outside_edge_p
	.type	flow_loop_outside_edge_p, @function
flow_loop_outside_edge_p:
.LFB37:
	.loc 1 973 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$20, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 974 0
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L307
	.loc 1 975 0
	leal	__FUNCTION__.9812@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$975, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L307:
	.loc 1 976 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_bb_inside_loop_p@PLT
	movzbl	%al, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 1 977 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	flow_loop_outside_edge_p, .-flow_loop_outside_edge_p
	.type	glb_enum_p, @function
glb_enum_p:
.LFB38:
	.loc 1 984 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	.loc 1 985 0
	movl	12(%ebp), %eax
	cmpl	%eax, 8(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 986 0
	popl	%ebp
	ret
.LFE38:
	.size	glb_enum_p, .-glb_enum_p
	.section	.rodata
	.type	__FUNCTION__.9836, @object
	.size	__FUNCTION__.9836, 14
__FUNCTION__.9836:
	.string	"get_loop_body"
	.text
.globl get_loop_body
	.type	get_loop_body, @function
get_loop_body:
.LFB39:
	.loc 1 992 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%edi
.LCFI98:
	pushl	%esi
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$44, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 994 0
	movl	$0, -16(%ebp)
	.loc 1 996 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L313
	.loc 1 997 0
	leal	__FUNCTION__.9836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$997, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L313:
	.loc 1 999 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1000 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -16(%ebp)
	.loc 1 1002 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L315
	.loc 1 1005 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	cmpl	%eax, %edx
	je	.L317
	.loc 1 1006 0
	leal	__FUNCTION__.9836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1006, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L317:
	.loc 1 1007 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L319
.L320:
	.loc 1 1008 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -16(%ebp)
	.loc 1 1007 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L319:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L320
	.loc 1 1009 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -16(%ebp)
	jmp	.L322
.L315:
	.loc 1 1011 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L322
	.loc 1 1013 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %ecx
	addl	$4, %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edi
	movl	%esi, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	glb_enum_p@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	dfs_enumerate_from@PLT
	addl	$1, %eax
	movl	%eax, -16(%ebp)
.L322:
	.loc 1 1018 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L324
	.loc 1 1019 0
	leal	__FUNCTION__.9836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1019, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L324:
	.loc 1 1020 0
	movl	-24(%ebp), %eax
	.loc 1 1021 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	get_loop_body, .-get_loop_body
.globl add_bb_to_loop
	.type	add_bb_to_loop, @function
add_bb_to_loop:
.LFB40:
	.loc 1 1028 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	subl	$16, %esp
.LCFI104:
	.loc 1 1031 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 1032 0
	movl	12(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 1033 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1034 0
	movl	$0, -4(%ebp)
	jmp	.L328
.L329:
	.loc 1 1035 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	36(%edx), %eax
	addl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 1034 0
	addl	$1, -4(%ebp)
.L328:
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	-4(%ebp), %eax
	jg	.L329
	.loc 1 1036 0
	leave
	ret
.LFE40:
	.size	add_bb_to_loop, .-add_bb_to_loop
.globl remove_bb_from_loops
	.type	remove_bb_from_loops, @function
remove_bb_from_loops:
.LFB41:
	.loc 1 1042 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	subl	$16, %esp
.LCFI107:
	.loc 1 1044 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1046 0
	movl	-4(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1047 0
	movl	$0, -8(%ebp)
	jmp	.L333
.L334:
	.loc 1 1048 0
	movl	-4(%ebp), %eax
	movl	64(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	36(%edx), %eax
	subl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 1047 0
	addl	$1, -8(%ebp)
.L333:
	movl	-4(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L334
	.loc 1 1049 0
	movl	8(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 1050 0
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 1051 0
	leave
	ret
.LFE41:
	.size	remove_bb_from_loops, .-remove_bb_from_loops
.globl find_common_loop
	.type	find_common_loop, @function
find_common_loop:
.LFB42:
	.loc 1 1058 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	subl	$4, %esp
.LCFI110:
	.loc 1 1059 0
	cmpl	$0, 8(%ebp)
	jne	.L338
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L340
.L338:
	.loc 1 1060 0
	cmpl	$0, 12(%ebp)
	jne	.L341
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L340
.L341:
	.loc 1 1062 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	%eax, %edx
	jge	.L343
	.loc 1 1063 0
	movl	12(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L347
.L343:
	.loc 1 1064 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	%eax, %edx
	jle	.L347
	.loc 1 1065 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1067 0
	jmp	.L347
.L348:
	.loc 1 1069 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1070 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 12(%ebp)
.L347:
	.loc 1 1067 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L348
	.loc 1 1072 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L340:
	movl	-4(%ebp), %eax
	.loc 1 1073 0
	leave
	ret
.LFE42:
	.size	find_common_loop, .-find_common_loop
	.section	.rodata
	.type	__FUNCTION__.9991, @object
	.size	__FUNCTION__.9991, 22
__FUNCTION__.9991:
	.string	"verify_loop_structure"
	.align 4
.LC17:
	.string	"Size of loop %d should be %d, not %d."
	.align 4
.LC18:
	.string	"Bb %d do not belong to loop %d."
	.align 4
.LC19:
	.string	"Loop %d's header does not have exactly 2 entries."
	.align 4
.LC20:
	.string	"Loop %d's latch does not have exactly 1 successor."
	.align 4
.LC21:
	.string	"Loop %d's latch does not have header as successor."
	.align 4
.LC22:
	.string	"Loop %d's latch does not belong directly to it."
	.align 4
.LC23:
	.string	"Loop %d's header does not belong directly to it."
	.text
.globl verify_loop_structure
	.type	verify_loop_structure, @function
verify_loop_structure:
.LFB43:
	.loc 1 1085 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$52, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1089 0
	movl	$0, -8(%ebp)
	.loc 1 1092 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1093 0
	movl	-32(%ebp), %eax
	movl	$2, (%eax)
	.loc 1 1095 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L352
.L353:
	.loc 1 1096 0
	movl	-16(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L354
.L355:
	.loc 1 1097 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	movl	(%edx), %eax
	addl	$1, %eax
	movl	%eax, (%edx)
	.loc 1 1096 0
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -12(%ebp)
.L354:
	cmpl	$0, -12(%ebp)
	jne	.L355
	.loc 1 1095 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L352:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L353
	.loc 1 1099 0
	movl	$0, -28(%ebp)
	jmp	.L358
.L359:
	.loc 1 1101 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L360
	.loc 1 1104 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	36(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L360
	.loc 1 1106 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	36(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1108 0
	movl	$1, -8(%ebp)
.L360:
	.loc 1 1099 0
	addl	$1, -28(%ebp)
.L358:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L359
	.loc 1 1112 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1115 0
	movl	$1, -28(%ebp)
	jmp	.L364
.L365:
	.loc 1 1117 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1118 0
	cmpl	$0, -12(%ebp)
	je	.L366
	.loc 1 1120 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_loop_body@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1122 0
	movl	$0, -24(%ebp)
	jmp	.L368
.L369:
	.loc 1 1123 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_bb_inside_loop_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L370
	.loc 1 1125 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1127 0
	movl	$1, -8(%ebp)
.L370:
	.loc 1 1122 0
	addl	$1, -24(%ebp)
.L368:
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-24(%ebp), %eax
	jg	.L369
	.loc 1 1129 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L366:
	.loc 1 1115 0
	addl	$1, -28(%ebp)
.L364:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L365
	.loc 1 1133 0
	movl	$1, -28(%ebp)
	jmp	.L374
.L375:
	.loc 1 1135 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1136 0
	cmpl	$0, -12(%ebp)
	je	.L376
	.loc 1 1139 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L378
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L380
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L378
.L380:
	.loc 1 1143 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1144 0
	movl	$1, -8(%ebp)
.L378:
	.loc 1 1146 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L382
	.loc 1 1148 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L384
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L386
.L384:
	.loc 1 1151 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1152 0
	movl	$1, -8(%ebp)
.L386:
	.loc 1 1154 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L387
	.loc 1 1156 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1157 0
	movl	$1, -8(%ebp)
.L387:
	.loc 1 1159 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	60(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L382
	.loc 1 1161 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1162 0
	movl	$1, -8(%ebp)
.L382:
	.loc 1 1165 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L376
	.loc 1 1167 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1168 0
	movl	$1, -8(%ebp)
.L376:
	.loc 1 1133 0
	addl	$1, -28(%ebp)
.L374:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L375
	.loc 1 1172 0
	cmpl	$0, -8(%ebp)
	je	.L394
	.loc 1 1173 0
	leal	__FUNCTION__.9991@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1173, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L394:
	.loc 1 1174 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	verify_loop_structure, .-verify_loop_structure
.globl loop_latch_edge
	.type	loop_latch_edge, @function
loop_latch_edge:
.LFB44:
	.loc 1 1180 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	subl	$16, %esp
.LCFI117:
	.loc 1 1183 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L396
.L397:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L396:
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L397
	.loc 1 1186 0
	movl	-4(%ebp), %eax
	.loc 1 1187 0
	leave
	ret
.LFE44:
	.size	loop_latch_edge, .-loop_latch_edge
.globl loop_preheader_edge
	.type	loop_preheader_edge, @function
loop_preheader_edge:
.LFB45:
	.loc 1 1193 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	subl	$16, %esp
.LCFI120:
	.loc 1 1196 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L401
.L402:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L401:
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L402
	.loc 1 1199 0
	movl	-4(%ebp), %eax
	.loc 1 1200 0
	leave
	ret
.LFE45:
	.size	loop_preheader_edge, .-loop_preheader_edge
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
	.long	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
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
	.long	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
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
	.long	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
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
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
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
	.byte	0x4
	.long	.LCFI34-.LCFI32
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
	.long	.LCFI35-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI39-.LFB25
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
	.long	.LCFI48-.LCFI44
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
	.long	.LCFI52-.LCFI50
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
	.long	.LCFI53-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI56-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
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
	.long	.LCFI59-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
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
	.long	.LCFI62-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI63
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
	.long	.LCFI66-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI72-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI76-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI81-.LCFI77
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
	.long	.LCFI82-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI83
	.byte	0x83
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
	.long	.LCFI86-.LFB36
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI90-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI94-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI96-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI101-.LCFI97
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
	.long	.LCFI102-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI105-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI108-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI111-.LFB43
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
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI115-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI118-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE60:
	.file 2 "../../../kgccfe/gnu/basic-block.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/MIPS/config.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/sbitmap.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 12 "../../../kgccfe/gnu/varray.h"
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
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI12-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
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
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI62-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI63-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI82-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI83-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI102-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI103-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI106-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI118-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI119-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x2f53
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cfgloop.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x859
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
	.long	0x610
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x1476
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x1486
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x8
	.long	0x20e
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
	.byte	0xb
	.byte	0xd6
	.long	0x21d
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
	.byte	0xa
	.byte	0x3b
	.long	0x291
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xa
	.byte	0x90
	.long	0x2db
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xa
	.byte	0x91
	.long	0x2bc
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20e
	.uleb128 0x2
	.string	"FILE"
	.byte	0x8
	.byte	0x2e
	.long	0x30c
	.uleb128 0xc
	.long	0x587
	.long	.LASF1
	.byte	0x94
	.byte	0x8
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x9
	.value	0x10c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x9
	.value	0x111
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x9
	.value	0x112
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x9
	.value	0x113
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x9
	.value	0x114
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x9
	.value	0x115
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x9
	.value	0x116
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x9
	.value	0x117
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x9
	.value	0x118
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x9
	.value	0x11a
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x9
	.value	0x11b
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x9
	.value	0x11c
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x9
	.value	0x11e
	.long	0x5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x9
	.value	0x120
	.long	0x5de
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x9
	.value	0x122
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x9
	.value	0x126
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x9
	.value	0x128
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x9
	.value	0x12c
	.long	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x9
	.value	0x12d
	.long	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x9
	.value	0x12e
	.long	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x9
	.value	0x132
	.long	0x5f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x9
	.value	0x13b
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x9
	.value	0x144
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x9
	.value	0x145
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x9
	.value	0x146
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x9
	.value	0x147
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x9
	.value	0x148
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x9
	.value	0x14a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x9
	.value	0x14c
	.long	0x5fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x9
	.byte	0xb0
	.uleb128 0x4
	.long	0x5d8
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x9
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x9
	.byte	0xb7
	.long	0x5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x9
	.byte	0xb8
	.long	0x5de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x9
	.byte	0xbc
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x595
	.uleb128 0x3
	.byte	0x4
	.long	0x30c
	.uleb128 0xf
	.long	0x5f4
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x587
	.uleb128 0xf
	.long	0x60a
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x216
	.uleb128 0x11
	.long	0x859
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
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
	.long	0x1028
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
	.long	0x1102
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x1028
	.uleb128 0xc
	.long	0x1179
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x291
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e5
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
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x3
	.byte	0x6e
	.long	0x111d
	.uleb128 0x15
	.long	0x1256
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x291
	.uleb128 0x16
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x216
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x21d
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x203
	.uleb128 0x16
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9c
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19d
	.uleb128 0x16
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x610
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x1102
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x126a
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x12d2
	.uleb128 0x16
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e5
	.uleb128 0x16
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x145b
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x1461
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1256
	.uleb128 0x4
	.long	0x12d2
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x152d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x152d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1270
	.uleb128 0x4
	.long	0x145b
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x2
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x2
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x2
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x2
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x2
	.byte	0xbc
	.long	0x1b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x2
	.byte	0xbc
	.long	0x1b42
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x2
	.byte	0xc1
	.long	0x1a74
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x2
	.byte	0xc5
	.long	0x1a74
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x2
	.byte	0xcb
	.long	0x1a74
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x2
	.byte	0xcd
	.long	0x1a74
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0xd0
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x2
	.byte	0xd3
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x145b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x145b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x2
	.byte	0xd9
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x2
	.byte	0xdc
	.long	0x1d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0xdf
	.long	0x1a82
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x2
	.byte	0xe2
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x18
	.long	.LASF3
	.byte	0x2
	.byte	0xe5
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12d8
	.uleb128 0x3
	.byte	0x4
	.long	0x1179
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x1184
	.uleb128 0xf
	.long	0x1486
	.long	0x1467
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1496
	.long	0x9c
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x260
	.uleb128 0x4
	.long	0x1501
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x1501
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x1501
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x1507
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14a9
	.uleb128 0xf
	.long	0x1517
	.long	0x1496
	.uleb128 0x10
	.long	0x224
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x14a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1517
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x12d2
	.uleb128 0x4
	.long	0x159b
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x159b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x15ab
	.long	0x2a2
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x15ba
	.uleb128 0x3
	.byte	0x4
	.long	0x1541
	.uleb128 0x4
	.long	0x15f6
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.long	0x1791
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xc
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
	.uleb128 0x15
	.long	0x188d
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x16
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x5e4
	.uleb128 0x16
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x188d
	.uleb128 0x16
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x189d
	.uleb128 0x16
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x18ad
	.uleb128 0x16
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x18bd
	.uleb128 0x16
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x18cd
	.uleb128 0x16
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x18dd
	.uleb128 0x16
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x18ed
	.uleb128 0x16
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x18fd
	.uleb128 0x16
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x159b
	.uleb128 0x16
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x190d
	.uleb128 0x16
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x191d
	.uleb128 0x16
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x192d
	.uleb128 0x16
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x193d
	.uleb128 0x16
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x194d
	.uleb128 0x16
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x195d
	.uleb128 0x16
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x196d
	.uleb128 0x16
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x1992
	.uleb128 0x16
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x19a2
	.uleb128 0x16
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x19b2
	.byte	0x0
	.uleb128 0xf
	.long	0x189d
	.long	0x239
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18ad
	.long	0x284
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18bd
	.long	0x24a
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18cd
	.long	0x216
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18dd
	.long	0x21d
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18ed
	.long	0x2db
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18fd
	.long	0x260
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x190d
	.long	0x291
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x191d
	.long	0x2f8
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x192d
	.long	0x2fa
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x193d
	.long	0xa7
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x194d
	.long	0x1aa
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x195d
	.long	0x1f1
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x196d
	.long	0x12d2
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x197d
	.long	0x198c
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x197d
	.uleb128 0xf
	.long	0x19a2
	.long	0x15c0
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x19b2
	.long	0x145b
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x19c2
	.long	0x19cd
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x19c2
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x1791
	.uleb128 0x4
	.long	0x1a5b
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xc
	.byte	0x85
	.long	0x15f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xc
	.byte	0x86
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xc
	.byte	0x87
	.long	0x19d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x1a6e
	.uleb128 0x3
	.byte	0x4
	.long	0x19e6
	.uleb128 0x2
	.string	"regset"
	.byte	0x2
	.byte	0x22
	.long	0x1533
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x2
	.byte	0x75
	.long	0x291
	.uleb128 0x4
	.long	0x1b3c
	.string	"edge_def"
	.byte	0x28
	.byte	0x2
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1b3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1b3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x2
	.byte	0x7d
	.long	0x145b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x2
	.byte	0x7d
	.long	0x145b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x2
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0x83
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.long	.LASF3
	.byte	0x2
	.byte	0x85
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x2
	.byte	0x86
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0x87
	.long	0x1a82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a93
	.uleb128 0x2
	.string	"edge"
	.byte	0x2
	.byte	0x89
	.long	0x1b3c
	.uleb128 0xc
	.long	0x1d9d
	.long	.LASF4
	.byte	0x80
	.byte	0x2
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x2
	.value	0x176
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF5
	.byte	0x2
	.value	0x179
	.long	0x1da3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF6
	.byte	0x2
	.value	0x17c
	.long	0x1da3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF7
	.byte	0x2
	.value	0x17f
	.long	0x1da3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x2
	.value	0x184
	.long	0x1dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x2
	.value	0x187
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x2
	.value	0x18b
	.long	0x1da3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x2
	.value	0x18f
	.long	0x1da3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x2
	.value	0x192
	.long	0x15ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.long	.LASF8
	.byte	0x2
	.value	0x195
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x2
	.value	0x198
	.long	0x1dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.long	.LASF9
	.byte	0x2
	.value	0x19b
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x2
	.value	0x19e
	.long	0x1dce
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.long	.LASF10
	.byte	0x2
	.value	0x1a1
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x2
	.value	0x1a4
	.long	0x15ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x2
	.value	0x1a7
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x2
	.value	0x1aa
	.long	0x1dd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x2
	.value	0x1ae
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x2
	.value	0x1b1
	.long	0x1d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x2
	.value	0x1b4
	.long	0x1d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x2
	.value	0x1b7
	.long	0x1d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x2
	.value	0x1ba
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x2
	.value	0x1bd
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x2
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x2
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x2
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x2
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x2
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x2
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x2
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x2
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x2
	.value	0x1e6
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b4e
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x2
	.byte	0xe6
	.long	0x145b
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x2
	.value	0x170
	.long	0x1dc2
	.uleb128 0x3
	.byte	0x4
	.long	0x1dc8
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1b42
	.uleb128 0x3
	.byte	0x4
	.long	0x1d9d
	.uleb128 0x1c
	.long	0x1e15
	.string	"cfg"
	.byte	0xc
	.byte	0x2
	.value	0x201
	.uleb128 0xd
	.string	"dom"
	.byte	0x2
	.value	0x203
	.long	0x1db6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF12
	.byte	0x2
	.value	0x206
	.long	0x60a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.long	.LASF13
	.byte	0x2
	.value	0x20a
	.long	0x60a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0x1ea5
	.long	.LASF14
	.byte	0x24
	.byte	0x2
	.value	0x1ec
	.uleb128 0xd
	.string	"num"
	.byte	0x2
	.value	0x1ee
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"levels"
	.byte	0x2
	.value	0x1f1
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"array"
	.byte	0x2
	.value	0x1f5
	.long	0x1d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"parray"
	.byte	0x2
	.value	0x1fa
	.long	0x1dd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"tree_root"
	.byte	0x2
	.value	0x1fd
	.long	0x1d9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"cfg"
	.byte	0x2
	.value	0x20b
	.long	0x1dda
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"shared_headers"
	.byte	0x2
	.value	0x20e
	.long	0x15ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1e
	.long	0x1f1d
	.string	"flow_loops_cfg_dump"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1f
	.long	.LASF14
	.byte	0x1
	.byte	0x35
	.long	0x1f1d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"file"
	.byte	0x1
	.byte	0x36
	.long	0x1f28
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x38
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0x39
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x21
	.string	"succ"
	.byte	0x1
	.byte	0x40
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f23
	.uleb128 0x8
	.long	0x1e15
	.uleb128 0x3
	.byte	0x4
	.long	0x300
	.uleb128 0x23
	.long	0x1f79
	.byte	0x1
	.string	"flow_loop_nested_p"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	0x1f79
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x20
	.string	"outer"
	.byte	0x1
	.byte	0x61
	.long	0x1f82
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0x62
	.long	0x1f82
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0x1f88
	.uleb128 0x8
	.long	0x1b4e
	.uleb128 0x24
	.long	0x2009
	.byte	0x1
	.string	"flow_loop_dump"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0x6d
	.long	0x1f82
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"file"
	.byte	0x1
	.byte	0x6e
	.long	0x1f28
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	.LASF15
	.byte	0x1
	.byte	0x6f
	.long	0x201f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.string	"verbose"
	.byte	0x1
	.byte	0x70
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.string	"bbs"
	.byte	0x1
	.byte	0x72
	.long	0x2025
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x73
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0x201f
	.byte	0x1
	.uleb128 0x26
	.long	0x1f82
	.uleb128 0x26
	.long	0x1f28
	.uleb128 0x26
	.long	0x216
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2009
	.uleb128 0x3
	.byte	0x4
	.long	0x1da3
	.uleb128 0x24
	.long	0x20c0
	.byte	0x1
	.string	"flow_loops_dump"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.long	.LASF14
	.byte	0x1
	.byte	0x9a
	.long	0x1f1d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"file"
	.byte	0x1
	.byte	0x9b
	.long	0x1f28
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	.LASF15
	.byte	0x1
	.byte	0x9c
	.long	0x201f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.string	"verbose"
	.byte	0x1
	.byte	0x9d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF16
	.byte	0x1
	.byte	0xa0
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.byte	0xab
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x20f2
	.string	"flow_loop_free"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xba
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x2168
	.byte	0x1
	.string	"flow_loops_free"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1f
	.long	.LASF14
	.byte	0x1
	.byte	0xcb
	.long	0x2168
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	0x2157
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.byte	0xd7
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	.LASF17
	.long	0x2ed9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9110
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e15
	.uleb128 0x1e
	.long	0x21d6
	.string	"flow_loop_entry_edges_find"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xf1
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"e"
	.byte	0x1
	.byte	0xf3
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.byte	0xf4
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x29
	.long	.LASF17
	.long	0x2ed4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9150
	.byte	0x0
	.uleb128 0x2a
	.long	0x2295
	.string	"flow_loop_exit_edges_find"
	.byte	0x1
	.value	0x111
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x110
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x112
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"node"
	.byte	0x1
	.value	0x113
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"bbs"
	.byte	0x1
	.value	0x113
	.long	0x2025
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF10
	.byte	0x1
	.value	0x114
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x114
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	0x227a
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2c
	.string	"dest"
	.byte	0x1
	.value	0x123
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x22
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2c
	.string	"dest"
	.byte	0x1
	.value	0x139
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x2379
	.string	"flow_loop_nodes_find"
	.byte	0x1
	.value	0x14a
	.byte	0x1
	.long	0x216
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x148
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x149
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"stack"
	.byte	0x1
	.value	0x14b
	.long	0x2025
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"sp"
	.byte	0x1
	.value	0x14c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF8
	.byte	0x1
	.value	0x14d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"findex"
	.byte	0x1
	.value	0x14e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"lindex"
	.byte	0x1
	.value	0x14e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2c
	.string	"node"
	.byte	0x1
	.value	0x15f
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x160
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2c
	.string	"ancestor"
	.byte	0x1
	.value	0x166
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x23e3
	.string	"flow_loop_pre_header_scan"
	.byte	0x1
	.value	0x17d
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x17c
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"num"
	.byte	0x1
	.value	0x17e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"ebb"
	.byte	0x1
	.value	0x17f
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x180
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x246b
	.string	"flow_loop_pre_header_find"
	.byte	0x1
	.value	0x1a3
	.byte	0x1
	.long	0x1da3
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x1
	.value	0x1a1
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"dom"
	.byte	0x1
	.value	0x1a2
	.long	0x1db6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF7
	.byte	0x1
	.value	0x1a4
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x1a5
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2c
	.string	"node"
	.byte	0x1
	.value	0x1ac
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x24bb
	.byte	0x1
	.string	"flow_loop_tree_node_add"
	.byte	0x1
	.value	0x1c7
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2f
	.string	"father"
	.byte	0x1
	.value	0x1c5
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x1c6
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x251e
	.byte	0x1
	.string	"flow_loop_tree_node_remove"
	.byte	0x1
	.value	0x1d7
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x1d6
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"prev"
	.byte	0x1
	.value	0x1d8
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"father"
	.byte	0x1
	.value	0x1d8
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x259d
	.string	"flow_loop_level_compute"
	.byte	0x1
	.value	0x1f1
	.byte	0x1
	.long	0x216
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x1f0
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"inner"
	.byte	0x1
	.value	0x1f2
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"level"
	.byte	0x1
	.value	0x1f3
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2c
	.string	"ilevel"
	.byte	0x1
	.value	0x1ff
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x25df
	.string	"flow_loops_level_compute"
	.byte	0x1
	.value	0x210
	.byte	0x1
	.long	0x216
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2b
	.long	.LASF14
	.byte	0x1
	.value	0x20f
	.long	0x2168
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x2636
	.byte	0x1
	.string	"flow_loop_scan"
	.byte	0x1
	.value	0x21c
	.byte	0x1
	.long	0x216
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2b
	.long	.LASF14
	.byte	0x1
	.value	0x219
	.long	0x2168
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x21a
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF3
	.byte	0x1
	.value	0x21b
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2a
	.long	0x2697
	.string	"redirect_edge_with_latch_update"
	.byte	0x1
	.value	0x241
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x23f
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.value	0x240
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"jump"
	.byte	0x1
	.value	0x242
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x2787
	.string	"make_forwarder_block"
	.byte	0x1
	.value	0x25d
	.byte	0x1
	.long	0x1da3
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x258
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"redirect_latch"
	.byte	0x1
	.value	0x259
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"redirect_nonlatch"
	.byte	0x1
	.value	0x25a
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"except"
	.byte	0x1
	.value	0x25b
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.string	"conn_latch"
	.byte	0x1
	.value	0x25c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x25e
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"next_e"
	.byte	0x1
	.value	0x25e
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"fallthru"
	.byte	0x1
	.value	0x25e
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"dummy"
	.byte	0x1
	.value	0x25f
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"insn"
	.byte	0x1
	.value	0x260
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	0x28ed
	.string	"canonicalize_loop_headers"
	.byte	0x1
	.value	0x287
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2c
	.string	"dom"
	.byte	0x1
	.value	0x288
	.long	0x1db6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF5
	.byte	0x1
	.value	0x289
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x28a
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	0x283d
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2c
	.string	"num_latches"
	.byte	0x1
	.value	0x295
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"have_abnormal_edge"
	.byte	0x1
	.value	0x296
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2d
	.long	.LASF6
	.byte	0x1
	.value	0x29a
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2859
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2c
	.string	"bb"
	.byte	0x1
	.value	0x2ae
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x22
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2c
	.string	"num_latch"
	.byte	0x1
	.value	0x2bc
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"want_join_latch"
	.byte	0x1
	.value	0x2bd
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"max_freq"
	.byte	0x1
	.value	0x2be
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"is_heavy"
	.byte	0x1
	.value	0x2be
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"heavy"
	.byte	0x1
	.value	0x2bf
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2c
	.string	"new_header"
	.byte	0x1
	.value	0x2e2
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x2a52
	.byte	0x1
	.string	"flow_loops_find"
	.byte	0x1
	.value	0x2f9
	.byte	0x1
	.long	0x216
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2b
	.long	.LASF14
	.byte	0x1
	.value	0x2f7
	.long	0x2168
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF3
	.byte	0x1
	.value	0x2f8
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x2fa
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"b"
	.byte	0x1
	.value	0x2fb
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF16
	.byte	0x1
	.value	0x2fc
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x2fd
	.long	0x1b42
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.string	"headers"
	.byte	0x1
	.value	0x2fe
	.long	0x15ab
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"dom"
	.byte	0x1
	.value	0x2ff
	.long	0x1db6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.long	.LASF12
	.byte	0x1
	.value	0x300
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF13
	.byte	0x1
	.value	0x301
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF5
	.byte	0x1
	.value	0x302
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"bb"
	.byte	0x1
	.value	0x303
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	0x2a0b
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2c
	.string	"more_latches"
	.byte	0x1
	.value	0x323
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2d
	.long	.LASF6
	.byte	0x1
	.value	0x329
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2a41
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2d
	.long	.LASF4
	.byte	0x1
	.value	0x36f
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2d
	.long	.LASF6
	.byte	0x1
	.value	0x381
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	.LASF17
	.long	0x2ebf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9617
	.byte	0x0
	.uleb128 0x31
	.long	0x2a9d
	.byte	0x1
	.string	"flow_loops_update"
	.byte	0x1
	.value	0x3af
	.byte	0x1
	.long	0x216
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2b
	.long	.LASF14
	.byte	0x1
	.value	0x3ad
	.long	0x2168
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF3
	.byte	0x1
	.value	0x3ae
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.long	0x2b02
	.byte	0x1
	.string	"flow_bb_inside_loop_p"
	.byte	0x1
	.value	0x3bd
	.byte	0x1
	.long	0x1f79
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x3bb
	.long	0x1f82
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x3bc
	.long	0x2b02
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"source_loop"
	.byte	0x1
	.value	0x3be
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x8
	.long	0x1da3
	.uleb128 0x31
	.long	0x2b67
	.byte	0x1
	.string	"flow_loop_outside_edge_p"
	.byte	0x1
	.value	0x3cd
	.byte	0x1
	.long	0x1f79
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x3cb
	.long	0x1f82
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.value	0x3cc
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF17
	.long	0x2eaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9812
	.byte	0x0
	.uleb128 0x2e
	.long	0x2bb0
	.string	"glb_enum_p"
	.byte	0x1
	.value	0x3d8
	.byte	0x1
	.long	0x1f79
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x3d6
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"glb_header"
	.byte	0x1
	.value	0x3d7
	.long	0x2f8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.long	0x2c27
	.byte	0x1
	.string	"get_loop_body"
	.byte	0x1
	.value	0x3e0
	.byte	0x1
	.long	0x2025
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x3df
	.long	0x1f82
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"tovisit"
	.byte	0x1
	.value	0x3e1
	.long	0x2025
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"bb"
	.byte	0x1
	.value	0x3e1
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"tv"
	.byte	0x1
	.value	0x3e2
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF17
	.long	0x2e95
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9836
	.byte	0x0
	.uleb128 0x30
	.long	0x2c77
	.byte	0x1
	.string	"add_bb_to_loop"
	.byte	0x1
	.value	0x404
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x402
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x403
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x405
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x30
	.long	0x2ccd
	.byte	0x1
	.string	"remove_bb_from_loops"
	.byte	0x1
	.value	0x412
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2f
	.string	"bb"
	.byte	0x1
	.value	0x411
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x413
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.long	.LASF4
	.byte	0x1
	.value	0x414
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x31
	.long	0x2d1d
	.byte	0x1
	.string	"find_common_loop"
	.byte	0x1
	.value	0x422
	.byte	0x1
	.long	0x1d9d
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2f
	.string	"loop_s"
	.byte	0x1
	.value	0x420
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"loop_d"
	.byte	0x1
	.value	0x421
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x2dde
	.byte	0x1
	.string	"verify_loop_structure"
	.byte	0x1
	.value	0x43d
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2b
	.long	.LASF14
	.byte	0x1
	.value	0x43b
	.long	0x2168
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF3
	.byte	0x1
	.value	0x43c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"sizes"
	.byte	0x1
	.value	0x43e
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x43e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.value	0x43e
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"bbs"
	.byte	0x1
	.value	0x43f
	.long	0x2025
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"bb"
	.byte	0x1
	.value	0x43f
	.long	0x1da3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF4
	.byte	0x1
	.value	0x440
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.value	0x441
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x29
	.long	.LASF17
	.long	0x2e80
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9991
	.byte	0x0
	.uleb128 0x31
	.long	0x2e25
	.byte	0x1
	.string	"loop_latch_edge"
	.byte	0x1
	.value	0x49c
	.byte	0x1
	.long	0x1b42
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x49b
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x49d
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x31
	.long	0x2e70
	.byte	0x1
	.string	"loop_preheader_edge"
	.byte	0x1
	.value	0x4a9
	.byte	0x1
	.long	0x1b42
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2b
	.long	.LASF4
	.byte	0x1
	.value	0x4a8
	.long	0x1d9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x4aa
	.long	0x1b42
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xf
	.long	0x2e80
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x15
	.byte	0x0
	.uleb128 0x8
	.long	0x2e70
	.uleb128 0xf
	.long	0x2e95
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x2e85
	.uleb128 0xf
	.long	0x2eaa
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x18
	.byte	0x0
	.uleb128 0x8
	.long	0x2e9a
	.uleb128 0xf
	.long	0x2ebf
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0xf
	.byte	0x0
	.uleb128 0x8
	.long	0x2eaf
	.uleb128 0xf
	.long	0x2ed4
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x1a
	.byte	0x0
	.uleb128 0x8
	.long	0x2ec4
	.uleb128 0x8
	.long	0x2eaf
	.uleb128 0x32
	.string	"n_basic_blocks"
	.byte	0x2
	.byte	0xf2
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"last_basic_block"
	.byte	0x2
	.byte	0xf6
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"basic_block_info"
	.byte	0x2
	.byte	0xfe
	.long	0x1a5b
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x2f3a
	.long	0x12d8
	.uleb128 0x10
	.long	0x224
	.byte	0x1
	.byte	0x0
	.uleb128 0x33
	.string	"entry_exit_blocks"
	.byte	0x2
	.value	0x139
	.long	0x2f2a
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.long	0x1a8
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2f57
	.long	0x1f2e
	.string	"flow_loop_nested_p"
	.long	0x1f8d
	.string	"flow_loop_dump"
	.long	0x202b
	.string	"flow_loops_dump"
	.long	0x20f2
	.string	"flow_loops_free"
	.long	0x246b
	.string	"flow_loop_tree_node_add"
	.long	0x24bb
	.string	"flow_loop_tree_node_remove"
	.long	0x25df
	.string	"flow_loop_scan"
	.long	0x28ed
	.string	"flow_loops_find"
	.long	0x2a52
	.string	"flow_loops_update"
	.long	0x2a9d
	.string	"flow_bb_inside_loop_p"
	.long	0x2b07
	.string	"flow_loop_outside_edge_p"
	.long	0x2bb0
	.string	"get_loop_body"
	.long	0x2c27
	.string	"add_bb_to_loop"
	.long	0x2c77
	.string	"remove_bb_from_loops"
	.long	0x2ccd
	.string	"find_common_loop"
	.long	0x2d1d
	.string	"verify_loop_structure"
	.long	0x2dde
	.string	"loop_latch_edge"
	.long	0x2e25
	.string	"loop_preheader_edge"
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
.LASF16:
	.string	"num_loops"
.LASF15:
	.string	"loop_dump_aux"
.LASF9:
	.string	"num_entries"
.LASF7:
	.string	"pre_header"
.LASF11:
	.string	"dominance_info"
.LASF6:
	.string	"latch"
.LASF2:
	.string	"mem_attrs"
.LASF4:
	.string	"loop"
.LASF8:
	.string	"num_nodes"
.LASF14:
	.string	"loops"
.LASF13:
	.string	"rc_order"
.LASF1:
	.string	"_IO_FILE"
.LASF12:
	.string	"dfs_order"
.LASF10:
	.string	"num_exits"
.LASF17:
	.string	"__FUNCTION__"
.LASF5:
	.string	"header"
.LASF0:
	.string	"unsigned int"
.LASF3:
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
