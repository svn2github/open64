	.file	"graph.c"
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
	.string	""
.LC1:
	.string	".vcg"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 4
	.type	graph_ext, @object
	.size	graph_ext, 8
graph_ext:
	.long	.LC0
	.long	.LC1
	.section	.rodata
	.align 4
.LC2:
	.string	"graph: { title: \"%s\"\nfolding: 1\nhidden: 2\nnode: { title: \"%s.0\" }\n"
	.text
	.type	start_fct, @function
start_fct:
.LFB15:
	.file 1 "../../../kg++fe/gnu/graph.c"
	.loc 1 51 0
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
	.loc 1 53 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L3
	jmp	.L4
.L3:
	.loc 1 56 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L4:
	.loc 1 63 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	start_fct, .-start_fct
	.section	.rodata
	.align 4
.LC3:
	.string	"graph: {\ntitle: \"%s.BB%d\"\nfolding: 1\ncolor: lightblue\nlabel: \"basic block %d"
.LC4:
	.string	"\"\n\n"
	.text
	.type	start_bb, @function
start_bb:
.LFB16:
	.loc 1 69 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 70 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L7
	jmp	.L6
.L7:
	.loc 1 73 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L6:
	.loc 1 96 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L9
	jmp	.L10
.L9:
	.loc 1 99 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L10:
	.loc 1 104 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	start_bb, .-start_bb
	.section	.rodata
	.align 4
.LC5:
	.string	"edge: { sourcename: \"%s.0\" targetname: \"%s.%d\" }\n"
.LC6:
	.string	"darkgrey\n  shape: ellipse"
.LC7:
	.string	"white"
.LC8:
	.string	"darkgreen"
.LC9:
	.string	"green"
.LC10:
	.string	"lightgrey"
	.align 4
.LC11:
	.string	"node: {\n  title: \"%s.%d\"\n  color: %s\n  label: \"%s %d\n"
.LC12:
	.string	" %s"
.LC13:
	.string	"\"\n}\n"
	.text
	.type	node_data, @function
node_data:
.LFB17:
	.loc 1 110 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$84, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 112 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L12
	.loc 1 116 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L14
	jmp	.L12
.L14:
	.loc 1 119 0
	movl	12(%ebp), %eax
	movl	4(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L12:
	.loc 1 129 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L16
	jmp	.L15
.L16:
	.loc 1 132 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -44(%ebp)
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L17
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L19
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L21
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L23
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L25
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L27
.L25:
	leal	.LC7@GOTOFF(%ebx), %ecx
	movl	%ecx, -24(%ebp)
.L27:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L28
.L23:
	leal	.LC8@GOTOFF(%ebx), %ecx
	movl	%ecx, -28(%ebp)
.L28:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L29
.L21:
	leal	.LC8@GOTOFF(%ebx), %ecx
	movl	%ecx, -32(%ebp)
.L29:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L30
.L19:
	leal	.LC9@GOTOFF(%ebx), %ecx
	movl	%ecx, -36(%ebp)
.L30:
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L31
.L17:
	leal	.LC10@GOTOFF(%ebx), %ecx
	movl	%ecx, -40(%ebp)
.L31:
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	-48(%ebp), %ecx
	movl	%ecx, 24(%esp)
	movl	-44(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-40(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L15:
	.loc 1 148 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L32
.LBB2:
	.loc 1 150 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 151 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L34
	.loc 1 152 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	100(%eax), %edx
	movl	note_insn_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
.L34:
	.loc 1 153 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L36
.L32:
.LBE2:
	.loc 1 155 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L37
	.loc 1 156 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl_single@PLT
	jmp	.L36
.L37:
	.loc 1 158 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl_single@PLT
.L36:
	.loc 1 160 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L40
	jmp	.L41
.L40:
	.loc 1 163 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L41:
	.loc 1 168 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	node_data, .-node_data
	.section	.rodata
.LC14:
	.string	"color: red "
.LC15:
	.string	"color: blue "
.LC16:
	.string	"color: green "
	.align 4
.LC17:
	.string	"edge: { sourcename: \"%s.%d\" targetname: \"%s.%d\" %s"
.LC18:
	.string	"class: %d "
.LC19:
	.string	"}\n"
	.text
	.type	draw_edge, @function
draw_edge:
.LFB18:
	.loc 1 177 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$52, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 179 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L44
	jmp	.L53
.L44:
	.loc 1 182 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 183 0
	cmpl	$2, 24(%ebp)
	jne	.L45
	.loc 1 184 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L47
.L45:
	.loc 1 185 0
	cmpl	$0, 20(%ebp)
	je	.L48
	.loc 1 186 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L47
.L48:
	.loc 1 187 0
	cmpl	$3, 24(%ebp)
	jne	.L47
	.loc 1 188 0
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L47:
	.loc 1 189 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 193 0
	cmpl	$0, 24(%ebp)
	je	.L51
	.loc 1 194 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L51:
	.loc 1 195 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L53:
	.loc 1 200 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	draw_edge, .-draw_edge
	.type	end_bb, @function
end_bb:
.LFB19:
	.loc 1 205 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$20, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 206 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L56
	jmp	.L57
.L56:
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L57:
	.loc 1 214 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	end_bb, .-end_bb
	.section	.rodata
	.align 4
.LC20:
	.string	"node: { title: \"%s.999999\" label: \"END\" }\n}\n"
	.text
	.type	end_fct, @function
end_fct:
.LFB20:
	.loc 1 219 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$20, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 220 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L60
	jmp	.L61
.L60:
	.loc 1 223 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L61:
	.loc 1 229 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	end_fct, .-end_fct
	.section	.rodata
.LC21:
	.string	"a"
.LC22:
	.string	"(nil)\n"
	.text
.globl print_rtl_graph_with_bb
	.type	print_rtl_graph_with_bb, @function
print_rtl_graph_with_bb:
.LFB21:
	.loc 1 238 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%edi
.LCFI26:
	pushl	%esi
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$156, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 238 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 240 0
	movl	-96(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -128(%ebp)
	movl	$0, %eax
	cld
	movl	-128(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -80(%ebp)
	.loc 1 241 0
	movl	-100(%ebp), %eax
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
	movl	%eax, -76(%ebp)
	.loc 1 242 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	graph_ext@GOTOFF(%ebx,%eax,4), %eax
	movl	$-1, %ecx
	movl	%eax, -136(%ebp)
	movl	$0, %eax
	cld
	movl	-136(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -72(%ebp)
	.loc 1 243 0
	movl	-76(%ebp), %eax
	addl	-80(%ebp), %eax
	addl	-72(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %edx
	movl	%edx, -68(%ebp)
	.loc 1 246 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L116
	.loc 1 249 0
	movl	-68(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	-80(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 250 0
	movl	-80(%ebp), %eax
	addl	-68(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	-76(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 251 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	graph_ext@GOTOFF(%ebx,%eax,4), %ecx
	movl	-80(%ebp), %eax
	movl	%eax, %edx
	addl	-68(%ebp), %edx
	movl	-76(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	-72(%ebp), %edx
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	.loc 1 253 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -64(%ebp)
	.loc 1 254 0
	cmpl	$0, -64(%ebp)
	je	.L116
	.loc 1 257 0
	cmpl	$0, -104(%ebp)
	jne	.L66
	.loc 1 258 0
	movl	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L68
.L66:
.LBB3:
	.loc 1 262 0
	call	get_max_uid@PLT
	movl	%eax, -60(%ebp)
	.loc 1 263 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 264 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -52(%ebp)
	.loc 1 266 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 270 0
	movl	$0, -40(%ebp)
	jmp	.L69
.L70:
	.loc 1 272 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	$-1, (%eax)
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 273 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 270 0
	addl	$1, -40(%ebp)
.L69:
	movl	-40(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jl	.L70
	.loc 1 276 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L72
.L73:
.LBB4:
	.loc 1 279 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 280 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 281 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L74
.L75:
	.loc 1 283 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	-48(%ebp), %edi
	addl	%eax, %edi
	movl	%edi, -120(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L76
	movl	$1, -116(%ebp)
	jmp	.L78
.L76:
	movl	$2, -116(%ebp)
.L78:
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 286 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L79
	.loc 1 281 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L74:
	cmpl	$0, -36(%ebp)
	jne	.L75
.L79:
.LBE4:
	.loc 1 276 0
	movl	-44(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -44(%ebp)
.L72:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -44(%ebp)
	jne	.L73
	.loc 1 292 0
	movl	dump_for_graph@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 295 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	start_fct
	.loc 1 297 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L82
.L83:
.LBB5:
	.loc 1 300 0
	movl	$0, -32(%ebp)
	.loc 1 303 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-56(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L84
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L84
	.loc 1 305 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L87
	.loc 1 307 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L87
.L84:
	.loc 1 312 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	js	.L89
	.loc 1 315 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	start_bb
	.loc 1 317 0
	cmpl	$0, -40(%ebp)
	jne	.L89
	.loc 1 318 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	draw_edge
.L89:
	.loc 1 322 0
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	node_data
	.loc 1 323 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -28(%ebp)
	.loc 1 325 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	js	.L92
.LBB6:
	.loc 1 329 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 332 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	end_bb
	.loc 1 336 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L94
.L95:
	.loc 1 338 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L96
.LBB7:
	.loc 1 340 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 342 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$2, %ecx
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	setne	%al
	movzbl	%al, %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	draw_edge
	.loc 1 347 0
	movl	-20(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L100
	.loc 1 348 0
	movl	$1, -32(%ebp)
	jmp	.L100
.L96:
.LBE7:
	.loc 1 352 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %ecx
	andl	$2, %ecx
	cmpl	$0, -28(%ebp)
	setne	%al
	movzbl	%al, %edx
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$999999, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	draw_edge
	.loc 1 356 0
	cmpl	$0, -28(%ebp)
	jne	.L100
	.loc 1 357 0
	movl	$1, -32(%ebp)
.L100:
	.loc 1 336 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L94:
	cmpl	$0, -24(%ebp)
	jne	.L95
.L92:
.LBE6:
	.loc 1 362 0
	cmpl	$0, -32(%ebp)
	jne	.L87
	.loc 1 365 0
	cmpl	$0, -28(%ebp)
	je	.L103
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L118
.L103:
	.loc 1 367 0
	cmpl	$0, -28(%ebp)
	je	.L106
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L108
.L106:
	movl	$999999, -112(%ebp)
.L108:
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-112(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	draw_edge
	.loc 1 365 0
	jmp	.L87
.L105:
.L118:
	.loc 1 375 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 378 0
	cmpl	$0, -28(%ebp)
	je	.L109
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L105
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L105
.L109:
	.loc 1 380 0
	cmpl	$0, -28(%ebp)
	je	.L112
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L114
.L112:
	movl	$999999, -108(%ebp)
.L114:
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	$3, 16(%esp)
	movl	$0, 12(%esp)
	movl	-108(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	draw_edge
.L87:
.LBE5:
	.loc 1 298 0
	movl	-84(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
.L82:
	.loc 1 297 0
	cmpl	$0, -84(%ebp)
	jne	.L83
	.loc 1 386 0
	movl	dump_for_graph@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 388 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	end_fct
	.loc 1 391 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 392 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 393 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L68:
.LBE3:
	.loc 1 396 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L116:
	.loc 1 397 0
	movl	-16(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L117
	call	__stack_chk_fail_local
.L117:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	print_rtl_graph_with_bb, .-print_rtl_graph_with_bb
	.section	.rodata
	.type	__FUNCTION__.9957, @object
	.size	__FUNCTION__.9957, 22
__FUNCTION__.9957:
	.string	"clean_graph_dump_file"
.LC23:
	.string	"w"
.LC24:
	.string	"can't open %s"
.LC25:
	.string	"graph: {\nport_sharing: no\n"
.LC26:
	.string	"../../../kg++fe/gnu/graph.c"
	.text
.globl clean_graph_dump_file
	.type	clean_graph_dump_file, @function
clean_graph_dump_file:
.LFB22:
	.loc 1 406 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%edi
.LCFI32:
	pushl	%esi
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$76, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 406 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 407 0
	movl	-48(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	$0, %eax
	cld
	movl	-64(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 408 0
	movl	-52(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -68(%ebp)
	movl	$0, %eax
	cld
	movl	-68(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 409 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	graph_ext@GOTOFF(%ebx,%eax,4), %eax
	movl	$-1, %ecx
	movl	%eax, -72(%ebp)
	movl	$0, %eax
	cld
	movl	-72(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 410 0
	movl	-28(%ebp), %eax
	addl	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 1 413 0
	movl	-24(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 414 0
	movl	-36(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 415 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	graph_ext@GOTOFF(%ebx,%eax,4), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	.loc 1 417 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -20(%ebp)
	.loc 1 419 0
	cmpl	$0, -20(%ebp)
	jne	.L120
	.loc 1 420 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_io_error@PLT
.L120:
	.loc 1 422 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L123
	cmpl	$1, -56(%ebp)
	je	.L124
	jmp	.L122
.L124:
	.loc 1 425 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 426 0
	jmp	.L122
.L123:
	.loc 1 428 0
	leal	__FUNCTION__.9957@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$428, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L122:
	.loc 1 431 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 432 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L126
	call	__stack_chk_fail_local
.L126:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	clean_graph_dump_file, .-clean_graph_dump_file
	.section	.rodata
	.type	__FUNCTION__.9990, @object
	.size	__FUNCTION__.9990, 23
__FUNCTION__.9990:
	.string	"finish_graph_dump_file"
	.text
.globl finish_graph_dump_file
	.type	finish_graph_dump_file, @function
finish_graph_dump_file:
.LFB23:
	.loc 1 440 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%edi
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$76, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 440 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 441 0
	movl	-48(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	$0, %eax
	cld
	movl	-64(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 442 0
	movl	-52(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -68(%ebp)
	movl	$0, %eax
	cld
	movl	-68(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 443 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	graph_ext@GOTOFF(%ebx,%eax,4), %eax
	movl	$-1, %ecx
	movl	%eax, -72(%ebp)
	movl	$0, %eax
	cld
	movl	-72(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 444 0
	movl	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 1 447 0
	movl	-24(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 448 0
	movl	-36(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 449 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	graph_ext@GOTOFF(%ebx,%eax,4), %ecx
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %edi
	movl	%ecx, %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	.loc 1 451 0
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -20(%ebp)
	.loc 1 452 0
	cmpl	$0, -20(%ebp)
	je	.L133
	.loc 1 454 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L131
	cmpl	$1, -56(%ebp)
	je	.L132
	jmp	.L130
.L132:
	.loc 1 457 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 458 0
	jmp	.L130
.L131:
	.loc 1 460 0
	leal	__FUNCTION__.9990@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$460, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L130:
	.loc 1 463 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L133:
	.loc 1 465 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L134
	call	__stack_chk_fail_local
.L134:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	finish_graph_dump_file, .-finish_graph_dump_file
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
	.byte	0x4
	.long	.LCFI29-.LCFI25
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
	.long	.LCFI30-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI31
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
	.long	.LCFI36-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI37
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE16:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/libio.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 6 "../../../kg++fe/gnu/MIPS/config.h"
	.file 7 "../../../kg++fe/gnu/rtl.h"
	.file 8 "../../../kg++fe/gnu/machmode.h"
	.file 9 "../../../kg++fe/gnu/bitmap.h"
	.file 10 "../../../kg++fe/gnu/basic-block.h"
	.file 11 "../../../kg++fe/gnu/sbitmap.h"
	.file 12 "../../../kg++fe/gnu/flags.h"
	.file 13 "../../../kg++fe/gnu/function.h"
	.file 14 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 15 "../../../kg++fe/gnu/varray.h"
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
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI36-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI37-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x330b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/graph.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x6
	.byte	0xc
	.long	0xa5
	.uleb128 0x3
	.byte	0x4
	.long	0xab
	.uleb128 0x4
	.long	0x19b
	.string	"rtx_def"
	.byte	0xc
	.byte	0x6
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x7
	.byte	0x84
	.long	0x957
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x7
	.byte	0x87
	.long	0x70e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x7
	.byte	0x8e
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x7
	.byte	0x91
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x7
	.byte	0x99
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x7
	.byte	0xa2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x7
	.byte	0xb4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x7
	.byte	0xbb
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x7
	.byte	0xc0
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x7
	.byte	0xc9
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x7
	.byte	0xce
	.long	0x1576
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x6
	.byte	0xe
	.long	0x1a8
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae
	.uleb128 0x4
	.long	0x1e3
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x6
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x7
	.byte	0xf2
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x7
	.byte	0xf3
	.long	0x1586
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x6
	.byte	0x10
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x207
	.uleb128 0x8
	.long	0x20c
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2ed
	.string	"mips_args"
	.byte	0x40
	.byte	0xe
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0xe
	.value	0xaad
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0xe
	.value	0xab0
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0xe
	.value	0xab5
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0xe
	.value	0xab8
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0xe
	.value	0xabb
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0xe
	.value	0xac8
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0xe
	.value	0xacb
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0xe
	.value	0xad3
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0xe
	.value	0xad4
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x304
	.long	0x9a
	.uleb128 0xe
	.long	0x304
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0xe
	.value	0xad5
	.long	0x21b
	.uleb128 0x2
	.string	"size_t"
	.byte	0x5
	.byte	0xd6
	.long	0x2ed
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
	.byte	0x4
	.byte	0x3b
	.long	0x389
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x4
	.byte	0x90
	.long	0x3d3
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x4
	.byte	0x91
	.long	0x3b4
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20c
	.uleb128 0x2
	.string	"FILE"
	.byte	0x2
	.byte	0x2e
	.long	0x404
	.uleb128 0x11
	.long	0x67f
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0xb
	.string	"_flags"
	.byte	0x3
	.value	0x10c
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_IO_read_ptr"
	.byte	0x3
	.value	0x111
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_IO_read_end"
	.byte	0x3
	.value	0x112
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"_IO_read_base"
	.byte	0x3
	.value	0x113
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"_IO_write_base"
	.byte	0x3
	.value	0x114
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"_IO_write_ptr"
	.byte	0x3
	.value	0x115
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"_IO_write_end"
	.byte	0x3
	.value	0x116
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"_IO_buf_base"
	.byte	0x3
	.value	0x117
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"_IO_buf_end"
	.byte	0x3
	.value	0x118
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"_IO_save_base"
	.byte	0x3
	.value	0x11a
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"_IO_backup_base"
	.byte	0x3
	.value	0x11b
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"_IO_save_end"
	.byte	0x3
	.value	0x11c
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"_markers"
	.byte	0x3
	.value	0x11e
	.long	0x6d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"_chain"
	.byte	0x3
	.value	0x120
	.long	0x6dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"_fileno"
	.byte	0x3
	.value	0x122
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"_flags2"
	.byte	0x3
	.value	0x126
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"_old_offset"
	.byte	0x3
	.value	0x128
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"_cur_column"
	.byte	0x3
	.value	0x12c
	.long	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"_vtable_offset"
	.byte	0x3
	.value	0x12d
	.long	0x36d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.string	"_shortbuf"
	.byte	0x3
	.value	0x12e
	.long	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xb
	.string	"_lock"
	.byte	0x3
	.value	0x132
	.long	0x6f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"_offset"
	.byte	0x3
	.value	0x13b
	.long	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"__pad1"
	.byte	0x3
	.value	0x144
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"__pad2"
	.byte	0x3
	.value	0x145
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"__pad3"
	.byte	0x3
	.value	0x146
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"__pad4"
	.byte	0x3
	.value	0x147
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"__pad5"
	.byte	0x3
	.value	0x148
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"_mode"
	.byte	0x3
	.value	0x14a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"_unused2"
	.byte	0x3
	.value	0x14c
	.long	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x331
	.uleb128 0x12
	.string	"_IO_lock_t"
	.byte	0x3
	.byte	0xb0
	.uleb128 0x4
	.long	0x6d6
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x3
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x3
	.byte	0xb7
	.long	0x6d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x3
	.byte	0xb8
	.long	0x6dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x3
	.byte	0xbc
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x693
	.uleb128 0x3
	.byte	0x4
	.long	0x404
	.uleb128 0xd
	.long	0x6f2
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x685
	.uleb128 0xd
	.long	0x708
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x214
	.uleb128 0x13
	.long	0x957
	.string	"machine_mode"
	.byte	0x4
	.byte	0x8
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
	.long	0x1126
	.string	"rtx_code"
	.byte	0x4
	.byte	0x7
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
	.long	0x1200
	.byte	0x4
	.byte	0x7
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x7
	.byte	0x49
	.long	0x2ed
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x7
	.byte	0x4b
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x7
	.byte	0x4c
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x7
	.byte	0x4e
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x7
	.byte	0x50
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x7
	.byte	0x52
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x7
	.byte	0x55
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x7
	.byte	0x57
	.long	0x2ed
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x7
	.byte	0x58
	.long	0x1126
	.uleb128 0x11
	.long	0x1277
	.long	.LASF2
	.byte	0x18
	.byte	0x7
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x7
	.byte	0x63
	.long	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x7
	.byte	0x64
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x7
	.byte	0x65
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x66
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x7
	.byte	0x67
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	.LASF2
	.byte	0x7
	.byte	0x68
	.long	0x121b
	.uleb128 0x17
	.long	0x1354
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x7
	.byte	0x6d
	.uleb128 0x18
	.string	"rtwint"
	.byte	0x7
	.byte	0x6e
	.long	0x389
	.uleb128 0x18
	.string	"rtint"
	.byte	0x7
	.byte	0x6f
	.long	0x214
	.uleb128 0x18
	.string	"rtuint"
	.byte	0x7
	.byte	0x70
	.long	0x2ed
	.uleb128 0x18
	.string	"rtstr"
	.byte	0x7
	.byte	0x71
	.long	0x201
	.uleb128 0x18
	.string	"rtx"
	.byte	0x7
	.byte	0x72
	.long	0x9a
	.uleb128 0x18
	.string	"rtvec"
	.byte	0x7
	.byte	0x73
	.long	0x19b
	.uleb128 0x18
	.string	"rttype"
	.byte	0x7
	.byte	0x74
	.long	0x70e
	.uleb128 0x18
	.string	"rt_addr_diff_vec_flags"
	.byte	0x7
	.byte	0x75
	.long	0x1200
	.uleb128 0x18
	.string	"rt_cselib"
	.byte	0x7
	.byte	0x76
	.long	0x1368
	.uleb128 0x18
	.string	"rtbit"
	.byte	0x7
	.byte	0x77
	.long	0x13d0
	.uleb128 0x18
	.string	"rttree"
	.byte	0x7
	.byte	0x78
	.long	0x1e3
	.uleb128 0x18
	.string	"bb"
	.byte	0x7
	.byte	0x79
	.long	0x155b
	.uleb128 0x18
	.string	"rtmem"
	.byte	0x7
	.byte	0x7a
	.long	0x1561
	.byte	0x0
	.uleb128 0x19
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1354
	.uleb128 0x4
	.long	0x13d0
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x7
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x9
	.byte	0x3d
	.long	0x2428
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x9
	.byte	0x3e
	.long	0x2428
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x9
	.byte	0x3f
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x9
	.byte	0x40
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x136e
	.uleb128 0x4
	.long	0x155b
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x7
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0xa
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0xa
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0xa
	.byte	0xb8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0xa
	.byte	0xb9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0xa
	.byte	0xbc
	.long	0x2a3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0xa
	.byte	0xbc
	.long	0x2a3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0xa
	.byte	0xc1
	.long	0x296f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0xa
	.byte	0xc5
	.long	0x296f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0xa
	.byte	0xcb
	.long	0x296f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0xa
	.byte	0xcd
	.long	0x296f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0xa
	.byte	0xd0
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0xa
	.byte	0xd3
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0xa
	.byte	0xd6
	.long	0x155b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0xa
	.byte	0xd6
	.long	0x155b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0xa
	.byte	0xd9
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0xa
	.byte	0xdc
	.long	0x2cbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0xa
	.byte	0xdf
	.long	0x297d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0xa
	.byte	0xe2
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0xa
	.byte	0xe5
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13d6
	.uleb128 0x3
	.byte	0x4
	.long	0x1277
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x7
	.byte	0x7c
	.long	0x1282
	.uleb128 0xd
	.long	0x1586
	.long	0x1567
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x1596
	.long	0x9a
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a
	.uleb128 0x1a
	.long	0x15c8
	.string	"graph_dump_types"
	.byte	0x4
	.byte	0xc
	.value	0x294
	.uleb128 0x14
	.string	"no_graph"
	.sleb128 0
	.uleb128 0x14
	.string	"vcg"
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.long	0x162e
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xd
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xd
	.byte	0x18
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xd
	.byte	0x19
	.long	0x70e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xd
	.byte	0x1a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0xd
	.byte	0x1b
	.long	0x162e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15c8
	.uleb128 0x11
	.long	0x167d
	.long	.LASF3
	.byte	0x10
	.byte	0xd
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xd
	.byte	0x26
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xd
	.byte	0x27
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF4
	.byte	0xd
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0xd
	.byte	0x29
	.long	0x167d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1634
	.uleb128 0x4
	.long	0x17d2
	.string	"emit_status"
	.byte	0x34
	.byte	0xd
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xd
	.byte	0x3a
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xd
	.byte	0x3d
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xd
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xd
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF4
	.byte	0xd
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF3
	.byte	0xd
	.byte	0x50
	.long	0x167d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xd
	.byte	0x54
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xd
	.byte	0x58
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xd
	.byte	0x59
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xd
	.byte	0x5f
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xd
	.byte	0x65
	.long	0x67f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xd
	.byte	0x69
	.long	0x17d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xd
	.byte	0x70
	.long	0x1596
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x4
	.long	0x18b8
	.string	"expr_status"
	.byte	0x1c
	.byte	0xd
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xd
	.byte	0x80
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xd
	.byte	0x91
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xd
	.byte	0x97
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xd
	.byte	0x9c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xd
	.byte	0x9f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xd
	.byte	0xa2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xd
	.byte	0xa5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1c
	.long	0x1922
	.long	.LASF5
	.byte	0x4
	.byte	0xd
	.value	0x1f1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1d
	.long	0x22e1
	.string	"function"
	.value	0x134
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0xd
	.byte	0xb5
	.long	0x22ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xd
	.byte	0xb6
	.long	0x2301
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xd
	.byte	0xb7
	.long	0x2307
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xd
	.byte	0xb8
	.long	0x230d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xd
	.byte	0xb9
	.long	0x2323
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0xd
	.byte	0xbe
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xd
	.byte	0xc1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xd
	.byte	0xc4
	.long	0x2329
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xd
	.byte	0xc9
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0xd
	.byte	0xce
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xd
	.byte	0xd3
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xd
	.byte	0xd7
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xd
	.byte	0xdb
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xd
	.byte	0xdf
	.long	0x30b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xd
	.byte	0xe5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xd
	.byte	0xe8
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xd
	.byte	0xec
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xd
	.byte	0xf0
	.long	0x2346
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xd
	.byte	0xf3
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xd
	.byte	0xf8
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xd
	.byte	0xfe
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xd
	.value	0x102
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xd
	.value	0x107
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0xd
	.value	0x10d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0xd
	.value	0x112
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0xd
	.value	0x115
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0xd
	.value	0x116
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0xd
	.value	0x11a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0xd
	.value	0x11e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0xd
	.value	0x121
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0xd
	.value	0x125
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0xd
	.value	0x128
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0xd
	.value	0x12e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0xd
	.value	0x133
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0xd
	.value	0x138
	.long	0x389
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0xd
	.value	0x13d
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0xd
	.value	0x146
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0xd
	.value	0x149
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0xd
	.value	0x14d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0xd
	.value	0x151
	.long	0x2ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0xd
	.value	0x157
	.long	0x1596
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0xd
	.value	0x15a
	.long	0x2358
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0xd
	.value	0x15d
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0xd
	.value	0x160
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0xd
	.value	0x166
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0xd
	.value	0x16a
	.long	0x162e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0xd
	.value	0x16d
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0xd
	.value	0x16e
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0xd
	.value	0x16f
	.long	0x19b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0xd
	.value	0x170
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0xd
	.value	0x173
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0xd
	.value	0x175
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0xd
	.value	0x178
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0xd
	.value	0x17d
	.long	0x2371
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0xd
	.value	0x17f
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0xd
	.value	0x181
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xb
	.string	"language"
	.byte	0xd
	.value	0x184
	.long	0x238b
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0xd
	.value	0x18a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
	.string	"returns_struct"
	.byte	0xd
	.value	0x190
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pcc_struct"
	.byte	0xd
	.value	0x194
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pointer"
	.byte	0xd
	.value	0x197
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"needs_context"
	.byte	0xd
	.value	0x19a
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_setjmp"
	.byte	0xd
	.value	0x19d
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_longjmp"
	.byte	0xd
	.value	0x1a0
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_alloca"
	.byte	0xd
	.value	0x1a4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_eh_return"
	.byte	0xd
	.value	0x1a7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_label"
	.byte	0xd
	.value	0x1ab
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_goto"
	.byte	0xd
	.value	0x1af
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"contains_functions"
	.byte	0xd
	.value	0x1b2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_computed_jump"
	.byte	0xd
	.value	0x1b5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"is_thunk"
	.byte	0xd
	.value	0x1ba
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"all_throwers_are_sibcalls"
	.byte	0xd
	.value	0x1c1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"instrument_entry_exit"
	.byte	0xd
	.value	0x1c5
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arc_profile"
	.byte	0xd
	.value	0x1c8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"profile"
	.byte	0xd
	.value	0x1cb
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"limit_stack"
	.byte	0xd
	.value	0x1cf
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"stdarg"
	.byte	0xd
	.value	0x1d2
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_whole_function_mode_p"
	.byte	0xd
	.value	0x1d8
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xd
	.value	0x1e1
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_const_pool"
	.byte	0xd
	.value	0x1e4
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_pic_offset_table"
	.byte	0xd
	.value	0x1e7
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_eh_lsda"
	.byte	0xd
	.value	0x1ea
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arg_pointer_save_area_init"
	.byte	0xd
	.value	0x1ed
	.long	0x2ed
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.long	.LASF5
	.byte	0xd
	.value	0x1fa
	.long	0x18b8
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0xd
	.value	0x1fe
	.long	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x19
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x22e1
	.uleb128 0x19
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x22f3
	.uleb128 0x3
	.byte	0x4
	.long	0x17d8
	.uleb128 0x3
	.byte	0x4
	.long	0x1683
	.uleb128 0x19
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2313
	.uleb128 0x3
	.byte	0x4
	.long	0x1922
	.uleb128 0x19
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x232f
	.uleb128 0x19
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x234c
	.uleb128 0x19
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x235e
	.uleb128 0x19
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2377
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x9
	.byte	0x1d
	.long	0x358
	.uleb128 0x4
	.long	0x23fc
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x9
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x9
	.byte	0x35
	.long	0x23fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x9
	.byte	0x36
	.long	0x23fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x9
	.byte	0x37
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x9
	.byte	0x38
	.long	0x2402
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x23a4
	.uleb128 0xd
	.long	0x2412
	.long	0x2391
	.uleb128 0xe
	.long	0x304
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x9
	.byte	0x39
	.long	0x23a4
	.uleb128 0x3
	.byte	0x4
	.long	0x2412
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x9
	.byte	0x43
	.long	0x13d0
	.uleb128 0x4
	.long	0x2496
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xb
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xb
	.byte	0x21
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xb
	.byte	0x22
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xb
	.byte	0x23
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xb
	.byte	0x24
	.long	0x2496
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x24a6
	.long	0x39a
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xb
	.byte	0x25
	.long	0x24b5
	.uleb128 0x3
	.byte	0x4
	.long	0x243c
	.uleb128 0x4
	.long	0x24f1
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xf
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xf
	.byte	0x32
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xf
	.byte	0x36
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x268c
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xf
	.byte	0x3c
	.uleb128 0x14
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x14
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x14
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x14
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x14
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x14
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x14
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x14
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x14
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x14
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x14
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x14
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x14
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x14
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x14
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x14
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x14
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x14
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x14
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x14
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x14
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x17
	.long	0x2788
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xf
	.byte	0x55
	.uleb128 0x18
	.string	"c"
	.byte	0xf
	.byte	0x56
	.long	0x6e2
	.uleb128 0x18
	.string	"uc"
	.byte	0xf
	.byte	0x58
	.long	0x2788
	.uleb128 0x18
	.string	"s"
	.byte	0xf
	.byte	0x5a
	.long	0x2798
	.uleb128 0x18
	.string	"us"
	.byte	0xf
	.byte	0x5c
	.long	0x27a8
	.uleb128 0x18
	.string	"i"
	.byte	0xf
	.byte	0x5e
	.long	0x27b8
	.uleb128 0x18
	.string	"u"
	.byte	0xf
	.byte	0x60
	.long	0x27c8
	.uleb128 0x18
	.string	"l"
	.byte	0xf
	.byte	0x62
	.long	0x27d8
	.uleb128 0x18
	.string	"ul"
	.byte	0xf
	.byte	0x64
	.long	0x27e8
	.uleb128 0x18
	.string	"hint"
	.byte	0xf
	.byte	0x66
	.long	0x27f8
	.uleb128 0x18
	.string	"uhint"
	.byte	0xf
	.byte	0x68
	.long	0x2496
	.uleb128 0x18
	.string	"generic"
	.byte	0xf
	.byte	0x6a
	.long	0x2808
	.uleb128 0x18
	.string	"cptr"
	.byte	0xf
	.byte	0x6c
	.long	0x2818
	.uleb128 0x18
	.string	"rtx"
	.byte	0xf
	.byte	0x6e
	.long	0x2828
	.uleb128 0x18
	.string	"rtvec"
	.byte	0xf
	.byte	0x70
	.long	0x2838
	.uleb128 0x18
	.string	"tree"
	.byte	0xf
	.byte	0x72
	.long	0x2848
	.uleb128 0x18
	.string	"bitmap"
	.byte	0xf
	.byte	0x74
	.long	0x2858
	.uleb128 0x18
	.string	"reg"
	.byte	0xf
	.byte	0x76
	.long	0x2868
	.uleb128 0x18
	.string	"const_equiv"
	.byte	0xf
	.byte	0x78
	.long	0x288d
	.uleb128 0x18
	.string	"bb"
	.byte	0xf
	.byte	0x7a
	.long	0x289d
	.uleb128 0x18
	.string	"te"
	.byte	0xf
	.byte	0x7c
	.long	0x28ad
	.byte	0x0
	.uleb128 0xd
	.long	0x2798
	.long	0x331
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27a8
	.long	0x37c
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27b8
	.long	0x342
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27c8
	.long	0x214
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27d8
	.long	0x2ed
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27e8
	.long	0x3d3
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x27f8
	.long	0x358
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2808
	.long	0x389
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2818
	.long	0x3f0
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2828
	.long	0x3f2
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2838
	.long	0xa5
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2848
	.long	0x1a8
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2858
	.long	0x1ef
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2868
	.long	0x13d0
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x2878
	.long	0x2887
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2878
	.uleb128 0xd
	.long	0x289d
	.long	0x24bb
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x28ad
	.long	0x155b
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x28bd
	.long	0x28c8
	.uleb128 0xe
	.long	0x304
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x28bd
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xf
	.byte	0x7e
	.long	0x268c
	.uleb128 0x4
	.long	0x2956
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xf
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xf
	.byte	0x82
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xf
	.byte	0x83
	.long	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xf
	.byte	0x85
	.long	0x24f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xf
	.byte	0x86
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xf
	.byte	0x87
	.long	0x28ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xf
	.byte	0x8a
	.long	0x2969
	.uleb128 0x3
	.byte	0x4
	.long	0x28e1
	.uleb128 0x2
	.string	"regset"
	.byte	0xa
	.byte	0x22
	.long	0x242e
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xa
	.byte	0x75
	.long	0x389
	.uleb128 0x4
	.long	0x2a39
	.string	"edge_def"
	.byte	0x28
	.byte	0xa
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0xa
	.byte	0x7a
	.long	0x2a39
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0xa
	.byte	0x7a
	.long	0x2a39
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0xa
	.byte	0x7d
	.long	0x155b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0xa
	.byte	0x7d
	.long	0x155b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0xa
	.byte	0x80
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0xa
	.byte	0x83
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0xa
	.byte	0x85
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0xa
	.byte	0x86
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0xa
	.byte	0x87
	.long	0x297d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x298e
	.uleb128 0x2
	.string	"edge"
	.byte	0xa
	.byte	0x89
	.long	0x2a39
	.uleb128 0x4
	.long	0x2cbb
	.string	"loop"
	.byte	0x80
	.byte	0xa
	.byte	0xdc
	.uleb128 0xb
	.string	"num"
	.byte	0xa
	.value	0x176
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"header"
	.byte	0xa
	.value	0x179
	.long	0x2cc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"latch"
	.byte	0xa
	.value	0x17c
	.long	0x2cc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"pre_header"
	.byte	0xa
	.value	0x17f
	.long	0x2cc1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"pre_header_edges"
	.byte	0xa
	.value	0x184
	.long	0x2cd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"num_pre_header_edges"
	.byte	0xa
	.value	0x187
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"first"
	.byte	0xa
	.value	0x18b
	.long	0x2cc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"last"
	.byte	0xa
	.value	0x18f
	.long	0x2cc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"nodes"
	.byte	0xa
	.value	0x192
	.long	0x24a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"num_nodes"
	.byte	0xa
	.value	0x195
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"entry_edges"
	.byte	0xa
	.value	0x198
	.long	0x2cd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"num_entries"
	.byte	0xa
	.value	0x19b
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"exit_edges"
	.byte	0xa
	.value	0x19e
	.long	0x2cd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"num_exits"
	.byte	0xa
	.value	0x1a1
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"exits_doms"
	.byte	0xa
	.value	0x1a4
	.long	0x24a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"depth"
	.byte	0xa
	.value	0x1a7
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"pred"
	.byte	0xa
	.value	0x1aa
	.long	0x2cda
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"level"
	.byte	0xa
	.value	0x1ae
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"outer"
	.byte	0xa
	.value	0x1b1
	.long	0x2cbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"inner"
	.byte	0xa
	.value	0x1b4
	.long	0x2cbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"next"
	.byte	0xa
	.value	0x1b7
	.long	0x2cbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"invalid"
	.byte	0xa
	.value	0x1ba
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"aux"
	.byte	0xa
	.value	0x1bd
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"vtop"
	.byte	0xa
	.value	0x1c3
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"cont"
	.byte	0xa
	.value	0x1c7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"start"
	.byte	0xa
	.value	0x1ca
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"end"
	.byte	0xa
	.value	0x1cd
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"top"
	.byte	0xa
	.value	0x1d1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"scan_start"
	.byte	0xa
	.value	0x1d4
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"sink"
	.byte	0xa
	.value	0x1d7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"exit_labels"
	.byte	0xa
	.value	0x1e2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.string	"exit_count"
	.byte	0xa
	.value	0x1e6
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2a4b
	.uleb128 0x2
	.string	"basic_block"
	.byte	0xa
	.byte	0xe6
	.long	0x155b
	.uleb128 0x3
	.byte	0x4
	.long	0x2a3f
	.uleb128 0x3
	.byte	0x4
	.long	0x2cbb
	.uleb128 0x20
	.long	0x2d0c
	.string	"start_fct"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x21
	.string	"fp"
	.byte	0x1
	.byte	0x32
	.long	0x2d0c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f8
	.uleb128 0x20
	.long	0x2d4a
	.string	"start_bb"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x21
	.string	"fp"
	.byte	0x1
	.byte	0x43
	.long	0x2d0c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"bb"
	.byte	0x1
	.byte	0x44
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x20
	.long	0x2da1
	.string	"node_data"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x21
	.string	"fp"
	.byte	0x1
	.byte	0x6c
	.long	0x2d0c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"tmp_rtx"
	.byte	0x1
	.byte	0x6d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x23
	.string	"name"
	.byte	0x1
	.byte	0x96
	.long	0x201
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2e1b
	.string	"draw_edge"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x21
	.string	"fp"
	.byte	0x1
	.byte	0xac
	.long	0x2d0c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"from"
	.byte	0x1
	.byte	0xad
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"to"
	.byte	0x1
	.byte	0xae
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"bb_edge"
	.byte	0x1
	.byte	0xaf
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.string	"class"
	.byte	0x1
	.byte	0xb0
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.string	"color"
	.byte	0x1
	.byte	0xb2
	.long	0x201
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x20
	.long	0x2e44
	.string	"end_bb"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x21
	.string	"fp"
	.byte	0x1
	.byte	0xcc
	.long	0x2d0c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x20
	.long	0x2e6e
	.string	"end_fct"
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x21
	.string	"fp"
	.byte	0x1
	.byte	0xda
	.long	0x2d0c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x24
	.long	0x305e
	.byte	0x1
	.string	"print_rtl_graph_with_bb"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x21
	.string	"base"
	.byte	0x1
	.byte	0xeb
	.long	0x201
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF6
	.byte	0x1
	.byte	0xec
	.long	0x201
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x21
	.string	"rtx_first"
	.byte	0x1
	.byte	0xed
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"tmp_rtx"
	.byte	0x1
	.byte	0xef
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF7
	.byte	0x1
	.byte	0xf0
	.long	0x323
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF8
	.byte	0x1
	.byte	0xf1
	.long	0x323
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF9
	.byte	0x1
	.byte	0xf2
	.long	0x323
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.byte	0xf3
	.long	0x3f2
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.byte	0xf4
	.long	0x2d0c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1a
	.long	0x2f71
	.string	"bb_state"
	.byte	0x4
	.byte	0x1
	.value	0x105
	.uleb128 0x14
	.string	"NOT_IN_BB"
	.sleb128 0
	.uleb128 0x14
	.string	"IN_ONE_BB"
	.sleb128 1
	.uleb128 0x14
	.string	"IN_MULTIPLE_BB"
	.sleb128 2
	.byte	0x0
	.uleb128 0x27
	.string	"max_uid"
	.byte	0x1
	.value	0x106
	.long	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"start"
	.byte	0x1
	.value	0x107
	.long	0x708
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.value	0x108
	.long	0x708
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"in_bb_p"
	.byte	0x1
	.value	0x109
	.long	0x305e
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x10b
	.long	0x2cc1
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x10c
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	0x2fee
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x116
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x22
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x27
	.string	"edge_printed"
	.byte	0x1
	.value	0x12c
	.long	0x214
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"next_insn"
	.byte	0x1
	.value	0x12d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x147
	.long	0x2a3f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x27
	.string	"block_head"
	.byte	0x1
	.value	0x154
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f35
	.uleb128 0x29
	.long	0x310a
	.byte	0x1
	.string	"clean_graph_dump_file"
	.byte	0x1
	.value	0x196
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2a
	.string	"base"
	.byte	0x1
	.value	0x194
	.long	0x201
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x195
	.long	0x201
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF7
	.byte	0x1
	.value	0x197
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x198
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF9
	.byte	0x1
	.value	0x199
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x19a
	.long	0x3f2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"fp"
	.byte	0x1
	.value	0x19b
	.long	0x2d0c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LASF10
	.long	0x31d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9957
	.byte	0x0
	.uleb128 0x29
	.long	0x31b1
	.byte	0x1
	.string	"finish_graph_dump_file"
	.byte	0x1
	.value	0x1b8
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2a
	.string	"base"
	.byte	0x1
	.value	0x1b6
	.long	0x201
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x1b7
	.long	0x201
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF7
	.byte	0x1
	.value	0x1b9
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x1ba
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF9
	.byte	0x1
	.value	0x1bb
	.long	0x323
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1bc
	.long	0x3f2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"fp"
	.byte	0x1
	.value	0x1bd
	.long	0x2d0c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LASF10
	.long	0x31c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9990
	.byte	0x0
	.uleb128 0xd
	.long	0x31c1
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x16
	.byte	0x0
	.uleb128 0x8
	.long	0x31b1
	.uleb128 0xd
	.long	0x31d6
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0x15
	.byte	0x0
	.uleb128 0x8
	.long	0x31c6
	.uleb128 0xd
	.long	0x31eb
	.long	0x201
	.uleb128 0xe
	.long	0x304
	.byte	0x1
	.byte	0x0
	.uleb128 0x23
	.string	"graph_ext"
	.byte	0x1
	.byte	0x22
	.long	0x3202
	.byte	0x5
	.byte	0x3
	.long	graph_ext
	.uleb128 0x8
	.long	0x31db
	.uleb128 0xd
	.long	0x3217
	.long	0x201
	.uleb128 0xe
	.long	0x304
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2e
	.string	"rtx_name"
	.byte	0x7
	.byte	0x39
	.long	0x3229
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x3207
	.uleb128 0xd
	.long	0x323e
	.long	0x20c
	.uleb128 0xe
	.long	0x304
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2e
	.string	"rtx_class"
	.byte	0x7
	.byte	0x3f
	.long	0x3251
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x322e
	.uleb128 0xd
	.long	0x3266
	.long	0x201
	.uleb128 0xe
	.long	0x304
	.byte	0x13
	.byte	0x0
	.uleb128 0x2f
	.string	"note_insn_name"
	.byte	0x7
	.value	0x37a
	.long	0x327f
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x3256
	.uleb128 0x2f
	.string	"dump_for_graph"
	.byte	0xc
	.value	0x290
	.long	0x214
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"graph_dump_format"
	.byte	0xc
	.value	0x298
	.long	0x159c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"cfun"
	.byte	0xd
	.value	0x202
	.long	0x2329
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"basic_block_info"
	.byte	0xa
	.byte	0xfe
	.long	0x2956
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x32f2
	.long	0x13d6
	.uleb128 0xe
	.long	0x304
	.byte	0x1
	.byte	0x0
	.uleb128 0x2f
	.string	"entry_exit_blocks"
	.byte	0xa
	.value	0x139
	.long	0x32e2
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
	.uleb128 0x12
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x27
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
	.uleb128 0x2e
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x5f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x330f
	.long	0x2e6e
	.string	"print_rtl_graph_with_bb"
	.long	0x3064
	.string	"clean_graph_dump_file"
	.long	0x310a
	.string	"finish_graph_dump_file"
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
.LASF8:
	.string	"suffixlen"
.LASF2:
	.string	"mem_attrs"
.LASF7:
	.string	"namelen"
.LASF9:
	.string	"extlen"
.LASF3:
	.string	"sequence_stack"
.LASF10:
	.string	"__FUNCTION__"
.LASF6:
	.string	"suffix"
.LASF1:
	.string	"_IO_FILE"
.LASF4:
	.string	"sequence_rtl_expr"
.LASF5:
	.string	"function_frequency"
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
